LIBRARY()

SRCS(
    counters.cpp
    jwk.cpp
    net.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/ipv6_address
    library/cpp/json/writer
    library/cpp/monlib/dynamic_counters
    library/cpp/string_utils/base64
    ydb/core/base
    ydb/core/security/certificate_check
    contrib/libs/openssl
)

GENERATE_ENUM_SERIALIZATION(jwk.h)

END()

RECURSE_FOR_TESTS(
    ut
)
