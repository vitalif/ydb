UNITTEST_FOR(ydb/core/grpc_services)

TAG(ya:manual)

SIZE(MEDIUM)

SRCS(
    read_rows_bench.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp
    ydb/core/kqp/ut/common
    ydb/core/ydb_convert
    ydb/public/sdk/cpp/src/client/proto
    yql/essentials/types/binary_json
    yql/essentials/sql/pg_dummy
    yql/essentials/public/udf/service/exception_policy
)

YQL_LAST_ABI_VERSION()

END()
