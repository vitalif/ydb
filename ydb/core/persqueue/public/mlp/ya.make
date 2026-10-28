LIBRARY()

SRCS(
    mlp_changer.cpp
    mlp_describer.cpp
    mlp_purger.cpp
    mlp_reader.cpp
    mlp_writer.cpp
    mlp.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/events
    ydb/core/persqueue/public
    ydb/core/persqueue/public/describer
    ydb/public/sdk/cpp/src/library/kafka
)

END()

RECURSE_FOR_TESTS(
    ut
)
