YQL_LIBRARY()

SRCS(
    pq_meta_fields.cpp
    pq_partitions.cpp
    pq_shared_reading.cpp
    yql_names.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/yql/providers/pq/proto
    ydb/public/sdk/cpp/src/client/topic
    yql/essentials/public/types
    yql/essentials/public/udf
)

END()

RECURSE_FOR_TESTS(
    ut
)
