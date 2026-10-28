LIBRARY()

SRCS(
    single_thread_ic_mock.h
    single_thread_ic_mock.cpp
    testactorsys.h
    testactorsys.cpp
    defs.h
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/apps/version
    # library/cpp/testing/unittest
    ydb/core/blobstorage/backpressure
    ydb/core/blobstorage/groupinfo
    ydb/core/blobstorage/pdisk/mock
    ydb/core/blobstorage/vdisk
    ydb/core/blobstorage/vdisk/common
    ydb/core/tx/scheme_board
    # ydb/library/yql/public/udf/service/stub
    ydb/library/actors/core
    ydb/library/actors/util
    ydb/library/actors/wilson
    library/cpp/containers/stack_vector
    library/cpp/html/escape
    library/cpp/ipmath
    library/cpp/json
    library/cpp/lwtrace
    library/cpp/monlib/dynamic_counters
    library/cpp/random_provider
    ydb/core/base
    ydb/core/protos
    library/cpp/deprecated/atomic
    ydb/library/yverify_stream
)

END()
