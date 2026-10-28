LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/base
    ydb/core/blobstorage/vdisk/common
    ydb/core/blobstorage/vdisk/hulldb/bulksst_add
    ydb/core/protos
)

SRCS(
    hulldb_recovery.cpp
    hulldb_recovery.h
)

END()

