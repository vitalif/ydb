LIBRARY()

SRCS(
    attributes_md5.cpp
    attributes.cpp
    attribute_name.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/digest/md5
    ydb/core/persqueue/public
    ydb/core/protos
    ydb/public/api/protos
)

END()

RECURSE_FOR_TESTS(
    ut
)
