LIBRARY()

SRCS(resources.cpp)

RESOURCE(
    allocation.js metric-chart/allocation.js
    chart.js metric-chart/chart.js
    chartkit.js metric-chart/chartkit.js
    chartkit.css metric-chart/chartkit.css
    client.js metric-chart/client.js
    chart.css metric-chart/chart.css
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/monlib/service/pages
    ydb/core/mon
)

END()
