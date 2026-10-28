UNITTEST()

IF (OS_LINUX)

SIZE(LARGE)

INCLUDE(${ARCADIA_ROOT}/ydb/tests/large.inc)

SRCS(
    tcp_user_timeout_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/interconnect
    ydb/library/actors/interconnect/ut/lib
    ydb/library/actors/interconnect/ut/lib/port_manager
    ydb/library/actors/interconnect/ut/protos
    library/cpp/testing/unittest
)

ENDIF()

END()
