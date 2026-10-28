UNITTEST_FOR(ydb/mvp/meta)

SIZE(SMALL)

SRCS(
    meta_cache_ut.cpp
    meta_capabilities_ut.cpp
    meta_support_links_ut.cpp
    meta_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/mvp/core
    ydb/core/testlib/actors
)

DATA(
    arcadia/ydb/mvp/meta/examples
)

END()
