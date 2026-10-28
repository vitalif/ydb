LIBRARY()

SRCS(
    events.cpp
    service.cpp
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/runtime
    ydb/core/tx/conveyor_composite/common
    ydb/core/tx/conveyor_composite/common/config
    ydb/library/actors/core
    ydb/services/metadata/request
    ydb/core/protos
    ydb/core/tx/conveyor/usage
)

END()
