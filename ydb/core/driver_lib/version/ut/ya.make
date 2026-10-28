UNITTEST_FOR(ydb/core/driver_lib/version)

SRCS(version_ut.cpp)

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/driver_lib/version
    ydb/apps/version
)

END()
