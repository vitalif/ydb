LIBRARY()

SRCS(
    GLOBAL registrar.cpp
    stock.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/workload/abstract
)

GENERATE_ENUM_SERIALIZATION_WITH_HEADER(stock.h)

END()
