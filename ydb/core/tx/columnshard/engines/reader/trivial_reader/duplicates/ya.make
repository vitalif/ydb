LIBRARY()

SRCS(
    borders_flow_controller.cpp
    common.cpp
    context.cpp
    events.cpp
    executor.cpp
    filters.cpp
    hang_tracker.cpp
    manager.cpp
    merge.cpp
    private_events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/filter
    ydb/core/tx/columnshard/engines/reader/common_reader/iterator
)

END()

RECURSE_FOR_TESTS(
    ut
)
