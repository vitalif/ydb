LIBRARY()

SRCS(
    histogram.cpp
    logging.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/lwtrace
    library/cpp/unified_agent_client
    util
    ydb/core/protos/nbs
    ydb/library/services
)

END()
