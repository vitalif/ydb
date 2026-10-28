RECURSE(
    inference
)

YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/apache/arrow
    contrib/libs/curl

    ydb/core/fq/libs/config/protos
    ydb/library/actors/core
    ydb/library/yql/providers/common/http_gateway
    ydb/library/yql/providers/s3/common
    ydb/library/yql/providers/s3/credentials
    ydb/public/sdk/cpp/adapters/issue
)

SRC(
    s3_fetcher.cpp
)

END()
