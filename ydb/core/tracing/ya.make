LIBRARY()

SRCS(
    http.cpp
    tablet_info.cpp
    trace.cpp
    trace_collection.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/mon
)

END()
