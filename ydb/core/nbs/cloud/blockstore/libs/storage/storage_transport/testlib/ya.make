LIBRARY()

SRCS(
    ddisk_stub_actor.cpp
    fake_direct_session.cpp
    ic_storage_transport_test_adapter.cpp
    storage_transport_test_fixture.cpp
)

USE_PCH(ydb/core/pch/pch.h $B/ydb/core/pch/ydb-core-pch.pch)

PEERDIR(
    ydb/core/pch
    ydb/core/base
    ydb/core/mind/bscontroller
    ydb/core/nbs/cloud/blockstore/libs/common
    ydb/core/nbs/cloud/blockstore/libs/storage/storage_transport
    ydb/core/nbs/cloud/storage/core/libs/coroutine
    ydb/core/testlib
    ydb/library/actors/core
    ydb/library/actors/interconnect
)

END()
