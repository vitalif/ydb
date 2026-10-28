YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/services/metadata/abstract
    ydb/library/actors/core
    ydb/library/formats/arrow/common
    ydb/core/protos
)

SRCS(
    abstract.cpp
    GLOBAL native.cpp
    stream.cpp
    parsing.cpp
    utils.cpp
)

END()
