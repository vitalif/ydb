LIBRARY()

SRCS(
    abstract.cpp
    result.cpp
    limit.cpp
    aggr.cpp
    distinct_limit.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/filter
    ydb/core/tx/columnshard/counters
)

END()
