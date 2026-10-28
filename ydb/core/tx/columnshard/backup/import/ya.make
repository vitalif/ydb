LIBRARY()

SRCS(
    GLOBAL session.cpp
    GLOBAL task.cpp
    GLOBAL control.cpp
    import_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/retry
    ydb/core/kqp/compute_actor
    ydb/core/scheme
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/backup/import/protos
    ydb/core/tx/columnshard/bg_tasks
    ydb/library/signals
)

GENERATE_ENUM_SERIALIZATION(session.h)

END()

RECURSE_FOR_TESTS(
    ut
)
