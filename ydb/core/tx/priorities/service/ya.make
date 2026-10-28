LIBRARY()

SRCS(
    service.cpp
    manager.cpp
    counters.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/priorities/usage
    ydb/core/protos
)

END()
