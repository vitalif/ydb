LIBRARY()

SRCS(
    create_message.cpp
    json_writer.cpp
    key_name.cpp
    log_stack.cpp
    meta_writer.cpp
    native_types_support.cpp
    structured_message.cpp
    text_writer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/services
)

END()
