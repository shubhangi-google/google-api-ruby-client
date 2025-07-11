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
    module BigtableadminV2
      
      class AppProfile
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
      
      class AuthorizedView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomatedBackupPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingTargets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangeStreamConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckConsistencyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckConsistencyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterAutoscalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnFamilyStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAuthorizedViewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAuthorizedViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLogicalViewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLogicalViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateMaterializedViewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateMaterializedViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSchemaBundleMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataBoostIsolationReadOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataBoostReadLocalWrites
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DropRowRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConsistencyTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConsistencyTokenResponse
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
      
      class GoogleBigtableAdminV2AuthorizedViewFamilySubsets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2AuthorizedViewSubsetView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeAggregate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeAggregateMax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeAggregateMin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeAggregateSum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeBool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeBytesEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeBytesEncodingRaw
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeFloat32
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeFloat64
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeInt64
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeInt64Encoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStringEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStructEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingSingleton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeStructField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeTimestamp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBigtableAdminV2TypeTimestampEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HotTablet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Intersection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthorizedViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHotTabletsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogicalViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMaterializedViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchemaBundlesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogicalView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Modification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyColumnFamiliesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClusterRoutingUseAny
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptimizeRestoredTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProtoSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaBundle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleClusterRouting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Split
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardIsolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardReadRemoteWrites
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableStats
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
      
      class TieredStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TieredStorageRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Union
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAppProfileMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAuthorizedViewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAuthorizedViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateLogicalViewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateLogicalViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSchemaBundleMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_boost_isolation_read_only, as: 'dataBoostIsolationReadOnly', class: Google::Apis::BigtableadminV2::DataBoostIsolationReadOnly, decorator: Google::Apis::BigtableadminV2::DataBoostIsolationReadOnly::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :multi_cluster_routing_use_any, as: 'multiClusterRoutingUseAny', class: Google::Apis::BigtableadminV2::MultiClusterRoutingUseAny, decorator: Google::Apis::BigtableadminV2::MultiClusterRoutingUseAny::Representation
      
          property :name, as: 'name'
          property :priority, as: 'priority'
          property :single_cluster_routing, as: 'singleClusterRouting', class: Google::Apis::BigtableadminV2::SingleClusterRouting, decorator: Google::Apis::BigtableadminV2::SingleClusterRouting::Representation
      
          property :standard_isolation, as: 'standardIsolation', class: Google::Apis::BigtableadminV2::StandardIsolation, decorator: Google::Apis::BigtableadminV2::StandardIsolation::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BigtableadminV2::AuditLogConfig, decorator: Google::Apis::BigtableadminV2::AuditLogConfig::Representation
      
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
      
      class AuthorizedView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_protection, as: 'deletionProtection'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :subset_view, as: 'subsetView', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewSubsetView, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewSubsetView::Representation
      
        end
      end
      
      class AutomatedBackupPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
          property :retention_period, as: 'retentionPeriod'
        end
      end
      
      class AutoscalingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_serve_nodes, as: 'maxServeNodes'
          property :min_serve_nodes, as: 'minServeNodes'
        end
      end
      
      class AutoscalingTargets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_percent, as: 'cpuUtilizationPercent'
          property :storage_utilization_gib_per_node, as: 'storageUtilizationGibPerNode'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_type, as: 'backupType'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::BigtableadminV2::EncryptionInfo, decorator: Google::Apis::BigtableadminV2::EncryptionInfo::Representation
      
          property :end_time, as: 'endTime'
          property :expire_time, as: 'expireTime'
          property :hot_to_standard_time, as: 'hotToStandardTime'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :source_backup, as: 'sourceBackup'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class BackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :end_time, as: 'endTime'
          property :source_backup, as: 'sourceBackup'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BigtableadminV2::Expr, decorator: Google::Apis::BigtableadminV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ChangeStreamConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_period, as: 'retentionPeriod'
        end
      end
      
      class CheckConsistencyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistency_token, as: 'consistencyToken'
          property :data_boost_read_local_writes, as: 'dataBoostReadLocalWrites', class: Google::Apis::BigtableadminV2::DataBoostReadLocalWrites, decorator: Google::Apis::BigtableadminV2::DataBoostReadLocalWrites::Representation
      
          property :standard_read_remote_writes, as: 'standardReadRemoteWrites', class: Google::Apis::BigtableadminV2::StandardReadRemoteWrites, decorator: Google::Apis::BigtableadminV2::StandardReadRemoteWrites::Representation
      
        end
      end
      
      class CheckConsistencyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistent, as: 'consistent'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_config, as: 'clusterConfig', class: Google::Apis::BigtableadminV2::ClusterConfig, decorator: Google::Apis::BigtableadminV2::ClusterConfig::Representation
      
          property :default_storage_type, as: 'defaultStorageType'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::BigtableadminV2::EncryptionConfig, decorator: Google::Apis::BigtableadminV2::EncryptionConfig::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :node_scaling_factor, as: 'nodeScalingFactor'
          property :serve_nodes, as: 'serveNodes'
          property :state, as: 'state'
        end
      end
      
      class ClusterAutoscalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_limits, as: 'autoscalingLimits', class: Google::Apis::BigtableadminV2::AutoscalingLimits, decorator: Google::Apis::BigtableadminV2::AutoscalingLimits::Representation
      
          property :autoscaling_targets, as: 'autoscalingTargets', class: Google::Apis::BigtableadminV2::AutoscalingTargets, decorator: Google::Apis::BigtableadminV2::AutoscalingTargets::Representation
      
        end
      end
      
      class ClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_autoscaling_config, as: 'clusterAutoscalingConfig', class: Google::Apis::BigtableadminV2::ClusterAutoscalingConfig, decorator: Google::Apis::BigtableadminV2::ClusterAutoscalingConfig::Representation
      
        end
      end
      
      class ClusterState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :encryption_info, as: 'encryptionInfo', class: Google::Apis::BigtableadminV2::EncryptionInfo, decorator: Google::Apis::BigtableadminV2::EncryptionInfo::Representation
      
          property :replication_state, as: 'replicationState'
        end
      end
      
      class ColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gc_rule, as: 'gcRule', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
          property :stats, as: 'stats', class: Google::Apis::BigtableadminV2::ColumnFamilyStats, decorator: Google::Apis::BigtableadminV2::ColumnFamilyStats::Representation
      
          property :value_type, as: 'valueType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
        end
      end
      
      class ColumnFamilyStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_cells_per_column, as: 'averageCellsPerColumn'
          property :average_columns_per_row, as: 'averageColumnsPerRow'
          property :logical_data_bytes, :numeric_string => true, as: 'logicalDataBytes'
        end
      end
      
      class CopyBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
          property :source_backup_info, as: 'sourceBackupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
        end
      end
      
      class CopyBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :expire_time, as: 'expireTime'
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class CreateAuthorizedViewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateAuthorizedViewRequest, decorator: Google::Apis::BigtableadminV2::CreateAuthorizedViewRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class CreateAuthorizedViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_view, as: 'authorizedView', class: Google::Apis::BigtableadminV2::AuthorizedView, decorator: Google::Apis::BigtableadminV2::AuthorizedView::Representation
      
          property :authorized_view_id, as: 'authorizedViewId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateClusterRequest, decorator: Google::Apis::BigtableadminV2::CreateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
          hash :tables, as: 'tables', class: Google::Apis::BigtableadminV2::TableProgress, decorator: Google::Apis::BigtableadminV2::TableProgress::Representation
      
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateInstanceRequest, decorator: Google::Apis::BigtableadminV2::CreateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class CreateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :clusters, as: 'clusters', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :instance_id, as: 'instanceId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateLogicalViewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateLogicalViewRequest, decorator: Google::Apis::BigtableadminV2::CreateLogicalViewRequest::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateLogicalViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logical_view, as: 'logicalView', class: Google::Apis::BigtableadminV2::LogicalView, decorator: Google::Apis::BigtableadminV2::LogicalView::Representation
      
          property :logical_view_id, as: 'logicalViewId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateMaterializedViewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateMaterializedViewRequest, decorator: Google::Apis::BigtableadminV2::CreateMaterializedViewRequest::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateMaterializedViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :materialized_view, as: 'materializedView', class: Google::Apis::BigtableadminV2::MaterializedView, decorator: Google::Apis::BigtableadminV2::MaterializedView::Representation
      
          property :materialized_view_id, as: 'materializedViewId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateSchemaBundleMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :initial_splits, as: 'initialSplits', class: Google::Apis::BigtableadminV2::Split, decorator: Google::Apis::BigtableadminV2::Split::Representation
      
          property :table, as: 'table', class: Google::Apis::BigtableadminV2::Table, decorator: Google::Apis::BigtableadminV2::Table::Representation
      
          property :table_id, as: 'tableId'
        end
      end
      
      class DataBoostIsolationReadOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_billing_owner, as: 'computeBillingOwner'
        end
      end
      
      class DataBoostReadLocalWrites
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DropRowRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_all_data_from_table, as: 'deleteAllDataFromTable'
          property :row_key_prefix, :base64 => true, as: 'rowKeyPrefix'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_status, as: 'encryptionStatus', class: Google::Apis::BigtableadminV2::Status, decorator: Google::Apis::BigtableadminV2::Status::Representation
      
          property :encryption_type, as: 'encryptionType'
          property :kms_key_version, as: 'kmsKeyVersion'
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
      
      class GcRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intersection, as: 'intersection', class: Google::Apis::BigtableadminV2::Intersection, decorator: Google::Apis::BigtableadminV2::Intersection::Representation
      
          property :max_age, as: 'maxAge'
          property :max_num_versions, as: 'maxNumVersions'
          property :union, as: 'union', class: Google::Apis::BigtableadminV2::Union, decorator: Google::Apis::BigtableadminV2::Union::Representation
      
        end
      end
      
      class GenerateConsistencyTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GenerateConsistencyTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistency_token, as: 'consistencyToken'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::BigtableadminV2::GetPolicyOptions, decorator: Google::Apis::BigtableadminV2::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleBigtableAdminV2AuthorizedViewFamilySubsets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :qualifier_prefixes, as: 'qualifierPrefixes'
          collection :qualifiers, as: 'qualifiers'
        end
      end
      
      class GoogleBigtableAdminV2AuthorizedViewSubsetView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :family_subsets, as: 'familySubsets', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewFamilySubsets, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewFamilySubsets::Representation
      
          collection :row_prefixes, as: 'rowPrefixes'
        end
      end
      
      class GoogleBigtableAdminV2TypeAggregate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hllpp_unique_count, as: 'hllppUniqueCount', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount::Representation
      
          property :input_type, as: 'inputType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
          property :max, as: 'max', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMax, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMax::Representation
      
          property :min, as: 'min', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMin, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMin::Representation
      
          property :state_type, as: 'stateType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
          property :sum, as: 'sum', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateSum, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateSum::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeAggregateMax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeAggregateMin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeAggregateSum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :element_type, as: 'elementType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeBool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncoding::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeBytesEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :raw, as: 'raw', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncodingRaw, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncodingRaw::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeBytesEncodingRaw
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :escape_nulls, as: 'escapeNulls'
        end
      end
      
      class GoogleBigtableAdminV2TypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeFloat32
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeFloat64
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeInt64
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeInt64Encoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_endian_bytes, as: 'bigEndianBytes', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes::Representation
      
          property :ordered_code_bytes, as: 'orderedCodeBytes', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_type, as: 'bytesType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_type, as: 'keyType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
          property :value_type, as: 'valueType', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncoding::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeStringEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utf8_bytes, as: 'utf8Bytes', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes::Representation
      
          property :utf8_raw, as: 'utf8Raw', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Raw, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Raw::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :null_escape_char, as: 'nullEscapeChar'
        end
      end
      
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncoding::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructField, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructField::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeStructEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimited_bytes, as: 'delimitedBytes', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes::Representation
      
          property :ordered_code_bytes, as: 'orderedCodeBytes', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes::Representation
      
          property :singleton, as: 'singleton', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingSingleton, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingSingleton::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, :base64 => true, as: 'delimiter'
        end
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeStructEncodingSingleton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleBigtableAdminV2TypeStructField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :type, as: 'type', class: Google::Apis::BigtableadminV2::Type, decorator: Google::Apis::BigtableadminV2::Type::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeTimestamp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestampEncoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestampEncoding::Representation
      
        end
      end
      
      class GoogleBigtableAdminV2TypeTimestampEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unix_micros_int64, as: 'unixMicrosInt64', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding::Representation
      
        end
      end
      
      class HotTablet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_key, as: 'endKey'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :node_cpu_usage_percent, as: 'nodeCpuUsagePercent'
          property :start_key, as: 'startKey'
          property :start_time, as: 'startTime'
          property :table_name, as: 'tableName'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class Intersection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
        end
      end
      
      class ListAppProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_profiles, as: 'appProfiles', class: Google::Apis::BigtableadminV2::AppProfile, decorator: Google::Apis::BigtableadminV2::AppProfile::Representation
      
          collection :failed_locations, as: 'failedLocations'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAuthorizedViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_views, as: 'authorizedViews', class: Google::Apis::BigtableadminV2::AuthorizedView, decorator: Google::Apis::BigtableadminV2::AuthorizedView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::BigtableadminV2::Backup, decorator: Google::Apis::BigtableadminV2::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          collection :failed_locations, as: 'failedLocations'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListHotTabletsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hot_tablets, as: 'hotTablets', class: Google::Apis::BigtableadminV2::HotTablet, decorator: Google::Apis::BigtableadminV2::HotTablet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_locations, as: 'failedLocations'
          collection :instances, as: 'instances', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BigtableadminV2::Location, decorator: Google::Apis::BigtableadminV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogicalViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logical_views, as: 'logicalViews', class: Google::Apis::BigtableadminV2::LogicalView, decorator: Google::Apis::BigtableadminV2::LogicalView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMaterializedViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :materialized_views, as: 'materializedViews', class: Google::Apis::BigtableadminV2::MaterializedView, decorator: Google::Apis::BigtableadminV2::MaterializedView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BigtableadminV2::Operation, decorator: Google::Apis::BigtableadminV2::Operation::Representation
      
        end
      end
      
      class ListSchemaBundlesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schema_bundles, as: 'schemaBundles', class: Google::Apis::BigtableadminV2::SchemaBundle, decorator: Google::Apis::BigtableadminV2::SchemaBundle::Representation
      
        end
      end
      
      class ListTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BigtableadminV2::Table, decorator: Google::Apis::BigtableadminV2::Table::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LogicalView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_protection, as: 'deletionProtection'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :query, as: 'query'
        end
      end
      
      class MaterializedView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_protection, as: 'deletionProtection'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :query, as: 'query'
        end
      end
      
      class Modification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create, as: 'create', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
          property :drop, as: 'drop'
          property :id, as: 'id'
          property :update, as: 'update', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ModifyColumnFamiliesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_warnings, as: 'ignoreWarnings'
          collection :modifications, as: 'modifications', class: Google::Apis::BigtableadminV2::Modification, decorator: Google::Apis::BigtableadminV2::Modification::Representation
      
        end
      end
      
      class MultiClusterRoutingUseAny
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_ids, as: 'clusterIds'
          property :row_affinity, as: 'rowAffinity', class: Google::Apis::BigtableadminV2::RowAffinity, decorator: Google::Apis::BigtableadminV2::RowAffinity::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BigtableadminV2::Status, decorator: Google::Apis::BigtableadminV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class OptimizeRestoredTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
        end
      end
      
      class PartialUpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::PartialUpdateClusterRequest, decorator: Google::Apis::BigtableadminV2::PartialUpdateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class PartialUpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class PartialUpdateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BigtableadminV2::AuditConfig, decorator: Google::Apis::BigtableadminV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BigtableadminV2::Binding, decorator: Google::Apis::BigtableadminV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProtoSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proto_descriptors, :base64 => true, as: 'protoDescriptors'
        end
      end
      
      class RestoreInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class RestoreTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
          property :name, as: 'name'
          property :optimize_table_operation_name, as: 'optimizeTableOperationName'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class RestoreTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :table_id, as: 'tableId'
        end
      end
      
      class RowAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SchemaBundle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :proto_schema, as: 'protoSchema', class: Google::Apis::BigtableadminV2::ProtoSchema, decorator: Google::Apis::BigtableadminV2::ProtoSchema::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BigtableadminV2::Policy, decorator: Google::Apis::BigtableadminV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SingleClusterRouting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_transactional_writes, as: 'allowTransactionalWrites'
          property :cluster_id, as: 'clusterId'
        end
      end
      
      class Split
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
        end
      end
      
      class StandardIsolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
        end
      end
      
      class StandardReadRemoteWrites
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_policy, as: 'automatedBackupPolicy', class: Google::Apis::BigtableadminV2::AutomatedBackupPolicy, decorator: Google::Apis::BigtableadminV2::AutomatedBackupPolicy::Representation
      
          property :change_stream_config, as: 'changeStreamConfig', class: Google::Apis::BigtableadminV2::ChangeStreamConfig, decorator: Google::Apis::BigtableadminV2::ChangeStreamConfig::Representation
      
          hash :cluster_states, as: 'clusterStates', class: Google::Apis::BigtableadminV2::ClusterState, decorator: Google::Apis::BigtableadminV2::ClusterState::Representation
      
          hash :column_families, as: 'columnFamilies', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
          property :deletion_protection, as: 'deletionProtection'
          property :granularity, as: 'granularity'
          property :name, as: 'name'
          property :restore_info, as: 'restoreInfo', class: Google::Apis::BigtableadminV2::RestoreInfo, decorator: Google::Apis::BigtableadminV2::RestoreInfo::Representation
      
          property :row_key_schema, as: 'rowKeySchema', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct::Representation
      
          property :stats, as: 'stats', class: Google::Apis::BigtableadminV2::TableStats, decorator: Google::Apis::BigtableadminV2::TableStats::Representation
      
          property :tiered_storage_config, as: 'tieredStorageConfig', class: Google::Apis::BigtableadminV2::TieredStorageConfig, decorator: Google::Apis::BigtableadminV2::TieredStorageConfig::Representation
      
        end
      end
      
      class TableProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_copied_bytes, :numeric_string => true, as: 'estimatedCopiedBytes'
          property :estimated_size_bytes, :numeric_string => true, as: 'estimatedSizeBytes'
          property :state, as: 'state'
        end
      end
      
      class TableStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_cells_per_column, as: 'averageCellsPerColumn'
          property :average_columns_per_row, as: 'averageColumnsPerRow'
          property :logical_data_bytes, :numeric_string => true, as: 'logicalDataBytes'
          property :row_count, :numeric_string => true, as: 'rowCount'
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
      
      class TieredStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :infrequent_access, as: 'infrequentAccess', class: Google::Apis::BigtableadminV2::TieredStorageRule, decorator: Google::Apis::BigtableadminV2::TieredStorageRule::Representation
      
        end
      end
      
      class TieredStorageRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_if_older_than, as: 'includeIfOlderThan'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_type, as: 'aggregateType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregate, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregate::Representation
      
          property :array_type, as: 'arrayType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeArray, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeArray::Representation
      
          property :bool_type, as: 'boolType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBool, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBool::Representation
      
          property :bytes_type, as: 'bytesType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes::Representation
      
          property :date_type, as: 'dateType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeDate, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeDate::Representation
      
          property :float32_type, as: 'float32Type', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat32, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat32::Representation
      
          property :float64_type, as: 'float64Type', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat64, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat64::Representation
      
          property :int64_type, as: 'int64Type', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64::Representation
      
          property :map_type, as: 'mapType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeMap, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeMap::Representation
      
          property :string_type, as: 'stringType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeString, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeString::Representation
      
          property :struct_type, as: 'structType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct::Representation
      
          property :timestamp_type, as: 'timestampType', class: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestamp, decorator: Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestamp::Representation
      
        end
      end
      
      class UndeleteTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class UndeleteTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Union
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
        end
      end
      
      class UpdateAppProfileMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateAuthorizedViewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::UpdateAuthorizedViewRequest, decorator: Google::Apis::BigtableadminV2::UpdateAuthorizedViewRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateAuthorizedViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_view, as: 'authorizedView', class: Google::Apis::BigtableadminV2::AuthorizedView, decorator: Google::Apis::BigtableadminV2::AuthorizedView::Representation
      
          property :ignore_warnings, as: 'ignoreWarnings'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::PartialUpdateInstanceRequest, decorator: Google::Apis::BigtableadminV2::PartialUpdateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateLogicalViewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::UpdateLogicalViewRequest, decorator: Google::Apis::BigtableadminV2::UpdateLogicalViewRequest::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateLogicalViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logical_view, as: 'logicalView', class: Google::Apis::BigtableadminV2::LogicalView, decorator: Google::Apis::BigtableadminV2::LogicalView::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateSchemaBundleMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
    end
  end
end
