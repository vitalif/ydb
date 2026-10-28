LIBRARY()

SRCS(
    audit_config.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/protos
    ydb/library/aclib/protos/identity
)

END()

RECURSE_FOR_TESTS(
    ut
)
