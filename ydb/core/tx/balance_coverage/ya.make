LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
)

SRCS(
    balance_coverage_builder.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
