YQL_LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/interconnect
    ydb/core/fq/libs/control_plane_storage/events
    ydb/core/fq/libs/quota_manager/events
)

END()
