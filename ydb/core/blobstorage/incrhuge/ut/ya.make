UNITTEST()

FORK_SUBTESTS()

IF (SANITIZER_TYPE)
    SIZE(MEDIUM)
    REQUIREMENTS(cpu:2)
ELSE()
    SIZE(MEDIUM)
ENDIF()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/apps/version
    ydb/library/actors/protos
    ydb/core/blobstorage
    ydb/core/blobstorage/incrhuge
    ydb/core/blobstorage/pdisk
)

SRCS(
    incrhuge_basic_ut.cpp
    incrhuge_id_dict_ut.cpp
    incrhuge_log_merger_ut.cpp
)

END()
