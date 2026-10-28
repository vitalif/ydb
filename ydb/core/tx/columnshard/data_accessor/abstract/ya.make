LIBRARY()

SRCS(
    manager.cpp
    collector.cpp
    constructor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/engines/reader/tracing
    ydb/core/protos
)

END()
