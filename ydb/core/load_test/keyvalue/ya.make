LIBRARY()

SRCS(
    ../keyvalue_write.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/histogram/hdr
    library/cpp/monlib/service/pages
    library/cpp/time_provider
    ydb/core/base
    ydb/core/blobstorage/base
    ydb/core/blobstorage/pdisk
    ydb/core/control/lib
    ydb/core/keyvalue
    ydb/core/load_test/common
)

END()
