LIBRARY()

SRCS(
    abstract.cpp
    array_power2.cpp
    GLOBAL bitset.cpp
    GLOBAL fix_string.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/conclusion
    ydb/library/actors/core
    ydb/core/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
