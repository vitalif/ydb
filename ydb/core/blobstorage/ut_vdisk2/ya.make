UNITTEST()

FORK_SUBTESTS()

SIZE(MEDIUM)
REQUIREMENTS(cpu:2)

IF (SANITIZER_TYPE)
    ENV(TIMEOUT=400)
ENDIF()

SRCS(
    defs.h
    env.h
    blob_stat.cpp
    huge.cpp
    compaction.cpp
    space_report.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/xxhash
    ydb/apps/version
    library/cpp/testing/unittest
    ydb/core/blobstorage/backpressure
    ydb/core/blobstorage/groupinfo
    ydb/core/blobstorage/pdisk/mock
    ydb/core/blobstorage/vdisk
    ydb/core/blobstorage/vdisk/common
    ydb/core/tx/scheme_board
    yql/essentials/public/udf/service/stub
    ydb/core/util/actorsys_test
)

END()
