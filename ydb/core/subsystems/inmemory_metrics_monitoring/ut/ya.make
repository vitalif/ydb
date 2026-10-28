UNITTEST_FOR(ydb/core/subsystems/inmemory_metrics_monitoring)
SRCS(viewer_ut.cpp)
USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/testlib
)
END()
