LIBRARY()

SRCS(
    consumers_advanced_monitoring_settings.cpp
    pq_schema_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    library/cpp/json
    ydb/core/grpc_services
    ydb/core/grpc_services/base
    ydb/core/metering
    ydb/core/mind
    ydb/core/protos
    ydb/core/persqueue/public/schema
    ydb/core/util
    ydb/library/persqueue/topic_parser
    ydb/public/api/grpc
    ydb/public/api/grpc/draft
    ydb/public/sdk/cpp/src/library/operation_id
)

END()
