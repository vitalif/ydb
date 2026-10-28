LIBRARY()

SRCS(
    GLOBAL behaviour.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/gateway/behaviour/tablestore
)

YQL_LAST_ABI_VERSION()

END()
