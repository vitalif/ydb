UNITTEST_FOR(ydb/core/kqp)

FORK_SUBTESTS()

REQUIREMENTS(cpu:2)
SIZE(MEDIUM)

SRCS(
    kqp_hash_shuffle_ut.cpp
    kqp_log_capture_ut.cpp
    kqp_re2_ut.cpp
    kqp_scan_spilling_ut.cpp
    kqp_scan_logging_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/sdk/cpp/src/client/proto
    ydb/core/kqp
    ydb/core/kqp/counters
    ydb/core/kqp/host
    ydb/core/kqp/provider
    ydb/core/kqp/ut/common
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
