LIBRARY()

SRCS(
    kqp_topics.cpp
    kqp_topics.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/persqueue/public
    ydb/core/tx/scheme_cache
)

YQL_LAST_ABI_VERSION()


END()
