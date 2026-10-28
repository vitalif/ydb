LIBRARY()

SRCS(
    manager.cpp
    GLOBAL behaviour.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/metadata/initializer
    ydb/services/metadata/abstract
    ydb/core/kqp/gateway/actors
    ydb/core/kqp/gateway/behaviour/tablestore/operations
)

YQL_LAST_ABI_VERSION()

END()
