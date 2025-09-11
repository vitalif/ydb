#pragma once

#include "vector_workload_params.h"

namespace NYdbWorkload {


// Utility function to get metric info for SQL query
// Returns a tuple of (function_name, is_ascending)
std::tuple<std::string, bool> GetMetricInfo(NYdb::NTable::TVectorIndexSettings::EMetric metric);


// Utility function to create "primary key as string" expression
std::string MakeKeyExpression(const TVectorWorkloadParams& params, const std::string& tableAlias);


// Utility function to create select query
std::string MakeSelect(const TVectorWorkloadParams& params, const TString& indexName);

// Utility function to create select query using HNSW for cluster search + brute force on posting table
std::string MakeSelectHnsw(const TVectorWorkloadParams& params);

// Utility function to create parameters for select query
NYdb::TParams MakeSelectParams(const std::string& embeddingBytes, const std::optional<NYdb::TValue>& prefixValue, ui64 limit);

// Utility function to create parameters for HNSW select query
NYdb::TParams MakeSelectHnswParams(const std::string& embeddingBytes, const std::vector<ui64>& clusterIds,
                                   const std::optional<NYdb::TValue>& prefixValue, ui64 limit);

// Utility function to parse target embedding string to vector of floats
std::vector<float> ParseEmbeddingToVector(const std::string& targetEmbedding);

// Utility function to find clusters using levels cache and return cluster IDs
std::vector<ui64> FindClustersWithLevelsCache(const std::vector<TCentroidData>& levelCentroids,
                                               const std::string& targetEmbedding,
                                               const TVectorWorkloadParams& params,
                                               size_t topClusters);

// Utility function to apply overlapping clusters heuristic to posting table
// This modifies the indexImplPostingTable by adding vectors to additional clusters
void ApplyOverlappingClustersHeuristic(const TVectorWorkloadParams& params, size_t maxClustersToCheck = 30, float thresholdFactor = 0.6f);

// Load centroids from level table
TVector<TCentroidData> LoadCentroidsFromLevelTable(const TVectorWorkloadParams& params);

// Load all centroids from level table for caching
TVector<TCentroidData> LoadAllLevelCentroids(const TVectorWorkloadParams& params);

} // namespace NYdbWorkload
