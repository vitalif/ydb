LIBRARY()

SRCS(
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/ydb_issue
    ydb/core/base
    ydb/library/aclib
)

END()
