LIBRARY()

SRCS(
    controller.cpp
    ro_controller.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/hooks/abstract
    ydb/core/tx/columnshard/engines/changes
)

END()
