LIBRARY()

ADDINCL(
    ydb/public/sdk/cpp
)

SRCS(
    pq_ut_common.cpp
    pq_ut_common.h

    autoscaling_ut_common.cpp
    autoscaling_ut_common.h

    sdk_ut_common.cpp
    sdk_ut_common.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue
    ydb/core/persqueue/public/schema
    ydb/core/testlib
    ydb/public/sdk/cpp/src/client/topic
)

YQL_LAST_ABI_VERSION()

END()
