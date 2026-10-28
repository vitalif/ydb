GTEST()

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/base
    library/cpp/getopt
    library/cpp/svnversion
    ydb/core/erasure
    ydb/core/protos
)

SRCS(
    storage_pool_pile_override_ut.cpp
    ydb/core/blobstorage/base/batched_vec_ut.cpp
    ydb/core/blobstorage/base/bufferwithgaps_ut.cpp
    ydb/core/blobstorage/base/ptr_ut.cpp
)

END()
