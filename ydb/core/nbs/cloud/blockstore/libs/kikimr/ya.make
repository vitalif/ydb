LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/nbs/cloud/storage/core/libs/common
    ydb/core/protos
    ydb/core/nbs/cloud/storage/core/protos
)

END()
