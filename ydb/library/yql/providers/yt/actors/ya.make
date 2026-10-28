YQL_LIBRARY()

SRCS(
    yql_yt_lookup_actor.cpp
    yql_yt_provider_factories.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    yql/essentials/minikql
    yql/essentials/minikql/computation
    yql/essentials/providers/common/provider
    yt/yql/providers/yt/proto
    yt/yql/providers/yt/gateway/file
    ydb/library/yql/dq/actors/compute
    yql/essentials/public/types
)

END()

RECURSE_FOR_TESTS(ut)