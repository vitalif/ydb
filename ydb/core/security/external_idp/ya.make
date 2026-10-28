LIBRARY()

SRCS(
    external_idp_provider.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/jwt-cpp
    contrib/libs/openssl
    library/cpp/json
    library/cpp/html/pcdata
    library/cpp/string_utils/base64
    ydb/core/base
    ydb/core/protos
    ydb/core/security/util
    ydb/library/actors/core
    ydb/library/actors/http
    ydb/library/services
)

GENERATE_ENUM_SERIALIZATION(external_idp_provider.h)

END()

RECURSE_FOR_TESTS(
    ut
)
