LIBRARY()

SRCS(
    named_span.cpp
    retro_tracing.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/library/actors/interconnect/retro_tracing
    ydb/library/actors/retro_tracing
)

END()
