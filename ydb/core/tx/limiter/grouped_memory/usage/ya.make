LIBRARY()

SRCS(
    events.cpp
    config.cpp
    abstract.cpp
    service.cpp
    stage_features.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/services/metadata/request
    ydb/core/tx/limiter/grouped_memory/service
)

END()
