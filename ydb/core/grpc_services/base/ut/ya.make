UNITTEST_FOR(ydb/core/grpc_services/base)

SRCS(
    path_aliasing_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
)

END()
