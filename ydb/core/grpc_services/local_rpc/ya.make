LIBRARY()

SRCS(
    local_rpc.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/grpc_services/base
    ydb/core/grpc_streaming
    ydb/library/actors/wilson
    ydb/library/wilson_ids
    ydb/library/yverify_stream
    ydb/public/sdk/cpp/src/client/types
    ydb/public/sdk/cpp/src/client/types/status
    ydb/public/sdk/cpp/src/library/issue
)

END()
