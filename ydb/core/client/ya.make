LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
    ydb/core/base
    ydb/core/client/scheme_cache_lib
    ydb/core/client/server
    ydb/core/engine
    ydb/public/lib/deprecated/kicli
)

END()

RECURSE(
    metadata
    minikql_compile
    scheme_cache_lib
    server
)

RECURSE_FOR_TESTS(
    ut
)
