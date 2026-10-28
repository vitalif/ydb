UNITTEST()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/discovery
    ydb/core/kqp/ut/common

    yql/essentials/sql/pg_dummy
)

SRCS(
    kqp_discovery_ut.cpp
)

YQL_LAST_ABI_VERSION()

END()
