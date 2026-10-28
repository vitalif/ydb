LIBRARY()

SRCS(
    wilson_event.cpp
    wilson_span.cpp
    wilson_profile_span.cpp
    wilson_trace.cpp
    wilson_uploader.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/proto/opentelemetry
    ydb/library/actors/core
    ydb/library/actors/protos
)

END()

RECURSE(
    protos
)

RECURSE_FOR_TESTS(
    ut
    test_util
)
