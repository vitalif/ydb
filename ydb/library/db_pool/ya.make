LIBRARY()

SRCS(
    db_pool.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    library/cpp/monlib/dynamic_counters
    ydb/library/db_pool/protos
    ydb/library/security
    ydb/library/yverify_stream
    ydb/public/sdk/cpp/src/client/driver
    ydb/public/sdk/cpp/src/client/table
)

END()

