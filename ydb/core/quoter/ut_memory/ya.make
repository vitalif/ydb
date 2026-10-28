IF (NOT OS_WINDOWS)
    UNITTEST_FOR(ydb/core/quoter)

    TAG(ya:manual)

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        library/cpp/testing/gmock_in_unittest
        ydb/core/testlib/default
    )

    YQL_LAST_ABI_VERSION()

    SRCS(
        ut_helpers.cpp
        ut_memory/quoter_memory_ut.cpp
    )

    SIZE(LARGE)
    TIMEOUT(600)

    END()
ENDIF()
