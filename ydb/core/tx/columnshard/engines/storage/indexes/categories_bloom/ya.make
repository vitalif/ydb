LIBRARY()

SRCS(
    GLOBAL constructor.cpp
    GLOBAL meta.cpp
    header.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/protos
    ydb/core/tx/columnshard/engines/storage/indexes/helper
    ydb/core/tx/columnshard/engines/storage/indexes/portions
)

END()
