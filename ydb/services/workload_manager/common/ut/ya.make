UNITTEST_FOR(ydb/services/workload_manager/common)

SRCS(
    cpu_quota_manager_ut.cpp
    helpers_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
)

YQL_LAST_ABI_VERSION()

END()
