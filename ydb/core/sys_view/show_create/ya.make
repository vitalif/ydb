YQL_LIBRARY()

SRCS(
    create_external_table_formatter.cpp
    show_create.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/json
    ydb/core/base
    ydb/core/kqp/runtime
    ydb/core/protos
    ydb/core/sys_view/common
    ydb/core/sys_view/show_create/formatters
    ydb/core/tx/columnshard/engines/scheme/defaults/protos
    ydb/core/tx/schemeshard
    ydb/core/tx/sequenceproxy
    ydb/core/tx/tx_proxy
    ydb/core/ydb_convert
    ydb/library/actors/core
    ydb/public/api/protos
    ydb/public/lib/ydb_cli/dump/util
)

END()

RECURSE(
    formatters
)
