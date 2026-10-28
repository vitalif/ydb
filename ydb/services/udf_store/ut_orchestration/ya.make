UNITTEST_FOR(ydb/services/udf_store/compile_controller)

SIZE(MEDIUM)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    library/cpp/testing/unittest
    ydb/core/testlib/default
    ydb/services/udf_store
    ydb/services/udf_store/compile_controller/protos
)

YQL_LAST_ABI_VERSION()

SRCS(
    compile_controller_ut.cpp
    dinode_client_ut.cpp
    chunk_read_ut.cpp
)

END()
