YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/grpc_services/base
    ydb/core/persqueue/events
    ydb/core/persqueue/writer
    ydb/core/protos
    ydb/public/sdk/cpp/src/client/scheme
    ydb/public/sdk/cpp/src/client/table
    ydb/public/sdk/cpp/src/client/topic
    ydb/public/sdk/cpp/src/library/kafka
)

SRCS(
    local_partition_actor.cpp
    local_partition_committer.cpp
    local_partition_reader.cpp
    local_proxy.cpp
)

END()
