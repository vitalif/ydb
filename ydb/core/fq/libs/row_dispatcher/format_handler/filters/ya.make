YQL_LIBRARY()

SRCS(
    purecalc_filter.cpp
    filters_set.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    contrib/libs/fmt

    ydb/core/fq/libs/row_dispatcher/events
    ydb/core/fq/libs/row_dispatcher/format_handler/common
    ydb/core/fq/libs/row_dispatcher/memory
    ydb/core/fq/libs/row_dispatcher/purecalc_no_pg_wrapper

    ydb/library/actors/core

    yql/essentials/minikql
    yql/essentials/minikql/computation
    yql/essentials/minikql/comp_nodes
    yql/essentials/minikql/invoke_builtins
    yql/essentials/providers/common/schema/parser
    yql/essentials/public/udf
)

END()
