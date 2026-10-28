UNITTEST_FOR(ydb/mvp/meta/support_links)

SIZE(SMALL)

SRCS(
    url_template_ut.cpp
    url_source_ut.cpp
    grafana_dashboard_source_ut.cpp
    grafana_dashboard_search_source_ut.cpp
    grafana_logging_source_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/mvp/core
    ydb/mvp/meta
    ydb/core/testlib/actors
)

END()
