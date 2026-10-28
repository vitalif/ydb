YQL_LIBRARY()

SRCS(
    view.cpp
    view_v0.cpp
    collection.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/conclusion
    contrib/libs/apache/arrow
    ydb/library/actors/core
    ydb/core/formats/arrow/reader
)

END()
