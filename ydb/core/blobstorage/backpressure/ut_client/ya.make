UNITTEST()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/backpressure
    ydb/core/blobstorage/base
    ydb/core/blobstorage/vdisk
    ydb/core/blobstorage/vdisk/common
    ydb/core/tx/scheme_board
    yql/essentials/public/udf/service/stub
    ydb/core/util/actorsys_test
)

YQL_LAST_ABI_VERSION()

SRCS(
    backpressure_ut.cpp
    defs.h
    loader.h
    skeleton_front_mock.h
)

END()
