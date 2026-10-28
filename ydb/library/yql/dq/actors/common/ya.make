YQL_LIBRARY()

SRCS(
    retry_queue.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/yql/dq/actors/protos
    ydb/library/yverify_stream
    yql/essentials/public/issue
)

END()

RECURSE_FOR_TESTS(
    ut
)
