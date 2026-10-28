YQL_LIBRARY()

SRCS(
    utils.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/library/conclusion
    ydb/library/yql/providers/pq/proto
    ydb/library/yverify_stream
    yql/essentials/minikql
    yql/essentials/sql/v1/translation
)

END()
