YQL_LIBRARY()

SRCS(
    scalar.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/scheme/defaults/protos
    contrib/libs/apache/arrow
    ydb/library/conclusion
    ydb/core/scheme_types
    ydb/library/actors/core
    ydb/library/formats/arrow
)

END()
