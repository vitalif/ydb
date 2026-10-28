PROGRAM()

SRCS(
    main.cpp
    proxy.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/public/api/grpc
    ydb/public/sdk/cpp/src/client/discovery
    ydb/library/grpc/server
    ydb/apps/etcd_proxy/service
    yql/essentials/parser/pg_wrapper
    yql/essentials/public/udf/service/exception_policy
)

END()
