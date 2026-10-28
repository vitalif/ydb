UNITTEST_FOR(ydb/services/distributed_storage)

SIZE(MEDIUM)

SRCS(
    distributed_storage_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/logger
    ydb/core/blobstorage/base
    ydb/core/formats
    ydb/core/protos
    ydb/core/testlib/default
    ydb/public/api/grpc/draft
    ydb/services/distributed_storage
)

YQL_LAST_ABI_VERSION()

END()
