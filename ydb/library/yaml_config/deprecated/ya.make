LIBRARY()

SRCS(
    yaml_config_parser.cpp
    yaml_config_parser.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yaml_config
)

END()
