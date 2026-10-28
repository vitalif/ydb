UNITTEST()

SRCS(
    utils_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    library/cpp/json
    library/cpp/svnversion
    ydb/core/testlib/default
    ydb/services/sqs_topic
)

END()
