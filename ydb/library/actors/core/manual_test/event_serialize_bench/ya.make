PROGRAM(event_serialize_bench)

SRCS(
    bench.proto
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/dnsresolver
    ydb/library/actors/interconnect
    library/cpp/monlib/dynamic_counters
)

END()
