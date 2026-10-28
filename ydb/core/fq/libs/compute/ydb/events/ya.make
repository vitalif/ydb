LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/fq/libs/config/protos
    ydb/core/fq/libs/control_plane_storage/proto
    ydb/core/fq/libs/protos
    ydb/public/api/grpc/draft
    ydb/public/sdk/cpp/src/library/operation_id
    ydb/public/sdk/cpp/src/client/query
)

END()
