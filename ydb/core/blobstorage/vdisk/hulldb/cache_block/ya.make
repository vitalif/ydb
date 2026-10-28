LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/vdisk/hulldb/base
    ydb/core/blobstorage/vdisk/protos
    ydb/core/protos
)

SRCS(
    cache_block.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
