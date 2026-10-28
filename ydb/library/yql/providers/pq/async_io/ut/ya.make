UNITTEST()

SRCS(
    dq_pq_cpu_quota_ut.cpp
    dq_pq_read_state_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/common/message_stream/async_io
    ydb/library/yql/providers/common/ut_helpers
    ydb/library/yql/providers/pq/async_io
    yql/essentials/parser/pg_wrapper
    yql/essentials/public/udf/service/stub
)

YQL_LAST_ABI_VERSION()

END()
