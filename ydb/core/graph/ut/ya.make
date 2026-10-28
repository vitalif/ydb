UNITTEST_FOR(ydb/core/graph)

IF (SANITIZER_TYPE)
    SIZE(MEDIUM)
ELSE()
    SIZE(SMALL)
ENDIF()

SRC(
    graph_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/helpers
    ydb/core/tx/schemeshard/ut_helpers
    ydb/core/testlib/default
    ydb/core/graph/shard
    ydb/core/graph/service
)

YQL_LAST_ABI_VERSION()

END()
