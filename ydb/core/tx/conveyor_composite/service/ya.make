LIBRARY()

GENERATE_ENUM_SERIALIZATION_WITH_HEADER(work_status.h)

SRCS(
    worker.cpp
    service.cpp
    process.cpp
    common.cpp
    manager.cpp
    workers_pool.cpp
    category.cpp
    scope.cpp
    counters.cpp
    events.cpp
    query.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/cms/console
    ydb/core/config/validation
    ydb/core/kqp/runtime
    ydb/core/protos
    ydb/core/tx/conveyor_composite/tracing
    ydb/core/tx/conveyor_composite/usage
    ydb/library/actors/async
    ydb/library/yql/dq/actors/compute
)

END()
