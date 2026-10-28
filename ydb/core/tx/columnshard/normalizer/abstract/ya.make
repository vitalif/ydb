LIBRARY()

SRCS(
    abstract.cpp
)

GENERATE_ENUM_SERIALIZATION(abstract.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat
    ydb/core/tx/columnshard/blobs_action/abstract
    ydb/core/tx/columnshard/resource_subscriber
)

END()
