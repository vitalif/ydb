YQL_LIBRARY()

SRCS(
    schema.cpp
    update.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/columns
    ydb/core/tx/schemeshard/olap/indexes
    ydb/core/tx/schemeshard/olap/options
    ydb/core/tx/schemeshard/common
)

END()
