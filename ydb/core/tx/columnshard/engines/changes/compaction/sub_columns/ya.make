LIBRARY()

SRCS(
    GLOBAL logic.cpp
    builder.cpp
    remap.cpp
    iterator.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/containers/absl
    ydb/core/tx/columnshard/engines/changes/compaction/common
    ydb/core/formats/arrow/accessor/dictionary
    ydb/core/formats/arrow/accessor/sub_columns
)

END()

RECURSE_FOR_TESTS(
    ut
)
