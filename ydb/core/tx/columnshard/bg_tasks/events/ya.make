LIBRARY()

SRCS(
    events.cpp
    local.cpp
    global.cpp
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/tx/columnshard/bg_tasks/protos
)

END()
