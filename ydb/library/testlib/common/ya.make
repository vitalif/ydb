LIBRARY()

SRCS(
    test_utils.cpp
    test_with_actor_system.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/common
    library/cpp/testing/unittest
    ydb/core/base
    ydb/core/testlib/actors
    ydb/core/testlib/basics
)

YQL_LAST_ABI_VERSION()

END()
