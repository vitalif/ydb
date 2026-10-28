LIBRARY()

SRCS(
    local_partition_reader.cpp
    table_writer.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/events
    ydb/core/tx/replication/service
    ydb/library/actors/core
)

END()

RECURSE_FOR_TESTS(
    ut_local_partition_reader
    ut_table_writer
)
