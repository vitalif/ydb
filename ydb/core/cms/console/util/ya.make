LIBRARY()

SRCS(
    config_index.cpp
    config_index.h
    defs.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
)

END()
