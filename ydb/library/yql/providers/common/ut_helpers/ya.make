LIBRARY()

SRCS(
    dq_fake_ca.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/retry
    library/cpp/testing/unittest
    ydb/library/actors/testlib
    ydb/library/services
    ydb/library/yql/dq/actors/compute
    ydb/library/yql/dq/actors/protos
    yql/essentials/minikql
    yql/essentials/minikql/computation
    yql/essentials/minikql/invoke_builtins
)

YQL_LAST_ABI_VERSION()

END()
