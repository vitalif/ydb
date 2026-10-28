LIBRARY()

SRCS(
    out.cpp
    out_cms.cpp
    out_data_events.cpp
    out_long_tx_service.cpp
    out_sequenceshard.cpp
    out_tablet.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
)

END()
