LIBRARY()

SRCS(
    locks.cpp
    locks_db.cpp
    time_counters.cpp
    range_treap.cpp
)


USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/tablet_flat
    ydb/library/actors/async
    ydb/library/range_treap
)

END()
