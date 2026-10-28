YQL_LIBRARY()

SRCS(
    update.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/schemeshard/olap/operations/alter/abstract
    ydb/core/tx/columnshard/data_sharing/initiator/controller
    ydb/core/tx/columnshard/data_sharing/protos
    ydb/public/sdk/cpp/src/client/types/credentials
)

END()
