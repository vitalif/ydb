LIBRARY()

SRCS(
    tx_change_blobs_owning.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat
    ydb/core/tx/tiering
    ydb/services/metadata/abstract
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/core/tx/columnshard/blobs_action/protos
    ydb/core/base
    ydb/core/tx/tiering
)

END()
