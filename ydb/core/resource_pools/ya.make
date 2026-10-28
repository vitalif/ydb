LIBRARY()

SRCS(
    regex_predicate.cpp
    resource_pool_classifier_settings.cpp
    resource_pool_settings.cpp
)

GENERATE_ENUM_SERIALIZATION(resource_pool_classifier_settings.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/protobuf
    library/cpp/regex/pcre
    util
    ydb/core/base
    ydb/library/aclib
)

END()

RECURSE_FOR_TESTS(
    ut
)
