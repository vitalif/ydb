UNITTEST()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib/default
    ydb/core/ymq/actor
)

SRCS(
    index_events_processor_ut.cpp
    test_events_writer.cpp
)

SIZE(MEDIUM)
IF (SANITIZER_TYPE)
    REQUIREMENTS(cpu:2)
ENDIF()

YQL_LAST_ABI_VERSION()

END()
