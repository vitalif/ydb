LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/abstract
    ydb/library/yql/providers/pq/gateway/abstract
    ydb/public/sdk/cpp/src/client/topic
)

END()
