LIBRARY()

SRCS(
    abstract.cpp
    check_counter.cpp
    execute.cpp
    actualization.cpp
    compaction.cpp
    executor.cpp
    variator.cpp
    select.cpp
    bulk_upsert.cpp
    wait_background_processes.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib
    ydb/core/protos
    ydb/core/kqp/ut/olap/helpers
)

YQL_LAST_ABI_VERSION()

END()
