IF (OS_LINUX)
    PROGRAM(pdiskfit)

    SRCS(
        pdiskfit.cpp
    )

    USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

    PEERDIR(
        ydb/core/pch
        ydb/apps/version
        library/cpp/getopt
        library/cpp/string_utils/parse_size
        ydb/core/blobstorage
        ydb/core/blobstorage/ut_pdiskfit/lib
        ydb/core/mon
    )

    END()
ENDIF()
