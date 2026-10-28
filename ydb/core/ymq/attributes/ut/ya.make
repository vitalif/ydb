UNITTEST()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/ymq/attributes
    ydb/core/persqueue/public
    ydb/public/api/protos
)

SRCS(
    attributes_md5_ut.cpp
    attributes_ut.cpp
)

END()
