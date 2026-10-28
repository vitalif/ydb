LIBRARY()

SRCS(
    context.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/library/actors/core
    ydb/library/conclusion
)

END()
