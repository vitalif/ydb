LIBRARY()

SRCS(
    manager.cpp
    GLOBAL behaviour.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/gateway/actors
    ydb/core/kqp/gateway/utils
    ydb/core/protos
    ydb/core/resource_pools

    ydb/services/metadata
    ydb/services/metadata/abstract
    ydb/services/metadata/manager
    ydb/services/workload_manager/metadata_subscription/resource_pool_classifier
)

YQL_LAST_ABI_VERSION()

END()
