LIBRARY()

SRCS(
    blobstorage_probes.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/grpc
    library/cpp/lwtrace/protos
    ydb/core/base
    ydb/core/protos
)

END()
