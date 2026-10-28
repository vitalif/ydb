LIBRARY()

SRCS(
    helpers.cpp
    poison_pill_helper.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
)

END()

RECURSE_FOR_TESTS(ut)
