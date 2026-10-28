UNITTEST()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/ymq/base
    yql/essentials/public/udf
    yql/essentials/parser/pg_wrapper
    yql/essentials/public/udf/service/exception_policy
)

SRCS(
    action_ut.cpp
    counters_ut.cpp
    dlq_helpers_ut.cpp
    helpers_ut.cpp
    secure_protobuf_printer_ut.cpp
    queue_attributes_ut.cpp
)

END()
