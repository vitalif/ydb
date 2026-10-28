LIBRARY()
USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/common/message_stream/async_io
    ydb/library/yql/providers/common/ut_helpers
)
END()
