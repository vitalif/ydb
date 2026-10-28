UNITTEST_FOR(ydb/core/config/validation)

SRC(
    auth_config_validator_ut.cpp
)

YQL_LAST_ABI_VERSION()

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
