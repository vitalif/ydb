LIBRARY()

SRCS(
    heartbeat_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/audit
    ydb/library/actors/core
)

END()
