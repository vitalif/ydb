LIBRARY()

SRCS(
    tier_info.cpp
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    yql/essentials/types/dynumber
    ydb/core/formats/arrow/serializer
    ydb/core/tx/tiering/tier
)

END()

RECURSE_FOR_TESTS(
    ut
)
