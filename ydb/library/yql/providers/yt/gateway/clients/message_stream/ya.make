LIBRARY()
SRCS(yql_qyt_read_session.cpp yql_qyt_message_stream_client.cpp yql_yt_client.cpp)
USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/abstract/message_stream
    yt/yt/client
    library/cpp/json
)
YQL_LAST_ABI_VERSION()
END()
RECURSE_FOR_TESTS(ut)
