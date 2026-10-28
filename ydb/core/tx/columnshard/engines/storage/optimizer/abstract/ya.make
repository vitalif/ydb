LIBRARY()

SRCS(
    optimizer.cpp
    counters.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow
    ydb/core/protos
    ydb/core/tx/columnshard/engines/changes/abstract
)

END()
