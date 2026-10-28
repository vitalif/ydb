LIBRARY()

SRCS(
    auth_helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/aclib
    ydb/core/base
    ydb/core/tx/scheme_cache
)

END()
