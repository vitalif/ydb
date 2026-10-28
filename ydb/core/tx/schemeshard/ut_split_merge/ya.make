UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

SPLIT_FACTOR(100)

IF (SANITIZER_TYPE)
    SIZE(LARGE)
    INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
ELSE()
    SIZE(MEDIUM)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    library/cpp/regex/pcre
    library/cpp/svnversion
    ydb/core/testlib/pg
    ydb/core/tx
    ydb/core/tx/schemeshard/ut_helpers
    ydb/public/lib/value
    yql/essentials/public/udf/service/exception_policy
)

YQL_LAST_ABI_VERSION()

SRCS(
    ut_split_merge.cpp
    ut_find_split_key.cpp
    ut_table_partitions_format.cpp
)

END()
