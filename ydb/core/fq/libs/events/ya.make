YQL_LIBRARY()

GENERATE_ENUM_SERIALIZATION(events.h)

GENERATE_ENUM_SERIALIZATION(event_ids.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/fq/libs/graph_params/proto
    ydb/core/fq/libs/protos
    ydb/core/fq/libs/row_dispatcher/protos
    yql/essentials/core/facade
    ydb/library/yql/providers/common/db_id_async_resolver
    ydb/library/yql/providers/dq/provider
    ydb/library/yql/providers/pq/proto
    yql/essentials/public/issue
    ydb/public/api/protos
    ydb/public/sdk/cpp/src/client/table
)

END()
