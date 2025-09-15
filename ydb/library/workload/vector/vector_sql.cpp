#include "vector_sql.h"

#include <library/cpp/dot_product/dot_product.h>
#include <library/cpp/l1_distance/l1_distance.h>
#include <library/cpp/l2_distance/l2_distance.h>

#include <iostream>
#include <util/datetime/base.h>
#include <util/generic/serialized_enum.h>

#include <format>
#include <string>

#include <algorithm>
#include <unordered_map>
#include <thread>
#include <vector>
#include <mutex>

namespace NYdbWorkload {

// Utility function to get metric info for SQL query
// Returns a tuple of (function_name, is_ascending)
std::tuple<std::string, bool> GetMetricInfo(NYdb::NTable::TVectorIndexSettings::EMetric metric) {
    switch (metric) {
        case NYdb::NTable::TVectorIndexSettings::EMetric::InnerProduct:
            return {"InnerProductSimilarity", false}; // Similarity, higher is better (DESC)

        case NYdb::NTable::TVectorIndexSettings::EMetric::CosineSimilarity:
            return {"CosineSimilarity", false}; // Similarity, higher is better (DESC)

        case NYdb::NTable::TVectorIndexSettings::EMetric::CosineDistance:
            return {"CosineDistance", true}; // Distance, lower is better (ASC)

        case NYdb::NTable::TVectorIndexSettings::EMetric::Manhattan:
            return {"ManhattanDistance", true}; // Distance, lower is better (ASC)

        case NYdb::NTable::TVectorIndexSettings::EMetric::Euclidean:
            return {"EuclideanDistance", true}; // Distance, lower is better (ASC)

        case NYdb::NTable::TVectorIndexSettings::EMetric::Unspecified:
        default:
            Y_ABORT("Unspecified metric");
    }
}


std::string MakeKeyExpression(const TVectorWorkloadParams& params, const std::string& tableAlias) {
    TStringBuilder ret;
    if (params.KeyColumns.size() == 1) {
        ret << "UNWRAP(CAST(" << tableAlias << params.KeyColumns[0] << " AS string))";
        return ret;
    }
    ret << "UNWRAP(\"\\\"\" || ";
    for (size_t i = 0; i < params.KeyColumns.size(); i++) {
        if (i > 0) {
            ret << " || \"\\\",\\\"\" || ";
        }
        ret << "String::EscapeC(CAST(" << tableAlias << params.KeyColumns[i] << " AS string))";
    }
    ret << " || \"\\\"\")";
    return ret;
}


// Utility function to create select query
std::string MakeSelect(const TVectorWorkloadParams& params, const TString& indexName) {
    auto [functionName, isAscending] = GetMetricInfo(params.Metric);

    TStringBuilder ret;
    ret << "--!syntax_v1" << "\n";
    ret << "DECLARE $Embedding as String;" << "\n";
    if (params.PrefixColumn)
        ret << "DECLARE $PrefixValue as " << params.PrefixType << ";" << "\n";
    ret << "pragma ydb.KMeansTreeSearchTopSize=\"" << params.KmeansTreeSearchClusters << "\";" << "\n";
    ret << "SELECT " << MakeKeyExpression(params, "") << " AS id FROM " << params.TableName << "\n";
    if (!indexName.empty())
        ret << "VIEW " << indexName << "\n";
    if (params.PrefixColumn)
        ret << "WHERE " << params.PrefixColumn << " = $PrefixValue" << "\n";
    ret << "ORDER BY Knn::" << functionName << "(" << params.EmbeddingColumn << ", $Embedding) " << (isAscending ? "ASC" : "DESC") << "\n";
    ret << "LIMIT $Limit" << "\n";
    return ret;
}

// Utility function to create select query using HNSW for cluster search + brute force on posting table
std::string MakeSelectHnsw(const TVectorWorkloadParams& params) {
    auto [functionName, isAscending] = GetMetricInfo(params.Metric);

    Y_ABORT_UNLESS(!params.PrefixColumn, "Prefix idex is not supported yet in HNSW");
    TStringBuilder ret;
    ret << "--!syntax_v1" << "\n";
    ret << "DECLARE $Embedding as String;" << "\n";

    // Create cluster IDs list for IN clause
    ret << "DECLARE $ClusterIds as List<Uint64>;" << "\n";

    ret << "SELECT UNWRAP(CAST(id AS string)) AS id FROM `" << params.TableName << "/" << params.IndexName << "/indexImplPostingTable`" << "\n";
    ret << "WHERE __ydb_parent IN $ClusterIds" << "\n";
    ret << "ORDER BY Knn::" << functionName << "(" << params.EmbeddingColumn << ", $Embedding) " << (isAscending ? "ASC" : "DESC") << "\n";
    ret << "LIMIT $Limit" << "\n";

    return ret;
}

// Utility function to create parameters for HNSW select query
NYdb::TParams MakeSelectHnswParams(const std::string& embeddingBytes, const std::vector<ui64>& clusterIds,
                                   const std::optional<NYdb::TValue>& prefixValue, ui64 limit) {
    Y_ABORT_UNLESS(!prefixValue.has_value(), "Prefix idex is not supported yet in HNSW");

    NYdb::TParamsBuilder paramsBuilder;

    paramsBuilder.AddParam("$Embedding").String(embeddingBytes).Build();
    paramsBuilder.AddParam("$Limit").Uint64(limit).Build();

    // Add cluster IDs as a list parameter
    auto& clusterListBuilder = paramsBuilder.AddParam("$ClusterIds").BeginList();
    for (ui64 clusterId : clusterIds) {
        clusterListBuilder.AddListItem().Uint64(clusterId);
    }
    clusterListBuilder.EndList().Build();


    return paramsBuilder.Build();
}

// Utility function to parse target embedding string to vector of floats
std::vector<float> ParseEmbeddingToVector(const std::string& targetEmbedding) {
    std::vector<float> queryVector;
    const char* data = targetEmbedding.data();
    size_t dataSize = targetEmbedding.size();

    if (dataSize >= 1) {
        size_t numFloats = (dataSize - 1) / sizeof(float);
        queryVector.resize(numFloats);
        if (numFloats > 0) {
            memcpy(queryVector.data(), data, dataSize);
        }
    }

    return queryVector;
}

// Utility function to calculate distance between two vectors based on metric using fast library functions
float CalculateDistanceFast(const std::vector<float>& vec1, const std::vector<float>& vec2,
                           NYdb::NTable::TVectorIndexSettings::EMetric metric) {
    Y_ABORT_UNLESS(vec1.size() == vec2.size(), "Vectors must have the same dimension");

    switch (metric) {
        case NYdb::NTable::TVectorIndexSettings::EMetric::Euclidean: {
            return L2Distance(vec1.data(), vec2.data(), vec1.size());
        }
        case NYdb::NTable::TVectorIndexSettings::EMetric::CosineDistance: {
            float dot = DotProduct(vec1.data(), vec2.data(), vec1.size());
            float norm1 = DotProduct(vec1.data(), vec1.data(), vec1.size());
            float norm2 = DotProduct(vec2.data(), vec2.data(), vec2.size());
            float cosine_sim = dot / (std::sqrt(norm1) * std::sqrt(norm2));
            return 1.0f - cosine_sim;
        }
        case NYdb::NTable::TVectorIndexSettings::EMetric::CosineSimilarity: {
            float dot = DotProduct(vec1.data(), vec2.data(), vec1.size());
            float norm1 = DotProduct(vec1.data(), vec1.data(), vec1.size());
            float norm2 = DotProduct(vec2.data(), vec2.data(), vec2.size());
            return dot / (std::sqrt(norm1) * std::sqrt(norm2));
        }
        case NYdb::NTable::TVectorIndexSettings::EMetric::InnerProduct: {
            return DotProduct(vec1.data(), vec2.data(), vec1.size());
        }
        case NYdb::NTable::TVectorIndexSettings::EMetric::Manhattan: {
            return L1Distance(vec1.data(), vec2.data(), vec1.size());
        }
        default:
            Y_ABORT("Unsupported metric");
    }
}

// Utility function to find clusters using levels cache and return cluster IDs
std::vector<ui64> FindClustersWithLevelsCache(const std::vector<TCentroidData>& levelCentroids,
                                               const std::string& targetEmbedding,
                                               const TVectorWorkloadParams& params,
                                               size_t topClusters) {
    // Parse target embedding to get query vector
    std::vector<float> queryVector = ParseEmbeddingToVector(targetEmbedding);

    // Create a map from centroid ID to centroid data for quick lookup
    std::unordered_map<uint64_t, const TCentroidData*> centroidMap;
    for (const auto& centroid : levelCentroids) {
        centroidMap[centroid.Id] = &centroid;
    }

    // Group centroids by level (parent ID)
    std::unordered_map<uint64_t, std::vector<const TCentroidData*>> centroidsByParent;
    for (const auto& centroid : levelCentroids) {
        centroidsByParent[centroid.ParentId].push_back(&centroid);
    }

    // Start with root level (parent ID = 0)
    std::vector<const TCentroidData*> currentLevel = centroidsByParent[0];
    std::vector<ui64> selectedClusterIds;

    // Traverse the tree level by level
    while (!currentLevel.empty() && selectedClusterIds.empty()) {
        // Calculate distances for current level centroids
        std::vector<std::pair<float, uint64_t>> clusterDistances;
        clusterDistances.reserve(currentLevel.size());

        for (const auto* centroid : currentLevel) {
            float distance = CalculateDistanceFast(queryVector, centroid->Centroid, params.Metric);
            clusterDistances.emplace_back(distance, centroid->Id);
        }

        // Sort clusters by distance (ascending for distances, descending for similarities)
        auto [functionName, isAscending] = GetMetricInfo(params.Metric);
        if (!isAscending) {
            // For similarities (higher is better), sort in descending order
            std::sort(clusterDistances.begin(), clusterDistances.end(),
                     [](const auto& a, const auto& b) { return a.first > b.first; });
        } else {
            // For distances (lower is better), sort in ascending order
            std::sort(clusterDistances.begin(), clusterDistances.end(),
                     [](const auto& a, const auto& b) { return a.first < b.first; });
        }

        // Select top clusters from current level
        size_t searchLimit = std::min(topClusters, clusterDistances.size());

        // Check if children exist for these top clusters
        for (size_t i = 0; i < searchLimit; ++i) {
            uint64_t clusterId = clusterDistances[i].second;

            // If this cluster has children, go to the next level
            if (centroidsByParent.find(clusterId) != centroidsByParent.end()) {
                currentLevel = centroidsByParent[clusterId];
                break;
            } else {
                // If this cluster has no children, it's a leaf node - add it to results
                selectedClusterIds.push_back(clusterId);
            }
        }

        // If we've reached leaf nodes, stop traversing
        if (!selectedClusterIds.empty()) {
            break;
        }
    }

    // If we still haven't found any clusters, just return the top clusters from the last level processed
    if (selectedClusterIds.empty() && !currentLevel.empty()) {
        // Calculate distances one more time for the current level
        std::vector<std::pair<float, uint64_t>> clusterDistances;
        clusterDistances.reserve(currentLevel.size());

        for (const auto* centroid : currentLevel) {
            float distance = CalculateDistanceFast(queryVector, centroid->Centroid, params.Metric);
            clusterDistances.emplace_back(distance, centroid->Id);
        }

        // Sort clusters by distance (ascending for distances, descending for similarities)
        auto [functionName, isAscending] = GetMetricInfo(params.Metric);
        if (!isAscending) {
            // For similarities (higher is better), sort in descending order
            std::sort(clusterDistances.begin(), clusterDistances.end(),
                     [](const auto& a, const auto& b) { return a.first > b.first; });
        } else {
            // For distances (lower is better), sort in ascending order
            std::sort(clusterDistances.begin(), clusterDistances.end(),
                     [](const auto& a, const auto& b) { return a.first < b.first; });
        }

        // Select top clusters
        size_t searchLimit = std::min(topClusters, clusterDistances.size());
        selectedClusterIds.reserve(searchLimit);

        for (size_t i = 0; i < searchLimit; ++i) {
            selectedClusterIds.push_back(clusterDistances[i].second);
        }
    }

    return selectedClusterIds;
}

static std::vector<std::pair<float, ui64>> calcDistances(const TVectorWorkloadParams& params, const std::vector<float>& queryVector, const std::unordered_map<ui64, TCentroidData>& centroids) {
    std::vector<std::pair<float, ui64>> clusterDistances;
    clusterDistances.reserve(centroids.size());

    for (const auto& cp : centroids) {
        const auto& centroid = cp.second;
        float distance = CalculateDistanceFast(queryVector, centroid.Centroid, params.Metric);
        clusterDistances.emplace_back(distance, centroid.Id);
    }

    return clusterDistances;
}

static void filterOverlappingClusters(const TVectorWorkloadParams& params, std::vector<std::pair<float, ui64>>& clusterDistances) {
    if (clusterDistances.size() <= 1) {
        return;
    }

    // Sort clusters by distance (ascending for distances, descending for similarities)
    auto [functionName, isAscending] = GetMetricInfo(params.Metric);
    if (!isAscending) {
        // For similarities (higher is better), sort in descending order
        std::sort(clusterDistances.begin(), clusterDistances.end(),
                 [](const auto& a, const auto& b) { return a.first > b.first; });
    } else {
        // For distances (lower is better), sort in ascending order
        std::sort(clusterDistances.begin(), clusterDistances.end(),
                 [](const auto& a, const auto& b) { return a.first < b.first; });
    }
    assert(isAscending);

    if (clusterDistances.size() > params.OverlappingClusters) {
        clusterDistances.resize(params.OverlappingClusters);
    }
    if (!(clusterDistances[0].second & 0x8000000000000000ul)) {
        // Only apply the heuristic at the leaf level
        if (params.OverlapType == "leaf") {
            clusterDistances.resize(1);
        }
        return;
    }

    // Try to add the item into <OverlappingClusters> top-level clusters
    for (size_t j = 0; j < clusterDistances.size(); j++) {
        const auto& [distance, clusterId] = clusterDistances[j];

        bool shouldSkip = false;

        // Check the heuristic: skip cluster i if there's a cluster j<i such that
        // cluster j is closer to cluster i than the vector is to cluster i
        for (size_t k = 0; k < j; k++) {
            const auto& [selectedDistance, selectedClusterId] = clusterDistances[k];
            if (selectedDistance < distance * params.OverlapThreshold) {
                shouldSkip = true;
                break;
            }
        }

        if (shouldSkip) {
            clusterDistances.erase(clusterDistances.begin()+j);
        }
    }
}

// Utility function to apply overlapping clusters heuristic to posting table
// This modifies the indexImplPostingTable by adding vectors to additional clusters
void ApplyOverlappingClustersHeuristic(const TVectorWorkloadParams& params) {
    Cout << "Applying overlapping clusters heuristic..." << Endl;
    Cout << "Index name: " << params.IndexName << Endl;

    // Load centroids from the level table
    TVector<TCentroidData> centroids = LoadCentroidsFromLevelTable(params);

    if (centroids.empty()) {
        Cout << "No centroids found, skipping overlapping clusters heuristic" << Endl;
        return;
    }

    Cout << "Loaded " << centroids.size() << " centroids" << Endl;

    // Create a map from cluster ID to centroid for quick lookup
    std::unordered_map<ui64, std::unordered_map<ui64, TCentroidData>> centroidMap;
    for (const auto& centroid : centroids) {
        centroidMap[centroid.ParentId][centroid.Id] = centroid;
    }

    // Load actual vectors from posting table in small batches to avoid TResultSetParser issues
    std::vector<std::tuple<ui64, ui64, std::string>> vectors; // cluster_id, vector_id, embedding

    // Process vectors in small batches using WHERE clause instead of OFFSET for better performance
    const size_t batchSize = 10000;
    ui64 lastParentId = 0;
    ui64 lastVectorId = 0; // Track the last vector ID within a parent
    bool hasMore = true;
    bool isFirstBatch = true;
    size_t totalLoaded = 0;

    Cout << "Loading vectors from posting table in batches..." << Endl;

    while (hasMore) {
        TString selectQuery;

        if (isFirstBatch || lastVectorId == 0) {
            // First batch or starting a new parent ID
            selectQuery = TStringBuilder()
                << "--!syntax_v1\n"
                << "DECLARE $last_parent AS Uint64;\n"
                << "SELECT __ydb_parent, id, " << params.EmbeddingColumn << " AS embedding FROM `" << params.TableName << "/" << params.IndexName << "/indexImplPostingTable`"
                << " WHERE __ydb_parent > $last_parent"
                << " ORDER BY __ydb_parent, id"
                << " LIMIT " << batchSize;
        } else {
            // Continuing within the same parent ID
            selectQuery = TStringBuilder()
                << "--!syntax_v1\n"
                << "DECLARE $last_parent AS Uint64;\n"
                << "DECLARE $last_id AS Uint64;\n"
                << "SELECT __ydb_parent, id, " << params.EmbeddingColumn << " AS embedding FROM `" << params.TableName << "/" << params.IndexName << "/indexImplPostingTable`"
                << " WHERE (__ydb_parent = $last_parent AND id > $last_id) OR __ydb_parent > $last_parent"
                << " ORDER BY __ydb_parent, id"
                << " LIMIT " << batchSize;
        }

        size_t batchLoaded = 0;
        ui64 currentParentId = 0;
        ui64 currentVectorId = 0;

        NYdb::NStatusHelpers::ThrowOnError(params.QueryClient->RetryQuerySync([&](NYdb::NQuery::TSession session) {
            // Build parameters
            NYdb::TParamsBuilder paramsBuilder;
            paramsBuilder.AddParam("$last_parent").Uint64(lastParentId).Build();

            if (!isFirstBatch && lastVectorId > 0) {
                paramsBuilder.AddParam("$last_id").Uint64(lastVectorId).Build();
            }

            NYdb::TParams queryParams = paramsBuilder.Build();

            auto result = session.ExecuteQuery(selectQuery, NYdb::NQuery::TTxControl::NoTx(), queryParams)
                .GetValueSync();
            Y_ABORT_UNLESS(result.IsSuccess(), "Failed to load vectors from posting table: %s", result.GetIssues().ToString().c_str());

            NYdb::TResultSetParser parser(result.GetResultSet(0));

            // Process all rows in the result set
            while (parser.TryNextRow()) {
                try {
                    // Get cluster ID
                    ui64 clusterId = parser.ColumnParser("__ydb_parent").GetUint64();
                    currentParentId = clusterId;

                    // Get vector ID
                    ui64 vectorId = parser.ColumnParser("id").GetUint64();
                    currentVectorId = vectorId;

                    // Get embedding - assuming all embeddings are not null per optimistic assumption
                    std::string embedding = parser.ColumnParser("embedding").GetOptionalString().value();
                    vectors.emplace_back(clusterId, vectorId, std::move(embedding));
                    batchLoaded++;
                } catch (const std::exception& e) {
                    Cout << "Error parsing row: " << e.what() << Endl;
                    // Continue with next row instead of breaking
                }
            }

            return result;
        }));

        if (batchLoaded > 0) {
            // Update cursor position for next batch
            lastParentId = currentParentId;
            lastVectorId = currentVectorId;

            totalLoaded += batchLoaded;
            isFirstBatch = false;

            if (totalLoaded % 50000 == 0) {
                Cout << "Loaded " << totalLoaded << " vectors so far..." << Endl;
            }
        }

        // Stop if we got fewer rows than requested
        hasMore = (batchLoaded == batchSize);
    }

    Cout << "Loaded " << vectors.size() << " vectors from posting table" << Endl;

    // Process each vector and determine additional clusters to add it to using multiple threads
    std::vector<std::tuple<ui64, ui64, std::string>> newEntries; // cluster_id, vector_id, embedding
    std::mutex newEntriesMutex; // Mutex to protect access to newEntries vector
    size_t totalVectorsProcessed = 0;
    size_t totalNewEntries = 0;
    std::mutex progressMutex; // Mutex to protect access to progress counters

    // Get number of threads to use (default to hardware concurrency)
    size_t numThreads = std::thread::hardware_concurrency();
    if (numThreads == 0) {
        numThreads = 4; // Fallback to 4 threads if hardware_concurrency is not supported
    }

    // Process vectors in chunks using multiple threads
    const size_t chunkSize = std::max<size_t>(1, vectors.size() / numThreads);
    std::vector<std::thread> threads;
    threads.reserve(numThreads);

    for (size_t t = 0; t < numThreads; ++t) {
        size_t startIdx = t * chunkSize;
        size_t endIdx = (t == numThreads - 1) ? vectors.size() : std::min((t + 1) * chunkSize, vectors.size());

        if (startIdx >= vectors.size()) {
            break; // No more vectors to process
        }

        threads.emplace_back([&, startIdx, endIdx]() {
            // Local vector to store new entries for this thread
            std::vector<std::tuple<ui64, ui64, std::string>> localNewEntries;
            size_t localProcessed = 0;
            size_t localNewEntriesCount = 0;

            for (size_t i = startIdx; i < endIdx; ++i) {
                const auto& [originalClusterId, vectorId, embedding] = vectors[i];
                localProcessed++;

                // Parse vector embedding
                std::vector<float> queryVector = ParseEmbeddingToVector(embedding);

                // Calculate distances from this vector to all centroids
                auto clusterDistances = calcDistances(params, queryVector, centroidMap[0]);
                filterOverlappingClusters(params, clusterDistances);

                while (!(clusterDistances[0].second & 0x8000000000000000ul)) {
                    std::vector<std::pair<float, ui64>> nextDistances;
                    for (size_t i = 0; i < clusterDistances.size(); i++) {
                        auto childDistances = calcDistances(params, queryVector, centroidMap[clusterDistances[i].second]);
                        if (params.OverlapType == "root") {
                            std::sort(childDistances.begin(), childDistances.end(),
                                [](const auto& a, const auto& b) { return a.first < b.first; });
                            childDistances.resize(1);
                        } else if (params.OverlapType == "multiply") {
                            filterOverlappingClusters(params, childDistances);
                        }
                        nextDistances.insert(nextDistances.end(), childDistances.begin(), childDistances.end());
                    }
                    if (params.OverlapType != "root" && params.OverlapType != "multiply") {
                        filterOverlappingClusters(params, nextDistances);
                    }
                    clusterDistances = std::move(nextDistances);
                }

                for (auto& cluster: clusterDistances) {
                    // Add new entry for this cluster (excluding the original cluster)
                    if (originalClusterId != cluster.second) {
                        localNewEntries.emplace_back(cluster.second, vectorId, embedding);
                        localNewEntriesCount++;
                    }
                }

                // Periodically report progress
                if (localProcessed % 1000 == 0) {
                    std::lock_guard<std::mutex> lock(progressMutex);
                    totalVectorsProcessed += localProcessed;
                    totalNewEntries += localNewEntriesCount;
                    localProcessed = 0;
                    localNewEntriesCount = 0;
                    Cout << "Processed " << totalVectorsProcessed << " vectors, added " << totalNewEntries << " new entries" << Endl;
                }
            }

            // Add any remaining processed vectors to the total
            if (localProcessed > 0) {
                std::lock_guard<std::mutex> lock(progressMutex);
                totalVectorsProcessed += localProcessed;
                totalNewEntries += localNewEntriesCount;
            }

            // Add local new entries to the global newEntries vector
            if (!localNewEntries.empty()) {
                std::lock_guard<std::mutex> lock(newEntriesMutex);
                newEntries.insert(newEntries.end(), localNewEntries.begin(), localNewEntries.end());
            }
        });
    }

    // Wait for all threads to complete
    for (auto& thread : threads) {
        if (thread.joinable()) {
            thread.join();
        }
    }

    // Report final progress
    Cout << "Processed " << totalVectorsProcessed << " vectors, added " << totalNewEntries << " new entries" << Endl;

    Cout << "Heuristic complete. Adding " << newEntries.size() << " new entries to posting table" << Endl;

    // Insert new entries into posting table in batches
    const size_t insertBatchSize = 1000;
    size_t entriesInserted = 0;

    for (size_t i = 0; i < newEntries.size(); i += insertBatchSize) {
        size_t endIdx = std::min(i + insertBatchSize, newEntries.size());

        // Build parameterized query
        TStringBuilder insertQuery;
        insertQuery << "--!syntax_v1\n";
        insertQuery << "DECLARE $entries AS List<Struct<__ydb_parent: Uint64, id: Uint64, embedding: String>>;\n";
        insertQuery << "UPSERT INTO `" << params.TableName << "/" << params.IndexName << "/indexImplPostingTable` (__ydb_parent, id, " << params.EmbeddingColumn << ")\n";
        insertQuery << "SELECT __ydb_parent, id, embedding AS " << params.EmbeddingColumn << " FROM AS_TABLE($entries);";

        // Build parameters
        NYdb::TParamsBuilder paramsBuilder;
        auto& listBuilder = paramsBuilder.AddParam("$entries").BeginList();

        for (size_t j = i; j < endIdx; ++j) {
            const auto& [clusterId, vectorId, embedding] = newEntries[j];
            listBuilder.AddListItem().BeginStruct()
                .AddMember("__ydb_parent").Uint64(clusterId)
                .AddMember("id").Uint64(vectorId)
                .AddMember("embedding").String(embedding)
                .EndStruct();
        }
        listBuilder.EndList().Build();

        NYdb::TParams queryParams = paramsBuilder.Build();

        NYdb::NStatusHelpers::ThrowOnError(params.QueryClient->RetryQuerySync([&](NYdb::NQuery::TSession session) {
            return session.ExecuteQuery(insertQuery, NYdb::NQuery::TTxControl::BeginTx().CommitTx(), queryParams)
                .GetValueSync();
        }));

        entriesInserted += (endIdx - i);
        Cout << "Inserted " << entriesInserted << "/" << newEntries.size() << " new entries" << Endl;
    }

    float averageClustersPerVector = (float)(vectors.size() + newEntries.size()) / vectors.size();
    Cout << "Overlapping clusters heuristic applied successfully!" << Endl;
    Cout << "Average clusters per vector: " << averageClustersPerVector << Endl;
}


// Utility function to create parameters for select query
NYdb::TParams MakeSelectParams(const std::string& embeddingBytes, const std::optional<NYdb::TValue>& prefixValue, ui64 limit) {
    NYdb::TParamsBuilder paramsBuilder;

    paramsBuilder.AddParam("$Embedding").String(embeddingBytes).Build();
    paramsBuilder.AddParam("$Limit").Uint64(limit).Build();

    if (prefixValue.has_value()) {
        paramsBuilder.AddParam("$PrefixValue", *prefixValue);
    }

    return paramsBuilder.Build();
}

// Load centroids from YDB table
TVector<TCentroidData> LoadCentroidsFromLevelTable(const TVectorWorkloadParams& params) {
    TVector<TCentroidData> centroids;

    // Create query to load centroids
    TString query = TStringBuilder()
        << "--!syntax_v1\n"
        << "SELECT __ydb_id, __ydb_parent, __ydb_centroid FROM `" << params.TableName << "/" << params.IndexName<< "/indexImplLevelTable`\n"
        ;

    std::optional<NYdb::TResultSet> resultSet;
    NYdb::NStatusHelpers::ThrowOnError(params.QueryClient->RetryQuerySync([&](NYdb::NQuery::TSession session) {
        auto result = session.ExecuteQuery(query, NYdb::NQuery::TTxControl::NoTx())
            .GetValueSync();
        Y_ABORT_UNLESS(result.IsSuccess(), "Failed to load centroids: %s", result.GetIssues().ToString().c_str());
        resultSet = result.GetResultSet(0);
        return result;
    }));

    NYdb::TResultSetParser parser(*resultSet);
    while (parser.TryNextRow()) {
        ui64 id = parser.ColumnParser("__ydb_id").GetUint64();
        ui64 parentId = parser.ColumnParser("__ydb_parent").GetUint64();
        std::string centroidStr = parser.ColumnParser("__ydb_centroid").GetString();

        // Parse centroid string as binary float data
        const char* data = centroidStr.data();
        size_t dataSize = centroidStr.size();

        Y_ABORT_UNLESS (dataSize >= 1);

        size_t numFloats = (dataSize - 1) / sizeof(float);
        TVector<float> centroid(numFloats);

        if (numFloats > 0) {
            memcpy(centroid.data(), data, dataSize);
            centroids.push_back({id, parentId, std::move(centroid)});
        }
    }

    return centroids;
}

// Load all centroids from YDB level table for caching
TVector<TCentroidData> LoadAllLevelCentroids(const TVectorWorkloadParams& params) {
    TVector<TCentroidData> centroids;

    // Create query to load all centroids
    TString query = TStringBuilder()
        << "--!syntax_v1\n"
        << "SELECT __ydb_id, __ydb_parent, __ydb_centroid FROM `" << params.TableName << "/" << params.IndexName<< "/indexImplLevelTable`";

    std::optional<NYdb::TResultSet> resultSet;
    NYdb::NStatusHelpers::ThrowOnError(params.QueryClient->RetryQuerySync([&](NYdb::NQuery::TSession session) {
        auto result = session.ExecuteQuery(query, NYdb::NQuery::TTxControl::NoTx())
            .GetValueSync();
        Y_ABORT_UNLESS(result.IsSuccess(), "Failed to load centroids: %s", result.GetIssues().ToString().c_str());
        resultSet = result.GetResultSet(0);
        return result;
    }));

    NYdb::TResultSetParser parser(*resultSet);
    while (parser.TryNextRow()) {
        ui64 id = parser.ColumnParser("__ydb_id").GetUint64();
        ui64 parentId = parser.ColumnParser("__ydb_parent").GetUint64();
        std::string centroidStr = parser.ColumnParser("__ydb_centroid").GetString();

        // Parse centroid string as binary float data
        const char* data = centroidStr.data();
        size_t dataSize = centroidStr.size();

        Y_ABORT_UNLESS (dataSize >= 1);

        size_t numFloats = (dataSize - 1) / sizeof(float);
        std::vector<float> centroid(numFloats);

        if (numFloats > 0) {
            memcpy(centroid.data(), data, dataSize);
            centroids.push_back({id, parentId, std::move(centroid)});
        }
    }

    return centroids;
}

} // namespace NYdbWorkload
