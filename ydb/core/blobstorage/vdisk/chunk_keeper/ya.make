LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/blobstorage/vdisk/common
)

SRCS(
    chunk_keeper_actor.cpp
    chunk_keeper_ctx.cpp
    chunk_keeper_data.cpp
    chunk_keeper_events.cpp
)

END()
