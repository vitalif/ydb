LIBRARY()

SRCS(
    manager.h
    manager.cpp
)

STYLE_CPP()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/services
    yql/essentials/providers/common/metrics
    yql/essentials/utils
)

END()
