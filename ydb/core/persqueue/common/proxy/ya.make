LIBRARY()

SRCS(
    actor_persqueue_client_iface.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public
    ydb/public/sdk/cpp/src/client/topic
    ydb/public/sdk/cpp/src/client/iam
)

END()

