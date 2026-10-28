LIBRARY()

SRCS(
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/mlp
    ydb/core/testlib/actors
    ydb/public/sdk/cpp/src/client/persqueue_public/ut/ut_utils
    ydb/public/sdk/cpp/src/client/topic/ut/ut_utils
    ydb/public/sdk/cpp/src/client/query
    library/cpp/testing/unittest
    library/cpp/threading/future
)

YQL_LAST_ABI_VERSION()

END()
