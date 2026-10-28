UNITTEST_FOR(ydb/core/statistics/service)

FORK_SUBTESTS()

SPLIT_FACTOR(60)

REQUIREMENTS(cpu:2)
SIZE(MEDIUM)

YQL_LAST_ABI_VERSION()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/library/yql/udfs/statistics_internal
    ydb/core/protos
    ydb/core/testlib/default
    ydb/core/statistics/ut_common
    yql/essentials/udfs/common/digest
    yql/essentials/udfs/common/hyperloglog
)

SRCS(
    ut_basic_statistics.cpp
    ut_column_statistics.cpp
    ut_http_request.cpp
)

END()
