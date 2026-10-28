LIBRARY()

SRCS(
    health.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/fq/libs/shared_resources
    ydb/core/mon
    ydb/public/sdk/cpp/src/client/discovery
)

YQL_LAST_ABI_VERSION()

END()
