LIBRARY()

SRCS(
    consumer_collection.cpp
    memory_controller.cpp
    memtable_collection.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/cms/console
    ydb/core/mon_alloc
    ydb/core/node_whiteboard
    ydb/core/tablet
    ydb/library/actors/core
    ydb/library/services
    yql/essentials/minikql
    yql/essentials/utils/memory_profiling
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)
