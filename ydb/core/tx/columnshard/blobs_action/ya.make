LIBRARY()

SRCS(
    blob_manager_db.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    contrib/libs/apache/arrow
    ydb/core/tablet_flat
    ydb/core/tx/tiering
    ydb/core/tx/columnshard/blobs_action/abstract
    ydb/core/tx/columnshard/blobs_action/counters
    ydb/core/tx/columnshard/blobs_action/transaction
    ydb/core/tx/columnshard/blobs_action/events
    ydb/core/tx/columnshard/blobs_action/protos
)

END()
