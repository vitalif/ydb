LIBRARY()

SRCS(
    abstract.cpp
    composite.cpp
    lambda.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/counters
    ydb/core/tx/columnshard/tracing
)

END()
