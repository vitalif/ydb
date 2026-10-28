LIBRARY(version_definition)

SRCS(
    version_definition.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/driver_lib/version
)

END()
