UNITTEST()

FORK_SUBTESTS()

SIZE(MEDIUM)

SRCS(
    state_server_recovery_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/test_tablet
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

END()
