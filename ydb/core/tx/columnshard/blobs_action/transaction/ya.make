LIBRARY()

SRCS(
    tx_draft.cpp
    tx_write_index.cpp
    tx_gc_indexed.cpp
    tx_remove_blobs.cpp
    tx_blobs_written.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    contrib/libs/apache/arrow
    ydb/core/tablet_flat
    ydb/core/tx/tiering
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/core/tx/columnshard/blobs_action/events
    ydb/core/tx/columnshard/tracing
)

END()
