LIBRARY()

SRCS(
    GLOBAL constructor.cpp
    read_metadata.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/reader/abstract
    ydb/core/tx/columnshard/engines/reader/common_reader/constructor
    ydb/core/kqp/compute_actor
)

END()
