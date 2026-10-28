UNITTEST_FOR(ydb/core/tx/columnshard/engines/changes/compaction/sub_columns)

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines
    ydb/core/tx/columnshard/test_helper
    ydb/core/tx/columnshard/counters
    ydb/core/formats/arrow/accessor/composite
    ydb/core/formats/arrow/accessor/plain
    ydb/core/formats/arrow/accessor/sub_columns
    yql/essentials/sql/pg_dummy
    yql/essentials/udfs/common/json2
)

YQL_LAST_ABI_VERSION()

SRCS(
    ut_merger.cpp
)

END()
