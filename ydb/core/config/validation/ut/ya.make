UNITTEST_FOR(ydb/core/config/validation)

SRCS(
    ut/composite_conveyor_validator_ut.cpp
    validators_ut.cpp
)

YQL_LAST_ABI_VERSION()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
