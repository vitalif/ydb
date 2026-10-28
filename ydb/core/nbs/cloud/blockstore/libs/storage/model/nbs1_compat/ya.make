LIBRARY()

SRCS(
    classic_volume.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/nbs/nbs1_compat_api/cloud/blockstore/public/api/protos
    ydb/core/protos
)

END()
