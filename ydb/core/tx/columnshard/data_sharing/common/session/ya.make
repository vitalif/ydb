LIBRARY()

SRCS(
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/conclusion
    ydb/core/tx/columnshard/common
    ydb/core/tx/columnshard/data_sharing/common/context
    ydb/core/tablet_flat
)

GENERATE_ENUM_SERIALIZATION(common.h)

END()
