LIBRARY()

SRCS(
    json_envelope.cpp
    log_backend.cpp
    log_backend.h
    log_backend_build.cpp
    log_backend_build.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/unified_agent_client
    library/cpp/messagebus/monitoring
    ydb/core/base
    ydb/public/sdk/cpp/src/library/grpc/client
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)
