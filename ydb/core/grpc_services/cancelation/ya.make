LIBRARY()

SRCS(
    cancelation.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/grpc_services/cancelation/protos
    ydb/core/grpc_services/base
    ydb/core/protos
)

END()
