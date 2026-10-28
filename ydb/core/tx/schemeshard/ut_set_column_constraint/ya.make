UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()
SPLIT_FACTOR(60)
SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    library/cpp/regex/pcre
    library/cpp/svnversion
    ydb/core/grpc_services/local_rpc
    ydb/core/metering
    ydb/core/testlib/default
    ydb/core/tx
    ydb/core/tx/schemeshard/ut_helpers
    ydb/public/api/protos
)

YQL_LAST_ABI_VERSION()

SRCS(
    ut_set_column_constraint.cpp
)

END()
