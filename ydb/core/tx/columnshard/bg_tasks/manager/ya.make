LIBRARY()

SRCS(
    manager.cpp
    actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/bg_tasks/abstract
    ydb/core/tx/columnshard/bg_tasks/protos
    ydb/core/tablet_flat
)

END()
