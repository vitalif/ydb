LIBRARY()

SRCS(
    dnsresolver.cpp
    dnsresolver_caching.cpp
    dnsresolver_ondemand.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    contrib/libs/c-ares
)

END()

RECURSE_FOR_TESTS(
    ut
)
