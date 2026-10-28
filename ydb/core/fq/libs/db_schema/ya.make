LIBRARY()

SRCS(
    db_schema.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/sdk/cpp/src/client/params
    ydb/public/sdk/cpp/src/client/table
)

END()
