LIBRARY()
YQL_LAST_ABI_VERSION()

SRCS(
    udf_module.cpp
    snapshot.cpp
    wasm_artifact.cpp
    storage_paths.cpp
)

GENERATE_ENUM_SERIALIZATION(udf_module.h)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/actors/core
    ydb/core/base
    ydb/core/keyvalue
    ydb/core/tx/scheme_cache
    ydb/library/aclib
    ydb/library/table_creator
    ydb/services/metadata/request
    ydb/services/metadata/abstract
    ydb/services/metadata/manager
    ydb/services/metadata
    yql/essentials/minikql
    library/cpp/digest/md5
)

END()
