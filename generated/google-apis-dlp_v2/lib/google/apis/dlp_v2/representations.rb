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
    module DlpV2
      
      class GooglePrivacyDlpV2Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ActionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ActivateJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AllInfoTypes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AllOtherBigQueryTables
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AllOtherDatabaseResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AllOtherResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AllText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AmazonS3Bucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AmazonS3BucketConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AmazonS3BucketRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AuxiliaryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AwsAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AwsAccountRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2AwsDiscoveryStartingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryRegexes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryTableCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BigQueryTableTypes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Bucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2BucketingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ByteContentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CancelDlpJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CategoricalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CategoricalStatsHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CategoricalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CharacterMaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CharsToIgnore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudSqlDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudSqlIamCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudSqlProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageFileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStoragePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageRegexFileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CloudStorageResourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ColumnDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Conditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ContentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ContentLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateConnectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateDiscoveryConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateDlpJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateInspectTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CreateStoredInfoTypeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CryptoDeterministicConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CryptoHashConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2CustomInfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileBigQueryRowSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileConfigSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileFindingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileFindingRecordLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfileLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfilePubSubCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataProfilePubSubMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataRiskLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DataSourceType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatabaseResourceCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatabaseResourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatabaseResourceRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatabaseResourceRegexes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatastoreKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DatastoreOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DateShiftConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Deidentify
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyDataSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyDataSourceStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeidentifyTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DetectionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Dictionary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Disabled
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryBigQueryConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryBigQueryFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryFileStoreConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryGenerationCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryStartingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryTableModifiedCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DlpJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2DocumentLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Domain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2EntityId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ExcludeByHotword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ExcludeInfoTypes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ExclusionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Export
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Expressions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FieldId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FieldTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileClusterSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileClusterType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileExtensionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileStoreCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileStoreDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileStoreInfoTypeSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileStoreRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FileStoreRegexes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FindingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FinishDlpJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2FixedSizeBucketingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2GlobalProcessing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HotwordRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridContentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridFindingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridInspectDlpJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridInspectJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridInspectResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridInspectStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2HybridOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ImageFallbackLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ImageLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ImageRedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ImageTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ImageTransformations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeLikelihood
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InfoTypeTransformations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectDataSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2InspectionRuleSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2JobNotificationEmails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2JobTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KAnonymityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KAnonymityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KAnonymityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KAnonymityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KMapEstimationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KMapEstimationHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KMapEstimationQuasiIdValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KMapEstimationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2KmsWrappedCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LDiversityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LDiversityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LDiversityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LDiversityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LargeCustomDictionaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LargeCustomDictionaryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LeaveUntransformed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2LikelihoodAdjustment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListColumnDataProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListDiscoveryConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListDlpJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListInfoTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListInspectTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListJobTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListProjectDataProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListStoredInfoTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ListTableDataProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Manual
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2MetadataLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2MultiRegionProcessing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2NumericalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2NumericalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OrConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OrgConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceRegexes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherCloudSingleResourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OtherInfoTypeSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2OutputStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PrimitiveTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PrivacyMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ProcessingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ProfileStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ProjectDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Proximity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PubSubCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PubSubExpressions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PubSubNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishSummaryToCscc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishToChronicle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishToDataplexCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishToPubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishToSecurityCommandCenter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2PublishToStackdriver
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2QuasiId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2QuasiIdField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2QuasiIdentifierField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2QuoteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordSuppression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RecordTransformations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RedactConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RedactImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RedactImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Regex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ReidentifyContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ReidentifyContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RelatedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ReplaceDictionaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ReplaceValueConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RequestedDeidentifyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RequestedOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RequestedRiskAnalysisOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2RiskAnalysisJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SaveFindings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SaveToGcsFindingsOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SchemaModifiedCadence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SearchConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SecretManagerCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SecretsDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SelectedInfoTypes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SensitivityScore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StatisticalTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StorageMetadataLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StoredInfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2StoredType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SummaryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2SurrogateType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TableDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TableLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TableReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TagCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TagResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TagValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TaggedField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ThrowError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TimePartConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TimespanConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationDetailsStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationErrorHandling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationOverview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationResultStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransformationSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2TransientCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UnwrappedCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateConnectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateInspectTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2ValueFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VersionDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VertexDatasetCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VertexDatasetRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VertexDatasetRegexes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2VertexDatasetResourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2WordList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify, as: 'deidentify', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Deidentify, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Deidentify::Representation
      
          property :job_notification_emails, as: 'jobNotificationEmails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2JobNotificationEmails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2JobNotificationEmails::Representation
      
          property :pub_sub, as: 'pubSub', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToPubSub, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToPubSub::Representation
      
          property :publish_findings_to_cloud_data_catalog, as: 'publishFindingsToCloudDataCatalog', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog::Representation
      
          property :publish_summary_to_cscc, as: 'publishSummaryToCscc', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishSummaryToCscc, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishSummaryToCscc::Representation
      
          property :publish_to_stackdriver, as: 'publishToStackdriver', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToStackdriver, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToStackdriver::Representation
      
          property :save_findings, as: 'saveFindings', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SaveFindings, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SaveFindings::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ActionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_details, as: 'deidentifyDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceDetails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceDetails::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ActivateJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AllInfoTypes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AllOtherBigQueryTables
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AllOtherDatabaseResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AllOtherResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AllText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2AmazonS3Bucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_account, as: 'awsAccount', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccount, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccount::Representation
      
          property :bucket_name, as: 'bucketName'
        end
      end
      
      class GooglePrivacyDlpV2AmazonS3BucketConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_types, as: 'bucketTypes'
          collection :object_storage_classes, as: 'objectStorageClasses'
        end
      end
      
      class GooglePrivacyDlpV2AmazonS3BucketRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_account_regex, as: 'awsAccountRegex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccountRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccountRegex::Representation
      
          property :bucket_name_regex, as: 'bucketNameRegex'
        end
      end
      
      class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_result, as: 'categoricalStatsResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsResult::Representation
      
          property :delta_presence_estimation_result, as: 'deltaPresenceEstimationResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationResult::Representation
      
          property :k_anonymity_result, as: 'kAnonymityResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityResult::Representation
      
          property :k_map_estimation_result, as: 'kMapEstimationResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationResult::Representation
      
          property :l_diversity_result, as: 'lDiversityResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityResult::Representation
      
          property :numerical_stats_result, as: 'numericalStatsResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsResult::Representation
      
          property :requested_options, as: 'requestedOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedRiskAnalysisOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedRiskAnalysisOptions::Representation
      
          property :requested_privacy_metric, as: 'requestedPrivacyMetric', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric::Representation
      
          property :requested_source_table, as: 'requestedSourceTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2AuxiliaryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdField, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdField::Representation
      
          property :relative_frequency, as: 'relativeFrequency', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2AwsAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
        end
      end
      
      class GooglePrivacyDlpV2AwsAccountRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id_regex, as: 'accountIdRegex'
        end
      end
      
      class GooglePrivacyDlpV2AwsDiscoveryStartingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :all_asset_inventory_assets, as: 'allAssetInventoryAssets'
        end
      end
      
      class GooglePrivacyDlpV2BigQueryDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cadence, as: 'cadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryGenerationCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryGenerationCadence::Representation
      
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryConditions::Representation
      
          property :disabled, as: 'disabled', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryFilter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryFilter::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_number, :numeric_string => true, as: 'rowNumber'
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_fields, as: 'excludedFields', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          collection :identifying_fields, as: 'identifyingFields', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          collection :included_fields, as: 'includedFields', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :rows_limit, :numeric_string => true, as: 'rowsLimit'
          property :rows_limit_percent, as: 'rowsLimitPercent'
          property :sample_method, as: 'sampleMethod'
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id_regex, as: 'datasetIdRegex'
          property :project_id_regex, as: 'projectIdRegex'
          property :table_id_regex, as: 'tableIdRegex'
        end
      end
      
      class GooglePrivacyDlpV2BigQueryRegexes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patterns, as: 'patterns', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2BigQueryTableCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_regexes, as: 'includeRegexes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegexes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegexes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BigQueryTableTypes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :types, as: 'types'
        end
      end
      
      class GooglePrivacyDlpV2BoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :left, as: 'left'
          property :top, as: 'top'
          property :width, as: 'width'
        end
      end
      
      class GooglePrivacyDlpV2Bucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          property :min, as: 'min', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          property :replacement_value, as: 'replacementValue', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2BucketingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Bucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Bucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ByteContentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :type, as: 'type'
        end
      end
      
      class GooglePrivacyDlpV2CancelDlpJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2CategoricalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CategoricalStatsHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          property :bucket_value_count, :numeric_string => true, as: 'bucketValueCount'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency::Representation
      
          property :value_frequency_lower_bound, :numeric_string => true, as: 'valueFrequencyLowerBound'
          property :value_frequency_upper_bound, :numeric_string => true, as: 'valueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2CategoricalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value_frequency_histogram_buckets, as: 'valueFrequencyHistogramBuckets', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsHistogramBucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CharacterMaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :characters_to_ignore, as: 'charactersToIgnore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CharsToIgnore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CharsToIgnore::Representation
      
          property :masking_character, as: 'maskingCharacter'
          property :number_to_mask, as: 'numberToMask'
          property :reverse_order, as: 'reverseOrder'
        end
      end
      
      class GooglePrivacyDlpV2CharsToIgnore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :characters_to_skip, as: 'charactersToSkip'
          property :common_characters_to_ignore, as: 'commonCharactersToIgnore'
        end
      end
      
      class GooglePrivacyDlpV2CloudSqlDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlConditions::Representation
      
          property :disabled, as: 'disabled', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlFilter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlFilter::Representation
      
          property :generation_cadence, as: 'generationCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CloudSqlIamCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2CloudSqlProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_iam, as: 'cloudSqlIam', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlIamCredential, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlIamCredential::Representation
      
          property :connection_name, as: 'connectionName'
          property :database_engine, as: 'databaseEngine'
          property :max_connections, as: 'maxConnections'
          property :username_password, as: 'usernamePassword', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SecretManagerCredential, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SecretManagerCredential::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryFileStoreConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryFileStoreConditions::Representation
      
          property :disabled, as: 'disabled', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageFilter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageFilter::Representation
      
          property :generation_cadence, as: 'generationCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageFileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_limit_per_file, :numeric_string => true, as: 'bytesLimitPerFile'
          property :bytes_limit_per_file_percent, as: 'bytesLimitPerFilePercent'
          property :file_set, as: 'fileSet', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileSet, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileSet::Representation
      
          collection :file_types, as: 'fileTypes'
          property :files_limit_percent, as: 'filesLimitPercent'
          property :sample_method, as: 'sampleMethod'
        end
      end
      
      class GooglePrivacyDlpV2CloudStoragePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name_regex, as: 'bucketNameRegex'
          property :project_id_regex, as: 'projectIdRegex'
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageRegexFileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          collection :exclude_regex, as: 'excludeRegex'
          collection :include_regex, as: 'includeRegex'
        end
      end
      
      class GooglePrivacyDlpV2CloudStorageResourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GooglePrivacyDlpV2ColumnDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :column_info_type, as: 'columnInfoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary::Representation
      
          property :column_type, as: 'columnType'
          property :data_risk_level, as: 'dataRiskLevel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel::Representation
      
          property :dataset_id, as: 'datasetId'
          property :dataset_location, as: 'datasetLocation'
          property :dataset_project_id, as: 'datasetProjectId'
          property :estimated_null_percentage, as: 'estimatedNullPercentage'
          property :estimated_uniqueness_score, as: 'estimatedUniquenessScore'
          property :free_text_score, as: 'freeTextScore'
          property :name, as: 'name'
          collection :other_matches, as: 'otherMatches', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary::Representation
      
          property :policy_state, as: 'policyState'
          property :profile_last_generated, as: 'profileLastGenerated'
          property :profile_status, as: 'profileStatus', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus::Representation
      
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :state, as: 'state'
          property :table_data_profile, as: 'tableDataProfile'
          property :table_full_resource, as: 'tableFullResource'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :operator, as: 'operator'
          property :value, as: 'value', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Conditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Condition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Condition::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql, as: 'cloudSql', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlProperties, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlProperties::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GooglePrivacyDlpV2Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_path, as: 'fullPath'
          property :project_id, as: 'projectId'
          property :relative_path, as: 'relativePath'
          property :root_path, as: 'rootPath'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
        end
      end
      
      class GooglePrivacyDlpV2ContentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_item, as: 'byteItem', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Table, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Table::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GooglePrivacyDlpV2ContentLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_name, as: 'containerName'
          property :container_timestamp, as: 'containerTimestamp'
          property :container_version, as: 'containerVersion'
          property :document_location, as: 'documentLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DocumentLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DocumentLocation::Representation
      
          property :image_location, as: 'imageLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageLocation::Representation
      
          property :metadata_location, as: 'metadataLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2MetadataLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2MetadataLocation::Representation
      
          property :record_location, as: 'recordLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CreateConnectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
          property :location_id, as: 'locationId'
          property :template_id, as: 'templateId'
        end
      end
      
      class GooglePrivacyDlpV2CreateDiscoveryConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_id, as: 'configId'
          property :discovery_config, as: 'discoveryConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CreateDlpJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_job, as: 'inspectJob', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig::Representation
      
          property :job_id, as: 'jobId'
          property :location_id, as: 'locationId'
          property :risk_job, as: 'riskJob', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CreateInspectTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template, as: 'inspectTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
      
          property :location_id, as: 'locationId'
          property :template_id, as: 'templateId'
        end
      end
      
      class GooglePrivacyDlpV2CreateJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_trigger, as: 'jobTrigger', class: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
      
          property :location_id, as: 'locationId'
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class GooglePrivacyDlpV2CreateStoredInfoTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig::Representation
      
          property :location_id, as: 'locationId'
          property :stored_info_type_id, as: 'storedInfoTypeId'
        end
      end
      
      class GooglePrivacyDlpV2CryptoDeterministicConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey::Representation
      
          property :surrogate_info_type, as: 'surrogateInfoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CryptoHashConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_wrapped, as: 'kmsWrapped', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KmsWrappedCryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KmsWrappedCryptoKey::Representation
      
          property :transient, as: 'transient', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransientCryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransientCryptoKey::Representation
      
          property :unwrapped, as: 'unwrapped', class: Google::Apis::DlpV2::GooglePrivacyDlpV2UnwrappedCryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2UnwrappedCryptoKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_alphabet, as: 'commonAlphabet'
          property :context, as: 'context', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey::Representation
      
          property :custom_alphabet, as: 'customAlphabet'
          property :radix, as: 'radix'
          property :surrogate_info_type, as: 'surrogateInfoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2CustomInfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detection_rules, as: 'detectionRules', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DetectionRule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DetectionRule::Representation
      
          property :dictionary, as: 'dictionary', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary::Representation
      
          property :exclusion_type, as: 'exclusionType'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :likelihood, as: 'likelihood'
          property :regex, as: 'regex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex::Representation
      
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :stored_type, as: 'storedType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredType::Representation
      
          property :surrogate_type, as: 'surrogateType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SurrogateType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SurrogateType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfileAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_data, as: 'exportData', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Export, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Export::Representation
      
          property :pub_sub_notification, as: 'pubSubNotification', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubNotification, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubNotification::Representation
      
          property :publish_to_chronicle, as: 'publishToChronicle', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToChronicle, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToChronicle::Representation
      
          property :publish_to_dataplex_catalog, as: 'publishToDataplexCatalog', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToDataplexCatalog, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToDataplexCatalog::Representation
      
          property :publish_to_scc, as: 'publishToScc', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToSecurityCommandCenter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToSecurityCommandCenter::Representation
      
          property :tag_resources, as: 'tagResources', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TagResources, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TagResources::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfileBigQueryRowSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_profile, as: 'columnProfile', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile::Representation
      
          property :file_store_profile, as: 'fileStoreProfile', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile::Representation
      
          property :table_profile, as: 'tableProfile', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfileConfigSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_profile_job, as: 'dataProfileJob', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileJobConfig::Representation
      
          property :discovery_config, as: 'discoveryConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
      
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :inspect_template_modified_time, as: 'inspectTemplateModifiedTime'
          property :inspect_template_name, as: 'inspectTemplateName'
        end
      end
      
      class GooglePrivacyDlpV2DataProfileFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_profile_resource_name, as: 'dataProfileResourceName'
          property :data_source_type, as: 'dataSourceType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType::Representation
      
          property :finding_id, as: 'findingId'
          property :full_resource_name, as: 'fullResourceName'
          property :infotype, as: 'infotype', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :location, as: 'location', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingLocation::Representation
      
          property :quote, as: 'quote'
          property :quote_info, as: 'quoteInfo', class: Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo::Representation
      
          property :resource_visibility, as: 'resourceVisibility'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class GooglePrivacyDlpV2DataProfileFindingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_name, as: 'containerName'
          property :data_profile_finding_record_location, as: 'dataProfileFindingRecordLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingRecordLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingRecordLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfileFindingRecordLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfileJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_profile_actions, as: 'dataProfileActions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction::Representation
      
          collection :inspect_templates, as: 'inspectTemplates'
          property :location, as: 'location', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileLocation::Representation
      
          property :other_cloud_starting_location, as: 'otherCloudStartingLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation::Representation
      
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2DataProfileLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :folder_id, :numeric_string => true, as: 'folderId'
          property :organization_id, :numeric_string => true, as: 'organizationId'
        end
      end
      
      class GooglePrivacyDlpV2DataProfilePubSubCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expressions, as: 'expressions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubExpressions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubExpressions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataProfilePubSubMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :file_store_profile, as: 'fileStoreProfile', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile::Representation
      
          property :profile, as: 'profile', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DataRiskLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GooglePrivacyDlpV2DataSourceType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source, as: 'dataSource'
        end
      end
      
      class GooglePrivacyDlpV2DatabaseResourceCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_regexes, as: 'includeRegexes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegexes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegexes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DatabaseResourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :database_resource, as: 'databaseResource'
          property :instance, as: 'instance'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2DatabaseResourceRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_regex, as: 'databaseRegex'
          property :database_resource_name_regex, as: 'databaseResourceNameRegex'
          property :instance_regex, as: 'instanceRegex'
          property :project_id_regex, as: 'projectIdRegex'
        end
      end
      
      class GooglePrivacyDlpV2DatabaseResourceRegexes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patterns, as: 'patterns', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DatastoreKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_key, as: 'entityKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Key, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Key::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DatastoreOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KindExpression, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KindExpression::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DateShiftConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey::Representation
      
          property :lower_bound_days, as: 'lowerBoundDays'
          property :upper_bound_days, as: 'upperBoundDays'
        end
      end
      
      class GooglePrivacyDlpV2DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::DlpV2::GoogleTypeDate, decorator: Google::Apis::DlpV2::GoogleTypeDate::Representation
      
          property :day_of_week, as: 'dayOfWeek'
          property :time, as: 'time', class: Google::Apis::DlpV2::GoogleTypeTimeOfDay, decorator: Google::Apis::DlpV2::GoogleTypeTimeOfDay::Representation
      
          property :time_zone, as: 'timeZone', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TimeZone, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TimeZone::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Deidentify
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_output, as: 'cloudStorageOutput'
          collection :file_types_to_transform, as: 'fileTypesToTransform'
          property :transformation_config, as: 'transformationConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationConfig::Representation
      
          property :transformation_details_storage_config, as: 'transformationDetailsStorageConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDetailsStorageConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDetailsStorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_transformations, as: 'imageTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformations, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformations::Representation
      
          property :info_type_transformations, as: 'infoTypeTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations::Representation
      
          property :record_transformations, as: 'recordTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformations, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformations::Representation
      
          property :transformation_error_handling, as: 'transformationErrorHandling', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationErrorHandling, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationErrorHandling::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_config, as: 'deidentifyConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig::Representation
      
          property :deidentify_template_name, as: 'deidentifyTemplateName'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
          property :location_id, as: 'locationId'
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
          property :overview, as: 'overview', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyDataSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_stats, as: 'deidentifyStats', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceStats, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceStats::Representation
      
          property :requested_options, as: 'requestedOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedDeidentifyOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedDeidentifyOptions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyDataSourceStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transformation_count, :numeric_string => true, as: 'transformationCount'
          property :transformation_error_count, :numeric_string => true, as: 'transformationErrorCount'
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2DeidentifyTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deidentify_config, as: 'deidentifyConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auxiliary_tables, as: 'auxiliaryTables', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StatisticalTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StatisticalTable::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiId::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          property :bucket_value_count, :numeric_string => true, as: 'bucketValueCount'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues::Representation
      
          property :max_probability, as: 'maxProbability'
          property :min_probability, as: 'minProbability'
        end
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_probability, as: 'estimatedProbability'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DeltaPresenceEstimationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :delta_presence_estimation_histogram, as: 'deltaPresenceEstimationHistogram', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DetectionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hotword_rule, as: 'hotwordRule', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Dictionary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_path, as: 'cloudStoragePath', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath::Representation
      
          property :word_list, as: 'wordList', class: Google::Apis::DlpV2::GooglePrivacyDlpV2WordList, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2WordList::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Disabled
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryBigQueryConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_after, as: 'createdAfter'
          property :or_conditions, as: 'orConditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OrConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OrConditions::Representation
      
          property :type_collection, as: 'typeCollection'
          property :types, as: 'types', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableTypes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableTypes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryBigQueryFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :other_tables, as: 'otherTables', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherBigQueryTables, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherBigQueryTables::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableReference, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableReference::Representation
      
          property :tables, as: 'tables', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableCollection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableCollection::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_engines, as: 'databaseEngines'
          collection :types, as: 'types'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceCollection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceCollection::Representation
      
          property :database_resource_reference, as: 'databaseResourceReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceReference, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceReference::Representation
      
          property :others, as: 'others', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherDatabaseResources, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherDatabaseResources::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template_modified_cadence, as: 'inspectTemplateModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence::Representation
      
          property :refresh_frequency, as: 'refreshFrequency'
          property :schema_modified_cadence, as: 'schemaModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SchemaModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SchemaModifiedCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_bucket_attributes, as: 'includedBucketAttributes'
          collection :included_object_attributes, as: 'includedObjectAttributes'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_resource_reference, as: 'cloudStorageResourceReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageResourceReference, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageResourceReference::Representation
      
          property :collection, as: 'collection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreCollection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreCollection::Representation
      
          property :others, as: 'others', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template_modified_cadence, as: 'inspectTemplateModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence::Representation
      
          property :refresh_frequency, as: 'refreshFrequency'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          collection :inspect_templates, as: 'inspectTemplates'
          property :last_run_time, as: 'lastRunTime'
          property :name, as: 'name'
          property :org_config, as: 'orgConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OrgConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OrgConfig::Representation
      
          property :other_cloud_starting_location, as: 'otherCloudStartingLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation::Representation
      
          property :processing_location, as: 'processingLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProcessingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProcessingLocation::Representation
      
          property :status, as: 'status'
          collection :targets, as: 'targets', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTarget::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryFileStoreConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_conditions, as: 'cloudStorageConditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageConditions::Representation
      
          property :created_after, as: 'createdAfter'
          property :min_age, as: 'minAge'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryGenerationCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template_modified_cadence, as: 'inspectTemplateModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence::Representation
      
          property :refresh_frequency, as: 'refreshFrequency'
          property :schema_modified_cadence, as: 'schemaModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoverySchemaModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoverySchemaModifiedCadence::Representation
      
          property :table_modified_cadence, as: 'tableModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTableModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTableModifiedCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amazon_s3_bucket_conditions, as: 'amazonS3BucketConditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketConditions::Representation
      
          property :min_age, as: 'minAge'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceCollection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceCollection::Representation
      
          property :others, as: 'others', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources::Representation
      
          property :single_resource, as: 'singleResource', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudSingleResourceReference, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudSingleResourceReference::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template_modified_cadence, as: 'inspectTemplateModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence::Representation
      
          property :refresh_frequency, as: 'refreshFrequency'
        end
      end
      
      class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
          collection :types, as: 'types'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryStartingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :folder_id, :numeric_string => true, as: 'folderId'
          property :organization_id, :numeric_string => true, as: 'organizationId'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryTableModifiedCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
          collection :types, as: 'types'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_target, as: 'bigQueryTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryDiscoveryTarget::Representation
      
          property :cloud_sql_target, as: 'cloudSqlTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlDiscoveryTarget::Representation
      
          property :cloud_storage_target, as: 'cloudStorageTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageDiscoveryTarget::Representation
      
          property :other_cloud_target, as: 'otherCloudTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryTarget::Representation
      
          property :secrets_target, as: 'secretsTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SecretsDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SecretsDiscoveryTarget::Representation
      
          property :vertex_dataset_target, as: 'vertexDatasetTarget', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetDiscoveryTarget, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetDiscoveryTarget::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_after, as: 'createdAfter'
          property :min_age, as: 'minAge'
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetCollection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetCollection::Representation
      
          property :others, as: 'others', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources::Representation
      
          property :vertex_dataset_resource_reference, as: 'vertexDatasetResourceReference', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetResourceReference, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetResourceReference::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template_modified_cadence, as: 'inspectTemplateModifiedCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence::Representation
      
          property :refresh_frequency, as: 'refreshFrequency'
        end
      end
      
      class GooglePrivacyDlpV2DlpJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action_details, as: 'actionDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ActionDetails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ActionDetails::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          property :inspect_details, as: 'inspectDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectDataSourceDetails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectDataSourceDetails::Representation
      
          property :job_trigger_name, as: 'jobTriggerName'
          property :last_modified, as: 'lastModified'
          property :name, as: 'name'
          property :risk_details, as: 'riskDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GooglePrivacyDlpV2DocumentLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_offset, :numeric_string => true, as: 'fileOffset'
        end
      end
      
      class GooglePrivacyDlpV2Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          collection :signals, as: 'signals'
        end
      end
      
      class GooglePrivacyDlpV2EntityId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::DlpV2::GoogleRpcStatus, decorator: Google::Apis::DlpV2::GoogleRpcStatus::Representation
      
          property :extra_info, as: 'extraInfo'
          collection :timestamps, as: 'timestamps'
        end
      end
      
      class GooglePrivacyDlpV2ExcludeByHotword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hotword_regex, as: 'hotwordRegex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex::Representation
      
          property :proximity, as: 'proximity', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ExcludeInfoTypes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ExclusionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dictionary, as: 'dictionary', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary::Representation
      
          property :exclude_by_hotword, as: 'excludeByHotword', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeByHotword, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeByHotword::Representation
      
          property :exclude_info_types, as: 'excludeInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeInfoTypes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeInfoTypes::Representation
      
          property :matching_type, as: 'matchingType'
          property :regex, as: 'regex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Export
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_table, as: 'profileTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
          property :sample_findings_table, as: 'sampleFindingsTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Expressions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Conditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Conditions::Representation
      
          property :logical_operator, as: 'logicalOperator'
        end
      end
      
      class GooglePrivacyDlpV2FieldId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2FieldTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :info_type_transformations, as: 'infoTypeTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations::Representation
      
          property :primitive_transformation, as: 'primitiveTransformation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileClusterSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_risk_level, as: 'dataRiskLevel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          property :file_cluster_type, as: 'fileClusterType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterType::Representation
      
          collection :file_extensions_scanned, as: 'fileExtensionsScanned', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo::Representation
      
          collection :file_extensions_seen, as: 'fileExtensionsSeen', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo::Representation
      
          collection :file_store_info_type_summaries, as: 'fileStoreInfoTypeSummaries', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary::Representation
      
          property :no_files_exist, as: 'noFilesExist'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileClusterType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
        end
      end
      
      class GooglePrivacyDlpV2FileExtensionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_extension, as: 'fileExtension'
        end
      end
      
      class GooglePrivacyDlpV2FileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :regex_file_set, as: 'regexFileSet', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegexFileSet, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegexFileSet::Representation
      
          property :url, as: 'url'
        end
      end
      
      class GooglePrivacyDlpV2FileStoreCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_regexes, as: 'includeRegexes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegexes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegexes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileStoreDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_snapshot, as: 'configSnapshot', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot::Representation
      
          property :create_time, as: 'createTime'
          property :data_risk_level, as: 'dataRiskLevel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel::Representation
      
          property :data_source_type, as: 'dataSourceType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType::Representation
      
          collection :data_storage_locations, as: 'dataStorageLocations'
          collection :domains, as: 'domains', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Domain, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Domain::Representation
      
          collection :file_cluster_summaries, as: 'fileClusterSummaries', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterSummary::Representation
      
          collection :file_store_info_type_summaries, as: 'fileStoreInfoTypeSummaries', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary::Representation
      
          property :file_store_is_empty, as: 'fileStoreIsEmpty'
          property :file_store_location, as: 'fileStoreLocation'
          property :file_store_path, as: 'fileStorePath'
          property :full_resource, as: 'fullResource'
          property :last_modified_time, as: 'lastModifiedTime'
          property :location_type, as: 'locationType'
          property :name, as: 'name'
          property :profile_last_generated, as: 'profileLastGenerated'
          property :profile_status, as: 'profileStatus', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus::Representation
      
          property :project_data_profile, as: 'projectDataProfile'
          property :project_id, as: 'projectId'
          collection :related_resources, as: 'relatedResources', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource::Representation
      
          hash :resource_attributes, as: 'resourceAttributes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_visibility, as: 'resourceVisibility'
          property :sample_findings_table, as: 'sampleFindingsTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :state, as: 'state'
          collection :tags, as: 'tags', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Tag, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Tag::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileStoreInfoTypeSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileStoreRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_regex, as: 'cloudStorageRegex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2FileStoreRegexes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patterns, as: 'patterns', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :finding_id, as: 'findingId'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :job_create_time, as: 'jobCreateTime'
          property :job_name, as: 'jobName'
          hash :labels, as: 'labels'
          property :likelihood, as: 'likelihood'
          property :location, as: 'location', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Location, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Location::Representation
      
          property :name, as: 'name'
          property :quote, as: 'quote'
          property :quote_info, as: 'quoteInfo', class: Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo::Representation
      
          property :resource_name, as: 'resourceName'
          property :trigger_name, as: 'triggerName'
        end
      end
      
      class GooglePrivacyDlpV2FindingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :max_findings_per_info_type, as: 'maxFindingsPerInfoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLimit, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLimit::Representation
      
          property :max_findings_per_item, as: 'maxFindingsPerItem'
          property :max_findings_per_request, as: 'maxFindingsPerRequest'
        end
      end
      
      class GooglePrivacyDlpV2FinishDlpJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2FixedSizeBucketingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, as: 'bucketSize'
          property :lower_bound, as: 'lowerBound', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          property :upper_bound, as: 'upperBound', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2GlobalProcessing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2HotwordRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hotword_regex, as: 'hotwordRegex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex::Representation
      
          property :likelihood_adjustment, as: 'likelihoodAdjustment', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LikelihoodAdjustment, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LikelihoodAdjustment::Representation
      
          property :proximity, as: 'proximity', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2HybridContentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding_details, as: 'findingDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridFindingDetails, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridFindingDetails::Representation
      
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2HybridFindingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_details, as: 'containerDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Container, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Container::Representation
      
          property :file_offset, :numeric_string => true, as: 'fileOffset'
          hash :labels, as: 'labels'
          property :row_offset, :numeric_string => true, as: 'rowOffset'
          property :table_options, as: 'tableOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2HybridInspectDlpJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hybrid_item, as: 'hybridItem', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2HybridInspectJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hybrid_item, as: 'hybridItem', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2HybridInspectResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2HybridInspectStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aborted_count, :numeric_string => true, as: 'abortedCount'
          property :pending_count, :numeric_string => true, as: 'pendingCount'
          property :processed_count, :numeric_string => true, as: 'processedCount'
        end
      end
      
      class GooglePrivacyDlpV2HybridOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          hash :labels, as: 'labels'
          collection :required_finding_label_keys, as: 'requiredFindingLabelKeys'
          property :table_options, as: 'tableOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ImageFallbackLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_processing, as: 'globalProcessing', class: Google::Apis::DlpV2::GooglePrivacyDlpV2GlobalProcessing, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2GlobalProcessing::Representation
      
          property :multi_region_processing, as: 'multiRegionProcessing', class: Google::Apis::DlpV2::GooglePrivacyDlpV2MultiRegionProcessing, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2MultiRegionProcessing::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ImageLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounding_boxes, as: 'boundingBoxes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BoundingBox, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BoundingBox::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ImageRedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :redact_all_text, as: 'redactAllText'
          property :redaction_color, as: 'redactionColor', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Color, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Color::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ImageTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_info_types, as: 'allInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllInfoTypes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllInfoTypes::Representation
      
          property :all_text, as: 'allText', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AllText, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AllText::Representation
      
          property :redaction_color, as: 'redactionColor', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Color, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Color::Representation
      
          property :selected_info_types, as: 'selectedInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SelectedInfoTypes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SelectedInfoTypes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ImageTransformations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transforms, as: 'transforms', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :version, as: 'version'
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :industry_category, as: 'industryCategory'
          property :location_category, as: 'locationCategory'
          property :type_category, as: 'typeCategory'
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeCategory, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeCategory::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :example, as: 'example'
          property :name, as: 'name'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          collection :specific_info_types, as: 'specificInfoTypes'
          collection :supported_by, as: 'supportedBy'
          collection :versions, as: 'versions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VersionDescription, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VersionDescription::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeLikelihood
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :min_likelihood, as: 'minLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_prevalence, as: 'estimatedPrevalence'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :primitive_transformation, as: 'primitiveTransformation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InfoTypeTransformations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transformations, as: 'transformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_options, as: 'contentOptions'
          collection :custom_info_types, as: 'customInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CustomInfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CustomInfoType::Representation
      
          property :exclude_info_types, as: 'excludeInfoTypes'
          property :include_quote, as: 'includeQuote'
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :limits, as: 'limits', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FindingLimits, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FindingLimits::Representation
      
          property :min_likelihood, as: 'minLikelihood'
          collection :min_likelihood_per_info_type, as: 'minLikelihoodPerInfoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLikelihood, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLikelihood::Representation
      
          collection :rule_set, as: 'ruleSet', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRuleSet, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRuleSet::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
          property :location_id, as: 'locationId'
        end
      end
      
      class GooglePrivacyDlpV2InspectContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectDataSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_options, as: 'requestedOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedOptions::Representation
      
          property :result, as: 'result', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Result, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Result::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Action, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Action::Representation
      
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :storage_config, as: 'storageConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StorageConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Finding, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Finding::Representation
      
          property :findings_truncated, as: 'findingsTruncated'
        end
      end
      
      class GooglePrivacyDlpV2InspectTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2InspectionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusion_rule, as: 'exclusionRule', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ExclusionRule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ExclusionRule::Representation
      
          property :hotword_rule, as: 'hotwordRule', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2InspectionRuleSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2JobNotificationEmails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2JobTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          property :inspect_job, as: 'inspectJob', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig::Representation
      
          property :last_run_time, as: 'lastRunTime'
          property :name, as: 'name'
          property :status, as: 'status'
          collection :triggers, as: 'triggers', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Trigger, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Trigger::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2KAnonymityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId', class: Google::Apis::DlpV2::GooglePrivacyDlpV2EntityId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2EntityId::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2KAnonymityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2KAnonymityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          property :bucket_value_count, :numeric_string => true, as: 'bucketValueCount'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityEquivalenceClass, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityEquivalenceClass::Representation
      
          property :equivalence_class_size_lower_bound, :numeric_string => true, as: 'equivalenceClassSizeLowerBound'
          property :equivalence_class_size_upper_bound, :numeric_string => true, as: 'equivalenceClassSizeUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2KAnonymityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :equivalence_class_histogram_buckets, as: 'equivalenceClassHistogramBuckets', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityHistogramBucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2KMapEstimationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auxiliary_tables, as: 'auxiliaryTables', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AuxiliaryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AuxiliaryTable::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TaggedField, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TaggedField::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class GooglePrivacyDlpV2KMapEstimationHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          property :bucket_value_count, :numeric_string => true, as: 'bucketValueCount'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationQuasiIdValues, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationQuasiIdValues::Representation
      
          property :max_anonymity, :numeric_string => true, as: 'maxAnonymity'
          property :min_anonymity, :numeric_string => true, as: 'minAnonymity'
        end
      end
      
      class GooglePrivacyDlpV2KMapEstimationQuasiIdValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_anonymity, :numeric_string => true, as: 'estimatedAnonymity'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2KMapEstimationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :k_map_estimation_histogram, as: 'kMapEstimationHistogram', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationHistogramBucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId::Representation
      
          collection :path, as: 'path', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PathElement, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PathElement::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2KmsWrappedCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key_name, as: 'cryptoKeyName'
          property :wrapped_key, :base64 => true, as: 'wrappedKey'
        end
      end
      
      class GooglePrivacyDlpV2LDiversityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :sensitive_attribute, as: 'sensitiveAttribute', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2LDiversityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          property :num_distinct_sensitive_values, :numeric_string => true, as: 'numDistinctSensitiveValues'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          collection :top_sensitive_values, as: 'topSensitiveValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2LDiversityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          property :bucket_value_count, :numeric_string => true, as: 'bucketValueCount'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityEquivalenceClass, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityEquivalenceClass::Representation
      
          property :sensitive_value_frequency_lower_bound, :numeric_string => true, as: 'sensitiveValueFrequencyLowerBound'
          property :sensitive_value_frequency_upper_bound, :numeric_string => true, as: 'sensitiveValueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2LDiversityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sensitive_value_frequency_histogram_buckets, as: 'sensitiveValueFrequencyHistogramBuckets', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityHistogramBucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2LargeCustomDictionaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_field, as: 'bigQueryField', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryField, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryField::Representation
      
          property :cloud_storage_file_set, as: 'cloudStorageFileSet', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageFileSet, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageFileSet::Representation
      
          property :output_path, as: 'outputPath', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2LargeCustomDictionaryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approx_num_phrases, :numeric_string => true, as: 'approxNumPhrases'
        end
      end
      
      class GooglePrivacyDlpV2LeaveUntransformed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2LikelihoodAdjustment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_likelihood, as: 'fixedLikelihood'
          property :relative_likelihood, as: 'relativeLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2ListColumnDataProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_data_profiles, as: 'columnDataProfiles', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deidentify_templates, as: 'deidentifyTemplates', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListDiscoveryConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovery_configs, as: 'discoveryConfigs', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListDlpJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_store_data_profiles, as: 'fileStoreDataProfiles', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListInfoTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeDescription, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeDescription::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ListInspectTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inspect_templates, as: 'inspectTemplates', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListJobTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_triggers, as: 'jobTriggers', class: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2ListProjectDataProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :project_data_profiles, as: 'projectDataProfiles', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ListStoredInfoTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :stored_info_types, as: 'storedInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ListTableDataProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :table_data_profiles, as: 'tableDataProfiles', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_range, as: 'byteRange', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Range, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Range::Representation
      
          property :codepoint_range, as: 'codepointRange', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Range, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Range::Representation
      
          property :container, as: 'container', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Container, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Container::Representation
      
          collection :content_locations, as: 'contentLocations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Manual
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2MetadataLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_label, as: 'storageLabel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StorageMetadataLabel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StorageMetadataLabel::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GooglePrivacyDlpV2MultiRegionProcessing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2NumericalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2NumericalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
          collection :quantile_values, as: 'quantileValues', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OrConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_age, as: 'minAge'
          property :min_row_count, as: 'minRowCount'
        end
      end
      
      class GooglePrivacyDlpV2OrgConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryStartingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryStartingLocation::Representation
      
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_location, as: 'awsLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsDiscoveryStartingLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AwsDiscoveryStartingLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudConditions::Representation
      
          property :data_source_type, as: 'dataSourceType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType::Representation
      
          property :disabled, as: 'disabled', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudFilter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudFilter::Representation
      
          property :generation_cadence, as: 'generationCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_regexes, as: 'includeRegexes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegexes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegexes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amazon_s3_bucket_regex, as: 'amazonS3BucketRegex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudResourceRegexes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patterns, as: 'patterns', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherCloudSingleResourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amazon_s3_bucket, as: 'amazonS3Bucket', class: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3Bucket, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3Bucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OtherInfoTypeSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_prevalence, as: 'estimatedPrevalence'
          property :excluded_from_analysis, as: 'excludedFromAnalysis'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2OutputStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_schema, as: 'outputSchema'
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_id, as: 'namespaceId'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2PathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2PrimitiveTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucketing_config, as: 'bucketingConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BucketingConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BucketingConfig::Representation
      
          property :character_mask_config, as: 'characterMaskConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CharacterMaskConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CharacterMaskConfig::Representation
      
          property :crypto_deterministic_config, as: 'cryptoDeterministicConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoDeterministicConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoDeterministicConfig::Representation
      
          property :crypto_hash_config, as: 'cryptoHashConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoHashConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoHashConfig::Representation
      
          property :crypto_replace_ffx_fpe_config, as: 'cryptoReplaceFfxFpeConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig::Representation
      
          property :date_shift_config, as: 'dateShiftConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DateShiftConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DateShiftConfig::Representation
      
          property :fixed_size_bucketing_config, as: 'fixedSizeBucketingConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FixedSizeBucketingConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FixedSizeBucketingConfig::Representation
      
          property :redact_config, as: 'redactConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RedactConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RedactConfig::Representation
      
          property :replace_config, as: 'replaceConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceValueConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceValueConfig::Representation
      
          property :replace_dictionary_config, as: 'replaceDictionaryConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceDictionaryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceDictionaryConfig::Representation
      
          property :replace_with_info_type_config, as: 'replaceWithInfoTypeConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceWithInfoTypeConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceWithInfoTypeConfig::Representation
      
          property :time_part_config, as: 'timePartConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TimePartConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TimePartConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2PrivacyMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_config, as: 'categoricalStatsConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsConfig::Representation
      
          property :delta_presence_estimation_config, as: 'deltaPresenceEstimationConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationConfig::Representation
      
          property :k_anonymity_config, as: 'kAnonymityConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityConfig::Representation
      
          property :k_map_estimation_config, as: 'kMapEstimationConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationConfig::Representation
      
          property :l_diversity_config, as: 'lDiversityConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityConfig::Representation
      
          property :numerical_stats_config, as: 'numericalStatsConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ProcessingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_fallback_location, as: 'imageFallbackLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageFallbackLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageFallbackLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ProfileStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DlpV2::GoogleRpcStatus, decorator: Google::Apis::DlpV2::GoogleRpcStatus::Representation
      
          property :timestamp, as: 'timestamp'
        end
      end
      
      class GooglePrivacyDlpV2ProjectDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_risk_level, as: 'dataRiskLevel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel::Representation
      
          property :file_store_data_profile_count, :numeric_string => true, as: 'fileStoreDataProfileCount'
          property :name, as: 'name'
          property :profile_last_generated, as: 'profileLastGenerated'
          property :profile_status, as: 'profileStatus', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus::Representation
      
          property :project_id, as: 'projectId'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :table_data_profile_count, :numeric_string => true, as: 'tableDataProfileCount'
        end
      end
      
      class GooglePrivacyDlpV2Proximity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :window_after, as: 'windowAfter'
          property :window_before, as: 'windowBefore'
        end
      end
      
      class GooglePrivacyDlpV2PubSubCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_risk_score, as: 'minimumRiskScore'
          property :minimum_sensitivity_score, as: 'minimumSensitivityScore'
        end
      end
      
      class GooglePrivacyDlpV2PubSubExpressions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubCondition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubCondition::Representation
      
          property :logical_operator, as: 'logicalOperator'
        end
      end
      
      class GooglePrivacyDlpV2PubSubNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail_of_message, as: 'detailOfMessage'
          property :event, as: 'event'
          property :pubsub_condition, as: 'pubsubCondition', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfilePubSubCondition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfilePubSubCondition::Representation
      
          property :topic, as: 'topic'
        end
      end
      
      class GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2PublishSummaryToCscc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2PublishToChronicle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2PublishToDataplexCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_data_risk_to_low, as: 'lowerDataRiskToLow'
        end
      end
      
      class GooglePrivacyDlpV2PublishToPubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class GooglePrivacyDlpV2PublishToSecurityCommandCenter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2PublishToStackdriver
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2QuasiId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :inferred, as: 'inferred', class: Google::Apis::DlpV2::GoogleProtobufEmpty, decorator: Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2QuasiIdField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2QuasiIdentifierField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2QuoteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_time, as: 'dateTime', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DateTime, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DateTime::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, :numeric_string => true, as: 'end'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class GooglePrivacyDlpV2RecordCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expressions, as: 'expressions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Expressions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Expressions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RecordKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_key, as: 'bigQueryKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryKey::Representation
      
          property :datastore_key, as: 'datastoreKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreKey::Representation
      
          collection :id_values, as: 'idValues'
        end
      end
      
      class GooglePrivacyDlpV2RecordLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :record_key, as: 'recordKey', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordKey, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordKey::Representation
      
          property :table_location, as: 'tableLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TableLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TableLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RecordSuppression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RecordTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_timestamp, as: 'containerTimestamp'
          property :container_version, as: 'containerVersion'
          property :field_id, as: 'fieldId', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RecordTransformations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_transformations, as: 'fieldTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation::Representation
      
          collection :record_suppressions, as: 'recordSuppressions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RedactConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2RedactImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_item, as: 'byteItem', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem::Representation
      
          collection :image_redaction_configs, as: 'imageRedactionConfigs', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageRedactionConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ImageRedactionConfig::Representation
      
          property :include_findings, as: 'includeFindings'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :location_id, as: 'locationId'
        end
      end
      
      class GooglePrivacyDlpV2RedactImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extracted_text, as: 'extractedText'
          property :inspect_result, as: 'inspectResult', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult::Representation
      
          property :redacted_image, :base64 => true, as: 'redactedImage'
        end
      end
      
      class GooglePrivacyDlpV2Regex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_indexes, as: 'groupIndexes'
          property :pattern, as: 'pattern'
        end
      end
      
      class GooglePrivacyDlpV2ReidentifyContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
          property :location_id, as: 'locationId'
          property :reidentify_config, as: 'reidentifyConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig::Representation
      
          property :reidentify_template_name, as: 'reidentifyTemplateName'
        end
      end
      
      class GooglePrivacyDlpV2ReidentifyContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem::Representation
      
          property :overview, as: 'overview', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RelatedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource, as: 'fullResource'
        end
      end
      
      class GooglePrivacyDlpV2ReplaceDictionaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :word_list, as: 'wordList', class: Google::Apis::DlpV2::GooglePrivacyDlpV2WordList, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2WordList::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ReplaceValueConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2RequestedDeidentifyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_deidentify_template, as: 'snapshotDeidentifyTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
          property :snapshot_image_redact_template, as: 'snapshotImageRedactTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
          property :snapshot_structured_deidentify_template, as: 'snapshotStructuredDeidentifyTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RequestedOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_config, as: 'jobConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig::Representation
      
          property :snapshot_inspect_template, as: 'snapshotInspectTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2RequestedRiskAnalysisOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_config, as: 'jobConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hybrid_stats, as: 'hybridStats', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectStatistics, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectStatistics::Representation
      
          collection :info_type_stats, as: 'infoTypeStats', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeStats, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeStats::Representation
      
          property :num_rows_processed, :numeric_string => true, as: 'numRowsProcessed'
          property :processed_bytes, :numeric_string => true, as: 'processedBytes'
          property :total_estimated_bytes, :numeric_string => true, as: 'totalEstimatedBytes'
        end
      end
      
      class GooglePrivacyDlpV2RiskAnalysisJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Action, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Action::Representation
      
          property :privacy_metric, as: 'privacyMetric', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric::Representation
      
          property :source_table, as: 'sourceTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2SaveFindings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OutputStorageConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OutputStorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2SaveToGcsFindingsOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Finding, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Finding::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurrence_period_duration, as: 'recurrencePeriodDuration'
        end
      end
      
      class GooglePrivacyDlpV2SchemaModifiedCadence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
          collection :types, as: 'types'
        end
      end
      
      class GooglePrivacyDlpV2SearchConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2SecretManagerCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password_secret_version_name, as: 'passwordSecretVersionName'
          property :username, as: 'username'
        end
      end
      
      class GooglePrivacyDlpV2SecretsDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2SelectedInfoTypes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2SensitivityScore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GooglePrivacyDlpV2StatisticalTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdentifierField, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdentifierField::Representation
      
          property :relative_frequency, as: 'relativeFrequency', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_options, as: 'bigQueryOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryOptions::Representation
      
          property :cloud_storage_options, as: 'cloudStorageOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageOptions::Representation
      
          property :datastore_options, as: 'datastoreOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreOptions::Representation
      
          property :hybrid_options, as: 'hybridOptions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridOptions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2HybridOptions::Representation
      
          property :timespan_config, as: 'timespanConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TimespanConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TimespanConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StorageMetadataLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GooglePrivacyDlpV2StoredInfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_version, as: 'currentVersion', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion::Representation
      
          property :name, as: 'name'
          collection :pending_versions, as: 'pendingVersions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :dictionary, as: 'dictionary', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary::Representation
      
          property :display_name, as: 'displayName'
          property :large_custom_dictionary, as: 'largeCustomDictionary', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryConfig::Representation
      
          property :regex, as: 'regex', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Regex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :large_custom_dictionary, as: 'largeCustomDictionary', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryStats, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryStats::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StoredInfoTypeVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :errors, as: 'errors', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Error, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Error::Representation
      
          property :state, as: 'state'
          property :stats, as: 'stats', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeStats, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeStats::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2StoredType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2SummaryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, :numeric_string => true, as: 'count'
          property :details, as: 'details'
        end
      end
      
      class GooglePrivacyDlpV2SurrogateType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Row, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Row::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TableDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_snapshot, as: 'configSnapshot', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot::Representation
      
          property :create_time, as: 'createTime'
          property :data_risk_level, as: 'dataRiskLevel', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel::Representation
      
          property :data_source_type, as: 'dataSourceType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType::Representation
      
          property :dataset_id, as: 'datasetId'
          property :dataset_location, as: 'datasetLocation'
          property :dataset_project_id, as: 'datasetProjectId'
          collection :domains, as: 'domains', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Domain, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Domain::Representation
      
          property :encryption_status, as: 'encryptionStatus'
          property :expiration_time, as: 'expirationTime'
          property :failed_column_count, :numeric_string => true, as: 'failedColumnCount'
          property :full_resource, as: 'fullResource'
          property :last_modified_time, as: 'lastModifiedTime'
          property :name, as: 'name'
          collection :other_info_types, as: 'otherInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary::Representation
      
          collection :predicted_info_types, as: 'predictedInfoTypes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary::Representation
      
          property :profile_last_generated, as: 'profileLastGenerated'
          property :profile_status, as: 'profileStatus', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus::Representation
      
          property :project_data_profile, as: 'projectDataProfile'
          collection :related_resources, as: 'relatedResources', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_visibility, as: 'resourceVisibility'
          property :row_count, :numeric_string => true, as: 'rowCount'
          property :sample_findings_table, as: 'sampleFindingsTable', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
          property :scanned_column_count, :numeric_string => true, as: 'scannedColumnCount'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :state, as: 'state'
          property :table_id, as: 'tableId'
          property :table_size_bytes, :numeric_string => true, as: 'tableSizeBytes'
          collection :tags, as: 'tags', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Tag, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Tag::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TableLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_index, :numeric_string => true, as: 'rowIndex'
        end
      end
      
      class GooglePrivacyDlpV2TableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identifying_fields, as: 'identifyingFields', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TableReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :namespaced_tag_value, as: 'namespacedTagValue'
          property :value, as: 'value'
        end
      end
      
      class GooglePrivacyDlpV2TagCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore::Representation
      
          property :tag, as: 'tag', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TagValue, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TagValue::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TagResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_data_risk_to_low, as: 'lowerDataRiskToLow'
          collection :profile_generations_to_tag, as: 'profileGenerationsToTag'
          collection :tag_conditions, as: 'tagConditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TagCondition, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TagCondition::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TagValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespaced_value, as: 'namespacedValue'
        end
      end
      
      class GooglePrivacyDlpV2TaggedField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          property :inferred, as: 'inferred', class: Google::Apis::DlpV2::GoogleProtobufEmpty, decorator: Google::Apis::DlpV2::GoogleProtobufEmpty::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2ThrowError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2TimePartConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :part_to_extract, as: 'partToExtract'
        end
      end
      
      class GooglePrivacyDlpV2TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset_minutes, as: 'offsetMinutes'
        end
      end
      
      class GooglePrivacyDlpV2TimespanConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_auto_population_of_timespan_config, as: 'enableAutoPopulationOfTimespanConfig'
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :timestamp_field, as: 'timestampField', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TransformationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate'
          property :image_redact_template, as: 'imageRedactTemplate'
          property :structured_deidentify_template, as: 'structuredDeidentifyTemplate'
        end
      end
      
      class GooglePrivacyDlpV2TransformationDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GooglePrivacyDlpV2TransformationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_name, as: 'containerName'
          property :resource_name, as: 'resourceName'
          property :status_details, as: 'statusDetails', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationResultStatus, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationResultStatus::Representation
      
          collection :transformation, as: 'transformation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDescription, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDescription::Representation
      
          property :transformation_location, as: 'transformationLocation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationLocation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationLocation::Representation
      
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2TransformationDetailsStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table, as: 'table', class: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TransformationErrorHandling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :leave_untransformed, as: 'leaveUntransformed', class: Google::Apis::DlpV2::GooglePrivacyDlpV2LeaveUntransformed, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2LeaveUntransformed::Representation
      
          property :throw_error, as: 'throwError', class: Google::Apis::DlpV2::GooglePrivacyDlpV2ThrowError, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2ThrowError::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TransformationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_type, as: 'containerType'
          property :finding_id, as: 'findingId'
          property :record_transformation, as: 'recordTransformation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2TransformationOverview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transformation_summaries, as: 'transformationSummaries', class: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationSummary, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationSummary::Representation
      
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2TransformationResultStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::DlpV2::GoogleRpcStatus, decorator: Google::Apis::DlpV2::GoogleRpcStatus::Representation
      
          property :result_status_type, as: 'resultStatusType'
        end
      end
      
      class GooglePrivacyDlpV2TransformationSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId::Representation
      
          collection :field_transformations, as: 'fieldTransformations', class: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType::Representation
      
          property :record_suppress, as: 'recordSuppress', class: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression::Representation
      
          collection :results, as: 'results', class: Google::Apis::DlpV2::GooglePrivacyDlpV2SummaryResult, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2SummaryResult::Representation
      
          property :transformation, as: 'transformation', class: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation::Representation
      
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2TransientCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manual, as: 'manual', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Manual, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Manual::Representation
      
          property :schedule, as: 'schedule', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Schedule, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Schedule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2UnwrappedCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
        end
      end
      
      class GooglePrivacyDlpV2UpdateConnectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Connection::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discovery_config, as: 'discoveryConfig', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2UpdateInspectTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template, as: 'inspectTemplate', class: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2UpdateJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_trigger, as: 'jobTrigger', class: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DlpV2::GoogleTypeDate, decorator: Google::Apis::DlpV2::GoogleTypeDate::Representation
      
          property :day_of_week_value, as: 'dayOfWeekValue'
          property :float_value, as: 'floatValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :time_value, as: 'timeValue', class: Google::Apis::DlpV2::GoogleTypeTimeOfDay, decorator: Google::Apis::DlpV2::GoogleTypeTimeOfDay::Representation
      
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GooglePrivacyDlpV2ValueFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :value, as: 'value', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Value, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2VersionDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :version, as: 'version'
        end
      end
      
      class GooglePrivacyDlpV2VertexDatasetCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vertex_dataset_regexes, as: 'vertexDatasetRegexes', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegexes, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegexes::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetConditions, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetConditions::Representation
      
          property :disabled, as: 'disabled', class: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetFilter, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetFilter::Representation
      
          property :generation_cadence, as: 'generationCadence', class: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2VertexDatasetRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id_regex, as: 'projectIdRegex'
        end
      end
      
      class GooglePrivacyDlpV2VertexDatasetRegexes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patterns, as: 'patterns', class: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegex, decorator: Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegex::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2VertexDatasetResourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_resource_name, as: 'datasetResourceName'
        end
      end
      
      class GooglePrivacyDlpV2WordList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :words, as: 'words'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeTimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
    end
  end
end
