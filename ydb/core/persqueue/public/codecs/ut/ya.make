UNITTEST_FOR(ydb/core/persqueue/public/codecs)

FORK_SUBTESTS()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
)

SRCS(
    codecs_ut.cpp
)

END()
