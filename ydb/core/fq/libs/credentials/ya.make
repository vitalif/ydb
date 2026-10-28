LIBRARY()

SRCS(
    structured_token_credentials.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/library/yql/providers/common/token_accessor/client
    ydb/public/sdk/cpp/src/client/iam
    ydb/public/sdk/cpp/src/client/iam_private
    yql/essentials/providers/common/structured_token
)

END()
