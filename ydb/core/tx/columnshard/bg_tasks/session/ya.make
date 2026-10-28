LIBRARY()

SRCS(
    session.cpp
    storage.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/bg_tasks/abstract
    ydb/core/tx/columnshard/bg_tasks/protos
)

END()
