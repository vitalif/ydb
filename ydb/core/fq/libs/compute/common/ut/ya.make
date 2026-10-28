UNITTEST_FOR(ydb/core/fq/libs/compute/common)

FORK_SUBTESTS()

IF (SANITIZER_TYPE)
    SIZE(MEDIUM)
ENDIF()

SRCS(
    config_ut.cpp
    utils_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

RESOURCE(
    resources/plan.json      plan.json
    resources/stat.json      stat.json
)

END()
