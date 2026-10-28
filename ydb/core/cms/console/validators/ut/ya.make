UNITTEST_FOR(ydb/core/cms/console/validators)

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
)

SRCS(
    registry_ut.cpp
    validator_bootstrap_ut.cpp
    validator_composite_conveyor_ut.cpp
    validator_nameservice_ut.cpp
    validator_ut_common.h
)

END()
