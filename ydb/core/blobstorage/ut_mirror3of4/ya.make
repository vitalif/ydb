UNITTEST()

SRCS(
    main.cpp
)

SIZE(MEDIUM)
REQUIREMENTS(cpu:2)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/apps/version
    library/cpp/testing/unittest
    ydb/core/blobstorage/backpressure
    ydb/core/blobstorage/base
    ydb/core/blobstorage/dsproxy
    ydb/core/blobstorage/groupinfo
    ydb/core/blobstorage/pdisk/mock
    ydb/core/blobstorage/vdisk
    ydb/core/blobstorage/vdisk/common
    ydb/core/blobstorage/vdisk/repl
    ydb/core/tx/scheme_board
    ydb/core/util
    ydb/core/util/actorsys_test
)

END()
