UNITTEST()

SIZE(SMALL)

SRCS(
    kqp_tracing_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/tracing
    ydb/core/kqp/tracing/test_util
    ydb/library/actors/testlib
)

YQL_LAST_ABI_VERSION()

END()
