LIBRARY()

SRCS(
    merger.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/filter
    ydb/core/tx/tiering
    ydb/core/tx/columnshard/engines/changes/compaction/abstract
    ydb/core/tx/columnshard/engines/changes/compaction/common
    ydb/core/tx/columnshard/engines/changes/compaction/plain
    ydb/core/tx/columnshard/engines/changes/compaction/sparsed
    ydb/core/tx/columnshard/engines/changes/compaction/dictionary
    ydb/core/tx/columnshard/engines/changes/compaction/sub_columns
)

END()
