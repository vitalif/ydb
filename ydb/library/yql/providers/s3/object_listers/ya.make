YQL_LIBRARY()

SRCS(
    yql_s3_list.cpp
    yql_s3_path.cpp
)

GENERATE_ENUM_SERIALIZATION(yql_s3_list.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/re2
    library/cpp/string_utils/quote
    library/cpp/xml/document
    ydb/library/yql/providers/common/http_gateway
    ydb/library/yql/providers/s3/credentials
    yql/essentials/utils
    ydb/library/yql/utils/actor_log
)

END()

RECURSE_FOR_TESTS(
    ut
)
