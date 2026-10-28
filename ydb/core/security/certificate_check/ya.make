LIBRARY()

SRCS(
    cert_auth_utils.cpp
    cert_auth_processor.cpp
    cert_check.cpp
)


USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/public/lib/ydb_cli/common
    contrib/libs/openssl
)

END()

RECURSE_FOR_TESTS(
    ut
)
