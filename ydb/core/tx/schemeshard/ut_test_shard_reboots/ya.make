IF (NOT WITH_VALGRIND)
    UNITTEST_FOR(ydb/core/tx/schemeshard)

    FORK_SUBTESTS()

    SPLIT_FACTOR(60)

    IF (SANITIZER_TYPE OR WITH_VALGRIND)
        SIZE(LARGE)
        INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
        REQUIREMENTS(ram:12)
    ELSE()
        SIZE(MEDIUM)
    ENDIF()

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/core/testlib/default
        ydb/core/tx/schemeshard/ut_helpers
        ydb/core/test_tablet
    )

    YQL_LAST_ABI_VERSION()

    SRCS(
        ut_test_shard_reboots.cpp
    )

    END()
ENDIF()
