YQL_LIBRARY()

SRCS(
    client.cpp
    error.cpp
    utils.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    contrib/libs/grpc
    ydb/core/formats/arrow/serializer
    ydb/core/grpc_services/local_rpc
    ydb/public/sdk/cpp/src/library/grpc/client
    ydb/library/yql/dq/actors
    ydb/library/yql/dq/actors/protos
    yql/essentials/providers/common/proto
    yql/essentials/providers/common/proto
    ydb/library/yql/providers/generic/connector/api/service
    ydb/library/yql/providers/generic/connector/api/service/protos
    yql/essentials/public/issue
    yql/essentials/utils
    yql/essentials/utils/log
)

END()

RECURSE(
    ut_helpers
)
