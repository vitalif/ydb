YQL_LIBRARY()

SRCS(
    yql_generic_match_predicate.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/generic/connector/api/service/protos
    ydb/public/api/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
