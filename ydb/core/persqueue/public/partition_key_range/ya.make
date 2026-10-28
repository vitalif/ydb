LIBRARY()

SRCS(
    partition_key_range.cpp
    partition_key_range_sequence.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/scheme
)

END()

RECURSE_FOR_TESTS(ut)
