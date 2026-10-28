YQL_LIBRARY()

SRCS(
    validators.h
    validators.cpp
    composite_conveyor_config_validator.cpp
    auth_config_validator.cpp
    client_certificate_authorization_validator.cpp
    column_shard_config_validator.cpp
    monitoring_config_validator.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/blobstorage/base
    ydb/core/protos
    ydb/core/path_aliasing
    ydb/core/formats/arrow/serializer
    ydb/core/tx/conveyor_composite/common
    ydb/core/tx/conveyor_composite/common/config
    library/cpp/protobuf/json
    library/cpp/logger
)

END()

RECURSE_FOR_TESTS(
    ut
    auth_config_validator_ut
    column_shard_config_validator_ut
)
