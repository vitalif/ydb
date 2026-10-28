UNITTEST_FOR(ydb/core/kqp)

SIZE(MEDIUM)
FORK_SUBTESTS()

SRCS(
    kqp_ydb_external_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/grpc
    ydb/core/grpc_services/local_rpc
    ydb/core/kqp/ut/common
    ydb/core/kqp/ut/federated_query/common
    ydb/core/security/certificate_check/test_utils
    ydb/library/yql/providers/s3/actors
    ydb/public/api/grpc
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
