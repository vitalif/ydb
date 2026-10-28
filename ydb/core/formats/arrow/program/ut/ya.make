UNITTEST_FOR(ydb/core/formats/arrow/program)

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/accessor/plain
    ydb/core/formats/arrow/accessor/sparsed
    ydb/core/formats/arrow/accessor/sub_columns
    ydb/core/formats/arrow/filter
    ydb/core/formats/arrow/program
    ydb/core/formats/arrow/serializer
    ydb/library/formats/arrow/helpers
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
)

SRCS(
    ut_kernel_logic.cpp
    ut_collection.cpp
    ut_functions.cpp
    ut_pattern_hints.cpp
)

YQL_LAST_ABI_VERSION()

END()
