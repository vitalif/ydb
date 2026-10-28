YQL_LIBRARY()

SRCS(
    flat_local_minikql_host.h
    flat_local_tx_factory.cpp
    minikql_engine_host.cpp
    minikql_engine_host.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/client/minikql_compile
    ydb/core/engine
    ydb/core/formats
    ydb/core/tablet_flat
    yql/essentials/parser/pg_wrapper/interface
)

END()
