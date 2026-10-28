LIBRARY(library-formats-arrow-scalar)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/conclusion
    ydb/library/formats/arrow/switch
    ydb/library/actors/core
)

SRCS(
    serialization.cpp
)

END()
