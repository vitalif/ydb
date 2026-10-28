UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

IF (WITH_VALGRIND)
    SIZE(LARGE)
    TAG(ya:fat)
ELSE()
    SIZE(MEDIUM)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos/schemeshard
    ydb/core/testlib/default
    ydb/core/tx/schemeshard/ut_helpers
    ydb/core/test_tablet
)

YQL_LAST_ABI_VERSION()

SRCS(
    ut_test_shard.cpp
)

END()
