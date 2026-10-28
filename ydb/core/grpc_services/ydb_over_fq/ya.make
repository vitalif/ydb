YQL_LIBRARY()

SRCS(
    create_session.cpp
    describe_table.cpp
    execute_data_query.cpp
    explain_data_query.cpp
    keep_alive.cpp
    list_directory.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/retry
    ydb/core/fq/libs/control_plane_storage
    ydb/core/fq/libs/events
    ydb/core/grpc_services
    ydb/core/grpc_services/base
    ydb/core/grpc_services/local_grpc
    ydb/library/actors/core
    ydb/public/api/protos
    yql/essentials/public/issue
)

END()
