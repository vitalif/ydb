LIBRARY()

SRCS(
    nameresolver.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/public/sdk/cpp/src/library/persqueue/topic_parser_public
)

END()

RECURSE_FOR_TESTS(
    ut
)
