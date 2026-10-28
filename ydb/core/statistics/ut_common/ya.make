LIBRARY()

SRCS(
    ut_common.cpp
    ut_common.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/hooks/testing
    ydb/core/testlib
    ydb/core/protos
    ydb/core/statistics
    ydb/core/statistics/common
    yql/essentials/minikql/computation
)

YQL_LAST_ABI_VERSION()

END()
