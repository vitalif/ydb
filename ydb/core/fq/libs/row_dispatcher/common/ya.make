YQL_LIBRARY()

SRCS(
    row_dispatcher_settings.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/fq/libs/config/protos
    ydb/core/fq/libs/ydb
    ydb/core/protos
    ydb/library/accessor
    ydb/library/actors/core
)

GENERATE_ENUM_SERIALIZATION(row_dispatcher_settings.h)

END()
