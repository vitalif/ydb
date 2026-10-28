YQL_LIBRARY()

SRCS(
    groups.h
    groups.cpp
    pdisks.h
    pdisks.cpp
    storage_pools.h
    storage_pools.cpp
    storage_stats.h
    storage_stats.cpp
    vslots.h
    vslots.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/kqp/runtime
    ydb/core/sys_view/common
)

END()
