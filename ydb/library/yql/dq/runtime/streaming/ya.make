LIBRARY()

SRCS(
    dq_compute_actor_watermarks.cpp
    dq_watermark_generator_tracker.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/monlib/dynamic_counters
    ydb/library/actors/core
)

END()

RECURSE_FOR_TESTS(
    ut
)
