LIBRARY()

SRCS(
    timeout.cpp
    ss_dialog.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/services/metadata/initializer
    ydb/services/metadata/abstract
    ydb/services/bg_tasks/abstract
    ydb/core/tx/scheme_cache
)

YQL_LAST_ABI_VERSION()

END()
