UNITTEST_FOR(ydb/core/tx/columnshard/engines/storage/indexes/portions/extractor)

SRCS(
    ut_sub_column.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/accessor/sub_columns/ut_common
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

END()
