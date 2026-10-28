YQL_LIBRARY()

SRCS(
    cpu_quota_manager.cpp
    events.cpp
    helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch

    ydb/core/base
    ydb/core/resource_pools
    ydb/core/scheme


    ydb/library/actors/core

    ydb/public/sdk/cpp/src/client/types

    library/cpp/retry
)

END()

RECURSE_FOR_TESTS(
    ut
)
