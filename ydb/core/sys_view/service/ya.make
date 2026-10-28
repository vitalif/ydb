LIBRARY()

SRCS(
    db_counters.h
    db_counters.cpp
    db_counters_codec.h
    db_counters_codec.cpp
    ext_counters.h
    ext_counters.cpp
    query_history.h
    query_interval.h
    query_interval.cpp
    sysview_service.h
    sysview_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/protos
    ydb/core/graph/api
    ydb/core/graph/service
    ydb/core/scheme
    ydb/library/aclib/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
