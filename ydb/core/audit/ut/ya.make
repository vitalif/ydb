UNITTEST()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/testlib
    ydb/core/audit/heartbeat_actor
)

SRCS(
    audit_log_service_ut.cpp
    audit_log_ut.cpp
)

END()
