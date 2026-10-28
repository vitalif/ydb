UNITTEST_FOR(ydb/core/tx/datashard)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    library/cpp/streams/zstd
    ydb/core/testlib/default
    ydb/library/testlib/parquet_helpers
)

YQL_LAST_ABI_VERSION()

SRCS(
    backup_restore_traits_ut.cpp
    export_parquet_ut.cpp
    export_s3_buffer_ut.cpp
)

GENERATE_ENUM_SERIALIZATION(ydb/core/tx/datashard/backup_restore_traits.h)
GENERATE_ENUM_SERIALIZATION(ydb/core/tx/datashard/ut_export/export_parquet_ut_enums.h)

END()
