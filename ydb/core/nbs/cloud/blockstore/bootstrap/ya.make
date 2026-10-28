LIBRARY()

SRCS(
    bootstrap.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/nbs/cloud/blockstore/libs/nbs_frontend
    ydb/core/nbs/cloud/blockstore/libs/vhost
    ydb/core/nbs/cloud/blockstore/config
    ydb/core/nbs/cloud/storage/core/libs/common
    ydb/core/protos
)

END()
