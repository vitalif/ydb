LIBRARY(library-formats-arrow-accessor-common)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    library/cpp/json
    library/cpp/json/writer
    ydb/library/actors/core
    ydb/library/formats/arrow
    ydb/library/formats/arrow/protos
    yql/essentials/types/binary_json
)

SRCS(
    additional_data.cpp
    chunk_data.cpp
    const.cpp
    json_value_view.cpp
    types.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
