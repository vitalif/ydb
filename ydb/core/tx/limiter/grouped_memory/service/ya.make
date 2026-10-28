LIBRARY()

SRCS(
    actor.cpp
    manager.cpp
    counters.cpp
    group.cpp
    process.cpp
    allocation.cpp
    ids.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/signals
    ydb/core/tx/limiter/grouped_memory/tracing
)

GENERATE_ENUM_SERIALIZATION(allocation.h)

END()
