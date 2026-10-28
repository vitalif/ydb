UNITTEST_FOR(ydb/core/kqp/compile_service/helpers)

FORK_SUBTESTS()
SPLIT_FACTOR(50)

SIZE(MEDIUM)

SRCS(
   kqp_compile_cache_helpers_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
   ydb/core/protos
   library/cpp/testing/unittest
)

END()
