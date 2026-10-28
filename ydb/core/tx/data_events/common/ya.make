LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/conclusion
    yql/essentials/public/issue/protos
    ydb/public/api/protos
)

SRCS(
    modification_type.cpp
    error_codes.cpp
    signals_flow.cpp
)

GENERATE_ENUM_SERIALIZATION(signals_flow.h)

END()
