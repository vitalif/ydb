UNITTEST_FOR(ydb/core/tx/datashard)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    contrib/libs/zstd
    library/cpp/testing/common
    ydb/core/testlib
    ydb/core/tx
    yql/essentials/parser/pg_wrapper
    yql/essentials/public/udf/service/exception_policy
    yql/essentials/sql/pg
)

YQL_LAST_ABI_VERSION()

SRCS(
    import_s3_engine_ut.cpp
)

END()
