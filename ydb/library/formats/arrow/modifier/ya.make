LIBRARY(library-formats-arrow-modifier)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/conclusion
    ydb/library/formats/arrow/switch
    ydb/library/formats/arrow/protos
    ydb/library/actors/core
)

SRCS(
    schema.cpp
    subset.cpp
)

END()
