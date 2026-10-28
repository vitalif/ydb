LIBRARY()

SRCS(
    abstract.cpp
    GLOBAL test.cpp
    GLOBAL schemeshard.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/data_sharing/initiator/status
    ydb/services/bg_tasks/abstract
)

END()
