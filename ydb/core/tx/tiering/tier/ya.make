LIBRARY()

SRCS(
    object.cpp
    s3_uri.cpp
    identifier.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/library/conclusion
    ydb/services/metadata/secret/accessor
    contrib/restricted/aws/aws-crt-cpp
)

END()
