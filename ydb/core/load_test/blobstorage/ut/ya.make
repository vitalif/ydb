UNITTEST()

SIZE(MEDIUM)

SRCS(
    pdisk_log_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/protobuf/util
    ydb/core/blobstorage/pdisk/mock
    ydb/core/load_test/blobstorage
    ydb/core/util/actorsys_test
)

END()
