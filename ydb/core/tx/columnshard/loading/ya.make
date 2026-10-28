LIBRARY()

SRCS(
    stages.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/tx_reader
    ydb/core/tx/columnshard/tracing
    ydb/services/metadata/abstract
    ydb/core/tx/columnshard/blobs_action/events
    ydb/core/tx/columnshard/data_sharing
)

END()
