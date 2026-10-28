YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/core/formats/arrow/accessor/abstract
    ydb/library/formats/arrow
    ydb/library/formats/arrow/protos
)

SRCS(
    accessor.cpp
    GLOBAL constructor.cpp
    GLOBAL request.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
