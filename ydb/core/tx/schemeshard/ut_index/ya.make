UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

SPLIT_FACTOR(80)

REQUIREMENTS(cpu:2)

IF (SANITIZER_TYPE)
    SIZE(LARGE)
    INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
ELSE()
    SIZE(MEDIUM)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/scheme
    ydb/core/testlib/default
    ydb/core/tx/schemeshard/ut_helpers
)

SRCS(
    ut_async_index.cpp
    ut_unique_index.cpp
    ut_vector_index.cpp
    ut_fulltext_index.cpp
    ut_json_index.cpp
)

YQL_LAST_ABI_VERSION()

END()
