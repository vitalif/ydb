YQL_LIBRARY()

SRCS(
    schema.cpp
    update.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/bg_tasks/abstract
    ydb/core/tx/columnshard/engines/scheme/indexes/abstract
)

END()
