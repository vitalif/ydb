GTEST()

SIZE(MEDIUM)

SRCS(
    message_stream_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/yt/gateway/clients/message_stream
    yt/yt/client/unittests/mock
)

YQL_LAST_ABI_VERSION()

END()
