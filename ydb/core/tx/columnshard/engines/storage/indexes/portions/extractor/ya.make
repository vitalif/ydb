LIBRARY()


SRCS(
    abstract.cpp
    GLOBAL sub_column.cpp
    GLOBAL default.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/core/protos
    ydb/core/formats/arrow/accessor/sub_columns
    ydb/core/tx/columnshard/engines/scheme/indexes/abstract
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)
