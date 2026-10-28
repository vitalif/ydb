LIBRARY()

SRCS(
    query_classifier_ut_common.h
    workload_service_ut_common.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/kqp/ut/common
    ydb/library/yql/providers/common/http_gateway/ut_helpers
    ydb/services/metadata
    ydb/services/workload_manager/metadata_subscription/resource_pool_classifier
)

YQL_LAST_ABI_VERSION()

END()
