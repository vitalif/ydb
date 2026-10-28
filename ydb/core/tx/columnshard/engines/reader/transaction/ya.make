LIBRARY()

SRCS(
    common.cpp
    tx_scan.cpp
    tx_internal_scan.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/reader/abstract
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/engines/reader/actor
    ydb/core/tx/columnshard/engines/reader/common
)

END()
