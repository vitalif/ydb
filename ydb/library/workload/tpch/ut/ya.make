UNITTEST_FOR(ydb/library/workload/tpch)

SIZE(SMALL)

SRCS(queries_ut.cpp)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/regex/pcre
)

END()
