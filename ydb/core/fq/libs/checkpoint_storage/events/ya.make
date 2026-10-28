LIBRARY()

SRCS(
    events.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/interconnect
    ydb/core/fq/libs/checkpointing_common
    ydb/core/fq/libs/checkpoint_storage/proto
    yql/essentials/public/issue
)

END()
