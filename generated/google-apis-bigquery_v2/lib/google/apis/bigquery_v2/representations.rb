# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module BigqueryV2
      
      class AggregateClassificationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationThresholdPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Argument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaCoefficients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaFittingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaForecastingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArimaSingleModelForecastingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvroOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteRowAccessPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiEngineReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiEngineStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigLakeConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryModelTraining
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryClassificationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryConfusionMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BqmlIterationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BqmlTrainingRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class TrainingOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CategoricalValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CategoryCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Clustering
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusteringMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfusionMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataFormatOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataMaskingStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataPolicyOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSplitResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Access
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Tag
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetAccessEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Dataset
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationTableProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DifferentialPrivacyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionalityReductionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DmlStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleCandidates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleHparamSearchSpace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainQueryStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainQueryStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Explanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDataStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalCatalogDatasetOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalCatalogTableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalDataConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalDatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalRuntimeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalServiceCost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForeignTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForeignViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetQueryResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetServiceAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSheetsOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HighCardinalityJoin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HivePartitioningOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HparamSearchSpaces
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HparamTuningTrial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexUnusedReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputDataChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntArrayHparamSearchSpace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntCandidates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntHparamSearchSpace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IterationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationExtract
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationLoad
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationTableCopy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobCreationReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Job
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class ReservationUsage
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics2
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class ReservationUsage
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics4
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics5
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JoinRestrictionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedDatasetSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRoutinesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRowAccessPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadQueryStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedViewStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedViewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataCacheStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MlStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class ModelOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelExtractOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClassClassificationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParquetOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionSkew
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionedColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitioningDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrincipalComponentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivacyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Project
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameterType
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class StructType
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameterValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTimelineSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RangePartitioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Range
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RangeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RankingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegressionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteFunctionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Routine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutineReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowAccessPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowAccessPolicyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowLevelSecurityStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptStackFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerDeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkewSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkLoggingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StagePerformanceChangeInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StagePerformanceStandaloneInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardSqlDataType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardSqlField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardSqlStructType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardSqlTableType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoredColumnsUnusedReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoredColumnsUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Streamingbuffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringHparamSearchSpace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemVariables
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class ForeignKey
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class ColumnReference
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
          
          class ReferencedTable
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class PrimaryKey
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertAllTableDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Row
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertAllTableDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class InsertError
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableDataList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableFieldSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Categories
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class PolicyTags
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class RangeElementType
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Table
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class View
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableMetadataCacheUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableReplicationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePartitioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrainingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrainingRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransformColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserDefinedFunctionResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VectorSearchStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateClassificationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accuracy, as: 'accuracy'
          property :f1_score, as: 'f1Score'
          property :log_loss, as: 'logLoss'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
          property :roc_auc, as: 'rocAuc'
          property :threshold, as: 'threshold'
        end
      end
      
      class AggregationThresholdPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :privacy_unit_columns, as: 'privacyUnitColumns'
          property :threshold, :numeric_string => true, as: 'threshold'
        end
      end
      
      class Argument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument_kind, as: 'argumentKind'
          property :data_type, as: 'dataType', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
          property :is_aggregate, as: 'isAggregate'
          property :mode, as: 'mode'
          property :name, as: 'name'
        end
      end
      
      class ArimaCoefficients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_regressive_coefficients, as: 'autoRegressiveCoefficients'
          property :intercept_coefficient, as: 'interceptCoefficient'
          collection :moving_average_coefficients, as: 'movingAverageCoefficients'
        end
      end
      
      class ArimaFittingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aic, as: 'aic'
          property :log_likelihood, as: 'logLikelihood'
          property :variance, as: 'variance'
        end
      end
      
      class ArimaForecastingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arima_fitting_metrics, as: 'arimaFittingMetrics', class: Google::Apis::BigqueryV2::ArimaFittingMetrics, decorator: Google::Apis::BigqueryV2::ArimaFittingMetrics::Representation
      
          collection :arima_single_model_forecasting_metrics, as: 'arimaSingleModelForecastingMetrics', class: Google::Apis::BigqueryV2::ArimaSingleModelForecastingMetrics, decorator: Google::Apis::BigqueryV2::ArimaSingleModelForecastingMetrics::Representation
      
          collection :has_drift, as: 'hasDrift'
          collection :non_seasonal_order, as: 'nonSeasonalOrder', class: Google::Apis::BigqueryV2::ArimaOrder, decorator: Google::Apis::BigqueryV2::ArimaOrder::Representation
      
          collection :seasonal_periods, as: 'seasonalPeriods'
          collection :time_series_id, as: 'timeSeriesId'
        end
      end
      
      class ArimaModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arima_coefficients, as: 'arimaCoefficients', class: Google::Apis::BigqueryV2::ArimaCoefficients, decorator: Google::Apis::BigqueryV2::ArimaCoefficients::Representation
      
          property :arima_fitting_metrics, as: 'arimaFittingMetrics', class: Google::Apis::BigqueryV2::ArimaFittingMetrics, decorator: Google::Apis::BigqueryV2::ArimaFittingMetrics::Representation
      
          property :has_drift, as: 'hasDrift'
          property :has_holiday_effect, as: 'hasHolidayEffect'
          property :has_spikes_and_dips, as: 'hasSpikesAndDips'
          property :has_step_changes, as: 'hasStepChanges'
          property :non_seasonal_order, as: 'nonSeasonalOrder', class: Google::Apis::BigqueryV2::ArimaOrder, decorator: Google::Apis::BigqueryV2::ArimaOrder::Representation
      
          collection :seasonal_periods, as: 'seasonalPeriods'
          property :time_series_id, as: 'timeSeriesId'
          collection :time_series_ids, as: 'timeSeriesIds'
        end
      end
      
      class ArimaOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :d, :numeric_string => true, as: 'd'
          property :p, :numeric_string => true, as: 'p'
          property :q, :numeric_string => true, as: 'q'
        end
      end
      
      class ArimaResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arima_model_info, as: 'arimaModelInfo', class: Google::Apis::BigqueryV2::ArimaModelInfo, decorator: Google::Apis::BigqueryV2::ArimaModelInfo::Representation
      
          collection :seasonal_periods, as: 'seasonalPeriods'
        end
      end
      
      class ArimaSingleModelForecastingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arima_fitting_metrics, as: 'arimaFittingMetrics', class: Google::Apis::BigqueryV2::ArimaFittingMetrics, decorator: Google::Apis::BigqueryV2::ArimaFittingMetrics::Representation
      
          property :has_drift, as: 'hasDrift'
          property :has_holiday_effect, as: 'hasHolidayEffect'
          property :has_spikes_and_dips, as: 'hasSpikesAndDips'
          property :has_step_changes, as: 'hasStepChanges'
          property :non_seasonal_order, as: 'nonSeasonalOrder', class: Google::Apis::BigqueryV2::ArimaOrder, decorator: Google::Apis::BigqueryV2::ArimaOrder::Representation
      
          collection :seasonal_periods, as: 'seasonalPeriods'
          property :time_series_id, as: 'timeSeriesId'
          collection :time_series_ids, as: 'timeSeriesIds'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BigqueryV2::AuditLogConfig, decorator: Google::Apis::BigqueryV2::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class AvroOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_avro_logical_types, as: 'useAvroLogicalTypes'
        end
      end
      
      class BatchDeleteRowAccessPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          collection :policy_ids, as: 'policyIds'
        end
      end
      
      class BiEngineReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class BiEngineStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acceleration_mode, as: 'accelerationMode'
          property :bi_engine_mode, as: 'biEngineMode'
          collection :bi_engine_reasons, as: 'biEngineReasons', class: Google::Apis::BigqueryV2::BiEngineReason, decorator: Google::Apis::BigqueryV2::BiEngineReason::Representation
      
        end
      end
      
      class BigLakeConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_id, as: 'connectionId'
          property :file_format, as: 'fileFormat'
          property :storage_uri, as: 'storageUri'
          property :table_format, as: 'tableFormat'
        end
      end
      
      class BigQueryModelTraining
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_iteration, as: 'currentIteration'
          property :expected_total_iterations, :numeric_string => true, as: 'expectedTotalIterations'
        end
      end
      
      class BigtableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :only_read_latest, as: 'onlyReadLatest'
          property :qualifier_encoded, :base64 => true, as: 'qualifierEncoded'
          property :qualifier_string, as: 'qualifierString'
          property :type, as: 'type'
        end
      end
      
      class BigtableColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::BigqueryV2::BigtableColumn, decorator: Google::Apis::BigqueryV2::BigtableColumn::Representation
      
          property :encoding, as: 'encoding'
          property :family_id, as: 'familyId'
          property :only_read_latest, as: 'onlyReadLatest'
          property :type, as: 'type'
        end
      end
      
      class BigtableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_families, as: 'columnFamilies', class: Google::Apis::BigqueryV2::BigtableColumnFamily, decorator: Google::Apis::BigqueryV2::BigtableColumnFamily::Representation
      
          property :ignore_unspecified_column_families, as: 'ignoreUnspecifiedColumnFamilies'
          property :output_column_families_as_json, as: 'outputColumnFamiliesAsJson'
          property :read_rowkey_as_string, as: 'readRowkeyAsString'
        end
      end
      
      class BinaryClassificationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_classification_metrics, as: 'aggregateClassificationMetrics', class: Google::Apis::BigqueryV2::AggregateClassificationMetrics, decorator: Google::Apis::BigqueryV2::AggregateClassificationMetrics::Representation
      
          collection :binary_confusion_matrix_list, as: 'binaryConfusionMatrixList', class: Google::Apis::BigqueryV2::BinaryConfusionMatrix, decorator: Google::Apis::BigqueryV2::BinaryConfusionMatrix::Representation
      
          property :negative_label, as: 'negativeLabel'
          property :positive_label, as: 'positiveLabel'
        end
      end
      
      class BinaryConfusionMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accuracy, as: 'accuracy'
          property :f1_score, as: 'f1Score'
          property :false_negatives, :numeric_string => true, as: 'falseNegatives'
          property :false_positives, :numeric_string => true, as: 'falsePositives'
          property :positive_class_threshold, as: 'positiveClassThreshold'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
          property :true_negatives, :numeric_string => true, as: 'trueNegatives'
          property :true_positives, :numeric_string => true, as: 'truePositives'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BigqueryV2::Expr, decorator: Google::Apis::BigqueryV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BqmlIterationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_ms, :numeric_string => true, as: 'durationMs'
          property :eval_loss, as: 'evalLoss'
          property :index, as: 'index'
          property :learn_rate, as: 'learnRate'
          property :training_loss, as: 'trainingLoss'
        end
      end
      
      class BqmlTrainingRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :iteration_results, as: 'iterationResults', class: Google::Apis::BigqueryV2::BqmlIterationResult, decorator: Google::Apis::BigqueryV2::BqmlIterationResult::Representation
      
          property :start_time, as: 'startTime', type: DateTime
      
          property :state, as: 'state'
          property :training_options, as: 'trainingOptions', class: Google::Apis::BigqueryV2::BqmlTrainingRun::TrainingOptions, decorator: Google::Apis::BigqueryV2::BqmlTrainingRun::TrainingOptions::Representation
      
        end
        
        class TrainingOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :early_stop, as: 'earlyStop'
            property :l1_reg, as: 'l1Reg'
            property :l2_reg, as: 'l2Reg'
            property :learn_rate, as: 'learnRate'
            property :learn_rate_strategy, as: 'learnRateStrategy'
            property :line_search_init_learn_rate, as: 'lineSearchInitLearnRate'
            property :max_iteration, :numeric_string => true, as: 'maxIteration'
            property :min_rel_progress, as: 'minRelProgress'
            property :warm_start, as: 'warmStart'
          end
        end
      end
      
      class CategoricalValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_counts, as: 'categoryCounts', class: Google::Apis::BigqueryV2::CategoryCount, decorator: Google::Apis::BigqueryV2::CategoryCount::Representation
      
        end
      end
      
      class CategoryCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class CloneDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_table_reference, as: 'baseTableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :clone_time, as: 'cloneTime', type: DateTime
      
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :centroid_id, :numeric_string => true, as: 'centroidId'
          property :count, :numeric_string => true, as: 'count'
          collection :feature_values, as: 'featureValues', class: Google::Apis::BigqueryV2::FeatureValue, decorator: Google::Apis::BigqueryV2::FeatureValue::Representation
      
        end
      end
      
      class ClusterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :centroid_id, :numeric_string => true, as: 'centroidId'
          property :cluster_radius, as: 'clusterRadius'
          property :cluster_size, :numeric_string => true, as: 'clusterSize'
        end
      end
      
      class Clustering
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields'
        end
      end
      
      class ClusteringMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::BigqueryV2::Cluster, decorator: Google::Apis::BigqueryV2::Cluster::Representation
      
          property :davies_bouldin_index, as: 'daviesBouldinIndex'
          property :mean_squared_distance, as: 'meanSquaredDistance'
        end
      end
      
      class ConfusionMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::Row, decorator: Google::Apis::BigqueryV2::Row::Representation
      
        end
      end
      
      class ConnectionProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class CsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :null_marker, as: 'nullMarker'
          collection :null_markers, as: 'nullMarkers'
          property :preserve_ascii_control_characters, as: 'preserveAsciiControlCharacters'
          property :quote, as: 'quote'
          property :skip_leading_rows, :numeric_string => true, as: 'skipLeadingRows'
          property :source_column_match, as: 'sourceColumnMatch'
        end
      end
      
      class DataFormatOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_int64_timestamp, as: 'useInt64Timestamp'
        end
      end
      
      class DataMaskingStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_masking_applied, as: 'dataMaskingApplied'
        end
      end
      
      class DataPolicyOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class DataSplitResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_table, as: 'evaluationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :test_table, as: 'testTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :training_table, as: 'trainingTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access, as: 'access', class: Google::Apis::BigqueryV2::Dataset::Access, decorator: Google::Apis::BigqueryV2::Dataset::Access::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :default_collation, as: 'defaultCollation'
          property :default_encryption_configuration, as: 'defaultEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :default_partition_expiration_ms, :numeric_string => true, as: 'defaultPartitionExpirationMs'
          property :default_rounding_mode, as: 'defaultRoundingMode'
          property :default_table_expiration_ms, :numeric_string => true, as: 'defaultTableExpirationMs'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :external_catalog_dataset_options, as: 'externalCatalogDatasetOptions', class: Google::Apis::BigqueryV2::ExternalCatalogDatasetOptions, decorator: Google::Apis::BigqueryV2::ExternalCatalogDatasetOptions::Representation
      
          property :external_dataset_reference, as: 'externalDatasetReference', class: Google::Apis::BigqueryV2::ExternalDatasetReference, decorator: Google::Apis::BigqueryV2::ExternalDatasetReference::Representation
      
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :is_case_insensitive, as: 'isCaseInsensitive'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :linked_dataset_metadata, as: 'linkedDatasetMetadata', class: Google::Apis::BigqueryV2::LinkedDatasetMetadata, decorator: Google::Apis::BigqueryV2::LinkedDatasetMetadata::Representation
      
          property :linked_dataset_source, as: 'linkedDatasetSource', class: Google::Apis::BigqueryV2::LinkedDatasetSource, decorator: Google::Apis::BigqueryV2::LinkedDatasetSource::Representation
      
          property :location, as: 'location'
          property :max_time_travel_hours, :numeric_string => true, as: 'maxTimeTravelHours'
          hash :resource_tags, as: 'resourceTags'
          property :restrictions, as: 'restrictions', class: Google::Apis::BigqueryV2::RestrictionConfig, decorator: Google::Apis::BigqueryV2::RestrictionConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :storage_billing_model, as: 'storageBillingModel'
          collection :tags, as: 'tags', class: Google::Apis::BigqueryV2::Dataset::Tag, decorator: Google::Apis::BigqueryV2::Dataset::Tag::Representation
      
          property :type, as: 'type'
        end
        
        class Access
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :condition, as: 'condition', class: Google::Apis::BigqueryV2::Expr, decorator: Google::Apis::BigqueryV2::Expr::Representation
        
            property :dataset, as: 'dataset', class: Google::Apis::BigqueryV2::DatasetAccessEntry, decorator: Google::Apis::BigqueryV2::DatasetAccessEntry::Representation
        
            property :domain, as: 'domain'
            property :group_by_email, as: 'groupByEmail'
            property :iam_member, as: 'iamMember'
            property :role, as: 'role'
            property :routine, as: 'routine', class: Google::Apis::BigqueryV2::RoutineReference, decorator: Google::Apis::BigqueryV2::RoutineReference::Representation
        
            property :special_group, as: 'specialGroup'
            property :user_by_email, as: 'userByEmail'
            property :view, as: 'view', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
        
          end
        end
        
        class Tag
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :tag_key, as: 'tagKey'
            property :tag_value, as: 'tagValue'
          end
        end
      end
      
      class DatasetAccessEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          collection :target_types, as: 'targetTypes'
        end
      end
      
      class DatasetList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::BigqueryV2::DatasetList::Dataset, decorator: Google::Apis::BigqueryV2::DatasetList::Dataset::Representation
      
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
        
        class Dataset
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
        
            property :external_dataset_reference, as: 'externalDatasetReference', class: Google::Apis::BigqueryV2::ExternalDatasetReference, decorator: Google::Apis::BigqueryV2::ExternalDatasetReference::Representation
        
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            hash :labels, as: 'labels'
            property :location, as: 'location'
          end
        end
      end
      
      class DatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      class DestinationTableProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expiration_time, as: 'expirationTime', type: DateTime
      
          property :friendly_name, as: 'friendlyName'
          hash :labels, as: 'labels'
        end
      end
      
      class DifferentialPrivacyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delta_budget, as: 'deltaBudget'
          property :delta_budget_remaining, as: 'deltaBudgetRemaining'
          property :delta_per_query, as: 'deltaPerQuery'
          property :epsilon_budget, as: 'epsilonBudget'
          property :epsilon_budget_remaining, as: 'epsilonBudgetRemaining'
          property :max_epsilon_per_query, as: 'maxEpsilonPerQuery'
          property :max_groups_contributed, :numeric_string => true, as: 'maxGroupsContributed'
          property :privacy_unit_column, as: 'privacyUnitColumn'
        end
      end
      
      class DimensionalityReductionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_explained_variance_ratio, as: 'totalExplainedVarianceRatio'
        end
      end
      
      class DmlStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted_row_count, :numeric_string => true, as: 'deletedRowCount'
          property :inserted_row_count, :numeric_string => true, as: 'insertedRowCount'
          property :updated_row_count, :numeric_string => true, as: 'updatedRowCount'
        end
      end
      
      class DoubleCandidates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates'
        end
      end
      
      class DoubleHparamSearchSpace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidates, as: 'candidates', class: Google::Apis::BigqueryV2::DoubleCandidates, decorator: Google::Apis::BigqueryV2::DoubleCandidates::Representation
      
          property :range, as: 'range', class: Google::Apis::BigqueryV2::DoubleRange, decorator: Google::Apis::BigqueryV2::DoubleRange::Representation
      
        end
      end
      
      class DoubleRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class EncryptionConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_count, :numeric_string => true, as: 'itemCount'
          property :predicted_label, as: 'predictedLabel'
        end
      end
      
      class ErrorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo'
          property :location, as: 'location'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class EvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arima_forecasting_metrics, as: 'arimaForecastingMetrics', class: Google::Apis::BigqueryV2::ArimaForecastingMetrics, decorator: Google::Apis::BigqueryV2::ArimaForecastingMetrics::Representation
      
          property :binary_classification_metrics, as: 'binaryClassificationMetrics', class: Google::Apis::BigqueryV2::BinaryClassificationMetrics, decorator: Google::Apis::BigqueryV2::BinaryClassificationMetrics::Representation
      
          property :clustering_metrics, as: 'clusteringMetrics', class: Google::Apis::BigqueryV2::ClusteringMetrics, decorator: Google::Apis::BigqueryV2::ClusteringMetrics::Representation
      
          property :dimensionality_reduction_metrics, as: 'dimensionalityReductionMetrics', class: Google::Apis::BigqueryV2::DimensionalityReductionMetrics, decorator: Google::Apis::BigqueryV2::DimensionalityReductionMetrics::Representation
      
          property :multi_class_classification_metrics, as: 'multiClassClassificationMetrics', class: Google::Apis::BigqueryV2::MultiClassClassificationMetrics, decorator: Google::Apis::BigqueryV2::MultiClassClassificationMetrics::Representation
      
          property :ranking_metrics, as: 'rankingMetrics', class: Google::Apis::BigqueryV2::RankingMetrics, decorator: Google::Apis::BigqueryV2::RankingMetrics::Representation
      
          property :regression_metrics, as: 'regressionMetrics', class: Google::Apis::BigqueryV2::RegressionMetrics, decorator: Google::Apis::BigqueryV2::RegressionMetrics::Representation
      
        end
      end
      
      class ExplainQueryStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_parallel_inputs, :numeric_string => true, as: 'completedParallelInputs'
          property :compute_mode, as: 'computeMode'
          property :compute_ms_avg, :numeric_string => true, as: 'computeMsAvg'
          property :compute_ms_max, :numeric_string => true, as: 'computeMsMax'
          property :compute_ratio_avg, as: 'computeRatioAvg'
          property :compute_ratio_max, as: 'computeRatioMax'
          property :end_ms, :numeric_string => true, as: 'endMs'
          property :id, :numeric_string => true, as: 'id'
          collection :input_stages, as: 'inputStages'
          property :name, as: 'name'
          property :parallel_inputs, :numeric_string => true, as: 'parallelInputs'
          property :read_ms_avg, :numeric_string => true, as: 'readMsAvg'
          property :read_ms_max, :numeric_string => true, as: 'readMsMax'
          property :read_ratio_avg, as: 'readRatioAvg'
          property :read_ratio_max, as: 'readRatioMax'
          property :records_read, :numeric_string => true, as: 'recordsRead'
          property :records_written, :numeric_string => true, as: 'recordsWritten'
          property :shuffle_output_bytes, :numeric_string => true, as: 'shuffleOutputBytes'
          property :shuffle_output_bytes_spilled, :numeric_string => true, as: 'shuffleOutputBytesSpilled'
          property :slot_ms, :numeric_string => true, as: 'slotMs'
          property :start_ms, :numeric_string => true, as: 'startMs'
          property :status, as: 'status'
          collection :steps, as: 'steps', class: Google::Apis::BigqueryV2::ExplainQueryStep, decorator: Google::Apis::BigqueryV2::ExplainQueryStep::Representation
      
          property :wait_ms_avg, :numeric_string => true, as: 'waitMsAvg'
          property :wait_ms_max, :numeric_string => true, as: 'waitMsMax'
          property :wait_ratio_avg, as: 'waitRatioAvg'
          property :wait_ratio_max, as: 'waitRatioMax'
          property :write_ms_avg, :numeric_string => true, as: 'writeMsAvg'
          property :write_ms_max, :numeric_string => true, as: 'writeMsMax'
          property :write_ratio_avg, as: 'writeRatioAvg'
          property :write_ratio_max, as: 'writeRatioMax'
        end
      end
      
      class ExplainQueryStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :substeps, as: 'substeps'
        end
      end
      
      class Explanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution, as: 'attribution'
          property :feature_name, as: 'featureName'
        end
      end
      
      class ExportDataStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_count, :numeric_string => true, as: 'fileCount'
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ExternalCatalogDatasetOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_storage_location_uri, as: 'defaultStorageLocationUri'
          hash :parameters, as: 'parameters'
        end
      end
      
      class ExternalCatalogTableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_id, as: 'connectionId'
          hash :parameters, as: 'parameters'
          property :storage_descriptor, as: 'storageDescriptor', class: Google::Apis::BigqueryV2::StorageDescriptor, decorator: Google::Apis::BigqueryV2::StorageDescriptor::Representation
      
        end
      end
      
      class ExternalDataConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autodetect, as: 'autodetect'
          property :avro_options, as: 'avroOptions', class: Google::Apis::BigqueryV2::AvroOptions, decorator: Google::Apis::BigqueryV2::AvroOptions::Representation
      
          property :bigtable_options, as: 'bigtableOptions', class: Google::Apis::BigqueryV2::BigtableOptions, decorator: Google::Apis::BigqueryV2::BigtableOptions::Representation
      
          property :compression, as: 'compression'
          property :connection_id, as: 'connectionId'
          property :csv_options, as: 'csvOptions', class: Google::Apis::BigqueryV2::CsvOptions, decorator: Google::Apis::BigqueryV2::CsvOptions::Representation
      
          property :date_format, as: 'dateFormat'
          property :datetime_format, as: 'datetimeFormat'
          collection :decimal_target_types, as: 'decimalTargetTypes'
          property :file_set_spec_type, as: 'fileSetSpecType'
          property :google_sheets_options, as: 'googleSheetsOptions', class: Google::Apis::BigqueryV2::GoogleSheetsOptions, decorator: Google::Apis::BigqueryV2::GoogleSheetsOptions::Representation
      
          property :hive_partitioning_options, as: 'hivePartitioningOptions', class: Google::Apis::BigqueryV2::HivePartitioningOptions, decorator: Google::Apis::BigqueryV2::HivePartitioningOptions::Representation
      
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :json_extension, as: 'jsonExtension'
          property :json_options, as: 'jsonOptions', class: Google::Apis::BigqueryV2::JsonOptions, decorator: Google::Apis::BigqueryV2::JsonOptions::Representation
      
          property :max_bad_records, as: 'maxBadRecords'
          property :metadata_cache_mode, as: 'metadataCacheMode'
          property :object_metadata, as: 'objectMetadata'
          property :parquet_options, as: 'parquetOptions', class: Google::Apis::BigqueryV2::ParquetOptions, decorator: Google::Apis::BigqueryV2::ParquetOptions::Representation
      
          property :reference_file_schema_uri, as: 'referenceFileSchemaUri'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
          property :time_format, as: 'timeFormat'
          property :time_zone, as: 'timeZone'
          property :timestamp_format, as: 'timestampFormat'
        end
      end
      
      class ExternalDatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection'
          property :external_source, as: 'externalSource'
        end
      end
      
      class ExternalRuntimeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_cpu, as: 'containerCpu'
          property :container_memory, as: 'containerMemory'
          property :max_batching_rows, :numeric_string => true, as: 'maxBatchingRows'
          property :runtime_connection, as: 'runtimeConnection'
          property :runtime_version, as: 'runtimeVersion'
        end
      end
      
      class ExternalServiceCost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_billed, :numeric_string => true, as: 'bytesBilled'
          property :bytes_processed, :numeric_string => true, as: 'bytesProcessed'
          property :external_service, as: 'externalService'
          property :reserved_slot_count, :numeric_string => true, as: 'reservedSlotCount'
          property :slot_ms, :numeric_string => true, as: 'slotMs'
        end
      end
      
      class FeatureValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_value, as: 'categoricalValue', class: Google::Apis::BigqueryV2::CategoricalValue, decorator: Google::Apis::BigqueryV2::CategoricalValue::Representation
      
          property :feature_column, as: 'featureColumn'
          property :numerical_value, as: 'numericalValue'
        end
      end
      
      class ForeignTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type_system, as: 'typeSystem'
        end
      end
      
      class ForeignViewDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialect, as: 'dialect'
          property :query, as: 'query'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::BigqueryV2::GetPolicyOptions, decorator: Google::Apis::BigqueryV2::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GetQueryResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :etag, as: 'etag'
          property :job_complete, as: 'jobComplete'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_rows, :numeric_string => true, as: 'totalRows'
        end
      end
      
      class GetServiceAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :kind, as: 'kind'
        end
      end
      
      class GlobalExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_label, as: 'classLabel'
          collection :explanations, as: 'explanations', class: Google::Apis::BigqueryV2::Explanation, decorator: Google::Apis::BigqueryV2::Explanation::Representation
      
        end
      end
      
      class GoogleSheetsOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range'
          property :skip_leading_rows, :numeric_string => true, as: 'skipLeadingRows'
        end
      end
      
      class HighCardinalityJoin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :left_rows, :numeric_string => true, as: 'leftRows'
          property :output_rows, :numeric_string => true, as: 'outputRows'
          property :right_rows, :numeric_string => true, as: 'rightRows'
          property :step_index, as: 'stepIndex'
        end
      end
      
      class HivePartitioningOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields'
          property :mode, as: 'mode'
          property :require_partition_filter, as: 'requirePartitionFilter'
          property :source_uri_prefix, as: 'sourceUriPrefix'
        end
      end
      
      class HparamSearchSpaces
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_fn, as: 'activationFn', class: Google::Apis::BigqueryV2::StringHparamSearchSpace, decorator: Google::Apis::BigqueryV2::StringHparamSearchSpace::Representation
      
          property :batch_size, as: 'batchSize', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :booster_type, as: 'boosterType', class: Google::Apis::BigqueryV2::StringHparamSearchSpace, decorator: Google::Apis::BigqueryV2::StringHparamSearchSpace::Representation
      
          property :colsample_bylevel, as: 'colsampleBylevel', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :colsample_bynode, as: 'colsampleBynode', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :colsample_bytree, as: 'colsampleBytree', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :dart_normalize_type, as: 'dartNormalizeType', class: Google::Apis::BigqueryV2::StringHparamSearchSpace, decorator: Google::Apis::BigqueryV2::StringHparamSearchSpace::Representation
      
          property :dropout, as: 'dropout', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :hidden_units, as: 'hiddenUnits', class: Google::Apis::BigqueryV2::IntArrayHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntArrayHparamSearchSpace::Representation
      
          property :l1_reg, as: 'l1Reg', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :l2_reg, as: 'l2Reg', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :learn_rate, as: 'learnRate', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :max_tree_depth, as: 'maxTreeDepth', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :min_split_loss, as: 'minSplitLoss', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :min_tree_child_weight, as: 'minTreeChildWeight', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :num_clusters, as: 'numClusters', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :num_factors, as: 'numFactors', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :num_parallel_tree, as: 'numParallelTree', class: Google::Apis::BigqueryV2::IntHparamSearchSpace, decorator: Google::Apis::BigqueryV2::IntHparamSearchSpace::Representation
      
          property :optimizer, as: 'optimizer', class: Google::Apis::BigqueryV2::StringHparamSearchSpace, decorator: Google::Apis::BigqueryV2::StringHparamSearchSpace::Representation
      
          property :subsample, as: 'subsample', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
          property :tree_method, as: 'treeMethod', class: Google::Apis::BigqueryV2::StringHparamSearchSpace, decorator: Google::Apis::BigqueryV2::StringHparamSearchSpace::Representation
      
          property :wals_alpha, as: 'walsAlpha', class: Google::Apis::BigqueryV2::DoubleHparamSearchSpace, decorator: Google::Apis::BigqueryV2::DoubleHparamSearchSpace::Representation
      
        end
      end
      
      class HparamTuningTrial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_ms, :numeric_string => true, as: 'endTimeMs'
          property :error_message, as: 'errorMessage'
          property :eval_loss, as: 'evalLoss'
          property :evaluation_metrics, as: 'evaluationMetrics', class: Google::Apis::BigqueryV2::EvaluationMetrics, decorator: Google::Apis::BigqueryV2::EvaluationMetrics::Representation
      
          property :hparam_tuning_evaluation_metrics, as: 'hparamTuningEvaluationMetrics', class: Google::Apis::BigqueryV2::EvaluationMetrics, decorator: Google::Apis::BigqueryV2::EvaluationMetrics::Representation
      
          property :hparams, as: 'hparams', class: Google::Apis::BigqueryV2::TrainingOptions, decorator: Google::Apis::BigqueryV2::TrainingOptions::Representation
      
          property :start_time_ms, :numeric_string => true, as: 'startTimeMs'
          property :status, as: 'status'
          property :training_loss, as: 'trainingLoss'
          property :trial_id, :numeric_string => true, as: 'trialId'
        end
      end
      
      class IndexUnusedReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_table, as: 'baseTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :code, as: 'code'
          property :index_name, as: 'indexName'
          property :message, as: 'message'
        end
      end
      
      class InputDataChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :records_read_diff_percentage, as: 'recordsReadDiffPercentage'
        end
      end
      
      class IntArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements'
        end
      end
      
      class IntArrayHparamSearchSpace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::BigqueryV2::IntArray, decorator: Google::Apis::BigqueryV2::IntArray::Representation
      
        end
      end
      
      class IntCandidates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates'
        end
      end
      
      class IntHparamSearchSpace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidates, as: 'candidates', class: Google::Apis::BigqueryV2::IntCandidates, decorator: Google::Apis::BigqueryV2::IntCandidates::Representation
      
          property :range, as: 'range', class: Google::Apis::BigqueryV2::IntRange, decorator: Google::Apis::BigqueryV2::IntRange::Representation
      
        end
      end
      
      class IntRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, :numeric_string => true, as: 'max'
          property :min, :numeric_string => true, as: 'min'
        end
      end
      
      class IterationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arima_result, as: 'arimaResult', class: Google::Apis::BigqueryV2::ArimaResult, decorator: Google::Apis::BigqueryV2::ArimaResult::Representation
      
          collection :cluster_infos, as: 'clusterInfos', class: Google::Apis::BigqueryV2::ClusterInfo, decorator: Google::Apis::BigqueryV2::ClusterInfo::Representation
      
          property :duration_ms, :numeric_string => true, as: 'durationMs'
          property :eval_loss, as: 'evalLoss'
          property :index, as: 'index'
          property :learn_rate, as: 'learnRate'
          collection :principal_component_infos, as: 'principalComponentInfos', class: Google::Apis::BigqueryV2::PrincipalComponentInfo, decorator: Google::Apis::BigqueryV2::PrincipalComponentInfo::Representation
      
          property :training_loss, as: 'trainingLoss'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfiguration::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :job_creation_reason, as: 'jobCreationReason', class: Google::Apis::BigqueryV2::JobCreationReason, decorator: Google::Apis::BigqueryV2::JobCreationReason::Representation
      
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :principal_subject, as: 'principal_subject'
          property :self_link, as: 'selfLink'
          property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatistics::Representation
      
          property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatus::Representation
      
          property :user_email, as: 'user_email'
        end
      end
      
      class CancelJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::BigqueryV2::Job, decorator: Google::Apis::BigqueryV2::Job::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class JobConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy, as: 'copy', class: Google::Apis::BigqueryV2::JobConfigurationTableCopy, decorator: Google::Apis::BigqueryV2::JobConfigurationTableCopy::Representation
      
          property :dry_run, as: 'dryRun'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobConfigurationExtract, decorator: Google::Apis::BigqueryV2::JobConfigurationExtract::Representation
      
          property :job_timeout_ms, :numeric_string => true, as: 'jobTimeoutMs'
          property :job_type, as: 'jobType'
          hash :labels, as: 'labels'
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobConfigurationLoad, decorator: Google::Apis::BigqueryV2::JobConfigurationLoad::Representation
      
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobConfigurationQuery, decorator: Google::Apis::BigqueryV2::JobConfigurationQuery::Representation
      
          property :reservation, as: 'reservation'
        end
      end
      
      class JobConfigurationExtract
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression, as: 'compression'
          property :destination_format, as: 'destinationFormat'
          property :destination_uri, as: 'destinationUri'
          collection :destination_uris, as: 'destinationUris'
          property :field_delimiter, as: 'fieldDelimiter'
          property :model_extract_options, as: 'modelExtractOptions', class: Google::Apis::BigqueryV2::ModelExtractOptions, decorator: Google::Apis::BigqueryV2::ModelExtractOptions::Representation
      
          property :print_header, as: 'printHeader'
          property :source_model, as: 'sourceModel', class: Google::Apis::BigqueryV2::ModelReference, decorator: Google::Apis::BigqueryV2::ModelReference::Representation
      
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :use_avro_logical_types, as: 'useAvroLogicalTypes'
        end
      end
      
      class JobConfigurationLoad
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :autodetect, as: 'autodetect'
          property :clustering, as: 'clustering', class: Google::Apis::BigqueryV2::Clustering, decorator: Google::Apis::BigqueryV2::Clustering::Representation
      
          property :column_name_character_map, as: 'columnNameCharacterMap'
          collection :connection_properties, as: 'connectionProperties', class: Google::Apis::BigqueryV2::ConnectionProperty, decorator: Google::Apis::BigqueryV2::ConnectionProperty::Representation
      
          property :copy_files_only, as: 'copyFilesOnly'
          property :create_disposition, as: 'createDisposition'
          property :create_session, as: 'createSession'
          property :date_format, as: 'dateFormat'
          property :datetime_format, as: 'datetimeFormat'
          collection :decimal_target_types, as: 'decimalTargetTypes'
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :destination_table_properties, as: 'destinationTableProperties', class: Google::Apis::BigqueryV2::DestinationTableProperties, decorator: Google::Apis::BigqueryV2::DestinationTableProperties::Representation
      
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :file_set_spec_type, as: 'fileSetSpecType'
          property :hive_partitioning_options, as: 'hivePartitioningOptions', class: Google::Apis::BigqueryV2::HivePartitioningOptions, decorator: Google::Apis::BigqueryV2::HivePartitioningOptions::Representation
      
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :json_extension, as: 'jsonExtension'
          property :max_bad_records, as: 'maxBadRecords'
          property :null_marker, as: 'nullMarker'
          collection :null_markers, as: 'nullMarkers'
          property :parquet_options, as: 'parquetOptions', class: Google::Apis::BigqueryV2::ParquetOptions, decorator: Google::Apis::BigqueryV2::ParquetOptions::Representation
      
          property :preserve_ascii_control_characters, as: 'preserveAsciiControlCharacters'
          collection :projection_fields, as: 'projectionFields'
          property :quote, as: 'quote'
          property :range_partitioning, as: 'rangePartitioning', class: Google::Apis::BigqueryV2::RangePartitioning, decorator: Google::Apis::BigqueryV2::RangePartitioning::Representation
      
          property :reference_file_schema_uri, as: 'referenceFileSchemaUri'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :schema_inline, as: 'schemaInline'
          property :schema_inline_format, as: 'schemaInlineFormat'
          collection :schema_update_options, as: 'schemaUpdateOptions'
          property :skip_leading_rows, as: 'skipLeadingRows'
          property :source_column_match, as: 'sourceColumnMatch'
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
          property :time_format, as: 'timeFormat'
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :time_zone, as: 'timeZone'
          property :timestamp_format, as: 'timestampFormat'
          property :use_avro_logical_types, as: 'useAvroLogicalTypes'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class JobConfigurationQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_large_results, as: 'allowLargeResults'
          property :clustering, as: 'clustering', class: Google::Apis::BigqueryV2::Clustering, decorator: Google::Apis::BigqueryV2::Clustering::Representation
      
          collection :connection_properties, as: 'connectionProperties', class: Google::Apis::BigqueryV2::ConnectionProperty, decorator: Google::Apis::BigqueryV2::ConnectionProperty::Representation
      
          property :continuous, as: 'continuous'
          property :create_disposition, as: 'createDisposition'
          property :create_session, as: 'createSession'
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :flatten_results, as: 'flattenResults'
          property :maximum_billing_tier, as: 'maximumBillingTier'
          property :maximum_bytes_billed, :numeric_string => true, as: 'maximumBytesBilled'
          property :parameter_mode, as: 'parameterMode'
          property :preserve_nulls, as: 'preserveNulls'
          property :priority, as: 'priority'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
          property :range_partitioning, as: 'rangePartitioning', class: Google::Apis::BigqueryV2::RangePartitioning, decorator: Google::Apis::BigqueryV2::RangePartitioning::Representation
      
          collection :schema_update_options, as: 'schemaUpdateOptions'
          property :script_options, as: 'scriptOptions', class: Google::Apis::BigqueryV2::ScriptOptions, decorator: Google::Apis::BigqueryV2::ScriptOptions::Representation
      
          property :system_variables, as: 'systemVariables', class: Google::Apis::BigqueryV2::SystemVariables, decorator: Google::Apis::BigqueryV2::SystemVariables::Representation
      
          hash :table_definitions, as: 'tableDefinitions', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfiguration::Representation
      
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :use_legacy_sql, as: 'useLegacySql'
          property :use_query_cache, as: 'useQueryCache'
          collection :user_defined_function_resources, as: 'userDefinedFunctionResources', class: Google::Apis::BigqueryV2::UserDefinedFunctionResource, decorator: Google::Apis::BigqueryV2::UserDefinedFunctionResource::Representation
      
          property :write_disposition, as: 'writeDisposition'
          property :write_incremental_results, as: 'writeIncrementalResults'
        end
      end
      
      class JobConfigurationTableCopy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_disposition, as: 'createDisposition'
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_expiration_time, as: 'destinationExpirationTime'
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :operation_type, as: 'operationType'
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          collection :source_tables, as: 'sourceTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class JobCreationReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class JobList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :jobs, as: 'jobs', class: Google::Apis::BigqueryV2::JobList::Job, decorator: Google::Apis::BigqueryV2::JobList::Job::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
        
        class Job
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfiguration::Representation
        
            property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
        
            property :id, as: 'id'
            property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
        
            property :kind, as: 'kind'
            property :principal_subject, as: 'principal_subject'
            property :state, as: 'state'
            property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatistics::Representation
        
            property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatus::Representation
        
            property :user_email, as: 'user_email'
          end
        end
      end
      
      class JobReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :location, as: 'location'
          property :project_id, as: 'projectId'
        end
      end
      
      class JobStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_ratio, as: 'completionRatio'
          property :copy, as: 'copy', class: Google::Apis::BigqueryV2::JobStatistics5, decorator: Google::Apis::BigqueryV2::JobStatistics5::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :data_masking_statistics, as: 'dataMaskingStatistics', class: Google::Apis::BigqueryV2::DataMaskingStatistics, decorator: Google::Apis::BigqueryV2::DataMaskingStatistics::Representation
      
          property :edition, as: 'edition'
          property :end_time, :numeric_string => true, as: 'endTime'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobStatistics4, decorator: Google::Apis::BigqueryV2::JobStatistics4::Representation
      
          property :final_execution_duration_ms, :numeric_string => true, as: 'finalExecutionDurationMs'
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobStatistics3, decorator: Google::Apis::BigqueryV2::JobStatistics3::Representation
      
          property :num_child_jobs, :numeric_string => true, as: 'numChildJobs'
          property :parent_job_id, as: 'parentJobId'
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobStatistics2, decorator: Google::Apis::BigqueryV2::JobStatistics2::Representation
      
          collection :quota_deferments, as: 'quotaDeferments'
          collection :reservation_usage, as: 'reservationUsage', class: Google::Apis::BigqueryV2::JobStatistics::ReservationUsage, decorator: Google::Apis::BigqueryV2::JobStatistics::ReservationUsage::Representation
      
          property :reservation_id, as: 'reservation_id'
          property :row_level_security_statistics, as: 'rowLevelSecurityStatistics', class: Google::Apis::BigqueryV2::RowLevelSecurityStatistics, decorator: Google::Apis::BigqueryV2::RowLevelSecurityStatistics::Representation
      
          property :script_statistics, as: 'scriptStatistics', class: Google::Apis::BigqueryV2::ScriptStatistics, decorator: Google::Apis::BigqueryV2::ScriptStatistics::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::BigqueryV2::SessionInfo, decorator: Google::Apis::BigqueryV2::SessionInfo::Representation
      
          property :start_time, :numeric_string => true, as: 'startTime'
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_slot_ms, :numeric_string => true, as: 'totalSlotMs'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::BigqueryV2::TransactionInfo, decorator: Google::Apis::BigqueryV2::TransactionInfo::Representation
      
        end
        
        class ReservationUsage
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :name, as: 'name'
            property :slot_ms, :numeric_string => true, as: 'slotMs'
          end
        end
      end
      
      class JobStatistics2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bi_engine_statistics, as: 'biEngineStatistics', class: Google::Apis::BigqueryV2::BiEngineStatistics, decorator: Google::Apis::BigqueryV2::BiEngineStatistics::Representation
      
          property :billing_tier, as: 'billingTier'
          property :cache_hit, as: 'cacheHit'
          property :dcl_target_dataset, as: 'dclTargetDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :dcl_target_table, as: 'dclTargetTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :dcl_target_view, as: 'dclTargetView', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :ddl_affected_row_access_policy_count, :numeric_string => true, as: 'ddlAffectedRowAccessPolicyCount'
          property :ddl_destination_table, as: 'ddlDestinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :ddl_operation_performed, as: 'ddlOperationPerformed'
          property :ddl_target_dataset, as: 'ddlTargetDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :ddl_target_routine, as: 'ddlTargetRoutine', class: Google::Apis::BigqueryV2::RoutineReference, decorator: Google::Apis::BigqueryV2::RoutineReference::Representation
      
          property :ddl_target_row_access_policy, as: 'ddlTargetRowAccessPolicy', class: Google::Apis::BigqueryV2::RowAccessPolicyReference, decorator: Google::Apis::BigqueryV2::RowAccessPolicyReference::Representation
      
          property :ddl_target_table, as: 'ddlTargetTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :dml_stats, as: 'dmlStats', class: Google::Apis::BigqueryV2::DmlStatistics, decorator: Google::Apis::BigqueryV2::DmlStatistics::Representation
      
          property :estimated_bytes_processed, :numeric_string => true, as: 'estimatedBytesProcessed'
          property :export_data_statistics, as: 'exportDataStatistics', class: Google::Apis::BigqueryV2::ExportDataStatistics, decorator: Google::Apis::BigqueryV2::ExportDataStatistics::Representation
      
          collection :external_service_costs, as: 'externalServiceCosts', class: Google::Apis::BigqueryV2::ExternalServiceCost, decorator: Google::Apis::BigqueryV2::ExternalServiceCost::Representation
      
          property :load_query_statistics, as: 'loadQueryStatistics', class: Google::Apis::BigqueryV2::LoadQueryStatistics, decorator: Google::Apis::BigqueryV2::LoadQueryStatistics::Representation
      
          property :materialized_view_statistics, as: 'materializedViewStatistics', class: Google::Apis::BigqueryV2::MaterializedViewStatistics, decorator: Google::Apis::BigqueryV2::MaterializedViewStatistics::Representation
      
          property :metadata_cache_statistics, as: 'metadataCacheStatistics', class: Google::Apis::BigqueryV2::MetadataCacheStatistics, decorator: Google::Apis::BigqueryV2::MetadataCacheStatistics::Representation
      
          property :ml_statistics, as: 'mlStatistics', class: Google::Apis::BigqueryV2::MlStatistics, decorator: Google::Apis::BigqueryV2::MlStatistics::Representation
      
          property :model_training, as: 'modelTraining', class: Google::Apis::BigqueryV2::BigQueryModelTraining, decorator: Google::Apis::BigqueryV2::BigQueryModelTraining::Representation
      
          property :model_training_current_iteration, as: 'modelTrainingCurrentIteration'
          property :model_training_expected_total_iteration, :numeric_string => true, as: 'modelTrainingExpectedTotalIteration'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          property :performance_insights, as: 'performanceInsights', class: Google::Apis::BigqueryV2::PerformanceInsights, decorator: Google::Apis::BigqueryV2::PerformanceInsights::Representation
      
          property :query_info, as: 'queryInfo', class: Google::Apis::BigqueryV2::QueryInfo, decorator: Google::Apis::BigqueryV2::QueryInfo::Representation
      
          collection :query_plan, as: 'queryPlan', class: Google::Apis::BigqueryV2::ExplainQueryStage, decorator: Google::Apis::BigqueryV2::ExplainQueryStage::Representation
      
          collection :referenced_routines, as: 'referencedRoutines', class: Google::Apis::BigqueryV2::RoutineReference, decorator: Google::Apis::BigqueryV2::RoutineReference::Representation
      
          collection :referenced_tables, as: 'referencedTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          collection :reservation_usage, as: 'reservationUsage', class: Google::Apis::BigqueryV2::JobStatistics2::ReservationUsage, decorator: Google::Apis::BigqueryV2::JobStatistics2::ReservationUsage::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :search_statistics, as: 'searchStatistics', class: Google::Apis::BigqueryV2::SearchStatistics, decorator: Google::Apis::BigqueryV2::SearchStatistics::Representation
      
          property :spark_statistics, as: 'sparkStatistics', class: Google::Apis::BigqueryV2::SparkStatistics, decorator: Google::Apis::BigqueryV2::SparkStatistics::Representation
      
          property :statement_type, as: 'statementType'
          collection :timeline, as: 'timeline', class: Google::Apis::BigqueryV2::QueryTimelineSample, decorator: Google::Apis::BigqueryV2::QueryTimelineSample::Representation
      
          property :total_bytes_billed, :numeric_string => true, as: 'totalBytesBilled'
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_bytes_processed_accuracy, as: 'totalBytesProcessedAccuracy'
          property :total_partitions_processed, :numeric_string => true, as: 'totalPartitionsProcessed'
          property :total_slot_ms, :numeric_string => true, as: 'totalSlotMs'
          property :transferred_bytes, :numeric_string => true, as: 'transferredBytes'
          collection :undeclared_query_parameters, as: 'undeclaredQueryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
          property :vector_search_statistics, as: 'vectorSearchStatistics', class: Google::Apis::BigqueryV2::VectorSearchStatistics, decorator: Google::Apis::BigqueryV2::VectorSearchStatistics::Representation
      
        end
        
        class ReservationUsage
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :name, as: 'name'
            property :slot_ms, :numeric_string => true, as: 'slotMs'
          end
        end
      end
      
      class JobStatistics3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bad_records, :numeric_string => true, as: 'badRecords'
          property :input_file_bytes, :numeric_string => true, as: 'inputFileBytes'
          property :input_files, :numeric_string => true, as: 'inputFiles'
          property :output_bytes, :numeric_string => true, as: 'outputBytes'
          property :output_rows, :numeric_string => true, as: 'outputRows'
          collection :timeline, as: 'timeline', class: Google::Apis::BigqueryV2::QueryTimelineSample, decorator: Google::Apis::BigqueryV2::QueryTimelineSample::Representation
      
        end
      end
      
      class JobStatistics4
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_uri_file_counts, as: 'destinationUriFileCounts'
          property :input_bytes, :numeric_string => true, as: 'inputBytes'
          collection :timeline, as: 'timeline', class: Google::Apis::BigqueryV2::QueryTimelineSample, decorator: Google::Apis::BigqueryV2::QueryTimelineSample::Representation
      
        end
      end
      
      class JobStatistics5
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copied_logical_bytes, :numeric_string => true, as: 'copiedLogicalBytes'
          property :copied_rows, :numeric_string => true, as: 'copiedRows'
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :state, as: 'state'
        end
      end
      
      class JoinRestrictionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :join_allowed_columns, as: 'joinAllowedColumns'
          property :join_condition, as: 'joinCondition'
        end
      end
      
      class JsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
        end
      end
      
      class LinkedDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link_state, as: 'linkState'
        end
      end
      
      class LinkedDatasetSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_dataset, as: 'sourceDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
        end
      end
      
      class ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::BigqueryV2::Model, decorator: Google::Apis::BigqueryV2::Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListRoutinesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :routines, as: 'routines', class: Google::Apis::BigqueryV2::Routine, decorator: Google::Apis::BigqueryV2::Routine::Representation
      
        end
      end
      
      class ListRowAccessPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :row_access_policies, as: 'rowAccessPolicies', class: Google::Apis::BigqueryV2::RowAccessPolicy, decorator: Google::Apis::BigqueryV2::RowAccessPolicy::Representation
      
        end
      end
      
      class LoadQueryStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bad_records, :numeric_string => true, as: 'badRecords'
          property :bytes_transferred, :numeric_string => true, as: 'bytesTransferred'
          property :input_file_bytes, :numeric_string => true, as: 'inputFileBytes'
          property :input_files, :numeric_string => true, as: 'inputFiles'
          property :output_bytes, :numeric_string => true, as: 'outputBytes'
          property :output_rows, :numeric_string => true, as: 'outputRows'
        end
      end
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_location_id, as: 'legacyLocationId'
        end
      end
      
      class MaterializedView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chosen, as: 'chosen'
          property :estimated_bytes_saved, :numeric_string => true, as: 'estimatedBytesSaved'
          property :rejected_reason, as: 'rejectedReason'
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
        end
      end
      
      class MaterializedViewDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_non_incremental_definition, as: 'allowNonIncrementalDefinition'
          property :enable_refresh, as: 'enableRefresh'
          property :last_refresh_time, :numeric_string => true, as: 'lastRefreshTime'
          property :max_staleness, :base64 => true, as: 'maxStaleness'
          property :query, as: 'query'
          property :refresh_interval_ms, :numeric_string => true, as: 'refreshIntervalMs'
        end
      end
      
      class MaterializedViewStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :materialized_view, as: 'materializedView', class: Google::Apis::BigqueryV2::MaterializedView, decorator: Google::Apis::BigqueryV2::MaterializedView::Representation
      
        end
      end
      
      class MaterializedViewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_refresh_status, as: 'lastRefreshStatus', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :refresh_watermark, as: 'refreshWatermark'
        end
      end
      
      class MetadataCacheStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :table_metadata_cache_usage, as: 'tableMetadataCacheUsage', class: Google::Apis::BigqueryV2::TableMetadataCacheUsage, decorator: Google::Apis::BigqueryV2::TableMetadataCacheUsage::Representation
      
        end
      end
      
      class MlStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hparam_trials, as: 'hparamTrials', class: Google::Apis::BigqueryV2::HparamTuningTrial, decorator: Google::Apis::BigqueryV2::HparamTuningTrial::Representation
      
          collection :iteration_results, as: 'iterationResults', class: Google::Apis::BigqueryV2::IterationResult, decorator: Google::Apis::BigqueryV2::IterationResult::Representation
      
          property :max_iterations, :numeric_string => true, as: 'maxIterations'
          property :model_type, as: 'modelType'
          property :training_type, as: 'trainingType'
        end
      end
      
      class Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_trial_id, :numeric_string => true, as: 'bestTrialId'
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :default_trial_id, :numeric_string => true, as: 'defaultTrialId'
          property :description, as: 'description'
          property :encryption_configuration, as: 'encryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :etag, as: 'etag'
          property :expiration_time, :numeric_string => true, as: 'expirationTime'
          collection :feature_columns, as: 'featureColumns', class: Google::Apis::BigqueryV2::StandardSqlField, decorator: Google::Apis::BigqueryV2::StandardSqlField::Representation
      
          property :friendly_name, as: 'friendlyName'
          property :hparam_search_spaces, as: 'hparamSearchSpaces', class: Google::Apis::BigqueryV2::HparamSearchSpaces, decorator: Google::Apis::BigqueryV2::HparamSearchSpaces::Representation
      
          collection :hparam_trials, as: 'hparamTrials', class: Google::Apis::BigqueryV2::HparamTuningTrial, decorator: Google::Apis::BigqueryV2::HparamTuningTrial::Representation
      
          collection :label_columns, as: 'labelColumns', class: Google::Apis::BigqueryV2::StandardSqlField, decorator: Google::Apis::BigqueryV2::StandardSqlField::Representation
      
          hash :labels, as: 'labels'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :location, as: 'location'
          property :model_reference, as: 'modelReference', class: Google::Apis::BigqueryV2::ModelReference, decorator: Google::Apis::BigqueryV2::ModelReference::Representation
      
          property :model_type, as: 'modelType'
          collection :optimal_trial_ids, as: 'optimalTrialIds'
          property :remote_model_info, as: 'remoteModelInfo', class: Google::Apis::BigqueryV2::RemoteModelInfo, decorator: Google::Apis::BigqueryV2::RemoteModelInfo::Representation
      
          collection :training_runs, as: 'trainingRuns', class: Google::Apis::BigqueryV2::TrainingRun, decorator: Google::Apis::BigqueryV2::TrainingRun::Representation
      
          collection :transform_columns, as: 'transformColumns', class: Google::Apis::BigqueryV2::TransformColumn, decorator: Google::Apis::BigqueryV2::TransformColumn::Representation
      
        end
      end
      
      class ModelDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_options, as: 'modelOptions', class: Google::Apis::BigqueryV2::ModelDefinition::ModelOptions, decorator: Google::Apis::BigqueryV2::ModelDefinition::ModelOptions::Representation
      
          collection :training_runs, as: 'trainingRuns', class: Google::Apis::BigqueryV2::BqmlTrainingRun, decorator: Google::Apis::BigqueryV2::BqmlTrainingRun::Representation
      
        end
        
        class ModelOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :labels, as: 'labels'
            property :loss_type, as: 'lossType'
            property :model_type, as: 'modelType'
          end
        end
      end
      
      class ModelExtractOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trial_id, :numeric_string => true, as: 'trialId'
        end
      end
      
      class ModelReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :model_id, as: 'modelId'
          property :project_id, as: 'projectId'
        end
      end
      
      class MultiClassClassificationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_classification_metrics, as: 'aggregateClassificationMetrics', class: Google::Apis::BigqueryV2::AggregateClassificationMetrics, decorator: Google::Apis::BigqueryV2::AggregateClassificationMetrics::Representation
      
          collection :confusion_matrix_list, as: 'confusionMatrixList', class: Google::Apis::BigqueryV2::ConfusionMatrix, decorator: Google::Apis::BigqueryV2::ConfusionMatrix::Representation
      
        end
      end
      
      class ParquetOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_list_inference, as: 'enableListInference'
          property :enum_as_string, as: 'enumAsString'
          property :map_target_type, as: 'mapTargetType'
        end
      end
      
      class PartitionSkew
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :skew_sources, as: 'skewSources', class: Google::Apis::BigqueryV2::SkewSource, decorator: Google::Apis::BigqueryV2::SkewSource::Representation
      
        end
      end
      
      class PartitionedColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
        end
      end
      
      class PartitioningDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partitioned_column, as: 'partitionedColumn', class: Google::Apis::BigqueryV2::PartitionedColumn, decorator: Google::Apis::BigqueryV2::PartitionedColumn::Representation
      
        end
      end
      
      class PerformanceInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avg_previous_execution_ms, :numeric_string => true, as: 'avgPreviousExecutionMs'
          collection :stage_performance_change_insights, as: 'stagePerformanceChangeInsights', class: Google::Apis::BigqueryV2::StagePerformanceChangeInsight, decorator: Google::Apis::BigqueryV2::StagePerformanceChangeInsight::Representation
      
          collection :stage_performance_standalone_insights, as: 'stagePerformanceStandaloneInsights', class: Google::Apis::BigqueryV2::StagePerformanceStandaloneInsight, decorator: Google::Apis::BigqueryV2::StagePerformanceStandaloneInsight::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BigqueryV2::AuditConfig, decorator: Google::Apis::BigqueryV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BigqueryV2::Binding, decorator: Google::Apis::BigqueryV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PrincipalComponentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cumulative_explained_variance_ratio, as: 'cumulativeExplainedVarianceRatio'
          property :explained_variance, as: 'explainedVariance'
          property :explained_variance_ratio, as: 'explainedVarianceRatio'
          property :principal_component_id, :numeric_string => true, as: 'principalComponentId'
        end
      end
      
      class PrivacyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_threshold_policy, as: 'aggregationThresholdPolicy', class: Google::Apis::BigqueryV2::AggregationThresholdPolicy, decorator: Google::Apis::BigqueryV2::AggregationThresholdPolicy::Representation
      
          property :differential_privacy_policy, as: 'differentialPrivacyPolicy', class: Google::Apis::BigqueryV2::DifferentialPrivacyPolicy, decorator: Google::Apis::BigqueryV2::DifferentialPrivacyPolicy::Representation
      
          property :join_restriction_policy, as: 'joinRestrictionPolicy', class: Google::Apis::BigqueryV2::JoinRestrictionPolicy, decorator: Google::Apis::BigqueryV2::JoinRestrictionPolicy::Representation
      
        end
      end
      
      class ProjectList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :projects, as: 'projects', class: Google::Apis::BigqueryV2::ProjectList::Project, decorator: Google::Apis::BigqueryV2::ProjectList::Project::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        class Project
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            property :numeric_id, :numeric_string => true, as: 'numericId'
            property :project_reference, as: 'projectReference', class: Google::Apis::BigqueryV2::ProjectReference, decorator: Google::Apis::BigqueryV2::ProjectReference::Representation
        
          end
        end
      end
      
      class ProjectReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class PythonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entry_point, as: 'entryPoint'
          collection :packages, as: 'packages'
        end
      end
      
      class QueryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :optimization_details, as: 'optimizationDetails'
        end
      end
      
      class QueryParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parameter_type, as: 'parameterType', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
      
          property :parameter_value, as: 'parameterValue', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
        end
      end
      
      class QueryParameterType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_type, as: 'arrayType', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
      
          property :range_element_type, as: 'rangeElementType', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
      
          collection :struct_types, as: 'structTypes', class: Google::Apis::BigqueryV2::QueryParameterType::StructType, decorator: Google::Apis::BigqueryV2::QueryParameterType::StructType::Representation
      
          property :type, as: 'type'
        end
        
        class StructType
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :description, as: 'description'
            property :name, as: 'name'
            property :type, as: 'type', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
        
          end
        end
      end
      
      class QueryParameterValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :array_values, as: 'arrayValues', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
          property :range_value, as: 'rangeValue', class: Google::Apis::BigqueryV2::RangeValue, decorator: Google::Apis::BigqueryV2::RangeValue::Representation
      
          hash :struct_values, as: 'structValues', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
          property :value, as: 'value'
        end
      end
      
      class QueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_properties, as: 'connectionProperties', class: Google::Apis::BigqueryV2::ConnectionProperty, decorator: Google::Apis::BigqueryV2::ConnectionProperty::Representation
      
          property :continuous, as: 'continuous'
          property :create_session, as: 'createSession'
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :dry_run, as: 'dryRun'
          property :format_options, as: 'formatOptions', class: Google::Apis::BigqueryV2::DataFormatOptions, decorator: Google::Apis::BigqueryV2::DataFormatOptions::Representation
      
          property :job_creation_mode, as: 'jobCreationMode'
          property :job_timeout_ms, :numeric_string => true, as: 'jobTimeoutMs'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :max_results, as: 'maxResults'
          property :maximum_bytes_billed, :numeric_string => true, as: 'maximumBytesBilled'
          property :parameter_mode, as: 'parameterMode'
          property :preserve_nulls, as: 'preserveNulls'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
          property :request_id, as: 'requestId'
          property :reservation, as: 'reservation'
          property :timeout_ms, as: 'timeoutMs'
          property :use_legacy_sql, as: 'useLegacySql'
          property :use_query_cache, as: 'useQueryCache'
          property :write_incremental_results, as: 'writeIncrementalResults'
        end
      end
      
      class QueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :dml_stats, as: 'dmlStats', class: Google::Apis::BigqueryV2::DmlStatistics, decorator: Google::Apis::BigqueryV2::DmlStatistics::Representation
      
          property :end_time, :numeric_string => true, as: 'endTime'
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :job_complete, as: 'jobComplete'
          property :job_creation_reason, as: 'jobCreationReason', class: Google::Apis::BigqueryV2::JobCreationReason, decorator: Google::Apis::BigqueryV2::JobCreationReason::Representation
      
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          property :page_token, as: 'pageToken'
          property :query_id, as: 'queryId'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::BigqueryV2::SessionInfo, decorator: Google::Apis::BigqueryV2::SessionInfo::Representation
      
          property :start_time, :numeric_string => true, as: 'startTime'
          property :total_bytes_billed, :numeric_string => true, as: 'totalBytesBilled'
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_rows, :numeric_string => true, as: 'totalRows'
          property :total_slot_ms, :numeric_string => true, as: 'totalSlotMs'
        end
      end
      
      class QueryTimelineSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_units, :numeric_string => true, as: 'activeUnits'
          property :completed_units, :numeric_string => true, as: 'completedUnits'
          property :elapsed_ms, :numeric_string => true, as: 'elapsedMs'
          property :estimated_runnable_units, :numeric_string => true, as: 'estimatedRunnableUnits'
          property :pending_units, :numeric_string => true, as: 'pendingUnits'
          property :shuffle_ram_usage_ratio, as: 'shuffleRamUsageRatio'
          property :total_slot_ms, :numeric_string => true, as: 'totalSlotMs'
        end
      end
      
      class RangePartitioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :range, as: 'range', class: Google::Apis::BigqueryV2::RangePartitioning::Range, decorator: Google::Apis::BigqueryV2::RangePartitioning::Range::Representation
      
        end
        
        class Range
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :end, :numeric_string => true, as: 'end'
            property :interval, :numeric_string => true, as: 'interval'
            property :start, :numeric_string => true, as: 'start'
          end
        end
      end
      
      class RangeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
          property :start, as: 'start', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
        end
      end
      
      class RankingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rank, as: 'averageRank'
          property :mean_average_precision, as: 'meanAveragePrecision'
          property :mean_squared_error, as: 'meanSquaredError'
          property :normalized_discounted_cumulative_gain, as: 'normalizedDiscountedCumulativeGain'
        end
      end
      
      class RegressionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_squared_error, as: 'meanSquaredError'
          property :mean_squared_log_error, as: 'meanSquaredLogError'
          property :median_absolute_error, as: 'medianAbsoluteError'
          property :r_squared, as: 'rSquared'
        end
      end
      
      class RemoteFunctionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection'
          property :endpoint, as: 'endpoint'
          property :max_batching_rows, :numeric_string => true, as: 'maxBatchingRows'
          hash :user_defined_context, as: 'userDefinedContext'
        end
      end
      
      class RemoteModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection'
          property :endpoint, as: 'endpoint'
          property :max_batching_rows, :numeric_string => true, as: 'maxBatchingRows'
          property :remote_model_version, as: 'remoteModelVersion'
          property :remote_service_type, as: 'remoteServiceType'
          property :speech_recognizer, as: 'speechRecognizer'
        end
      end
      
      class RestrictionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Routine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arguments, as: 'arguments', class: Google::Apis::BigqueryV2::Argument, decorator: Google::Apis::BigqueryV2::Argument::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :data_governance_type, as: 'dataGovernanceType'
          property :definition_body, as: 'definitionBody'
          property :description, as: 'description'
          property :determinism_level, as: 'determinismLevel'
          property :etag, as: 'etag'
          property :external_runtime_options, as: 'externalRuntimeOptions', class: Google::Apis::BigqueryV2::ExternalRuntimeOptions, decorator: Google::Apis::BigqueryV2::ExternalRuntimeOptions::Representation
      
          collection :imported_libraries, as: 'importedLibraries'
          property :language, as: 'language'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :python_options, as: 'pythonOptions', class: Google::Apis::BigqueryV2::PythonOptions, decorator: Google::Apis::BigqueryV2::PythonOptions::Representation
      
          property :remote_function_options, as: 'remoteFunctionOptions', class: Google::Apis::BigqueryV2::RemoteFunctionOptions, decorator: Google::Apis::BigqueryV2::RemoteFunctionOptions::Representation
      
          property :return_table_type, as: 'returnTableType', class: Google::Apis::BigqueryV2::StandardSqlTableType, decorator: Google::Apis::BigqueryV2::StandardSqlTableType::Representation
      
          property :return_type, as: 'returnType', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
          property :routine_reference, as: 'routineReference', class: Google::Apis::BigqueryV2::RoutineReference, decorator: Google::Apis::BigqueryV2::RoutineReference::Representation
      
          property :routine_type, as: 'routineType'
          property :security_mode, as: 'securityMode'
          property :spark_options, as: 'sparkOptions', class: Google::Apis::BigqueryV2::SparkOptions, decorator: Google::Apis::BigqueryV2::SparkOptions::Representation
      
          property :strict_mode, as: 'strictMode'
        end
      end
      
      class RoutineReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :routine_id, as: 'routineId'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_label, as: 'actualLabel'
          collection :entries, as: 'entries', class: Google::Apis::BigqueryV2::Entry, decorator: Google::Apis::BigqueryV2::Entry::Representation
      
        end
      end
      
      class RowAccessPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :etag, as: 'etag'
          property :filter_predicate, as: 'filterPredicate'
          collection :grantees, as: 'grantees'
          property :last_modified_time, as: 'lastModifiedTime'
          property :row_access_policy_reference, as: 'rowAccessPolicyReference', class: Google::Apis::BigqueryV2::RowAccessPolicyReference, decorator: Google::Apis::BigqueryV2::RowAccessPolicyReference::Representation
      
        end
      end
      
      class RowAccessPolicyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :policy_id, as: 'policyId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class RowLevelSecurityStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_level_security_applied, as: 'rowLevelSecurityApplied'
        end
      end
      
      class ScriptOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_result_statement, as: 'keyResultStatement'
          property :statement_byte_budget, :numeric_string => true, as: 'statementByteBudget'
          property :statement_timeout_ms, :numeric_string => true, as: 'statementTimeoutMs'
        end
      end
      
      class ScriptStackFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_column, as: 'endColumn'
          property :end_line, as: 'endLine'
          property :procedure_id, as: 'procedureId'
          property :start_column, as: 'startColumn'
          property :start_line, as: 'startLine'
          property :text, as: 'text'
        end
      end
      
      class ScriptStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_kind, as: 'evaluationKind'
          collection :stack_frames, as: 'stackFrames', class: Google::Apis::BigqueryV2::ScriptStackFrame, decorator: Google::Apis::BigqueryV2::ScriptStackFrame::Representation
      
        end
      end
      
      class SearchStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :index_unused_reasons, as: 'indexUnusedReasons', class: Google::Apis::BigqueryV2::IndexUnusedReason, decorator: Google::Apis::BigqueryV2::IndexUnusedReason::Representation
      
          property :index_usage_mode, as: 'indexUsageMode'
        end
      end
      
      class SerDeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
          property :serialization_library, as: 'serializationLibrary'
        end
      end
      
      class SessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_id, as: 'sessionId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BigqueryV2::Policy, decorator: Google::Apis::BigqueryV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SkewSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stage_id, :numeric_string => true, as: 'stageId'
        end
      end
      
      class SnapshotDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_table_reference, as: 'baseTableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :snapshot_time, as: 'snapshotTime', type: DateTime
      
        end
      end
      
      class SparkLoggingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class SparkOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_uris, as: 'archiveUris'
          property :connection, as: 'connection'
          property :container_image, as: 'containerImage'
          collection :file_uris, as: 'fileUris'
          collection :jar_uris, as: 'jarUris'
          property :main_class, as: 'mainClass'
          property :main_file_uri, as: 'mainFileUri'
          hash :properties, as: 'properties'
          collection :py_file_uris, as: 'pyFileUris'
          property :runtime_version, as: 'runtimeVersion'
        end
      end
      
      class SparkStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :endpoints, as: 'endpoints'
          property :gcs_staging_bucket, as: 'gcsStagingBucket'
          property :kms_key_name, as: 'kmsKeyName'
          property :logging_info, as: 'loggingInfo', class: Google::Apis::BigqueryV2::SparkLoggingInfo, decorator: Google::Apis::BigqueryV2::SparkLoggingInfo::Representation
      
          property :spark_job_id, as: 'sparkJobId'
          property :spark_job_location, as: 'sparkJobLocation'
        end
      end
      
      class StagePerformanceChangeInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_data_change, as: 'inputDataChange', class: Google::Apis::BigqueryV2::InputDataChange, decorator: Google::Apis::BigqueryV2::InputDataChange::Representation
      
          property :stage_id, :numeric_string => true, as: 'stageId'
        end
      end
      
      class StagePerformanceStandaloneInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bi_engine_reasons, as: 'biEngineReasons', class: Google::Apis::BigqueryV2::BiEngineReason, decorator: Google::Apis::BigqueryV2::BiEngineReason::Representation
      
          collection :high_cardinality_joins, as: 'highCardinalityJoins', class: Google::Apis::BigqueryV2::HighCardinalityJoin, decorator: Google::Apis::BigqueryV2::HighCardinalityJoin::Representation
      
          property :insufficient_shuffle_quota, as: 'insufficientShuffleQuota'
          property :partition_skew, as: 'partitionSkew', class: Google::Apis::BigqueryV2::PartitionSkew, decorator: Google::Apis::BigqueryV2::PartitionSkew::Representation
      
          property :slot_contention, as: 'slotContention'
          property :stage_id, :numeric_string => true, as: 'stageId'
        end
      end
      
      class StandardSqlDataType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_element_type, as: 'arrayElementType', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
          property :range_element_type, as: 'rangeElementType', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
          property :struct_type, as: 'structType', class: Google::Apis::BigqueryV2::StandardSqlStructType, decorator: Google::Apis::BigqueryV2::StandardSqlStructType::Representation
      
          property :type_kind, as: 'typeKind'
        end
      end
      
      class StandardSqlField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
        end
      end
      
      class StandardSqlStructType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::StandardSqlField, decorator: Google::Apis::BigqueryV2::StandardSqlField::Representation
      
        end
      end
      
      class StandardSqlTableType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::BigqueryV2::StandardSqlField, decorator: Google::Apis::BigqueryV2::StandardSqlField::Representation
      
        end
      end
      
      class StorageDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_format, as: 'inputFormat'
          property :location_uri, as: 'locationUri'
          property :output_format, as: 'outputFormat'
          property :serde_info, as: 'serdeInfo', class: Google::Apis::BigqueryV2::SerDeInfo, decorator: Google::Apis::BigqueryV2::SerDeInfo::Representation
      
        end
      end
      
      class StoredColumnsUnusedReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :uncovered_columns, as: 'uncoveredColumns'
        end
      end
      
      class StoredColumnsUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_table, as: 'baseTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :is_query_accelerated, as: 'isQueryAccelerated'
          collection :stored_columns_unused_reasons, as: 'storedColumnsUnusedReasons', class: Google::Apis::BigqueryV2::StoredColumnsUnusedReason, decorator: Google::Apis::BigqueryV2::StoredColumnsUnusedReason::Representation
      
        end
      end
      
      class Streamingbuffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_bytes, :numeric_string => true, as: 'estimatedBytes'
          property :estimated_rows, :numeric_string => true, as: 'estimatedRows'
          property :oldest_entry_time, :numeric_string => true, as: 'oldestEntryTime'
        end
      end
      
      class StringHparamSearchSpace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates'
        end
      end
      
      class SystemVariables
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :types, as: 'types', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
          hash :values, as: 'values'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :biglake_configuration, as: 'biglakeConfiguration', class: Google::Apis::BigqueryV2::BigLakeConfiguration, decorator: Google::Apis::BigqueryV2::BigLakeConfiguration::Representation
      
          property :clone_definition, as: 'cloneDefinition', class: Google::Apis::BigqueryV2::CloneDefinition, decorator: Google::Apis::BigqueryV2::CloneDefinition::Representation
      
          property :clustering, as: 'clustering', class: Google::Apis::BigqueryV2::Clustering, decorator: Google::Apis::BigqueryV2::Clustering::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :default_collation, as: 'defaultCollation'
          property :default_rounding_mode, as: 'defaultRoundingMode'
          property :description, as: 'description'
          property :encryption_configuration, as: 'encryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :etag, as: 'etag'
          property :expiration_time, :numeric_string => true, as: 'expirationTime'
          property :external_catalog_table_options, as: 'externalCatalogTableOptions', class: Google::Apis::BigqueryV2::ExternalCatalogTableOptions, decorator: Google::Apis::BigqueryV2::ExternalCatalogTableOptions::Representation
      
          property :external_data_configuration, as: 'externalDataConfiguration', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfiguration::Representation
      
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :location, as: 'location'
          property :managed_table_type, as: 'managedTableType'
          property :materialized_view, as: 'materializedView', class: Google::Apis::BigqueryV2::MaterializedViewDefinition, decorator: Google::Apis::BigqueryV2::MaterializedViewDefinition::Representation
      
          property :materialized_view_status, as: 'materializedViewStatus', class: Google::Apis::BigqueryV2::MaterializedViewStatus, decorator: Google::Apis::BigqueryV2::MaterializedViewStatus::Representation
      
          property :max_staleness, as: 'maxStaleness'
          property :model, as: 'model', class: Google::Apis::BigqueryV2::ModelDefinition, decorator: Google::Apis::BigqueryV2::ModelDefinition::Representation
      
          property :num_active_logical_bytes, :numeric_string => true, as: 'numActiveLogicalBytes'
          property :num_active_physical_bytes, :numeric_string => true, as: 'numActivePhysicalBytes'
          property :num_bytes, :numeric_string => true, as: 'numBytes'
          property :num_current_physical_bytes, :numeric_string => true, as: 'numCurrentPhysicalBytes'
          property :num_long_term_bytes, :numeric_string => true, as: 'numLongTermBytes'
          property :num_long_term_logical_bytes, :numeric_string => true, as: 'numLongTermLogicalBytes'
          property :num_long_term_physical_bytes, :numeric_string => true, as: 'numLongTermPhysicalBytes'
          property :num_partitions, :numeric_string => true, as: 'numPartitions'
          property :num_physical_bytes, :numeric_string => true, as: 'numPhysicalBytes'
          property :num_rows, :numeric_string => true, as: 'numRows'
          property :num_time_travel_physical_bytes, :numeric_string => true, as: 'numTimeTravelPhysicalBytes'
          property :num_total_logical_bytes, :numeric_string => true, as: 'numTotalLogicalBytes'
          property :num_total_physical_bytes, :numeric_string => true, as: 'numTotalPhysicalBytes'
          property :partition_definition, as: 'partitionDefinition', class: Google::Apis::BigqueryV2::PartitioningDefinition, decorator: Google::Apis::BigqueryV2::PartitioningDefinition::Representation
      
          property :range_partitioning, as: 'rangePartitioning', class: Google::Apis::BigqueryV2::RangePartitioning, decorator: Google::Apis::BigqueryV2::RangePartitioning::Representation
      
          collection :replicas, as: 'replicas', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :require_partition_filter, as: 'requirePartitionFilter'
          hash :resource_tags, as: 'resourceTags'
          property :restrictions, as: 'restrictions', class: Google::Apis::BigqueryV2::RestrictionConfig, decorator: Google::Apis::BigqueryV2::RestrictionConfig::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :self_link, as: 'selfLink'
          property :snapshot_definition, as: 'snapshotDefinition', class: Google::Apis::BigqueryV2::SnapshotDefinition, decorator: Google::Apis::BigqueryV2::SnapshotDefinition::Representation
      
          property :streaming_buffer, as: 'streamingBuffer', class: Google::Apis::BigqueryV2::Streamingbuffer, decorator: Google::Apis::BigqueryV2::Streamingbuffer::Representation
      
          property :table_constraints, as: 'tableConstraints', class: Google::Apis::BigqueryV2::TableConstraints, decorator: Google::Apis::BigqueryV2::TableConstraints::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :table_replication_info, as: 'tableReplicationInfo', class: Google::Apis::BigqueryV2::TableReplicationInfo, decorator: Google::Apis::BigqueryV2::TableReplicationInfo::Representation
      
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :type, as: 'type'
          property :view, as: 'view', class: Google::Apis::BigqueryV2::ViewDefinition, decorator: Google::Apis::BigqueryV2::ViewDefinition::Representation
      
        end
      end
      
      class TableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :v, as: 'v'
        end
      end
      
      class TableConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :foreign_keys, as: 'foreignKeys', class: Google::Apis::BigqueryV2::TableConstraints::ForeignKey, decorator: Google::Apis::BigqueryV2::TableConstraints::ForeignKey::Representation
      
          property :primary_key, as: 'primaryKey', class: Google::Apis::BigqueryV2::TableConstraints::PrimaryKey, decorator: Google::Apis::BigqueryV2::TableConstraints::PrimaryKey::Representation
      
        end
        
        class ForeignKey
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :column_references, as: 'columnReferences', class: Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ColumnReference, decorator: Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ColumnReference::Representation
        
            property :name, as: 'name'
            property :referenced_table, as: 'referencedTable', class: Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ReferencedTable, decorator: Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ReferencedTable::Representation
        
          end
          
          class ColumnReference
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :referenced_column, as: 'referencedColumn'
              property :referencing_column, as: 'referencingColumn'
            end
          end
          
          class ReferencedTable
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :dataset_id, as: 'datasetId'
              property :project_id, as: 'projectId'
              property :table_id, as: 'tableId'
            end
          end
        end
        
        class PrimaryKey
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :columns, as: 'columns'
          end
        end
      end
      
      class InsertAllTableDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :kind, as: 'kind'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row, decorator: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row::Representation
      
          property :skip_invalid_rows, as: 'skipInvalidRows'
          property :template_suffix, as: 'templateSuffix'
          property :trace_id, as: 'traceId'
        end
        
        class Row
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :insert_id, as: 'insertId'
            hash :json, as: 'json'
          end
        end
      end
      
      class InsertAllTableDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insert_errors, as: 'insertErrors', class: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError, decorator: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError::Representation
      
          property :kind, as: 'kind'
        end
        
        class InsertError
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
        
            property :index, as: 'index'
          end
        end
      end
      
      class TableDataList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :total_rows, :numeric_string => true, as: 'totalRows'
        end
      end
      
      class TableFieldSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categories, as: 'categories', class: Google::Apis::BigqueryV2::TableFieldSchema::Categories, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Categories::Representation
      
          property :collation, as: 'collation'
          collection :data_policies, as: 'dataPolicies', class: Google::Apis::BigqueryV2::DataPolicyOption, decorator: Google::Apis::BigqueryV2::DataPolicyOption::Representation
      
          property :default_value_expression, as: 'defaultValueExpression'
          property :description, as: 'description'
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
          property :foreign_type_definition, as: 'foreignTypeDefinition'
          property :max_length, :numeric_string => true, as: 'maxLength'
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :policy_tags, as: 'policyTags', class: Google::Apis::BigqueryV2::TableFieldSchema::PolicyTags, decorator: Google::Apis::BigqueryV2::TableFieldSchema::PolicyTags::Representation
      
          property :precision, :numeric_string => true, as: 'precision'
          property :range_element_type, as: 'rangeElementType', class: Google::Apis::BigqueryV2::TableFieldSchema::RangeElementType, decorator: Google::Apis::BigqueryV2::TableFieldSchema::RangeElementType::Representation
      
          property :rounding_mode, as: 'roundingMode'
          property :scale, :numeric_string => true, as: 'scale'
          property :type, as: 'type'
        end
        
        class Categories
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :names, as: 'names'
          end
        end
        
        class PolicyTags
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :names, as: 'names'
          end
        end
        
        class RangeElementType
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :type, as: 'type'
          end
        end
      end
      
      class TableList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BigqueryV2::TableList::Table, decorator: Google::Apis::BigqueryV2::TableList::Table::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        class Table
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :clustering, as: 'clustering', class: Google::Apis::BigqueryV2::Clustering, decorator: Google::Apis::BigqueryV2::Clustering::Representation
        
            property :creation_time, :numeric_string => true, as: 'creationTime'
            property :expiration_time, :numeric_string => true, as: 'expirationTime'
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            hash :labels, as: 'labels'
            property :range_partitioning, as: 'rangePartitioning', class: Google::Apis::BigqueryV2::RangePartitioning, decorator: Google::Apis::BigqueryV2::RangePartitioning::Representation
        
            property :require_partition_filter, as: 'requirePartitionFilter'
            property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
        
            property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
        
            property :type, as: 'type'
            property :view, as: 'view', class: Google::Apis::BigqueryV2::TableList::Table::View, decorator: Google::Apis::BigqueryV2::TableList::Table::View::Representation
        
          end
          
          class View
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :privacy_policy, as: 'privacyPolicy', class: Google::Apis::BigqueryV2::PrivacyPolicy, decorator: Google::Apis::BigqueryV2::PrivacyPolicy::Representation
          
              property :use_legacy_sql, as: 'useLegacySql'
            end
          end
        end
      end
      
      class TableMetadataCacheUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation, as: 'explanation'
          property :staleness, as: 'staleness'
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :table_type, as: 'tableType'
          property :unused_reason, as: 'unusedReason'
        end
      end
      
      class TableReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class TableReplicationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :replicated_source_last_refresh_time, :numeric_string => true, as: 'replicatedSourceLastRefreshTime'
          property :replication_error, as: 'replicationError', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :replication_interval_ms, :numeric_string => true, as: 'replicationIntervalMs'
          property :replication_status, as: 'replicationStatus'
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
        end
      end
      
      class TableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :f, as: 'f', class: Google::Apis::BigqueryV2::TableCell, decorator: Google::Apis::BigqueryV2::TableCell::Representation
      
        end
      end
      
      class TableSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
          property :foreign_type_info, as: 'foreignTypeInfo', class: Google::Apis::BigqueryV2::ForeignTypeInfo, decorator: Google::Apis::BigqueryV2::ForeignTypeInfo::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TimePartitioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_ms, :numeric_string => true, as: 'expirationMs'
          property :field, as: 'field'
          property :require_partition_filter, as: 'requirePartitionFilter'
          property :type, as: 'type'
        end
      end
      
      class TrainingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_fn, as: 'activationFn'
          property :adjust_step_changes, as: 'adjustStepChanges'
          property :approx_global_feature_contrib, as: 'approxGlobalFeatureContrib'
          property :auto_arima, as: 'autoArima'
          property :auto_arima_max_order, :numeric_string => true, as: 'autoArimaMaxOrder'
          property :auto_arima_min_order, :numeric_string => true, as: 'autoArimaMinOrder'
          property :auto_class_weights, as: 'autoClassWeights'
          property :batch_size, :numeric_string => true, as: 'batchSize'
          property :booster_type, as: 'boosterType'
          property :budget_hours, as: 'budgetHours'
          property :calculate_p_values, as: 'calculatePValues'
          property :category_encoding_method, as: 'categoryEncodingMethod'
          property :clean_spikes_and_dips, as: 'cleanSpikesAndDips'
          property :color_space, as: 'colorSpace'
          property :colsample_bylevel, as: 'colsampleBylevel'
          property :colsample_bynode, as: 'colsampleBynode'
          property :colsample_bytree, as: 'colsampleBytree'
          property :contribution_metric, as: 'contributionMetric'
          property :dart_normalize_type, as: 'dartNormalizeType'
          property :data_frequency, as: 'dataFrequency'
          property :data_split_column, as: 'dataSplitColumn'
          property :data_split_eval_fraction, as: 'dataSplitEvalFraction'
          property :data_split_method, as: 'dataSplitMethod'
          property :decompose_time_series, as: 'decomposeTimeSeries'
          collection :dimension_id_columns, as: 'dimensionIdColumns'
          property :distance_type, as: 'distanceType'
          property :dropout, as: 'dropout'
          property :early_stop, as: 'earlyStop'
          property :enable_global_explain, as: 'enableGlobalExplain'
          property :feedback_type, as: 'feedbackType'
          property :fit_intercept, as: 'fitIntercept'
          property :forecast_limit_lower_bound, as: 'forecastLimitLowerBound'
          property :forecast_limit_upper_bound, as: 'forecastLimitUpperBound'
          collection :hidden_units, as: 'hiddenUnits'
          property :holiday_region, as: 'holidayRegion'
          collection :holiday_regions, as: 'holidayRegions'
          property :horizon, :numeric_string => true, as: 'horizon'
          collection :hparam_tuning_objectives, as: 'hparamTuningObjectives'
          property :include_drift, as: 'includeDrift'
          property :initial_learn_rate, as: 'initialLearnRate'
          collection :input_label_columns, as: 'inputLabelColumns'
          property :instance_weight_column, as: 'instanceWeightColumn'
          property :integrated_gradients_num_steps, :numeric_string => true, as: 'integratedGradientsNumSteps'
          property :is_test_column, as: 'isTestColumn'
          property :item_column, as: 'itemColumn'
          property :kmeans_initialization_column, as: 'kmeansInitializationColumn'
          property :kmeans_initialization_method, as: 'kmeansInitializationMethod'
          property :l1_reg_activation, as: 'l1RegActivation'
          property :l1_regularization, as: 'l1Regularization'
          property :l2_regularization, as: 'l2Regularization'
          hash :label_class_weights, as: 'labelClassWeights'
          property :learn_rate, as: 'learnRate'
          property :learn_rate_strategy, as: 'learnRateStrategy'
          property :loss_type, as: 'lossType'
          property :max_iterations, :numeric_string => true, as: 'maxIterations'
          property :max_parallel_trials, :numeric_string => true, as: 'maxParallelTrials'
          property :max_time_series_length, :numeric_string => true, as: 'maxTimeSeriesLength'
          property :max_tree_depth, :numeric_string => true, as: 'maxTreeDepth'
          property :min_apriori_support, as: 'minAprioriSupport'
          property :min_relative_progress, as: 'minRelativeProgress'
          property :min_split_loss, as: 'minSplitLoss'
          property :min_time_series_length, :numeric_string => true, as: 'minTimeSeriesLength'
          property :min_tree_child_weight, :numeric_string => true, as: 'minTreeChildWeight'
          property :model_registry, as: 'modelRegistry'
          property :model_uri, as: 'modelUri'
          property :non_seasonal_order, as: 'nonSeasonalOrder', class: Google::Apis::BigqueryV2::ArimaOrder, decorator: Google::Apis::BigqueryV2::ArimaOrder::Representation
      
          property :num_clusters, :numeric_string => true, as: 'numClusters'
          property :num_factors, :numeric_string => true, as: 'numFactors'
          property :num_parallel_tree, :numeric_string => true, as: 'numParallelTree'
          property :num_principal_components, :numeric_string => true, as: 'numPrincipalComponents'
          property :num_trials, :numeric_string => true, as: 'numTrials'
          property :optimization_strategy, as: 'optimizationStrategy'
          property :optimizer, as: 'optimizer'
          property :pca_explained_variance_ratio, as: 'pcaExplainedVarianceRatio'
          property :pca_solver, as: 'pcaSolver'
          property :sampled_shapley_num_paths, :numeric_string => true, as: 'sampledShapleyNumPaths'
          property :scale_features, as: 'scaleFeatures'
          property :standardize_features, as: 'standardizeFeatures'
          property :subsample, as: 'subsample'
          property :tf_version, as: 'tfVersion'
          property :time_series_data_column, as: 'timeSeriesDataColumn'
          property :time_series_id_column, as: 'timeSeriesIdColumn'
          collection :time_series_id_columns, as: 'timeSeriesIdColumns'
          property :time_series_length_fraction, as: 'timeSeriesLengthFraction'
          property :time_series_timestamp_column, as: 'timeSeriesTimestampColumn'
          property :tree_method, as: 'treeMethod'
          property :trend_smoothing_window_size, :numeric_string => true, as: 'trendSmoothingWindowSize'
          property :user_column, as: 'userColumn'
          collection :vertex_ai_model_version_aliases, as: 'vertexAiModelVersionAliases'
          property :wals_alpha, as: 'walsAlpha'
          property :warm_start, as: 'warmStart'
          property :xgboost_version, as: 'xgboostVersion'
        end
      end
      
      class TrainingRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :class_level_global_explanations, as: 'classLevelGlobalExplanations', class: Google::Apis::BigqueryV2::GlobalExplanation, decorator: Google::Apis::BigqueryV2::GlobalExplanation::Representation
      
          property :data_split_result, as: 'dataSplitResult', class: Google::Apis::BigqueryV2::DataSplitResult, decorator: Google::Apis::BigqueryV2::DataSplitResult::Representation
      
          property :evaluation_metrics, as: 'evaluationMetrics', class: Google::Apis::BigqueryV2::EvaluationMetrics, decorator: Google::Apis::BigqueryV2::EvaluationMetrics::Representation
      
          property :model_level_global_explanation, as: 'modelLevelGlobalExplanation', class: Google::Apis::BigqueryV2::GlobalExplanation, decorator: Google::Apis::BigqueryV2::GlobalExplanation::Representation
      
          collection :results, as: 'results', class: Google::Apis::BigqueryV2::IterationResult, decorator: Google::Apis::BigqueryV2::IterationResult::Representation
      
          property :start_time, as: 'startTime'
          property :training_options, as: 'trainingOptions', class: Google::Apis::BigqueryV2::TrainingOptions, decorator: Google::Apis::BigqueryV2::TrainingOptions::Representation
      
          property :training_start_time, :numeric_string => true, as: 'trainingStartTime'
          property :vertex_ai_model_id, as: 'vertexAiModelId'
          property :vertex_ai_model_version, as: 'vertexAiModelVersion'
        end
      end
      
      class TransactionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction_id, as: 'transactionId'
        end
      end
      
      class TransformColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :transform_sql, as: 'transformSql'
          property :type, as: 'type', class: Google::Apis::BigqueryV2::StandardSqlDataType, decorator: Google::Apis::BigqueryV2::StandardSqlDataType::Representation
      
        end
      end
      
      class UndeleteDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_time, as: 'deletionTime'
        end
      end
      
      class UserDefinedFunctionResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_code, as: 'inlineCode'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class VectorSearchStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :index_unused_reasons, as: 'indexUnusedReasons', class: Google::Apis::BigqueryV2::IndexUnusedReason, decorator: Google::Apis::BigqueryV2::IndexUnusedReason::Representation
      
          property :index_usage_mode, as: 'indexUsageMode'
          collection :stored_columns_usages, as: 'storedColumnsUsages', class: Google::Apis::BigqueryV2::StoredColumnsUsage, decorator: Google::Apis::BigqueryV2::StoredColumnsUsage::Representation
      
        end
      end
      
      class ViewDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :foreign_definitions, as: 'foreignDefinitions', class: Google::Apis::BigqueryV2::ForeignViewDefinition, decorator: Google::Apis::BigqueryV2::ForeignViewDefinition::Representation
      
          property :privacy_policy, as: 'privacyPolicy', class: Google::Apis::BigqueryV2::PrivacyPolicy, decorator: Google::Apis::BigqueryV2::PrivacyPolicy::Representation
      
          property :query, as: 'query'
          property :use_explicit_column_names, as: 'useExplicitColumnNames'
          property :use_legacy_sql, as: 'useLegacySql'
          collection :user_defined_function_resources, as: 'userDefinedFunctionResources', class: Google::Apis::BigqueryV2::UserDefinedFunctionResource, decorator: Google::Apis::BigqueryV2::UserDefinedFunctionResource::Representation
      
        end
      end
    end
  end
end
