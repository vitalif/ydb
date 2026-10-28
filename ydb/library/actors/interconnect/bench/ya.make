PROGRAM(ic_bench)

SRCS(
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/library/actors/interconnect
    ydb/library/actors/interconnect/ut/lib
    ydb/library/actors/interconnect/ut/lib/port_manager
    ydb/library/actors/util
    library/cpp/getopt/small
    library/cpp/monlib/dynamic_counters
)

END()
