LIBRARY()

SRCS(
    table.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/formats/arrow/csv/converter
    ydb/public/sdk/cpp/src/client/table
    ydb/public/lib/scheme_types
)

END()
