UNITTEST_FOR(ydb/library/yql/providers/generic/pushdown)

SRCS(
    match_predicate_ut.cpp
)

SIZE(SMALL)

YQL_LAST_ABI_VERSION()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
