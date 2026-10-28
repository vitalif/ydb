YQL_LIBRARY()

SRCS(
    simple.cpp
    scheme_info.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/actors/core
    ydb/library/conclusion
    ydb/library/formats/arrow/splitter
    ydb/library/formats/arrow/common
    ydb/core/formats/arrow/serializer
)

END()
