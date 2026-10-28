LIBRARY()

SRCS(
    GLOBAL constructor.cpp
    GLOBAL meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/storage/indexes/portions
)

END()
