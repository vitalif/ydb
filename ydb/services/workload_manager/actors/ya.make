YQL_LIBRARY()

SRCS(
    cpu_load_actors.cpp
    pool_handlers_actors.cpp
    resource_pool_tracker.cpp
    scheme_actors.cpp
    workload_manager_state_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/tx_proxy
    ydb/services/workload_manager/common
    ydb/services/workload_manager/tables
)

END()

RECURSE_FOR_TESTS(
    ut
)
