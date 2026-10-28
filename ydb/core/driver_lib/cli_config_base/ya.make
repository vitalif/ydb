LIBRARY()

SRCS(
    config_base.h
    config_base.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/deprecated/enum_codegen
    ydb/core/util
    ydb/public/lib/deprecated/client
    yql/essentials/minikql
)

YQL_LAST_ABI_VERSION()

END()
