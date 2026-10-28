YQL_LIBRARY()

SRCS(
    result.cpp
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/query_data
    ydb/core/kqp/common/simple
    yql/essentials/public/issue
)

END()
