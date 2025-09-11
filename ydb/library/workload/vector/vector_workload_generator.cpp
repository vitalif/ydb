#include "vector_enums.h"
#include "vector_sql.h"
#include "vector_workload_generator.h"
#include "vector_workload_params.h"
#include "vector_recall_evaluator.h"

#include <util/datetime/base.h>
#include <util/generic/serialized_enum.h>

#include <format>
#include <string>

#include <algorithm>


namespace NYdbWorkload {

TVectorWorkloadGenerator::TVectorWorkloadGenerator(const TVectorWorkloadParams* params)
    : TBase(params)
{
}

void TVectorWorkloadGenerator::Init() {
    VectorSampler = MakeHolder<TVectorSampler>(Params);
    if (Params.QueryTableName.empty()) {
        VectorSampler->SampleExistingVectors();
    } else {
        VectorSampler->SelectPredefinedVectors();
    }

    // Load level centroids if levels cache is enabled
    if (Params.LevelsCache) {
        Cout << "Levels cache loading centroids..." << Endl;

        LevelCentroids = LoadAllLevelCentroids(Params);

        if (LevelCentroids.empty()) {
            Cout << "No centroids loaded for levels cache." << Endl;
        } else {
            Cout << LevelCentroids.size() << " level centroids loaded for cache." << Endl;
        }
    }

    // Apply overlapping clusters heuristic if enabled
    if (Params.OverlappingClusters) {
        ApplyOverlappingClustersHeuristic(Params, 30, 0.6f); // Check up to 30 nearest clusters with 0.6 threshold factor (even less restrictive)
    }

    if (Params.Recall) {
        TVectorRecallEvaluator vectorRecallEvaluator(Params);
        vectorRecallEvaluator.MeasureRecall(*VectorSampler);
    }
}

std::string TVectorWorkloadGenerator::GetDDLQueries() const {
    return std::format(R"_(--!syntax_v1
        CREATE TABLE `{0}/{1}`(
            id Uint64,
            embedding Utf8,
            PRIMARY KEY(id))
        WITH (
            AUTO_PARTITIONING_BY_SIZE = ENABLED,
            AUTO_PARTITIONING_PARTITION_SIZE_MB = 500,
            AUTO_PARTITIONING_BY_LOAD = ENABLED
        )
    )_", Params.DbPath.c_str(), Params.TableName.c_str());
}

TQueryInfoList TVectorWorkloadGenerator::GetInitialData() {
    return {};
}

TVector<std::string> TVectorWorkloadGenerator::GetCleanPaths() const {
    return {"vector"};
}

TQueryInfoList TVectorWorkloadGenerator::GetWorkload(int type) {
    switch (static_cast<EWorkloadRunType>(type)) {
        case EWorkloadRunType::Upsert:
            return Upsert();
        case EWorkloadRunType::Select:
            return Select();
        default:
            return TQueryInfoList();
    }
}

TVector<IWorkloadQueryGenerator::TWorkloadType> TVectorWorkloadGenerator::GetSupportedWorkloadTypes() const {
    TVector<TWorkloadType> result;
    result.emplace_back(static_cast<int>(EWorkloadRunType::Upsert), "upsert", "Upsert vector rows in the table");
    result.emplace_back(static_cast<int>(EWorkloadRunType::Select), "select", "Retrieve top-K vectors");
    return result;
}

TQueryInfoList TVectorWorkloadGenerator::Upsert() {
    // Not implemented yet
    return {};
}

TQueryInfoList TVectorWorkloadGenerator::Select() {
    // Use levels cache if enabled
    if (Params.LevelsCache) {
        return SelectLevelsCache();
    }

    CurrentIndex = (CurrentIndex + 1) % VectorSampler->GetTargetCount();

    // Create the query string
    std::string query = MakeSelect(Params, Params.IndexName);

    // Get the embedding for the specified target
    const auto& targetEmbedding = VectorSampler->GetTargetEmbedding(CurrentIndex);

    // Get the prefix value if needed
    std::optional<NYdb::TValue> prefixValue;
    if (Params.PrefixColumn.has_value()) {
        prefixValue = VectorSampler->GetPrefixValue(CurrentIndex);
    }

    NYdb::TParams params = MakeSelectParams(targetEmbedding, prefixValue, Params.Limit);

    // Create the query info with a callback that captures the target index
    TQueryInfo queryInfo(query, std::move(params));
    queryInfo.UseStaleRO = Params.StaleRO;

    return TQueryInfoList(1, queryInfo);
}

TQueryInfoList TVectorWorkloadGenerator::SelectLevelsCache() {
    Y_ABORT_UNLESS(!LevelCentroids.empty(), "Level centroids must be available for levels cache select");

    CurrentIndex = (CurrentIndex + 1) % VectorSampler->GetTargetCount();

    // Get the embedding for the specified target
    const auto& targetEmbedding = VectorSampler->GetTargetEmbedding(CurrentIndex);

    // Use utility function to find clusters with levels cache
    std::vector<ui64> clusterIds = FindClustersWithLevelsCache(LevelCentroids, targetEmbedding, Params, Params.KmeansTreeSearchClusters);

    if (clusterIds.empty()) {
        Cerr << "Warning: No clusters found by levels cache for target " << CurrentIndex << Endl;
        // Return empty query list if no clusters found
        return TQueryInfoList();
    }

    // Create query for brute force search on posting table
    std::string query = MakeSelectHnsw(Params);

    // Get the prefix value if needed
    std::optional<NYdb::TValue> prefixValue;
    if (Params.PrefixColumn.has_value()) {
        prefixValue = VectorSampler->GetPrefixValue(CurrentIndex);
    }

    NYdb::TParams params = MakeSelectHnswParams(targetEmbedding, clusterIds, prefixValue, Params.Limit);

    // Create the query info
    TQueryInfo queryInfo(query, std::move(params));
    queryInfo.UseStaleRO = Params.StaleRO;

    return TQueryInfoList(1, queryInfo);
}

} // namespace NYdbWorkload
