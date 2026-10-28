YQL_LIBRARY()

SRCS(
    update.cpp
    object.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/operations/alter/abstract
    ydb/public/sdk/cpp/src/client/types/credentials
)

END()
