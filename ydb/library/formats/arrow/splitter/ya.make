LIBRARY(library-formats-arrow-splitter)

SRCS(
    stats.cpp
    similar_packer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/actors/core
    ydb/library/conclusion
)

GENERATE_ENUM_SERIALIZATION(stats.h)

END()
