YQL_LIBRARY()

SRCS(
    group_members.cpp
    group_members.h
    groups.cpp
    groups.h
    owners.cpp
    owners.h
    permissions.cpp
    permissions.h
    users.cpp
    users.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/kqp/runtime
    ydb/core/sys_view/common
)

END()
