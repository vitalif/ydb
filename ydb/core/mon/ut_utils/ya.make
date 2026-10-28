LIBRARY()

SRCS(
    ut_utils.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/testlib/default
    ydb/library/aclib
    ydb/library/security
)

YQL_LAST_ABI_VERSION()

END()
