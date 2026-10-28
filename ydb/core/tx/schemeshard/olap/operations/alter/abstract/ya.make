YQL_LIBRARY()

SRCS(
    object.cpp
    update.cpp
    converter.cpp
    context.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/scheme
    ydb/library/accessor
    ydb/core/protos
    ydb/library/actors/wilson
    ydb/library/formats/arrow
    ydb/public/sdk/cpp/src/client/types/credentials
)

END()
