LIBRARY()

SRCS(
    kqp_indexes_json_ut_common.cpp
    kqp_indexes_json_corpus.cpp
    kqp_indexes_json_predicate.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/fmt
    ydb/core/kqp/ut/common
    ydb/core/kqp/ut/indexes/common
    ydb/library/json_index
)

YQL_LAST_ABI_VERSION()

END()
