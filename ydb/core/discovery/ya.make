YQL_LIBRARY()

SRCS(
    discovery.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/blobstorage/base
    ydb/core/tx/scheme_cache
    ydb/library/actors/core
)

END()
