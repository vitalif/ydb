LIBRARY()

SRCS(
    address.cpp
    gc.cpp
    gc_actor.cpp
    write.cpp
    read.cpp
    storage.cpp
    remove.cpp
    blob_manager.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    contrib/libs/apache/arrow
    ydb/core/tablet_flat
    ydb/core/tx/tiering
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/core/tx/columnshard/blobs_action/abstract
)

END()

RECURSE_FOR_TESTS(
    ut
)
