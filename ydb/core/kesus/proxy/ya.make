LIBRARY()

SRCS(
    events.cpp
    proxy.cpp
    proxy_actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/erasure
    ydb/core/kesus/tablet
    ydb/core/scheme
    ydb/core/tx/scheme_cache
    ydb/library/services
    ydb/public/api/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
