YQL_LIBRARY()

SRCS(
    scheme.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/library/formats/arrow/csv/converter
    ydb/core/scheme_types
)

END()

RECURSE_FOR_TESTS(ut)
