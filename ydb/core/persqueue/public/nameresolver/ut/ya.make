UNITTEST()

SIZE(SMALL)

SRCS(
    nameresolver_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/nameresolver
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

END()
