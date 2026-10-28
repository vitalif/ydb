YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    contrib/libs/apache/arrow_next
    ydb/library/conclusion
    ydb/services/metadata/abstract
    ydb/library/actors/core
    ydb/core/formats/arrow
    ydb/core/formats/arrow/accessor/common
    ydb/core/formats/arrow/filter
    ydb/library/formats/arrow/protos
    ydb/library/arrow_kernels
)

SRCS(
    common.cpp
    constructor.cpp
    request.cpp
    accessor.cpp
    minmax_utils.cpp
)

GENERATE_ENUM_SERIALIZATION(accessor.h)

END()
