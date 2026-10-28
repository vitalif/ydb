UNITTEST_FOR(ydb/services/scheme_secret)

SIZE(MEDIUM)
IF (SANITIZER_TYPE)
    REQUIREMENTS(cpu:2)
ELSE()
    REQUIREMENTS(cpu:2)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/scheme_secret
    ydb/services/scheme_secret/ut/common
    ydb/core/kqp/ut/common
    yql/essentials/sql/pg_dummy
)

SRCS(
    service_ut.cpp
)

YQL_LAST_ABI_VERSION()

END()
