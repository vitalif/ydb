LIBRARY()

SRCS(
    grpc_request.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib
    ydb/core/grpc_services/base
    ydb/library/ydb_issue
    ydb/public/api/protos
)

END()
