UNITTEST_FOR(ydb/core/kqp/federated_query/actors/pq_checkpoint_provider_integration)

SRCS(
    pq_checkpoint_provider_integration_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/core/base
    ydb/library/actors/testlib
    ydb/library/testlib/pq_helpers
    yql/essentials/public/udf/service/exception_policy
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
