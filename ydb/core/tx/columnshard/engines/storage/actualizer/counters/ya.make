LIBRARY()

SRCS(
    counters.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/tx/columnshard/engines/portions
    ydb/library/signals
)

END()
