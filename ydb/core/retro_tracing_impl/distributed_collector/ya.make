LIBRARY()

SRCS(
    distributed_retro_collector.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/blobstorage/nodewarden
    ydb/core/control/lib
    ydb/core/protos
    ydb/library/actors/retro_tracing
)

END()
