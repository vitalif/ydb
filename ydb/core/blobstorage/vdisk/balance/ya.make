LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/base
    ydb/core/blobstorage/groupinfo
    ydb/core/blobstorage/vdisk/common
    ydb/core/blobstorage/vdisk/hulldb
    ydb/core/blobstorage/vdisk/ingress
    ydb/core/blobstorage/vdisk/repl
)

SRCS(
    balancing_actor.cpp
    deleter.cpp
    handoff_map.cpp
    sender.cpp
    utils.cpp
)

END()

