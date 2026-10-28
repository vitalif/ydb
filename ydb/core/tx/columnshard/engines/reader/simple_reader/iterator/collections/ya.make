LIBRARY()

SRCS(
    abstract.cpp
    constructors.cpp
    unordered_result.cpp
    ordered_result_no_limit.cpp
    ordered_result_with_limit.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/predicate
)

END()
