UNITTEST_FOR(ydb/core/nbs/cloud/blockstore/libs/storage/dbs_controller)

SRCS(
    dbs_controller_database_ut.cpp
    dbs_controller_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/protos
    ydb/core/testlib
    ydb/core/testlib/basics
    yql/essentials/sql/pg_dummy
)

END()
