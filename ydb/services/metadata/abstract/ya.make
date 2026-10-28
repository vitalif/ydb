YQL_LIBRARY()

SRCS(
    common.cpp
    decoder.cpp
    events.cpp
    fetcher.cpp
    initialization.cpp
    kqp_common.cpp
    parsing.cpp
    request_features.cpp
)

GENERATE_ENUM_SERIALIZATION(kqp_common.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/library/accessor
    ydb/library/actors/core
    ydb/public/api/protos
    ydb/public/sdk/cpp/src/client/resources
    yql/essentials/core/expr_nodes
)

END()
