RECURSE_FOR_TESTS(
    ut
)

LIBRARY()

SRCS(
    audit_denylist.cpp
    audit.cpp
    url_matcher.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/cgiparam
    library/cpp/json
    library/cpp/protobuf/json
    ydb/library/actors/http
    ydb/core/audit
)

END()
