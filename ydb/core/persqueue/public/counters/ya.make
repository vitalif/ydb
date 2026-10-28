LIBRARY()

SRCS(
    percentile_counter.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/monlib/dynamic_counters
    ydb/library/persqueue/topic_parser
)

END()
