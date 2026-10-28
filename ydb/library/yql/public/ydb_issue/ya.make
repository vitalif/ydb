LIBRARY()

SRCS(
    ydb_issue_message.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/api/protos
    yql/essentials/public/issue
)

END()

RECURSE_FOR_TESTS(
    ut
)

