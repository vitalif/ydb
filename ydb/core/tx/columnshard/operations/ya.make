LIBRARY()

SRCS(
    write.cpp
    write_data.cpp
    manager.cpp
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/core/tx/data_events
    ydb/services/metadata
    ydb/core/tx/columnshard/data_sharing/destination/events
    ydb/core/tx/columnshard/data_reader
    ydb/core/tx/columnshard/transactions/locks
    ydb/core/tx/columnshard/operations/batch_builder
    ydb/core/tx/columnshard/operations/slice_builder
    ydb/core/tx/columnshard/operations/common
    library/cpp/lwtrace
)

END()
