LIBRARY()


SRCS(
    meta.cpp
    constructor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/portions
    ydb/core/tx/columnshard/engines/scheme/abstract
    ydb/core/tx/columnshard/engines/scheme/indexes/abstract
    ydb/core/tx/columnshard/engines/storage/indexes/bits_storage
)

END()
