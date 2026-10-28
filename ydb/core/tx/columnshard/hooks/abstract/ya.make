LIBRARY()

SRCS(
    abstract.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/threading/atomic_shared_ptr
    ydb/core/tx/tiering/tier
    ydb/core/tx/columnshard/blobs_action/protos
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/public/sdk/cpp/src/client/resources
    yql/essentials/core/expr_nodes
)

END()

RECURSE_FOR_TESTS(
    ut
)
