YQL_LIBRARY()

SRCS(
    alter_local_index.cpp
    alter_store.cpp
    alter_table.cpp
    alter_table_with_local_indexes.cpp
    create_local_index.cpp
    create_table_with_local_indexes.cpp
    create_store.cpp
    create_table.cpp
    drop_local_index.cpp
    drop_store.cpp
    drop_table.cpp
    drop_table_with_local_indexes.cpp
    move_local_index.cpp
    read_only_copy_table.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/mind/hive
    ydb/services/bg_tasks
    ydb/core/tx/schemeshard/olap/operations/alter
)

END()
