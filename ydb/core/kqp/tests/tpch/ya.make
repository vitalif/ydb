PROGRAM()

SRCS(
    main.cpp
    commands.cpp
    cmd_drop.cpp
    cmd_prepare.cpp
    cmd_prepare_scheme.cpp
    cmd_run_query.cpp
    cmd_run_bench.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/kqp/tests/tpch/lib
    library/cpp/json
    ydb/public/lib/ydb_cli/commands
    ydb/public/lib/ydb_cli/common
    ydb/public/lib/yson_value
)

END()

RECURSE(
    lib
)
