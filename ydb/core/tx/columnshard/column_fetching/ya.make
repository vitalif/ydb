LIBRARY()

SRCS(
    cache_policy.cpp
    manager.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/general_cache
    ydb/library/actors/core
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/resource_subscriber
)

END()
