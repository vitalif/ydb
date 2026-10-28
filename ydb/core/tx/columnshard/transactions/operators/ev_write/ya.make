LIBRARY()

SRCS(
    GLOBAL secondary.cpp
    GLOBAL simple.cpp
    GLOBAL primary.cpp
    abstract.cpp
    sync.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/metadata/abstract
    ydb/core/tx/columnshard/blobs_action/events
    ydb/core/tx/columnshard/data_sharing/destination/events
    ydb/core/tx/columnshard/transactions/locks
    ydb/core/tx/columnshard/tracing
)

END()
