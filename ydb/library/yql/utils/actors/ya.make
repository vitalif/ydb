LIBRARY()

SRCS(
    rich_actor.cpp
    http_sender_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/http
    library/cpp/retry
)

END()

RECURSE_FOR_TESTS(
    ut
)
