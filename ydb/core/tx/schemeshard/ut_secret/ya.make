UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/basics/default
    ydb/core/tx/schemeshard/ut_helpers
)

SRCS(
    ut_secret.cpp
)

YQL_LAST_ABI_VERSION()

END()
