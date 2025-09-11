LIBRARY()

SRCS(
    GLOBAL registrar.cpp
    vector_recall_evaluator.cpp
    vector_sampler.cpp
    vector_sql.cpp
    vector_workload_generator.cpp
    vector_workload_params.cpp
)

PEERDIR(
    library/cpp/l1_distance
    library/cpp/l2_distance
    library/cpp/dot_product
    ydb/library/workload/abstract
)

GENERATE_ENUM_SERIALIZATION_WITH_HEADER(vector_enums.h)

END()
