LIBRARY()
SRCS(
    config.cpp
    subsystem.cpp
    viewer.cpp
)
USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/actors/core
    ydb/library/actors/core/subsystems
)
END()
RECURSE_FOR_TESTS(ut)
