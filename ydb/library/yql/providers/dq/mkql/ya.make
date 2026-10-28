YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    yql/essentials/core
    yql/essentials/core/dq_integration
    yql/essentials/providers/common/mkql
    ydb/library/yql/providers/dq/expr_nodes
    ydb/library/yql/dq/expr_nodes
)

SRCS(
    dqs_mkql_compiler.cpp
    parser.cpp
)

END()
