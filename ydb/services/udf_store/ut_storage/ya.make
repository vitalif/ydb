UNITTEST()

SIZE(MEDIUM)
FORK_SUBTESTS()
YQL_LAST_ABI_VERSION()

SRCS(
    artifact_state_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/core/kqp/ut/common
    ydb/public/sdk/cpp/src/client/proto
    ydb/services/udf_store
    yql/essentials/sql/pg_dummy
)

END()
