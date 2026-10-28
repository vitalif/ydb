UNITTEST_FOR(ydb/core/fq/libs/actors)

SIZE(MEDIUM)

FORK_SUBTESTS()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/retry
    library/cpp/testing/unittest
    ydb/core/fq/libs/actors
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

SRCS(
    database_resolver_ut.cpp
)

END()
