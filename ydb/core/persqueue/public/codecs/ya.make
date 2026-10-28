LIBRARY()

SRCS(
    kafka.h
    pqv1.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/api/protos
    ydb/public/sdk/cpp/src/client/persqueue_public
    ydb/public/sdk/cpp/src/client/topic
)

END()

RECURSE_FOR_TESTS(
    ut
)
