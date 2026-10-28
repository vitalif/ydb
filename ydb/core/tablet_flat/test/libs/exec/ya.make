LIBRARY()

SRCS()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/blobstorage/dsproxy/mock
    ydb/core/tablet_flat
    ydb/core/testlib/actors
)

END()
