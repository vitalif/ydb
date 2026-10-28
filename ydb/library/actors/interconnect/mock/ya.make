LIBRARY()

SRCS(
    ic_mock.cpp
    ic_mock.h
)

SUPPRESSIONS(tsan.supp)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/interconnect
)

END()
