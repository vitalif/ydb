LIBRARY(library-formats-arrow-switch)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/actors/core
    ydb/library/formats/arrow/validation
)

SRCS(
    switch_type.cpp
    compare.cpp
)

END()
