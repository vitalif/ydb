LIBRARY()

SRCS(
    tablet.cpp
    tx_init.cpp
    tx_init_schema.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/lwtrace/protos
    ydb/core/tablet_flat
    ydb/core/protos
    ydb/core/scheme/protos
)

END()
