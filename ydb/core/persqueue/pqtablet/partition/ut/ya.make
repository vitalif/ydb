GTEST()


SRCS(
    consumer_offset_tracker_ut.cpp
    message_id_deduplicator_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/pqtablet/partition
    ydb/core/persqueue/common
    ydb/core/protos
)

END()
