YQL_LIBRARY()

SRCS(
    constructor.cpp
    collection.cpp
    header.cpp
    fetcher.cpp
    abstract.cpp
    meta.cpp
    checker.cpp
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/core/formats/arrow/accessor/sub_columns
    ydb/core/tx/columnshard/engines/protos  # stopgap: proper edge (-> skip_index/portions) cycles
    ydb/library/formats/arrow/protos
    yql/essentials/core/arrow_kernels/request
    ydb/core/formats/arrow/program
)

GENERATE_ENUM_SERIALIZATION(common.h)

END()
