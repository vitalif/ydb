LIBRARY()

SRCS(
    manager.cpp
    events.cpp
    merge.cpp
    common.cpp
    private_events.cpp
    splitter.cpp
    context.cpp
    executor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/filter
    ydb/core/tx/columnshard/engines/reader/common_reader/iterator
)

END()
