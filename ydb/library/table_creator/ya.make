YQL_LIBRARY()

SRCS(
    table_creator.cpp
    table_creator.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/tx/scheme_cache
    ydb/core/tx/schemeshard
    ydb/core/tx/tx_proxy
    ydb/library/actors/core
)

END()

RECURSE_FOR_TESTS(
    ut
)
