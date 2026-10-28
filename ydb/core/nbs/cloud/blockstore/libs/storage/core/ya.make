YQL_LIBRARY()

SRCS(
    request_info.cpp
    tablet.cpp
    tablet_schema.cpp
    volume_label.cpp
    volume_model.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/nbs/cloud/blockstore/libs/storage/model
    ydb/core/nbs/cloud/storage/core/libs/common
    ydb/core/nbs/cloud/storage/core/protos
    ydb/core/control
    ydb/core/engine/minikql
    ydb/core/protos
    ydb/core/tablet_flat

    library/cpp/deprecated/atomic
    library/cpp/lwtrace
)

END()

RECURSE(ut)
