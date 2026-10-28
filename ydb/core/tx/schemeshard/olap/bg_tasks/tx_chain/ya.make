LIBRARY()

SRCS(
    status_channel.cpp
    task.cpp
    session.cpp
    actor.cpp
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/bg_tasks/protos
    ydb/core/tx/columnshard/bg_tasks/abstract
)

END()
