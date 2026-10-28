PROGRAM(table-perf)

SRCS(
    colons.cpp
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat/test/libs/table
    library/cpp/charset/lite
    library/cpp/getopt
    ydb/core/tablet_flat
    yql/essentials/sql/pg_dummy
    yql/essentials/public/udf/service/exception_policy
)

END()
