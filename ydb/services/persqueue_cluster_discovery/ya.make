LIBRARY()

SRCS(
    cluster_discovery_service.cpp
    cluster_discovery_worker.cpp
    counters.cpp
    grpc_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/client/server
    ydb/core/grpc_services
    ydb/core/mind/address_classification
    ydb/core/mon
    ydb/core/persqueue/public
    ydb/core/persqueue/public/cluster_tracker
    ydb/core/protos
    ydb/core/util
    ydb/public/api/grpc
    ydb/public/api/grpc/draft
    ydb/public/api/protos
    ydb/services/persqueue_cluster_discovery/cluster_ordering
)

END()

RECURSE(
    cluster_ordering
)

RECURSE_FOR_TESTS(
    ut
)
