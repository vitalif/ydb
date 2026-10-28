LIBRARY()

SRCS(
    events.cpp
    lock_handle.cpp
    snapshot_handle.cpp
    snapshot_registry.cpp
    types.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/cgiparam
    library/cpp/lwtrace
    library/cpp/uri
    ydb/core/base
    ydb/core/protos
    ydb/core/scheme
    ydb/core/util
    yql/essentials/public/issue
)

END()

RECURSE_FOR_TESTS(
    ut
)
