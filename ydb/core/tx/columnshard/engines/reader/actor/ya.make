LIBRARY()

SRCS(
    actor.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/engines/reader/abstract
    ydb/core/kqp/compute_actor
    yql/essentials/core/issue
)

END()
