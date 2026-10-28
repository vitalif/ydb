UNITTEST_FOR(ydb/core/formats/arrow/accessor/dictionary)

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow/accessor/dictionary
    ydb/core/formats/arrow/accessor/plain
    ydb/core/formats/arrow
    ydb/core/formats/arrow/filter
    ydb/library/formats/arrow
    ydb/library/formats/arrow/helpers
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
)

YQL_LAST_ABI_VERSION()

SRCS(
    ut_dictionary.cpp
)

END()
