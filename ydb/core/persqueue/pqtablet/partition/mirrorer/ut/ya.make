UNITTEST_FOR(ydb/core/persqueue/pqtablet/partition/mirrorer)

SIZE(MEDIUM)

YQL_LAST_ABI_VERSION()

SRCS(
    mirrorer_actor_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/string_utils/base64
    ydb/core/testlib/default
    ydb/public/sdk/cpp/src/library/kafka
)

END()
