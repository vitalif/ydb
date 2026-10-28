LIBRARY()

SRCS(
    container.cpp
    range.cpp
    filter.cpp
    predicate.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/protos
    ydb/core/tx/columnshard/engines/portions
    ydb/core/formats/arrow
    ydb/core/formats/arrow/filter
)

YQL_LAST_ABI_VERSION()

END()
