LIBRARY()

SUBSCRIBER(g:kikimr)

SRCS(
    data_generator.cpp
    workload.cpp
    state.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    library/cpp/streams/factory/open_by_signature
    ydb/library/accessor
    ydb/library/formats/arrow/validation
    ydb/library/workload/abstract
    ydb/library/yaml_json
    ydb/public/api/protos
)

GENERATE_ENUM_SERIALIZATION_WITH_HEADER(workload.h)

END()

RECURSE_FOR_TESTS(
    ut
)
