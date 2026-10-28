LIBRARY()

SRCS(
    split.h
    key_access.cpp
    data_size.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/scheme
    ydb/core/scheme_types
    ydb/core/tablet_flat
)

END()

RECURSE_FOR_TESTS(
    ut
)
