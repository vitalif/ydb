LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/vdisk/hulldb/base
    ydb/core/blobstorage/vdisk/hulldb/generic
    ydb/core/protos
)

SRCS(
    defs.h
    testhull_index.h
    testhull_index.cpp
)

END()
