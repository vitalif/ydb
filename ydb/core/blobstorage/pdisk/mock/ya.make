LIBRARY()

SRCS(
    pdisk_mock.cpp
    pdisk_mock.h
    subsystem.cpp
    subsystem.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/blobstorage/pdisk
)

END()
