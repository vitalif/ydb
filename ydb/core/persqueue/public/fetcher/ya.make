LIBRARY()

SRCS(
    fetch_request_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/common
    ydb/core/persqueue/events
    ydb/core/persqueue/public
)

END()

RECURSE_FOR_TESTS(
    ut
)
