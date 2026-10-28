LIBRARY()

SRCS(
    data.cpp
    column.cpp
    chunked_array_serialized.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/splitter/abstract
    ydb/core/tx/columnshard/splitter
    ydb/core/tx/columnshard/engines/scheme/versions
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/counters
    ydb/library/formats/arrow/splitter
)

END()

RECURSE_FOR_TESTS(
    ut
)
