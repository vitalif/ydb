LIBRARY()

SRCS(
    general.cpp
    changes.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/actors/core
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/blobs_action/counters
    ydb/library/signals
)

GENERATE_ENUM_SERIALIZATION(changes.h)

END()
