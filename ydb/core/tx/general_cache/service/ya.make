LIBRARY()

SRCS(
    manager.cpp
    counters.cpp
    service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/base
    ydb/core/tx/general_cache/source
    ydb/core/tx/general_cache/usage
)

END()
