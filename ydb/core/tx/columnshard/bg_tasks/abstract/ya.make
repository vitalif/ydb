LIBRARY()

SRCS(
    task.cpp
    status_channel.cpp
    session.cpp
    control.cpp
    adapter.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tablet_flat
    ydb/library/accessor
    ydb/library/services
    ydb/core/tx/columnshard/bg_tasks/protos
    ydb/public/sdk/cpp/src/library/operation_id
    ydb/public/api/protos
)

END()
