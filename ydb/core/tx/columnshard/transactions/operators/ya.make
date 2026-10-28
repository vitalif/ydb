LIBRARY()

SRCS(
    GLOBAL schema.cpp
    GLOBAL backup.cpp
    GLOBAL sharing.cpp
    GLOBAL restore.cpp
    propose_tx.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/backup/import
    ydb/core/tx/columnshard/data_sharing/destination/events
    ydb/core/tx/columnshard/export/session
    ydb/core/tx/columnshard/transactions/operators/ev_write
)

END()
