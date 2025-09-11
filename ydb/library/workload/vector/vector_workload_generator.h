#pragma once

#include "vector_workload_params.h"
#include "vector_sampler.h"
#include "vector_recall_evaluator.h"

#include <ydb/library/workload/abstract/workload_query_generator.h>

#include <util/generic/vector.h>
#include <util/generic/ptr.h>
#include <util/generic/maybe.h>

#include <cctype>
#include <mutex>
#include <vector>
#include <string>
#include <atomic>


namespace NYdbWorkload {

class TVectorWorkloadParams;
class TVectorWorkloadGenerator final: public TWorkloadQueryGeneratorBase<TVectorWorkloadParams> {
public:
    using TBase = TWorkloadQueryGeneratorBase<TVectorWorkloadParams>;
    TVectorWorkloadGenerator(const TVectorWorkloadParams* params);

    void Init() override;
    std::string GetDDLQueries() const override;
    TQueryInfoList GetInitialData() override;
    TVector<std::string> GetCleanPaths() const override;
    TQueryInfoList GetWorkload(int type) override;
    TVector<TWorkloadType> GetSupportedWorkloadTypes() const override;

private:
    TQueryInfoList Upsert();
    TQueryInfoList Select();
    TQueryInfoList SelectLevelsCache();

    // Helper method to get next target index
    size_t GetNextTargetIndex(size_t currentIndex) const;

    size_t CurrentIndex = 0;

    THolder<TVectorSampler> VectorSampler;

    // Level centroids data (loaded during initialization if LevelsCache is enabled)
    TVector<TCentroidData> LevelCentroids;
};

} // namespace NYdbWorkload
