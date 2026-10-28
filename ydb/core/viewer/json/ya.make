RECURSE_FOR_TESTS(
    ut
)

LIBRARY()

SRCS(
    json.cpp
    json.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/protobuf
    library/cpp/string_utils/base64
    ydb/core/viewer/protos
)

END()
