YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/core/formats/arrow/common
    ydb/core/formats/arrow/switch
    ydb/library/actors/core
    ydb/library/services
    ydb/library/formats/arrow/hash
)

SRCS(
    calcer.cpp
)

END()

