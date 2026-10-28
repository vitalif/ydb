LIBRARY()

SRCS(
    log.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/protos
    ydb/library/yql/utils/actor_log
)

YQL_LAST_ABI_VERSION()

END()
