YQL_LIBRARY()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/string_utils/parse_size
    yql/essentials/minikql
    yql/essentials/utils
    yql/essentials/core
    yql/essentials/utils/log
    yql/essentials/providers/common/provider
    ydb/library/yql/dq/actors
    ydb/library/yql/dq/proto
)

GENERATE_ENUM_SERIALIZATION(yql_dq_settings.h)

SRCS(
    attrs.cpp
    yql_dq_common.cpp
    yql_dq_settings.cpp
)

END()
