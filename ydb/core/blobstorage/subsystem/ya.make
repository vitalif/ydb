LIBRARY()

SRCS(subsystem.cpp)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/blobstorage/nodewarden
    ydb/core/blobstorage/subsystem/interface
)

END()

RECURSE(interface mock)

RECURSE_FOR_TESTS(ut)
