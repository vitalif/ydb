LIBRARY()

SRCS(
    agent.cpp
    client.cpp
    owner.cpp
    private.cpp
    object_counter.cpp
    histogram.cpp
    signal_utils.cpp
    states.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/monlib/dynamic_counters
    library/cpp/threading/future
    ydb/core/protos
    ydb/core/base
)

END()
