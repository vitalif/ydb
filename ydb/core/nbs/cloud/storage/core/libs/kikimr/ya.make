LIBRARY()

SRCS(
    helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/nbs/cloud/storage/core/libs/actors
    ydb/core/nbs/cloud/storage/core/libs/common

    ydb/library/actors/core

    ydb/core/protos
)

END()
