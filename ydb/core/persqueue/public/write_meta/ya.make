LIBRARY()

SRCS(
    write_meta.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/persqueue/public/codecs
    ydb/core/protos
)

END()

