UNITTEST_FOR(ydb/library/yql/providers/pq/common)

SRCS(
    pq_meta_fields_ut.cpp
    pq_shared_reading_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/pq/common
)

YQL_LAST_ABI_VERSION()

END()
