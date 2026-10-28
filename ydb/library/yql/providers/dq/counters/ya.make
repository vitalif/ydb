YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/dq/runtime
)

SRCS(
    counters.cpp
    task_counters.cpp
)


   
END()
