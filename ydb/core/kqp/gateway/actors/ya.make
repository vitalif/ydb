LIBRARY()

SRCS(
    scheme.cpp
    analyze_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/tracing
    ydb/core/tx/tx_proxy
    ydb/core/kqp/common
    ydb/core/kqp/provider
    yql/essentials/providers/common/gateway
    ydb/core/tx/schemeshard
    ydb/library/actors/core
    ydb/library/services
)

YQL_LAST_ABI_VERSION()

END()
