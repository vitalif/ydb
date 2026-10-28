UNITTEST_FOR(ydb/core/kqp)

FORK_SUBTESTS()
SPLIT_FACTOR(50)

IF (SANITIZER_TYPE)
    SIZE(MEDIUM)
    REQUIREMENTS(cpu:2)
ELSE()
    SIZE(MEDIUM)
    REQUIREMENTS(cpu:2)
ENDIF()

SRCS(
    kqp_cost_ut.cpp
    kqp_affected_rows_pg_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp
    ydb/core/kqp/ut/common
    ydb/library/yql/udfs/common/knn
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
