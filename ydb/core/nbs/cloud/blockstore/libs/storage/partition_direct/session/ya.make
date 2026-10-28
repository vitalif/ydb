LIBRARY()

SRCS(
    partition_session.cpp
    partition_session_control.cpp
    partition_session_state.cpp
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/nbs/cloud/blockstore/libs/service
    ydb/core/protos
    ydb/library/actors/core
    library/cpp/threading/hot_swap
)

END()

RECURSE_FOR_TESTS(ut)
