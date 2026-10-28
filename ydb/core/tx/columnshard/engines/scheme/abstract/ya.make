LIBRARY()

SRCS(
    index_info.cpp
    column_ids.cpp
    schema_version.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/formats/arrow/save_load
)

YQL_LAST_ABI_VERSION()

END()
