UNITTEST()

FORK_SUBTESTS()

SRCS(
    test_spans.cpp
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/interconnect/retro_tracing
    ydb/library/actors/retro_tracing
    ydb/library/actors/testlib
)

END()
