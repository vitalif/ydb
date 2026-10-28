LIBRARY()

SRCS(
    GLOBAL gc_counters.cpp
    GLOBAL broken_txs.cpp
    GLOBAL clean_orphaned_operations.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/normalizer/abstract
    ydb/core/tx/columnshard/blobs_action
)

END()
