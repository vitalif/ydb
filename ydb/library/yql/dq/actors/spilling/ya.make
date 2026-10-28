YQL_LIBRARY()

SRCS(
    channel_storage_actor.cpp
    channel_storage.cpp
    compute_storage_actor.cpp
    compute_storage.cpp
    spilling_counters.cpp
    spilling_file.cpp
    spilling.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/services
    ydb/library/yql/dq/common
    ydb/library/yql/dq/actors
    ydb/library/yql/dq/runtime
    yql/essentials/utils

    ydb/library/actors/core
    ydb/library/actors/util
    library/cpp/monlib/dynamic_counters
    library/cpp/monlib/service/pages
)

END()

RECURSE_FOR_TESTS(
    ut
)
