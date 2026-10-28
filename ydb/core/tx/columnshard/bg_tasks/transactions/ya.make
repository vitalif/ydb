LIBRARY()

SRCS(
    tx_general.cpp
    tx_save_progress.cpp
    tx_save_state.cpp
    tx_remove.cpp
    tx_add.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/bg_tasks/abstract
    ydb/core/tx/columnshard/bg_tasks/events
    ydb/core/tx/columnshard/bg_tasks/session
    ydb/core/protos
)

END()
