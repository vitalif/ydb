RECURSE_FOR_TESTS(
    ut
)

LIBRARY()

SRCS(
    request.cpp
    manager.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/data_accessor/abstract
    ydb/core/tx/columnshard/data_accessor/local_db
    ydb/core/tx/columnshard/data_accessor/cache_policy
    ydb/core/tx/columnshard/resource_subscriber
)

END()
