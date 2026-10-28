LIBRARY()

SRCS(
    log.h
    service_impl.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/graph/api
    ydb/public/sdk/cpp/src/client/params
)

END()
