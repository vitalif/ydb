LIBRARY()

SRCS(
    transfer.cpp
    status.cpp
    control.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/data_sharing/destination/session
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/library/actors/core
)

END()
