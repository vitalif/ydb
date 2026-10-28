LIBRARY()

SRCS(
    yaml.cpp
    yaml.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/protobuf
    library/cpp/yaml/as
    ydb/core/viewer/protos
)

END()
