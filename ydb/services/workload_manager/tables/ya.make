YQL_LIBRARY()

SRCS(
    table_queries.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/workload_manager/common

    ydb/library/query_actor

    ydb/library/table_creator
)

END()
