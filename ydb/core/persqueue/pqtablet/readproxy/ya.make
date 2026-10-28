LIBRARY()

SRCS(
    readproxy.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/events
    ydb/core/persqueue/common
    ydb/core/persqueue/pqtablet/batching
)

END()

RECURSE_FOR_TESTS(
)
