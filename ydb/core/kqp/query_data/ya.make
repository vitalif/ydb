YQL_LIBRARY()

SRCS(
    kqp_query_data.cpp
    kqp_prepared_query.cpp
    kqp_predictor.cpp
    kqp_type_mismatch.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/api/grpc/draft
    ydb/public/sdk/cpp/src/library/operation_id/protos
    ydb/library/actors/core
    ydb/core/actorlib_impl
    ydb/core/base
    ydb/core/kqp/common/simple
    ydb/library/yql/dq/expr_nodes
    ydb/library/yql/dq/proto
    yql/essentials/providers/result/expr_nodes
    ydb/core/kqp/expr_nodes
    ydb/core/kqp/common/result_set_format
)

END()
