LIBRARY()

SRCS(
    account_read_quoter.cpp
    quota_tracker.cpp
    quoter_base.cpp
    read_quoter.cpp
    write_quoter.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/events
    ydb/core/persqueue/common
    ydb/core/persqueue/public
    ydb/core/persqueue/public/counters
    ydb/core/persqueue/pqtablet/common
    ydb/core/quoter/public
)

END()

RECURSE_FOR_TESTS(
    ut
)
