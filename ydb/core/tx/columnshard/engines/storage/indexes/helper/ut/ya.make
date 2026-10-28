UNITTEST_FOR(ydb/core/tx/columnshard/engines/storage/indexes/helper)

SRCS(
    case_helper_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow
    ydb/core/kqp/ut/common
    yql/essentials/sql/pg_dummy
    yql/essentials/public/udf/service/exception_policy
)

END()
