LIBRARY()

    SRCS(
        bridge_proxy.cpp
        bridge_proxy.h
        defs.h
    )

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/core/blobstorage/dsproxy
        ydb/core/blobstorage/groupinfo
    )

END()
