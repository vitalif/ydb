LIBRARY()

SRCS(
    change_exchange.cpp
    change_record.cpp
    change_sender.cpp
    change_sender_monitoring.cpp
    resolve_partition.cpp
    util.cpp
)

GENERATE_ENUM_SERIALIZATION(change_record.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/scheme
    ydb/library/actors/core
    library/cpp/monlib/service/pages
)

END()
