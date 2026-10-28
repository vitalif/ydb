LIBRARY()

SRCS(
    worker.cpp
    service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/tx/conveyor/usage
    ydb/core/tx/conveyor/tracing
)

END()
