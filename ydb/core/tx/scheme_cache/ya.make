YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/scheme
    ydb/core/persqueue/writer
    ydb/library/aclib
)

SRCS(
    scheme_cache.cpp
)

GENERATE_ENUM_SERIALIZATION(scheme_cache.h)

END()
