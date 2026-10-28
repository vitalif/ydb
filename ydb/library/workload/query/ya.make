LIBRARY()

SRCS(
    GLOBAL registrar.cpp
    data_generator.cpp
    query.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/workload/benchmark_base
    library/cpp/json
)

END()
