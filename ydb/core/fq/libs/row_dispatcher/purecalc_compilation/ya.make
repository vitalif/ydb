YQL_LIBRARY()

SRCS(
    compile_service.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/fq/libs/config/protos
    ydb/core/fq/libs/row_dispatcher/common
    ydb/core/fq/libs/row_dispatcher/events
    ydb/core/fq/libs/row_dispatcher/format_handler/common
    ydb/core/fq/libs/row_dispatcher/memory
    ydb/core/fq/libs/row_dispatcher/purecalc_no_pg_wrapper

    ydb/library/actors/core
)

END()
