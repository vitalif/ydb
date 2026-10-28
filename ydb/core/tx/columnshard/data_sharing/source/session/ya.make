LIBRARY()

SRCS(
    source.cpp
    cursor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/data_sharing/common/session
    ydb/core/tx/columnshard/data_sharing/destination/events
    ydb/core/tx/columnshard/data_sharing/source/transactions
)

END()
