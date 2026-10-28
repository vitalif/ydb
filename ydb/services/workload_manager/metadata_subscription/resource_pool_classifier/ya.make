LIBRARY()

SRCS(
    GLOBAL behaviour.cpp
    checker.cpp
    fetcher.cpp
    initializer.cpp
    manager.cpp
    object.cpp
    snapshot.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/cms/console
    ydb/services/workload_manager/actors
    ydb/core/protos
    ydb/core/resource_pools
    ydb/library/query_actor
    ydb/services/metadata/abstract
    ydb/services/metadata/initializer
    ydb/services/metadata/manager
)

YQL_LAST_ABI_VERSION()

END()
