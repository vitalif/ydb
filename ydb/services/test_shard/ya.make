LIBRARY()

SRCS(
    grpc_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/api/grpc
    ydb/core/grpc_services
    ydb/core/test_tablet
)

END()

RECURSE_FOR_TESTS(
    ut
)
