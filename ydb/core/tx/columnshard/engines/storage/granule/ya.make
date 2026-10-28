LIBRARY()

SRCS(
    granule.cpp
    storage.cpp
    portions_index.cpp
    portion_interval_tree.cpp
    stages.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/storage/optimizer/abstract
    ydb/core/tx/columnshard/engines/storage/actualizer/index
    ydb/core/tx/columnshard/counters
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/hooks/abstract
    ydb/core/base
    ydb/core/formats/arrow/reader
    ydb/core/tx/columnshard/engines/storage/optimizer/lbuckets/planner
    ydb/core/tx/columnshard/engines/storage/optimizer/lcbuckets/planner
)

GENERATE_ENUM_SERIALIZATION(granule.h)

END()
