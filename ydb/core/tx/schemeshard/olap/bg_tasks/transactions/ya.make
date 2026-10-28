LIBRARY()

SRCS(
    tasks_list.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/bg_tasks/abstract
    ydb/core/tx/schemeshard/olap/bg_tasks/protos
)

END()
