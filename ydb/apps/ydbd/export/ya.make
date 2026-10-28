LIBRARY()

SRCS(
    export.cpp
)

IF (OS_WINDOWS)
    CFLAGS(
        -DKIKIMR_DISABLE_S3_OPS
    )
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    yql/essentials/public/types
    ydb/core/tx/columnshard/engines/scheme/defaults/protos
    ydb/library/mkql_proto/protos
    ydb/library/aclib/protos
    ydb/library/formats/arrow/protos
    ydb/core/tx/datashard
)

END()
