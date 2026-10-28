YQL_LIBRARY()

SRCS(
    saver.cpp
    loader.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    contrib/libs/apache/arrow
    ydb/library/accessor
    ydb/library/conclusion
    ydb/library/formats/arrow/transformer
    ydb/library/formats/arrow/common
    ydb/core/formats/arrow/transformer
    ydb/core/formats/arrow/serializer
)

END()
