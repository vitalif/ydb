LIBRARY()

SRCS(
    abstract.cpp
    compaction_info.cpp
    settings.cpp
    remove_portions.cpp
    move_portions.cpp
    changes.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/signals
    ydb/core/tx/columnshard/engines/changes/counters
    ydb/core/tablet_flat
    yql/essentials/core/expr_nodes
    ydb/core/tx/columnshard/blobs_action
)

GENERATE_ENUM_SERIALIZATION(abstract.h)

END()
