LIBRARY()

SRCS(
    ru_quoter.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/metering
    ydb/core/persqueue/common
    ydb/core/persqueue/events
    ydb/core/persqueue/public
    ydb/core/tx/scheme_cache
    ydb/library/actors/core
    ydb/public/api/protos
)

GENERATE_ENUM_SERIALIZATION(ru_quoter.h)

END()

RECURSE_FOR_TESTS(
    ut
)
