LIBRARY()

SRCS(
    config.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/fq/libs/compute/common
    ydb/core/fq/libs/config/protos
    ydb/core/fq/libs/control_plane_storage
    ydb/public/api/protos
)

YQL_LAST_ABI_VERSION()

END()
