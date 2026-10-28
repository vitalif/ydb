LIBRARY()

SRCS(
    ydb_tablet.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    ydb/public/api/grpc/draft
    ydb/core/grpc_services
    ydb/core/grpc_services/base
    ydb/core/grpc_services/tablet
)

END()
