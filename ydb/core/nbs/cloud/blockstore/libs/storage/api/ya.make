LIBRARY()

SRCS(
    service.cpp
    ss_proxy.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/nbs/cloud/blockstore/public/api/protos
    ydb/core/protos
    ydb/library/actors/core
)

END()
