PROGRAM(cbo_latency_dataset)

SRCS(
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/json
    library/cpp/testing/common
    ydb/core/kqp
    ydb/core/kqp/opt/cbo/bench
    ydb/core/kqp/opt/cbo/solver
    ydb/core/testlib
    ydb/public/lib/ydb_cli/common
    yql/essentials/sql/pg_dummy
    yql/essentials/udfs/common/digest
)

YQL_LAST_ABI_VERSION()

END()
