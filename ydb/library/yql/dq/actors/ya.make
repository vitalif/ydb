LIBRARY()

GRPC()

SRCS(
    dq.cpp
    dq_events_ids.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/dq/actors/protos
    ydb/library/yql/public/ydb_issue
    yql/essentials/public/issue
)

END()

RECURSE(
    common
    compute
    input_transforms
    spilling
    task_runner
)
