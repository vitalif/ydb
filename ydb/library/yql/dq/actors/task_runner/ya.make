YQL_LIBRARY()

SRCS(
    events.cpp
    task_runner_actor_local.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/yql/dq/comp_nodes/operator_memory_quota
    ydb/library/yql/dq/runtime
    ydb/library/yql/dq/common
    ydb/library/yql/dq/proto
    yql/essentials/minikql/computation
    ydb/library/yql/utils/actors
    ydb/library/services
)

END()
