UNITTEST()

FORK_SUBTESTS()

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/dsproxy
)

YQL_LAST_ABI_VERSION()

SRCS(
    mirror3dc_blob_tracker_ut.cpp
    mirror3dc_get_ut.cpp
    mirror3dc_put_ut.cpp
    strategy_ut.cpp
)

END()
