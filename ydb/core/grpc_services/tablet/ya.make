LIBRARY()

SRCS(
    rpc_change_schema.cpp
    rpc_execute_mkql.cpp
    rpc_restart_tablet.cpp
    service_tablet.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/grpc_services
    ydb/core/grpc_services/base
    ydb/core/protos
    ydb/library/mkql_proto
    yql/essentials/minikql
    yql/essentials/minikql/computation
    ydb/public/api/protos
    library/cpp/protobuf/json
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)
