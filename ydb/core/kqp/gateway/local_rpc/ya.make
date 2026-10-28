LIBRARY()

SRCS(
    helper.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/grpc_services/local_rpc
    ydb/core/kqp/provider
    ydb/library/ydb_issue
)

YQL_LAST_ABI_VERSION()

END()
