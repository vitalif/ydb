YQL_LIBRARY()

SRCS(
    accessor_init.cpp
    behaviour.cpp
    common.cpp
    events.cpp
    manager.cpp
    object.cpp
    snapshot.cpp
    initializer.cpp
    fetcher.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/grpc_services/local_rpc
    ydb/core/grpc_services/base
    ydb/core/grpc_services
    ydb/services/metadata/request
)

END()

RECURSE_FOR_TESTS(
    ut
)