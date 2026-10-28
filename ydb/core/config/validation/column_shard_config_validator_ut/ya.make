UNITTEST_FOR(ydb/core/config/validation)

SRC(
    column_shard_config_validator_ut.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

END()
