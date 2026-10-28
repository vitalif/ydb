LIBRARY()

SRCS(
    manager.cpp
    GLOBAL behaviour.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/grpc_services/local_rpc
    ydb/core/kqp/federated_query/actors
    ydb/core/kqp/gateway/actors
    ydb/core/kqp/gateway/utils

    ydb/library/conclusion
    ydb/library/yql/dq/actors

    ydb/services/metadata/abstract
    ydb/services/metadata/initializer
    ydb/services/metadata/secret
    ydb/services/scheme_secret
)

YQL_LAST_ABI_VERSION()

END()
