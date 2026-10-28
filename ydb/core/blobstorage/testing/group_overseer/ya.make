LIBRARY()

    SRCS(
        defs.h
        group_overseer.cpp
        group_overseer.h
        group_state.cpp
        group_state.h
    )

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/core/base

        contrib/libs/t1ha
    )

END()
