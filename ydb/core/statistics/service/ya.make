LIBRARY()

SRCS(
    http_request.h
    http_request.cpp
    service.h
    service.cpp   
    service_impl.cpp 
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/json
    ydb/core/base
    ydb/core/engine/minikql
    ydb/core/protos
    ydb/core/tablet
    ydb/core/tablet_flat
    ydb/core/statistics/database    
    yql/essentials/core/minsketch
    yql/essentials/core/histogram
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)

