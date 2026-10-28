LIBRARY()

SRCS(
    grpc_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    ydb/core/grpc_services
    ydb/core/kesus/tablet
    ydb/public/api/grpc
    ydb/services/ydb
)

END()

RECURSE_FOR_TESTS(
    ut
)
