UNITTEST_FOR(ydb/library/grpc/server)

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/grpc/server
)

SRCS(
    grpc_response_ut.cpp
    stream_adaptor_ut.cpp
)

END()

