UNITTEST_FOR(ydb/core/kqp)

FORK_SUBTESTS()
SPLIT_FACTOR(3)

SIZE(MEDIUM)

SRCS(
    kqp_query_trace_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/tracing/test_util
    ydb/core/kqp/ut/common
    ydb/core/testlib/default
    ydb/core/tx/datashard/ut_common
    ydb/library/actors/wilson/test_util
)

YQL_LAST_ABI_VERSION()

END()
