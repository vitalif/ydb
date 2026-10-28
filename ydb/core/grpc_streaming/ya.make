LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/grpc
    ydb/library/actors/core
    ydb/library/grpc/server
    ydb/core/base
)

SRCS(
    grpc_streaming.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
