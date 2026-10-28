PROGRAM()

SRCDIR(ydb/core/kesus/tablet)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    library/cpp/testing/unittest
    ADDINCL ydb/core/kesus/tablet
    ydb/core/testlib/default
)

YQL_LAST_ABI_VERSION()

SRCS(
    main.cpp
    ut_helpers.cpp
)

END()
