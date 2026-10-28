LIBRARY()

SRCS(
    fix_transaction_states.cpp
    metering_sink.cpp
    pq_impl.cpp
    pq_impl_app.cpp
    pq_impl_app_sendreadset.cpp
    transaction.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/fmt
    ydb/core/base
    ydb/core/persqueue/pqtablet/common
    ydb/core/persqueue/common/proxy
    ydb/core/persqueue/public/counters
    ydb/core/persqueue/pqtablet/batching
    ydb/core/persqueue/pqtablet/cache
    ydb/core/persqueue/pqtablet/partition
    ydb/core/persqueue/pqtablet/readproxy
)

END()

RECURSE(
    batching
    blob
    common
    partition
    quota
    readproxy
)

RECURSE_FOR_TESTS(
)
