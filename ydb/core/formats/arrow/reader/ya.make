YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow/accessor/abstract
    ydb/core/formats/arrow/common
    ydb/core/formats/arrow/container
    ydb/core/formats/arrow/filter
    ydb/core/formats/arrow/switch
    ydb/core/scheme

    ydb/library/actors/core
    ydb/library/services
    ydb/library/formats/arrow
)

SRCS(
    batch_iterator.cpp
    merger.cpp
    position.cpp
    heap.cpp
    result_builder.cpp
)

END()
