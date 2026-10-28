YQL_LIBRARY()

SRCS(
    describer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/containers/absl
    ydb/core/persqueue/common
    ydb/core/persqueue/events
    ydb/core/persqueue/public/nameresolver
#    ydb/core/persqueue/public
)

GENERATE_ENUM_SERIALIZATION(describer.h)

END()

RECURSE_FOR_TESTS(
    ut
)
