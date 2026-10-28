LIBRARY()

SRCS(
    grpc_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    ydb/core/base
    ydb/core/grpc_services
    ydb/core/grpc_streaming
    ydb/core/kesus/proxy
    ydb/core/kesus/tablet
    ydb/public/api/grpc
    ydb/public/api/grpc/draft
    ydb/public/sdk/cpp/src/library/operation_id
)

END()
