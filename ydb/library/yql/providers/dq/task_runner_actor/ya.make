YQL_LIBRARY()

SRCS(
    task_runner_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/yql/dq/actors/task_runner
    ydb/library/yql/dq/proto
    ydb/library/yql/providers/dq/api/protos
    ydb/library/yql/providers/dq/runtime # TODO: split runtime/runtime_data
    ydb/library/yql/utils/actors
    ydb/library/yql/providers/dq/task_runner
)

END()
