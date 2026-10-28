LIBRARY()

SRCS(
    GLOBAL constructor.cpp
    GLOBAL meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/formats/arrow/hash
    ydb/core/local_indexes/bloom
    ydb/core/tx/columnshard/engines/storage/indexes/portions
    ydb/core/tx/columnshard/engines/storage/indexes/helper
    ydb/core/tx/columnshard/engines/storage/indexes/skip_index
    ydb/library/conclusion
)

END()
