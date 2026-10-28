UNITTEST_FOR(ydb/core/kqp)

FORK_SUBTESTS()
SPLIT_FACTOR(30)

REQUIREMENTS(cpu:2)
SIZE(MEDIUM)

SRCS(
    kqp_fulltext_build_ut.cpp
    kqp_fulltext_search_ut.cpp
    kqp_fulltext_ut_common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/threading/local_executor
    ydb/core/kqp
    ydb/core/kqp/ut/common
    ydb/core/kqp/ut/indexes/common
    ydb/library/yql/providers/common/http_gateway
    ydb/library/yql/udfs/common/knn
    yql/essentials/sql/pg_dummy
    ydb/public/sdk/cpp/adapters/issue
)

YQL_LAST_ABI_VERSION()

END()
