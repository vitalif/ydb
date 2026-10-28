LIBRARY()

IF (OS_WINDOWS)
    CFLAGS(
        -DKIKIMR_DISABLE_YT
    )
ELSE()
    SRCS(
        export_yt.cpp
        export_yt.h
        yt_shutdown.cpp
        yt_shutdown.h
        yt_wrapper.cpp
        yt_wrapper.h
    )
    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/library/actors/core
        ydb/core/base
        ydb/core/protos
        ydb/library/aclib
        yql/essentials/types/binary_json
        yt/yt/client
    )
ENDIF()

YQL_LAST_ABI_VERSION()

END()
