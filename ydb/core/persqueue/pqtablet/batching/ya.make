LIBRARY()

SRCS(
    batch_processor.cpp
    batch_cutter.cpp
    consumer_batch_processor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/streams/zstd
    ydb/core/persqueue/common
    ydb/core/persqueue/events
    ydb/core/persqueue/public/codecs
    ydb/public/sdk/cpp/src/library/kafka
    ydb/library/persqueue/counter_time_keeper
    ydb/core/persqueue/public/write_meta
    ydb/core/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
