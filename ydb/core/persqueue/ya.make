LIBRARY()

SRCS(
    dread_cache_service/caching_service.cpp
    pq.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/cluster_tracker
    ydb/core/persqueue/public/fetcher
    ydb/core/persqueue/public/list_topics
    ydb/core/persqueue/pqrb
    ydb/core/persqueue/pqtablet
    ydb/core/persqueue/writer
    ydb/public/sdk/cpp/src/library/kafka
)

END()

RECURSE(
    common
    deferred_publish
    events
    pqrb
    pqtablet
    public
    writer
)

RECURSE_FOR_TESTS(
    ut
    deferred_publish/ut
    dread_cache_service/ut
    ut/slow
    ut/ut_with_sdk
)
