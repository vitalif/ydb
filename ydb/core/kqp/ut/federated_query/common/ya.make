LIBRARY()

SRCS(
    common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/rm_service
    ydb/core/kqp/ut/common
    ydb/library/yql/providers/common/token_accessor/client
    ydb/library/yql/providers/generic/connector/libcpp/ut_helpers
    ydb/library/yql/providers/pq/gateway/dummy
    ydb/library/yql/providers/pq/transform
    ydb/library/yql/providers/s3/actors_factory
    ydb/public/sdk/cpp/src/client/operation
    ydb/public/sdk/cpp/src/client/query
)

YQL_LAST_ABI_VERSION()

END()
