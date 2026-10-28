UNITTEST_FOR(ydb/library/formats/arrow)

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/arrow_kernels

    # for NYql::NUdf alloc stuff used in binary_json
    yql/essentials/public/udf/service/exception_policy
    yql/essentials/sql/pg_dummy
)

ADDINCL(
    ydb/library/arrow_clickhouse
)

YQL_LAST_ABI_VERSION()

CFLAGS(
    -Wno-unused-parameter
)

SRCS(
    ut_arrow.cpp
    ut_size_calcer.cpp
    ut_splitter.cpp
)

END()
