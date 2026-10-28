LIBRARY()

SRCS(
    actor.cpp
    task.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/retry
    ydb/core/protos
    ydb/library/actors/core
    ydb/core/tablet_flat
)

END()

RECURSE_FOR_TESTS(
    ut
)
