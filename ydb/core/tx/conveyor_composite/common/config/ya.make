LIBRARY()

SRCS(
    config.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/tx/conveyor_composite/common
    ydb/library/accessor
    ydb/library/actors/core
    ydb/library/conclusion
)

END()
