#!/usr/bin/env python3
r"""
use_pch.py -- расставить USE_PCH по модулям, которые реально тянут PCH.

Инклюды НЕ переписываются: исходники остаются как есть (в них остаются
<...pb.h> и/или <ydb/core/pch/pch.h>). Скрипт только добавляет в ya.make:

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ...существующие пиры...

Правило то же, что в ymake (MinePchDep): модулю нужен PCH, если хотя бы один
его файл транзитивно включает заголовок, из которого состоит сам PCH.

Состав PCH берётся из его источника (по умолчанию PCH_LIBRARY_SRC из
ydb/core/pch/ya.make, т.е. common.h) -- множество имён инклюдов замыкания.
Сравнение идёт по именам инклюдов, поэтому сгенерированные *.pb.h, которых нет
в git, тоже учитываются.

Область работы по умолчанию -- текущий каталог (как git grep в bash-версии).

Примеры:
    cd ~/ydb/ydb/core && ~/use_pch.py                 # dry-run
    cd ~/ydb/ydb/core && ~/use_pch.py --apply
    ~/use_pch.py --apply --only ydb/core/tx/columnshard
    ~/use_pch.py --apply --no-spill                   # строго текущее поддерево
    ~/use_pch.py --verbose                            # полный список модулей
"""

import argparse
import os
import re
import subprocess
import sys
from collections import defaultdict

PCH_MODULE_DIR = 'ydb/core/pch'
PCH_USE_LINE = 'USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)'
PCH_PEERS = ['ydb/core/pch']

INCLUDE_RE = re.compile(r'^[ \t]*#[ \t]*include[ \t]*([<"])([^>"]+)[>"]')
PEERDIR_RE = re.compile(r'^([ \t]*)PEERDIR[ \t]*\(', re.M)
PCH_SRC_RE = re.compile(r'PCH_LIBRARY_SRC\s*\(\s*([^)\s]+)\s*\)')
SOURCE_EXTS = ('.h', '.hpp', '.hh', '.cpp', '.cc', '.cxx', '.c')

# Какие заголовки считаются "содержимым PCH" при матчинге: только protobuf-ные
# и только из тех же каталогов, что переписывал use_pch.sh. Системные (<map>) и
# прочие проектные заголовки из замыкания common.h сюда не попадают.
PB_INCLUDE_RE = re.compile(
    r'^(google/protobuf|ydb/core/protos|ydb/library/services|'
    r'ydb/public/api/protos(?!/draft))/.*pb\.h$'
)

SPILL_ROOT = 'ydb'
DEFAULT_EXCLUDES = [
    'ydb/public/sdk',
    'ydb/public/lib',
    'ydb/apps/ydb',
    'ydb/tests',
    'ydb/tools',
    'ydb/docs',
]

# Каталоги, которые не трогаем вообще: сгенерированный код со своими правилами.
# Все codegen-каталоги живут внутри generated.
SKIP_DIRS = {'generated'}

# Модули, которым USE_PCH ставим принудительно: их SRCS лежат в родительском
# каталоге (../events.cpp), поэтому "ближайший ya.make" для этих файлов -- не они.
FORCE_MODULES = []
FORCE_PREFIXES = ['ydb/core/load_test']


def git(root, *args):
    return subprocess.run(['git', '-C', root, *args],
                          capture_output=True, text=True, check=True).stdout


def under(path, prefix):
    return not prefix or path == prefix or path.startswith(prefix + '/')


def always_skip(path):
    return any(part in SKIP_DIRS for part in path.split('/'))


def is_forced(mod):
    if mod in FORCE_MODULES:
        return True
    return any(mod.startswith(p + '/') for p in FORCE_PREFIXES)


class IncludeIndex:
    """path -> [(is_quoted, include_name)] плюс разрешение имён в tracked-файлы."""

    def __init__(self, root):
        self.root = root
        self.tracked = {p for p in git(root, 'ls-files', '-z').split('\0') if p}
        self.includes = {}
        self._resolve_cache = {}
        self._parse()

    def _parse(self):
        out = git(self.root, 'grep', '-n', '-I', '-E',
                  r'^[[:space:]]*#[[:space:]]*include')
        for line in out.splitlines():
            parts = line.split(':', 2)
            if len(parts) != 3:
                continue
            path, _, text = parts
            m = INCLUDE_RE.match(text)
            if not m:
                continue
            self.includes.setdefault(path, []).append((m.group(1) == '"', m.group(2)))

    def resolve(self, name, src_path, quoted):
        src_dir = os.path.dirname(src_path)
        key = (name, src_dir, quoted)
        if key in self._resolve_cache:
            return self._resolve_cache[key]
        candidates = [src_dir, ''] if quoted else ['']
        d = src_dir
        while d:
            candidates.append(d)
            d = os.path.dirname(d)
        result = None
        for base in candidates:
            cand = os.path.normpath(os.path.join(base, name)) if base else os.path.normpath(name)
            if cand in self.tracked:
                result = cand
                break
        self._resolve_cache[key] = result
        return result


def read_pch_source(root, index, explicit):
    if explicit:
        return explicit.strip('/')
    ya_make = os.path.join(root, PCH_MODULE_DIR, 'ya.make')
    if os.path.exists(ya_make):
        with open(ya_make, encoding='utf-8', errors='replace') as f:
            m = PCH_SRC_RE.search(f.read())
            if m:
                name = m.group(1).strip('/')
                for cand in (name, os.path.normpath(os.path.join(PCH_MODULE_DIR, name))):
                    if cand in index.tracked:
                        return cand
                return name
    return os.path.join(PCH_MODULE_DIR, 'common.h')


def pch_include_names(index, pch_source):
    """Имена pb.h-инклюдов, из которых состоит PCH: замыкание от pch_source.

    Из замыкания берутся только protobuf-заголовки из "своих" каталогов --
    иначе любой TU с <map> или <util/...> считался бы использующим PCH.
    """
    names = set()
    seen = set()

    def visit(path):
        if path in seen:
            return
        seen.add(path)
        for quoted, name in index.includes.get(path, ()):
            if PB_INCLUDE_RE.match(name):
                names.add(name)
            resolved = index.resolve(name, path, quoted)
            if resolved:
                visit(resolved)

    visit(pch_source)
    return names


def make_reacher(index, pch_names):
    memo = {}

    def reaches(path):
        if path in memo:
            return memo[path]
        memo[path] = False  # защита от циклов
        result = False
        for quoted, name in index.includes.get(path, ()):
            if name in pch_names:
                result = True
                break
            resolved = index.resolve(name, path, quoted)
            if resolved and reaches(resolved):
                result = True
                break
        memo[path] = result
        return result

    return reaches


def nearest_ya_make(index, path):
    d = os.path.dirname(path)
    while True:
        cand = os.path.join(d, 'ya.make') if d else 'ya.make'
        if cand in index.tracked:
            return d
        if not d:
            return None
        d = os.path.dirname(d)


def ya_make_path(root, mod_dir):
    return os.path.join(root, mod_dir or '', 'ya.make')


def has_use_pch(root, mod_dir):
    try:
        with open(ya_make_path(root, mod_dir), encoding='utf-8', errors='replace') as f:
            return 'USE_PCH(' in f.read()
    except OSError:
        return False


def is_aggregator(root, mod_dir):
    """ya.make из одних RECURSE(...) -- не модуль."""
    try:
        with open(ya_make_path(root, mod_dir), encoding='utf-8', errors='replace') as f:
            text = f.read()
    except OSError:
        return False
    return 'RECURSE' in text and not re.search(r'^[ \t]*END[ \t]*\(', text, re.M)


def insert_use_pch(root, mod_dir, apply):
    """Вставляет USE_PCH перед первым PEERDIR (с его отступом) либо перед END()."""
    path = ya_make_path(root, mod_dir)
    with open(path, encoding='utf-8') as f:
        text = f.read()

    def present(peer):
        return re.search(r'^[ \t]*' + re.escape(peer) + r'[ \t]*$', text, re.M) is not None

    missing = [peer for peer in PCH_PEERS if not present(peer)]

    m = PEERDIR_RE.search(text)
    if m:
        indent = m.group(1)
        if missing:
            inner = indent + '    '
            peers = '\n'.join(inner + peer for peer in missing)
            block = '%s%s\n\n%sPEERDIR(\n%s' % (indent, PCH_USE_LINE, indent, peers)
            rest = text[m.end():]
            if rest and not rest.startswith('\n'):
                # однострочный PEERDIR(a b): разворачиваем в многострочный,
                # иначе первый пир приклеится к добавленному
                rest = format_single_line_peerdir(rest, inner, indent)
            new = text[:m.start()] + block + rest
        else:
            # ydb/core/pch уже в PEERDIR: только USE_PCH, пиры не трогаем
            new = text[:m.start()] + '%s%s\n\n' % (indent, PCH_USE_LINE) + text[m.start():]
    else:
        m = re.search(r'^([ \t]*)END\s*\(', text, re.M)
        if not m:
            return False
        indent = m.group(1)
        new = text[:m.start()] + '%s%s\n\n' % (indent, PCH_USE_LINE) + text[m.start():]

    if apply:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(new)
    return True


def format_single_line_peerdir(rest, inner, indent):
    """`a b)\\n...` (остаток однострочного PEERDIR) -> строки с отступом и своим `)`."""
    line_end = rest.find('\n')
    if line_end < 0:
        line_end = len(rest)
    body = rest[:line_end].strip()
    tail = rest[line_end:]
    if body.endswith(')'):
        body = body[:-1].strip()
    lines = [inner + peer for peer in body.split()] if body else []
    return '\n' + '\n'.join(lines) + '\n' + indent + ')' + tail


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--apply', action='store_true', help='really write changes')
    ap.add_argument('--only', default=None,
                    help='path prefix to limit the work (default: current dir)')
    ap.add_argument('--all', action='store_true', help='ignore the current-dir scope')
    ap.add_argument('--no-spill', action='store_true',
                    help='do not touch files outside the scope')
    ap.add_argument('--spill', action='store_true',
                    help='force spill processing for a narrowed scope')
    ap.add_argument('--core-root', default='ydb/core',
                    help='PCH area; spill is everything under ydb/ outside it')
    ap.add_argument('--pch-source', default=None,
                    help='header the PCH is built from (default: PCH_LIBRARY_SRC of ydb/core/pch)')
    ap.add_argument('--exclude', action='append', default=None,
                    help='path prefix to never touch (repeatable)')
    ap.add_argument('--verbose', action='store_true', help='print all affected modules')
    ap.add_argument('--root', default=None)
    args = ap.parse_args()

    root = args.root or git(os.getcwd(), 'rev-parse', '--show-toplevel').strip()
    if args.only is not None:
        scope = args.only.strip('/')
    elif args.all:
        scope = ''
    else:
        scope = os.path.relpath(os.getcwd(), root)
        scope = '' if scope == '.' else scope

    excludes = DEFAULT_EXCLUDES if args.exclude is None else args.exclude
    excludes = [e.strip('/') for e in excludes]
    core_root = args.core_root.strip('/')

    # Протечки обрабатываем только при полном прогоне (или по --spill):
    # иначе узкий --only неожиданно правил бы всё ydb/.
    spill_enabled = (not args.no_spill) and (args.spill or scope in ('', core_root))

    def spill_allowed(path):
        if not spill_enabled or always_skip(path):
            return False
        if under(path, core_root) or not under(path, SPILL_ROOT):
            return False
        return not any(under(path, e) for e in excludes)

    def in_area(path):
        return under(path, scope) or spill_allowed(path)

    index = IncludeIndex(root)
    pch_source = read_pch_source(root, index, args.pch_source)
    if pch_source not in index.tracked:
        print('PCH source %s is not tracked by git' % pch_source)
        return 1

    pch_names = pch_include_names(index, pch_source)
    reaches = make_reacher(index, pch_names)
    print('scope: %s' % (scope or '<repo root>'))
    print('PCH source: %s (%d include names)' % (pch_source, len(pch_names)))

    by_module = defaultdict(list)
    for path in sorted(index.tracked):
        if not in_area(path) or always_skip(path):
            continue
        if path.startswith(PCH_MODULE_DIR + '/'):
            continue
        if not path.endswith(SOURCE_EXTS):
            continue
        if not reaches(path):
            continue
        mod = nearest_ya_make(index, path)
        if mod is not None and not always_skip(mod):
            by_module[mod].append(path)

    forced_modules = set(FORCE_MODULES)
    for ya_make in index.tracked:
        if ya_make == 'ya.make' or not ya_make.endswith('/ya.make'):
            continue
        mod_dir = ya_make[: -len('/ya.make')]
        if is_forced(mod_dir):
            forced_modules.add(mod_dir)

    forced = set()
    for mod in sorted(forced_modules):
        if mod in by_module or always_skip(mod) or not in_area(mod):
            continue
        by_module[mod] = []
        forced.add(mod)

    fixed, skipped, already = [], [], 0
    for mod in sorted(by_module):
        if has_use_pch(root, mod):
            already += 1
            continue
        if is_aggregator(root, mod):
            continue
        if insert_use_pch(root, mod, args.apply):
            fixed.append(mod)
        else:
            skipped.append(mod)

    print('\nmodules reaching the PCH: %d, already have USE_PCH: %d, to add: %d' %
          (len(by_module), already, len(fixed)))
    shown = fixed if args.verbose else fixed[:20]
    for mod in shown:
        tus = [p for p in by_module[mod] if p.endswith(('.cpp', '.cc', '.cxx', '.c'))]
        if mod in forced:
            note = 'forced'
        elif tus:
            note = 'TUs=%d' % len(tus)
        else:
            note = 'headers only'
        print('    %-72s %s' % (mod or '.', note))
    if len(fixed) > len(shown):
        print('    ... and %d more (use --verbose to list all)' % (len(fixed) - len(shown)))
    for mod in skipped:
        print('    SKIP (no PEERDIR/END line) %s' % (mod or '.'))

    if not args.apply:
        print('\n[dry-run] use --apply to write changes')
    return 0


if __name__ == '__main__':
    sys.exit(main())
