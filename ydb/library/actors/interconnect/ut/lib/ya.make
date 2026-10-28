LIBRARY()

SRCS(
    node.h
    test_events.h
    test_actors.h
    ic_test_cluster.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/logger
    ydb/library/actors/interconnect/ut/lib/tls
)

END()
