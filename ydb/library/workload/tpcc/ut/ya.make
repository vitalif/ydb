UNITTEST_FOR(ydb/library/workload/tpcc)

SRCS(
    circular_queue_ut.cpp
    data_splitter_ut.cpp
    histogram_ut.cpp
    log_capture_ut.cpp
    task_queue_ut.cpp
    timer_queue_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/gmock_in_unittest
    library/cpp/getopt/small
    ydb/library/workload/tpcc
)

END()
