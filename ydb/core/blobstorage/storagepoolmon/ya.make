LIBRARY()

SRCS(
    storagepool_counters.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/monlib/dynamic_counters
    ydb/core/base
    ydb/core/blobstorage/base
)

END()

RECURSE_FOR_TESTS(
    ut
)
