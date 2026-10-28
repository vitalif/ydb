LIBRARY()

SRCS(
    ../ddisk_load.cpp
    ../persistent_buffer_write.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/containers/absl
    library/cpp/monlib/service/pages
    library/cpp/time_provider
    ydb/core/base
    ydb/core/blobstorage/ddisk
    ydb/core/control/lib
    ydb/core/load_test/common
)

END()
