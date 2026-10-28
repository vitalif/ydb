UNITTEST_FOR(ydb/core/tx/schemeshard)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/core/tx/tx_proxy
    ydb/services/ydb
    ydb/services/kesus
    ydb/services/persqueue_cluster_discovery
    yql/essentials/minikql/comp_nodes/llvm16
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
    yt/yql/providers/yt/comp_nodes/dq/llvm16
    yt/yql/providers/yt/comp_nodes/llvm16
)

SRCS(
    ut_ru_calculator.cpp
)

YQL_LAST_ABI_VERSION()

END()
