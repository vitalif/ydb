YQL_LIBRARY()

SRCS(
    query_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/protobuf/interop
    ydb/library/actors/core
    library/cpp/threading/future
    ydb/core/base
    ydb/core/grpc_services/local_rpc
    yql/essentials/public/issue
    ydb/public/api/protos
    ydb/public/sdk/cpp/src/client/params
    ydb/public/sdk/cpp/src/client/result
    ydb/public/sdk/cpp/src/client/proto
)

END()

RECURSE_FOR_TESTS(
    ut
)
