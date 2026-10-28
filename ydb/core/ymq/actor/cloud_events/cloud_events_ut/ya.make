UNITTEST()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/default
    ydb/core/ymq/actor/cloud_events
)

SRCS(
    cloud_events_ut.cpp
)

YQL_LAST_ABI_VERSION()

END()
