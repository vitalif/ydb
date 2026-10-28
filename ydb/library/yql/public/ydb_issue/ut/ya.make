UNITTEST_FOR(ydb/library/yql/public/ydb_issue)

FORK_SUBTESTS()

SRCS(
    ydb_issue_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
