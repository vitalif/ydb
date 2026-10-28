LIBRARY()

SRCS(
    abstract.cpp
    GLOBAL add_column.cpp
    GLOBAL alter_column.cpp
    GLOBAL drop_column.cpp
    GLOBAL upsert_index.cpp
    GLOBAL drop_index.cpp
    GLOBAL upsert_opt.cpp
    GLOBAL alter_sharding.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/metadata/manager
    ydb/core/formats/arrow/serializer
    ydb/core/tx/columnshard/engines/storage/optimizer/abstract
    ydb/core/tx/columnshard/data_accessor/abstract
    ydb/core/kqp/gateway/utils
    ydb/core/protos
)

YQL_LAST_ABI_VERSION()

END()
