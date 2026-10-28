YQL_LIBRARY()

SRCS(
    kqp_compute_context.cpp
    kqp_program_builder.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/kqp/common
    ydb/core/scheme
    ydb/core/tablet_flat
    ydb/library/aclib
    ydb/library/yql/dq/actors/compute
    ydb/library/yql/dq/comp_nodes
    ydb/library/yql/dq/runtime
    yql/essentials/minikql
)

END()
