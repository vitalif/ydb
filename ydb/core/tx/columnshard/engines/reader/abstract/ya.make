LIBRARY()

SRCS(
    abstract.cpp
    read_metadata.cpp
    constructor.cpp
    read_context.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/resource_pools
    ydb/core/tx/columnshard/column_fetching
    ydb/core/tx/columnshard/engines/scheme/versions
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/core/tx/conveyor/usage
    ydb/core/tx/program
)

GENERATE_ENUM_SERIALIZATION(read_metadata.h)
YQL_LAST_ABI_VERSION()

END()
