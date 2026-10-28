LIBRARY()

SRCS(
    schema.cpp
    update.cpp
    validator.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/tx/columnshard/blobs_action/common
    ydb/core/tx/tiering/tier
    ydb/public/sdk/cpp/src/client/params
    ydb/public/sdk/cpp/src/client/types/credentials
)

END()
