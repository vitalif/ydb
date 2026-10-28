YQL_LIBRARY()

SRCS(
    kqp_counters.cpp
    kqp_counters.h
    kqp_db_counters.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/tx/tx_proxy
    ydb/core/sys_view/service
    ydb/library/yql/dq/actors/spilling
    yql/essentials/minikql
)

END()
