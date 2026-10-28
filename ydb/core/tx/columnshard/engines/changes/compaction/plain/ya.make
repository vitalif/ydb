LIBRARY()

SRCS(
    column_cursor.cpp
    column_portion_chunk.cpp
    merged_column.cpp
    GLOBAL logic.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/changes/compaction/common
)

END()
