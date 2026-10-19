import sys
import os

# Don't pass -include-pch when building the PCH itself!
def filter_flags(flags):
    result = []
    i = 0
    while i != len(flags):
        if flags[i] in ("-include-pch"):
            i += 2
            continue
        if flags[i].startswith("-include-pch"):
            i += 1
            continue
        if flags[i].startswith("-DARCADIA_BUILD_ROOT="):
            i += 1
            continue
        result.append(flags[i])
        i += 1
    return result

def main():
    cmd = filter_flags(sys.argv[1:])
    os.execvp(cmd[0], cmd)

if __name__ == "__main__":
    main()
