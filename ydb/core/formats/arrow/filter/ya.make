YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow/switch
    ydb/library/accessor
    ydb/library/actors/core
    ydb/library/conclusion
    ydb/library/formats/arrow
    ydb/library/yverify_stream
)

SRCS(
    filter.cpp
)

END()
