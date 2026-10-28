LIBRARY()

SRCS(
    colors.cpp
    workload_factory.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    ydb/library/accessor
    ydb/public/sdk/cpp/src/client/table
    ydb/public/sdk/cpp/src/client/query
    ydb/public/sdk/cpp/src/client/table
    ydb/public/sdk/cpp/src/client/value
)

END()
