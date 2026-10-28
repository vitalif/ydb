YQL_LIBRARY()

SRCS(
    udf_modules.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/runtime
    ydb/core/sys_view/common
    ydb/library/actors/core
    ydb/library/query_actor
)

END()
