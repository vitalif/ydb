UNITTEST_FOR(ydb/library/persqueue/topic_parser)

FORK_SUBTESTS()

SIZE(SMALL)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/getopt
    library/cpp/svnversion
    ydb/library/persqueue/topic_parser
)

SRCS(
    topic_names_converter_ut.cpp
)

END()
