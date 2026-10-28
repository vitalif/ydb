LIBRARY()

SRCS(
    csv_arrow.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/public/api/protos
    ydb/public/lib/scheme_types
    yql/essentials/types/uuid
)

END()
