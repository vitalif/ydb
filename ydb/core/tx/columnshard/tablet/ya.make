LIBRARY()

SRCS(
    ext_tx_base.cpp
    write_queue.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/hooks/abstract
    ydb/core/tx/columnshard/tracing
    library/cpp/lwtrace
)

END()
