UNITTEST_FOR(ydb/core/tx/columnshard/blobs_reader)

SIZE(SMALL)

SRCS(
    ut_retry.cpp
    ut_glue.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/library/actors/testlib
    ydb/library/signals
    ydb/core/tx/columnshard/blobs_action/counters
    ydb/core/tx/columnshard/blobs_action/abstract
    ydb/core/tx/columnshard/common
    ydb/core/tx/columnshard/resource_subscriber
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
