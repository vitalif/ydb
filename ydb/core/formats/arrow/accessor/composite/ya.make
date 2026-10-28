YQL_LIBRARY(library-formats-arrow-accessor-composite)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow/filter
    ydb/library/formats/arrow/common
)

SRCS(
    accessor.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
