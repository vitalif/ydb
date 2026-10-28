LIBRARY()

SRCS(
    abstract.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/services/bg_tasks/abstract
)

GENERATE_ENUM_SERIALIZATION(abstract.h)

END()
