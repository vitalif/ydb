LIBRARY()

SRCS(
    events.h
    service.h
    shard.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/graph/protos
)

END()
