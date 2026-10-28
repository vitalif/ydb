LIBRARY()

SRCS(
    abstract.cpp
    list.cpp
    snapshot.cpp
    composite.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/storage
)

END()
