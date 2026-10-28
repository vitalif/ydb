LIBRARY()

SRCS(
    delete_blobs.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/blobs_action/protos
    ydb/library/actors/core
    ydb/core/tx/datashard
)

END()
