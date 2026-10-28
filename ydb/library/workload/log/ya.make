LIBRARY()

SRCS(
    GLOBAL registrar.cpp
    log.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/workload/abstract
    ydb/public/api/protos
    library/cpp/json
    library/cpp/resource
)

RESOURCE(
    select_queries.sql workload_logs_select_queries.sql
)

GENERATE_ENUM_SERIALIZATION(log.h)

END()
