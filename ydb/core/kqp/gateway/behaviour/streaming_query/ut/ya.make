UNITTEST_FOR(ydb/core/kqp/gateway/behaviour/streaming_query)

FORK_SUBTESTS()
SPLIT_FACTOR(10)
SIZE(MEDIUM)

SRCS(
    scheme_transaction_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

END()
