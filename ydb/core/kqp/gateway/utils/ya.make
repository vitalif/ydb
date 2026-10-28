LIBRARY()

SRCS(
    metadata_helpers.cpp
    scheme_helpers.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/cms/console
    ydb/core/kqp/gateway/actors
    ydb/core/kqp/provider
    ydb/core/protos
    ydb/core/protos/schemeshard
)

YQL_LAST_ABI_VERSION()

END()
