UNITTEST_FOR(ydb/core/tx/schemeshard)

FORK_SUBTESTS()

SPLIT_FACTOR(11)

IF (SANITIZER_TYPE == "thread")
    SIZE(LARGE)
    INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)
ELSE()
    SIZE(MEDIUM)
ENDIF()

INCLUDE(${ARCADIA_ROOT}/ydb/tests/supp/ubsan_supp.inc)

IF (NOT OS_WINDOWS)
    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        library/cpp/getopt
        library/cpp/regex/pcre
        library/cpp/svnversion
        ydb/core/testlib/default
        ydb/core/tx
        ydb/core/tx/schemeshard/ut_helpers
        ydb/core/util
        ydb/core/wrappers/ut_helpers
        ydb/library/aws_init
        yql/essentials/public/udf/service/exception_policy
    )
    SRCS(
        ut_backup.cpp
    )
ENDIF()

YQL_LAST_ABI_VERSION()

END()
