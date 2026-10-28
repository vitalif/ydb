YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/accessor/abstract
    ydb/library/formats/arrow
    ydb/library/formats/arrow/protos
    ydb/core/formats/arrow/filter
    ydb/core/formats/arrow/save_load
    ydb/core/formats/arrow/serializer
    ydb/core/formats/arrow/splitter
    ydb/core/formats/arrow/accessor/common
)

SRCS(
    GLOBAL constructor.cpp
    GLOBAL request.cpp
    accessor.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
