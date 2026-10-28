LIBRARY()
    SRCS(
        defs.h
        syncer.cpp
        syncer.h
    )

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/core/base
        ydb/core/blobstorage/vdisk/common
    )
END()
