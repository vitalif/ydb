LIBRARY()

SRCS(
    time_cast.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/protos
    ydb/core/tablet
    ydb/core/tx
)

END()

RECURSE_FOR_TESTS(
    ut
)
