LIBRARY()

IF (OS_LINUX)

    SRCS(
        cq_actor.cpp
    )

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        contrib/libs/ibdrv
        contrib/libs/protobuf
        ydb/library/actors/core
        ydb/library/actors/protos
        ydb/library/actors/util
    )

ELSE()

    SRCS(
        cq_actor_dummy.cpp
    )

    PEERDIR(
        contrib/libs/protobuf
        ydb/library/actors/core
        ydb/library/actors/protos
        ydb/library/actors/util
    )

ENDIF()

END()
