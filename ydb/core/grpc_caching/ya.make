LIBRARY()

SRCS(
    cached_grpc_request_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/protos
    ydb/core/base
    ydb/public/sdk/cpp/src/library/grpc/client
)

END()
