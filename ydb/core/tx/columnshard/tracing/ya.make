LIBRARY()

SRCS(
    probes.cpp
    startup_probes.cpp
    write_orbit.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/lwtrace
    ydb/core/tx/data_events
)

END()
