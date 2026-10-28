UNITTEST_FOR(ydb/core/persqueue/pqtablet/partition/mlp)

YQL_LAST_ABI_VERSION()

# UseRealThreads=false + FullInit/WaitFuture makes each case several minutes.
SIZE(LARGE)
INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
TIMEOUT(1800)

SRCS(
    mlp_simthreads_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/mlp/ut/common
)
ENV(INSIDE_YDB="1")
END()
