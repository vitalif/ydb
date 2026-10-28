LIBRARY()

SRCS(
    tpc_base.cpp
)

RESOURCE(
    ydb/library/benchmarks/gen_queries/consts.yql consts.yql
    ydb/library/benchmarks/gen_queries/consts_decimal.yql consts_decimal.yql
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/resource
    library/cpp/streams/factory/open_by_signature
    ydb/library/accessor
    ydb/library/workload/benchmark_base
    ydb/public/lib/scheme_types
)

GENERATE_ENUM_SERIALIZATION(tpc_base.h)

END()
