YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow/container
    ydb/core/formats/arrow/filter
)

SRCS(
    filterable.cpp
)

END()
