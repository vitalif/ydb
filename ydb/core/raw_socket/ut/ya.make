UNITTEST_FOR(ydb/core/raw_socket)

SIZE(small)
SRCS(
    buffered_writer_ut.cpp
    sock_listener_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/raw_socket
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()
END()
