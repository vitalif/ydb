PROGRAM(mvp_meta)

CFLAGS(
    -DPROFILE_MEMORY_ALLOCATIONS
)

ALLOCATOR(LF_DBG)

SRCS(
    main.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/mvp/meta
    library/cpp/getopt
)

YQL_LAST_ABI_VERSION()

END()
