UNITTEST_FOR(ydb/core/kqp)

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/ut/common
    ydb/core/testlib/default
    ydb/core/tx
    ydb/core/tx/datashard/ut_common
    ydb/public/sdk/cpp/src/client/types
)

YQL_LAST_ABI_VERSION()

SRCS(
    kqp_read_null_ut.cpp
)


END()
