LIBRARY()

SRCS(
    source.cpp
    constructor.cpp
    metadata.cpp
    GLOBAL schema.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/reader/common_reader/iterator
)

END()
