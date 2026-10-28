YQL_LIBRARY()

SRCS(
    cluster_list.cpp
    cluster_select.cpp
    cluster_tracker.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/containers/absl
    ydb/core/persqueue/events
    ydb/core/persqueue/public
    ydb/core/grpc_services/cancelation
)

END()

RECURSE_FOR_TESTS(
    ut
)
