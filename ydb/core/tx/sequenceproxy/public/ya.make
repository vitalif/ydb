LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/library/aclib
    ydb/public/api/protos
    yql/essentials/public/issue
)

END()
