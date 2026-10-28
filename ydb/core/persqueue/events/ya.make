YQL_LIBRARY()

SRCS(
    global.cpp
    internal.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/keyvalue
    ydb/core/protos
    ydb/core/persqueue/public/counters
    ydb/core/tablet
    ydb/public/api/grpc/draft
    ydb/public/api/protos
    ydb/library/persqueue/topic_parser
    ydb/core/persqueue/events/internal/protos
)

END()

RECURSE(
    internal/protos
)
