PCH_LIBRARY()

PCH_LIBRARY_SRC(ydb/core/pch/common.h)

PEERDIR(
    ydb/core/protos
    ydb/library/services
    ydb/public/api/protos
)

END()
