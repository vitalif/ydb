LIBRARY()

SRCS(
    backup_test_enums.h
)

GENERATE_ENUM_SERIALIZATION(backup_test_enums.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/datashard
)

END()
