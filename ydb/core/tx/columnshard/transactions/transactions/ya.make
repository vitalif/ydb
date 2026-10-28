LIBRARY()

SRCS(
    tx_add_sharding_info.cpp
    tx_finish_async.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/metadata/abstract
    ydb/core/tx/columnshard/blobs_action/protos
    ydb/core/tx/columnshard/data_sharing/protos
)

END()
