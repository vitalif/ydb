LIBRARY(version)

SRCS(
    version.cpp
    version.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/protobuf
    ydb/library/actors/interconnect
    library/cpp/monlib/service/pages
    library/cpp/svnversion
    ydb/library/global_plugins
    ydb/core/protos
    ydb/core/viewer/json
)

END()

RECURSE_FOR_TESTS(
    ut
)
