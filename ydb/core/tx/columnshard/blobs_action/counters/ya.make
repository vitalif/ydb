LIBRARY()

SRCS(
    read.cpp
    storage.cpp
    write.cpp
    remove_declare.cpp
    remove_gc.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/actors/core
    ydb/core/tablet_flat
)

GENERATE_ENUM_SERIALIZATION(storage.h)

END()
