LIBRARY()

SRCS(
    yql_pq_deferred_publish_client.cpp
    yql_pq_federated_topic_client.cpp
    yql_pq_topic_client.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/abstract
    ydb/library/yql/providers/pq/gateway/abstract
    ydb/library/yql/providers/pq/gateway/clients/message_stream
    ydb/public/sdk/cpp/src/client/topic
)

END()
