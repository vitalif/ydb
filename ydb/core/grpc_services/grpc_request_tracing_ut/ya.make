UNITTEST_FOR(ydb/core/grpc_services)

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

SRCS(
    grpc_request_tracing_ut.cpp
)

END()
