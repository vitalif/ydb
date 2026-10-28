YQL_LIBRARY()

SRCS(
    kqp_opt_peephole_streaming.cpp
    kqp_opt_peephole_wide_read.cpp
    kqp_opt_peephole_write_constraint.cpp
    kqp_opt_peephole.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/common
    ydb/core/kqp/opt/physical
    ydb/library/accessor
    ydb/library/naming_conventions
    ydb/library/yql/dq/opt
    ydb/library/yverify_stream
)

END()
