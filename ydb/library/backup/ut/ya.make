UNITTEST_FOR(ydb/library/backup)

SIZE(SMALL)

SRC(ut.cpp)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/string_utils/quote
    ydb/library/backup
)

END()
