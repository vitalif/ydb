UNITTEST_FOR(ydb/core/grpc_services)

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/testlib/default
    ydb/library/testlib/service_mocks
)

YQL_LAST_ABI_VERSION()

SRCS(
    grpc_request_check_actor_ut.cpp
)

END()
