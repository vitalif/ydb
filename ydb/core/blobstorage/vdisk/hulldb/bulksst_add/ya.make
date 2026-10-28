LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/vdisk/common
    ydb/core/protos
)

SRCS(
    hulldb_bulksst_add.cpp
    hulldb_bulksst_add.h
    hulldb_fullsyncsst_add.h
)

END()

