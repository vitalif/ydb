LIBRARY()

SRCS(
    layout.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/scheme
    ydb/core/tablet_flat
)

END()
