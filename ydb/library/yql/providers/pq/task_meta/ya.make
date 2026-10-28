LIBRARY()

SRCS(
    task_meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/dq/api/protos
    ydb/library/yql/providers/pq/proto
)

YQL_LAST_ABI_VERSION()

END()
