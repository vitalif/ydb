LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
)

SRCS(
    accessor.cpp
    validator.cpp
    positive_integer.cpp
    validator_simple.cpp
)

END()

