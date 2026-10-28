YQL_LIBRARY()

SRCS(
    result_formatter.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/json
    library/cpp/json/yson
    ydb/library/mkql_proto
    yql/essentials/ast
    yql/essentials/minikql/computation
    yql/essentials/public/udf
    ydb/public/api/protos
    ydb/public/sdk/cpp/src/client/proto
    ydb/public/sdk/cpp/src/client/result
    ydb/public/sdk/cpp/src/client/value
    yql/essentials/providers/common/codec
    yql/essentials/providers/common/schema/expr
    yql/essentials/providers/common/schema/mkql
)

END()

RECURSE_FOR_TESTS(
    ut
)
