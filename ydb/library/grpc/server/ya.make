LIBRARY()

SRCS(
    event_callback.cpp
    grpc_request.cpp
    grpc_server.cpp
    grpc_counters.cpp
)

GENERATE_ENUM_SERIALIZATION(grpc_request_base.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/protobuf_printer
    contrib/libs/grpc
    library/cpp/monlib/dynamic_counters/percentile
)

END()

RECURSE_FOR_TESTS(ut)
