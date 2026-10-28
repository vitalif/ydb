LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/vdisk/common
    ydb/core/protos
)

SRCS(
    blobstorage_hullcompdelete.cpp
    blobstorage_hullcompdelete.h
)

END()
