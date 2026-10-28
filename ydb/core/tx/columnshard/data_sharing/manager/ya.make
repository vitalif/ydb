LIBRARY()

SRCS(
    sessions.cpp
    shared_blobs.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/data_sharing/source/session
    ydb/core/tx/columnshard/data_sharing/destination/session
)

END()
