LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/json/writer
    library/cpp/monlib/service/pages
    library/cpp/threading/future
    ydb/core/base
    ydb/core/blobstorage/base
)

SRCS(
    defs.h
    mon_blob_range_page.cpp
    mon_blob_range_page.h
    mon_check_integrity.cpp
    mon_check_integrity.h
    mon_get_blob_page.cpp
    mon_get_blob_page.h
    mon_vdisk_stream.cpp
    mon_vdisk_stream.h
)

END()
