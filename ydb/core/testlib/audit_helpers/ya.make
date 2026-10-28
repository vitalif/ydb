LIBRARY()

SRCS(
    audit_helper.h
    audit_helper.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/logger
    ydb/core/audit
)

END()
