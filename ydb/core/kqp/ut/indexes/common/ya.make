LIBRARY()

SRCS(
    kqp_indexes_compact_common.cpp
    kqp_indexes_ttl_ut_common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/fmt
    ydb/core/kqp/ut/common
)

YQL_LAST_ABI_VERSION()

END()
