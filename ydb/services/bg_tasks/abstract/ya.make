LIBRARY()

SRCS(
    interface.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/accessor
    ydb/library/actors/core
    ydb/public/api/protos
    ydb/services/bg_tasks/protos
    ydb/library/conclusion
)

END()
