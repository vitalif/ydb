LIBRARY()

SRCS(
    info.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/scheme/abstract
    ydb/core/tx/columnshard/engines/protos  # stopgap: proper edge (-> storage/chunks) cycles

    ydb/core/formats/arrow/dictionary
    ydb/core/formats/arrow/serializer
    ydb/core/formats/arrow/transformer
    ydb/core/formats/arrow/common

    contrib/libs/apache/arrow
)

END()
