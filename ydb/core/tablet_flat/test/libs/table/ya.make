LIBRARY()

SRCS(
    misc.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat/test/libs/rows
    ydb/core/tablet_flat/test/libs/table/model
    ydb/core/tablet_flat
)

END()

RECURSE(
    model
)
