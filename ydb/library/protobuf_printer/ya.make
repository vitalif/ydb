LIBRARY()

SRCS(
    hide_field_printer.cpp
    security_json_printer.cpp
    security_printer.cpp
    size_printer.cpp
    stream_helper.cpp
    token_field_printer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/protobuf/json
    contrib/libs/protobuf
    ydb/library/security
    ydb/public/api/protos/annotations
)

END()

RECURSE_FOR_TESTS(
    ut
)
