UNITTEST_FOR(ydb/library/yql/dq/actors/common)

SRCS(
    retry_events_queue_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/library/actors/testlib
    ydb/library/yql/dq/actors/protos
    ydb/library/yql/dq/common
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
