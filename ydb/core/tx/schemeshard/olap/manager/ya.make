LIBRARY()

SRCS(
    manager.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/scheme
    ydb/core/tx/schemeshard/olap/table
    ydb/core/tx/schemeshard/olap/layout
)

END()
