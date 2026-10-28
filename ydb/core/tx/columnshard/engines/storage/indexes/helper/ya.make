YQL_LIBRARY()

SRCS(
    case_helper.cpp
    index_defaults.cpp
    index_parameters.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/formats/arrow
)

END()

RECURSE_FOR_TESTS(
    ut
)
