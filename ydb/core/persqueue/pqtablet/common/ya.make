LIBRARY()

SRCS(
    event_helpers.cpp
    tracing_support.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/persqueue/common
    ydb/library/logger
    ydb/public/sdk/cpp/src/client/persqueue_public
)

END()

RECURSE_FOR_TESTS(
)
