LIBRARY()

SRCS(
    chunks.cpp
    chunk_meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/scheme/abstract
    ydb/core/tx/columnshard/common
)

END()
