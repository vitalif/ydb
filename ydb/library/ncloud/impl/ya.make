RECURSE_FOR_TESTS(
    ut
)

YQL_LIBRARY()

SRCS(
    access_service.cpp
    access_service.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/grpc/actor_client
    ydb/library/ncloud/api
    ydb/core/base
)

END()
