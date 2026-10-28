LIBRARY()

SRCS(
    mirrorer.cpp
)



USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/events
    ydb/core/persqueue/common
    ydb/core/persqueue/common/proxy
    ydb/core/persqueue/pqtablet/common
    ydb/core/persqueue/public/write_meta
)

END()

RECURSE_FOR_TESTS(
    ut
)

