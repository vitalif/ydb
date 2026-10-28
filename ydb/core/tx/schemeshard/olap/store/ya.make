LIBRARY()

SRCS(
    store.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/layout
    ydb/core/protos
)

END()
