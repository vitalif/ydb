LIBRARY()

SRCS(
    basic_test.cpp
    objectwithstate.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/protos
    ydb/core/base
    ydb/core/blobstorage/pdisk
    ydb/library/pdisk_io
    library/cpp/deprecated/atomic
)

END()
