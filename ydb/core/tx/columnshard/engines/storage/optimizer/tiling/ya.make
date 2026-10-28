LIBRARY()

SRCS(
    GLOBAL tiling.cpp
    counters.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    library/cpp/json
    ydb/core/protos
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/blobs_action/abstract
    ydb/core/tx/columnshard/engines/changes/abstract
    ydb/core/tx/columnshard/engines/scheme
    ydb/core/tx/columnshard/engines/storage/optimizer/lbuckets/planner
    ydb/library/intersection_tree
)

END()
