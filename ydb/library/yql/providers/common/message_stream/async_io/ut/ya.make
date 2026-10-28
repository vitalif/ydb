UNITTEST()
SRCS(read_actor_ut.cpp)
USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/library/yql/providers/common/message_stream/async_io/testlib
    yql/essentials/parser/pg_wrapper
    yql/essentials/public/udf/service/stub
)
YQL_LAST_ABI_VERSION()
END()
