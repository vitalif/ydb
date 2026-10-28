UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

SPLIT_FACTOR(60)

IF (SANITIZER_TYPE == "thread")
    SIZE(LARGE)
    INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
ELSE()
    SIZE(MEDIUM)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/ut/common
    ydb/core/tx/schemeshard/ut_helpers
    yql/essentials/parser/pg_wrapper
    yql/essentials/sql/pg
)

SRCS(
    ut_ttl.cpp
    ut_ttl_utility.cpp
)

YQL_LAST_ABI_VERSION()

END()
