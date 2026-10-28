LIBRARY()

SRCS(
    helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/public/sdk/cpp/src/client/table
    ydb/library/aclib
    ydb/core/kqp/common/events
    ydb/core/kqp/ut/common
    ydb/services/scheme_secret
)

YQL_LAST_ABI_VERSION()

END()
