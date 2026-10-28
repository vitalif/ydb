YQL_LIBRARY()

SRCS(
    object.cpp
    update.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/operations/alter/abstract
    ydb/core/tx/schemeshard/olap/schema
    ydb/core/tx/schemeshard/olap/ttl
    ydb/core/tx/schemeshard/olap/table
)

END()
