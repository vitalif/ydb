LIBRARY()

SRCS(
    grpc_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    library/cpp/lwtrace
    ydb/core/grpc_services
    ydb/core/protos
    ydb/library/login
    ydb/public/api/grpc
    ydb/public/sdk/cpp/src/library/operation_id
)

END()
