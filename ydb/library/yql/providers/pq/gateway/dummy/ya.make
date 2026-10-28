LIBRARY()

SRCS(
    yql_pq_dummy_gateway_factory.cpp
    yql_pq_dummy_gateway.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/pq/gateway/abstract
    ydb/library/yql/providers/pq/gateway/clients/file
)

END()
