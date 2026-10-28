LIBRARY()

SRCS(
    ut_helpers.h
    ut_helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/core/formats/arrow/accessor/sub_columns
    ydb/library/actors/core
    yql/essentials/types/binary_json
)

YQL_LAST_ABI_VERSION()

END()
