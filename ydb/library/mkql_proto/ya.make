YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/mkql_proto/protos
    yql/essentials/minikql/computation
    yql/essentials/parser/pg_catalog
    yql/essentials/providers/common/codec
    ydb/public/api/protos
)

SRCS(
    mkql_proto.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
