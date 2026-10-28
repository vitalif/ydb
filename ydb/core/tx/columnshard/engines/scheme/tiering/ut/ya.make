UNITTEST()

SRCS(
    tier_info_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/scheme/tiering
    yql/essentials/types/dynumber
)

END()
