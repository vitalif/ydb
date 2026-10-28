UNITTEST_FOR(ydb/core/fq/libs/checkpointing)

SRCS(
    checkpoint_coordinator_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/core/fq/libs/checkpointing
    ydb/core/testlib/actors
    ydb/core/testlib/basics/default
)

SIZE(MEDIUM)

YQL_LAST_ABI_VERSION()

END()
