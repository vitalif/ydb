LIBRARY()

SRCS(
    manager.cpp
    GLOBAL behaviour.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/kqp/gateway/actors
    ydb/core/kqp/provider
    ydb/core/tx/tx_proxy
    ydb/services/metadata/abstract
    ydb/services/metadata/manager
)

YQL_LAST_ABI_VERSION()

END()
