LIBRARY()

SRCS(
    pq_l2_cache.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/keyvalue
    ydb/core/persqueue/common
    ydb/core/persqueue/pqtablet/blob
    ydb/core/persqueue/events
    ydb/public/api/grpc/draft
)

END()

RECURSE_FOR_TESTS(
    ut
)
