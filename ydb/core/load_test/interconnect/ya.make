LIBRARY()

SRCS(
    ../interconnect_load.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/load_test/common
    ydb/library/actors/core
    ydb/library/actors/interconnect
)

END()
