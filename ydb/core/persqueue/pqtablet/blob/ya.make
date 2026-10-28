LIBRARY()

SRCS(
    blob.cpp
    blob_offset.cpp
    blob_serialization.cpp
    header.cpp
    type_codecs_defs.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/library/logger
)

END()

RECURSE_FOR_TESTS(
    ut
)
