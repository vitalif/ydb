YQL_LIBRARY()

SRCS(
    query_metrics.h
    query_metrics.cpp
    query_stats.h
    query_stats.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/kqp/runtime
    ydb/core/sys_view/common
    ydb/core/sys_view/service
)

END()

RECURSE_FOR_TESTS(
    ut
)
