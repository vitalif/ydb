LIBRARY()

SRCS(
    local.cpp
    query_executor.cpp
    typed_local.cpp
    writer.cpp
    get_value.cpp
    test_case.cpp
    plan_step.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/testlib
    ydb/core/protos
)

YQL_LAST_ABI_VERSION()

END()
