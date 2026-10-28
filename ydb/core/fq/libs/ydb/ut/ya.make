UNITTEST_FOR(ydb/core/fq/libs/ydb)

FORK_SUBTESTS()

SRCS(
    ydb_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/default
    ydb/library/security
)

YQL_LAST_ABI_VERSION()

INCLUDE(${ARCADIA_ROOT}/ydb/public/tools/ydb_recipe/recipe.inc)

END()
