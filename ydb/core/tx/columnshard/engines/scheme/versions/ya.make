LIBRARY()

SRCS(
    abstract_scheme.cpp
    snapshot_scheme.cpp
    filtered_scheme.cpp
    versioned_index.cpp
    preset_schemas.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/scheme/abstract
    ydb/core/tx/columnshard/engines/scheme/common
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/library/actors/core
)

END()
