PROGRAM()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/colorizer
    library/cpp/getopt
    ydb/core/base
    ydb/core/kesus/tablet
    ydb/core/quoter
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

SRCS(
    main.cpp
    quota_requester.cpp
    server.cpp
)

END()
