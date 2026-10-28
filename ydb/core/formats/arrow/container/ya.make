RECURSE(
    filterable
)

YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/accessor
    ydb/library/actors/core
    ydb/library/conclusion
    ydb/library/formats/arrow
)

SRCS(
    container.cpp
)

END()
