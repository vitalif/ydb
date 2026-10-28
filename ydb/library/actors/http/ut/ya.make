UNITTEST_FOR(ydb/library/actors/http)

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/poco/NetSSL_OpenSSL
    contrib/libs/poco/Crypto
    contrib/libs/poco/Foundation
    contrib/libs/poco/Net
    ydb/core/security/certificate_check/test_utils
    ydb/library/actors/testlib
)


IF (NOT OS_WINDOWS)
SRCS(
    http_cache_ut.cpp
    http_obfuscation_ut.cpp
    http_tls_init_ut.cpp
    http_ut.cpp
    http2_ut.cpp
    tls_client_connection.cpp
)
ELSE()
ENDIF()

END()
