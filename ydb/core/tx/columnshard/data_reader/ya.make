LIBRARY()

SRCS(
    actor.cpp
    fetcher.cpp
    fetching_executor.cpp
    fetching_steps.cpp
    contexts.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/tx/columnshard/blobs_action/abstract
    ydb/library/actors/core
    ydb/core/tx/columnshard/engines/writer
    ydb/core/kqp/compute_actor
)

GENERATE_ENUM_SERIALIZATION(contexts.h)

END()
