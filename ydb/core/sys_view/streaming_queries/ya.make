YQL_LIBRARY()

SRCS(
    streaming_queries.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/protobuf/json
    ydb/core/kqp/common/events
    ydb/core/kqp/gateway/behaviour/streaming_query/common
    ydb/core/kqp/runtime
    ydb/services/workload_manager/actors
    ydb/core/sys_view/common
    ydb/library/actors/core
    ydb/library/query_actor
)

END()
