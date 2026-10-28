UNITTEST_FOR(ydb/core/path_aliasing)

SRCS(
    path_normalizer_compact_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
