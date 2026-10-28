LIBRARY()

SRCS(
    http_gateway_holder.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/logger
    ydb/library/yql/providers/common/http_gateway
    ydb/library/yql/utils/actor_log
)

YQL_LAST_ABI_VERSION()

END()
