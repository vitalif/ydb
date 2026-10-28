LIBRARY()

SRCS(
    counters.cpp
    counters.h
    proxy_counters.cpp
    proxy_counters.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/sys_view/service
)

END()
