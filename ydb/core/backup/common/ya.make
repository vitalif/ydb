LIBRARY()

SRCS(
    checksum.cpp
    encryption.cpp
    feature_flags.cpp
    fields_wrappers.cpp
    metadata.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/openssl
    library/cpp/json
    ydb/core/backup/common/proto
    ydb/core/base
    ydb/core/util
    ydb/library/yverify_stream
)

GENERATE_ENUM_SERIALIZATION(metadata.h)

END()
