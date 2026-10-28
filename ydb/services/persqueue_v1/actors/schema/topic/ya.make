LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/schema
    ydb/services/persqueue_v1/actors/schema/common
)

SRCS(
    actors.cpp
    alter_topic.cpp
    create_topic.cpp
    describe_consumer.cpp
    describe_partition.cpp
    describe_topic.cpp
    drop_topic.cpp
)

END()

RECURSE_FOR_TESTS(
    ut
)
