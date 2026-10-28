LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/blobstorage/vdisk/common
)

SRCS(
    metadata_actor.cpp
    metadata_actor.h
)

END()
