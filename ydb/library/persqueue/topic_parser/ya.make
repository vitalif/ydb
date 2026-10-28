LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/public/sdk/cpp/src/library/persqueue/topic_parser_public
    ydb/public/api/protos
)

SRCS(
    topic_parser.h
    topic_parser.cpp
    counters.h
    counters.cpp
    type_definitions.h
)

END()

RECURSE_FOR_TESTS(
    ut
)
