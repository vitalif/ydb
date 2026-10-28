UNITTEST_FOR(ydb/library/pdisk_io)

SRCS(
    aio_completion_ut.cpp
    sector_map_ut.cpp
)

IF (OS_LINUX)
    SRCS(
        uring_router_ut.cpp
    )
ENDIF(OS_LINUX)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/pdisk_io
)

END()
