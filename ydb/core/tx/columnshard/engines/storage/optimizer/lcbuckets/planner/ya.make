LIBRARY()

SRCS(
    GLOBAL optimizer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/protos
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/changes/abstract
    ydb/core/tx/columnshard/engines/storage/optimizer/lcbuckets/planner/level
    ydb/core/tx/columnshard/engines/storage/optimizer/lcbuckets/planner/selector
)

END()
