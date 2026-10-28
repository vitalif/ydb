LIBRARY()

SRCS(
    yql_pq_message_stream_client.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/abstract
    ydb/public/api/protos
    ydb/public/sdk/cpp/adapters/issue
    ydb/library/yverify_stream
    ydb/public/sdk/cpp/src/client/topic
)

END()
