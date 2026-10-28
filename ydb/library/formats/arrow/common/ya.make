LIBRARY(library-formats-arrow-common)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/formats/arrow/switch
    ydb/library/actors/core
    ydb/library/conclusion
    ydb/library/formats/arrow/splitter
    ydb/library/formats/arrow/validation
)

END()
