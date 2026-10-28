PROGRAM(selector_coro_bench)

SRCS(main.cpp)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/apps/version
    ydb/core/blobstorage/vdisk/hulldb
    ydb/core/blobstorage/vdisk/hulldb/test
    yql/essentials/public/udf/service/stub
    yql/essentials/sql/pg_dummy
)

END()
