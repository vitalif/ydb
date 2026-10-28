LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/lwtrace/protos
    ydb/library/actors/protos
    ydb/core/protos
)

SRCS(
    counter_time_keeper.h
    counter_time_keeper.cpp
)

END()
