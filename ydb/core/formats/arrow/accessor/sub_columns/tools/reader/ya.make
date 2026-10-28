PROGRAM()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    ydb/core/formats/arrow
    ydb/core/formats/arrow/accessor/common
    ydb/core/formats/arrow/accessor/sub_columns
    ydb/core/formats/arrow/serializer
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
    yql/essentials/types/binary_json
)

YQL_LAST_ABI_VERSION()

SRCS(
    main.cpp
)

END()
