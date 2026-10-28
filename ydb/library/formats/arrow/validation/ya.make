LIBRARY(library-formats-arrow-validation)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/actors/core
)

SRCS(
    validation.cpp
)

END()
