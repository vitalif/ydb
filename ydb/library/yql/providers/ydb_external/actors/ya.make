LIBRARY()

SRCS(
    dq_ydb_external_read_actor.cpp
    read_stream.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    ydb/library/yql/providers/native
    ydb/library/yql/providers/ydb_external/common
    ydb/library/yql/providers/ydb_external/proto
    ydb/library/yql/providers/common/token_accessor/client
    ydb/public/sdk/cpp/src/client/arrow
    ydb/public/sdk/cpp/src/client/query
    yql/essentials/public/udf/arrow
)

ADDINCL(contrib/libs/flatbuffers/include)

YQL_LAST_ABI_VERSION()
END()

RECURSE_FOR_TESTS(ut)
