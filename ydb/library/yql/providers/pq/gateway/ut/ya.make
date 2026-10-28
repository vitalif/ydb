UNITTEST_FOR(ydb/library/yql/providers/pq/gateway)

SIZE(MEDIUM)

SRCS(
    composite_client_ut.cpp
    message_stream_client_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/basics
    ydb/library/testlib/common
    ydb/library/testlib/pq_helpers
    ydb/library/yql/providers/pq/async_io
    ydb/library/yql/providers/pq/gateway/clients/composite
    ydb/library/yql/providers/pq/gateway/clients/message_stream
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
