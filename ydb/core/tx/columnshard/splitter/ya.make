LIBRARY()

SRCS(
    batch_slice.cpp
    chunks.cpp
    column_info.cpp
    settings.cpp
    blob_info.cpp
    chunk_meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/tx/columnshard/splitter/abstract
    ydb/core/tx/columnshard/engines/scheme
    ydb/core/formats/arrow/splitter
)

END()

RECURSE_FOR_TESTS(
    ut
)
