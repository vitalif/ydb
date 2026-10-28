LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/fq/libs/control_plane_storage/events
    ydb/core/fq/libs/events
    yql/essentials/public/issue/protos
    ydb/public/api/protos
)

END()
