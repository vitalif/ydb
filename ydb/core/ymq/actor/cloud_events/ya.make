LIBRARY()

SRCS(
    cloud_events.h
    cloud_events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/ymq/actor/cloud_events/proto
    ydb/library/actors/core
    ydb/core/protos
    ydb/core/util
    ydb/core/ymq/base
    ydb/core/audit
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    cloud_events_ut
)
