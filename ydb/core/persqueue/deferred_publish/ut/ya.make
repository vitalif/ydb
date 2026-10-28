UNITTEST()

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/actors/core
)

SRCS(
    deferred_publish_destination_blob_ut.cpp
    ../destination_blob.cpp
)

YQL_LAST_ABI_VERSION()

END()
