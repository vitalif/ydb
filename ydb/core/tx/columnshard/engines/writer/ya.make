LIBRARY()

SRCS(
    compacted_blob_constructor.cpp
    indexed_blob_constructor.cpp
    blob_constructor.cpp
    put_status.cpp
    write_controller.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/tablet_flat/protos
    ydb/core/blobstorage/vdisk/protos
    ydb/core/tablet_flat
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/writer/buffer


    ydb/library/actors/core
)

YQL_LAST_ABI_VERSION()

END()
