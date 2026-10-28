LIBRARY()

SRCS(
    GLOBAL normalizer.cpp
    GLOBAL clean_granule.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/tx/columnshard/normalizer/abstract
)

END()
