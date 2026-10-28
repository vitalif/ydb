UNITTEST_FOR(ydb/core/persqueue/pqtablet/batching)

SIZE(MEDIUM)

YQL_LAST_ABI_VERSION()

SRCS(
    batch_cutter_ut.cpp
    batch_processor_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/logger
    library/cpp/streams/zstd
    library/cpp/testing/unittest
    ydb/core/base
    ydb/core/persqueue/events
    ydb/core/persqueue/public/write_meta
    ydb/core/protos
    ydb/core/testlib/basics
    ydb/core/testlib/default
    ydb/public/sdk/cpp/src/library/kafka
)

END()
