LIBRARY()

SRCS(
    kqp_shards_resolver.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/actorlib_impl
    ydb/core/base
)

YQL_LAST_ABI_VERSION()

END()
