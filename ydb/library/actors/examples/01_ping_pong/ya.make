PROGRAM(example_01_ping_pong)

ALLOCATOR(LF)

SRCS(
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
)

END()
