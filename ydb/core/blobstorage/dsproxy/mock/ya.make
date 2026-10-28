LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/blobstorage/base
)

SRCS(
    defs.h
    dsproxy_mock.cpp
    dsproxy_mock.h
)

END()
