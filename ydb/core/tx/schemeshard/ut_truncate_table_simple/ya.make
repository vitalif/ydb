UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/ut/common
    ydb/core/testlib/default
    ydb/core/tx
    ydb/core/tx/schemeshard/ut_helpers
)

SRCS(
    ut_truncate_table_simple.cpp
)

YQL_LAST_ABI_VERSION()

END()
