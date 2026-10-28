UNITTEST_FOR(ydb/core/graph/shard)

SIZE(SMALL)

SRC(
    shard_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/helpers
    ydb/core/tx/schemeshard/ut_helpers
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

END()
