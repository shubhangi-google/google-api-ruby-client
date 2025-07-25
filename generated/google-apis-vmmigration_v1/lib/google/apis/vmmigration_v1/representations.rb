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
    module VmmigrationV1
      
      class AccessKeyCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdaptingOsStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddGroupMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplianceVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppliedLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsSecurityGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsSourceVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsVmsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureSourceVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureVmsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BootDiskDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelCloneJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelCutoverJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelImageImportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientSecretCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineDisksTargetDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineDisksTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineTargetDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeScheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatingImageStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoverForecast
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoverJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoverStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CycleStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataDiskImageImport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatacenterConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskImageDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskImageTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksMigrationDisksTargetDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksMigrationDisksTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksMigrationVmTargetDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksMigrationVmTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Encryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expiration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinalizeMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageImport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageImportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageImportOsAdaptationParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageImportStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializingImageImportStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializingReplicationStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstantiatingMigratedVmStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloneJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCutoverJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatacenterConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImageImportJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImageImportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMigratingVmsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReplicationCyclesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTargetProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUtilizationReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadingImageSourceFilesStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineImageParametersOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineImageTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigratingVm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersistentDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersistentDiskDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostProcessingStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreparingVmDisksStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveGroupMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicatingStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationSync
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingNodeAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShuttingDownSourceVmStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkipOsAdaptation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeApplianceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UtilizationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmAttachmentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmUtilizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmUtilizationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareSourceVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVmsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessKeyCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :secret_access_key, as: 'secretAccessKey'
          property :session_token, as: 'sessionToken'
        end
      end
      
      class AdaptingOsStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AddGroupMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrating_vm, as: 'migratingVm'
        end
      end
      
      class ApplianceVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :critical, as: 'critical'
          property :release_notes_uri, as: 'releaseNotesUri'
          property :uri, as: 'uri'
          property :version, as: 'version'
        end
      end
      
      class AppliedLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_license, as: 'osLicense'
          property :type, as: 'type'
        end
      end
      
      class AvailableUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :in_place_update, as: 'inPlaceUpdate', class: Google::Apis::VmmigrationV1::ApplianceVersion, decorator: Google::Apis::VmmigrationV1::ApplianceVersion::Representation
      
          property :new_deployable_appliance, as: 'newDeployableAppliance', class: Google::Apis::VmmigrationV1::ApplianceVersion, decorator: Google::Apis::VmmigrationV1::ApplianceVersion::Representation
      
        end
      end
      
      class AwsDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_number, as: 'diskNumber'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :volume_id, as: 'volumeId'
        end
      end
      
      class AwsSecurityGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class AwsSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_creds, as: 'accessKeyCreds', class: Google::Apis::VmmigrationV1::AccessKeyCredentials, decorator: Google::Apis::VmmigrationV1::AccessKeyCredentials::Representation
      
          property :aws_region, as: 'awsRegion'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          collection :inventory_security_group_names, as: 'inventorySecurityGroupNames'
          collection :inventory_tag_list, as: 'inventoryTagList', class: Google::Apis::VmmigrationV1::Tag, decorator: Google::Apis::VmmigrationV1::Tag::Representation
      
          hash :migration_resources_user_tags, as: 'migrationResourcesUserTags'
          property :public_ip, as: 'publicIp'
          property :state, as: 'state'
        end
      end
      
      class AwsSourceVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :committed_storage_bytes, :numeric_string => true, as: 'committedStorageBytes'
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::AwsDiskDetails, decorator: Google::Apis::VmmigrationV1::AwsDiskDetails::Representation
      
          property :firmware, as: 'firmware'
          property :vm_capabilities_info, as: 'vmCapabilitiesInfo', class: Google::Apis::VmmigrationV1::VmCapabilities, decorator: Google::Apis::VmmigrationV1::VmCapabilities::Representation
      
        end
      end
      
      class AwsVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :boot_option, as: 'bootOption'
          property :committed_storage_mb, :numeric_string => true, as: 'committedStorageMb'
          property :cpu_count, as: 'cpuCount'
          property :disk_count, as: 'diskCount'
          property :display_name, as: 'displayName'
          property :instance_type, as: 'instanceType'
          property :memory_mb, as: 'memoryMb'
          property :os_description, as: 'osDescription'
          property :power_state, as: 'powerState'
          collection :security_groups, as: 'securityGroups', class: Google::Apis::VmmigrationV1::AwsSecurityGroup, decorator: Google::Apis::VmmigrationV1::AwsSecurityGroup::Representation
      
          property :source_description, as: 'sourceDescription'
          property :source_id, as: 'sourceId'
          hash :tags, as: 'tags'
          property :vcpu_count, as: 'vcpuCount'
          property :virtualization_type, as: 'virtualizationType'
          property :vm_id, as: 'vmId'
          property :vpc_id, as: 'vpcId'
          property :zone, as: 'zone'
        end
      end
      
      class AwsVmsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::VmmigrationV1::AwsVmDetails, decorator: Google::Apis::VmmigrationV1::AwsVmDetails::Representation
      
        end
      end
      
      class AzureDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_id, as: 'diskId'
          property :disk_number, as: 'diskNumber'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
        end
      end
      
      class AzureSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :azure_location, as: 'azureLocation'
          property :client_secret_creds, as: 'clientSecretCreds', class: Google::Apis::VmmigrationV1::ClientSecretCredentials, decorator: Google::Apis::VmmigrationV1::ClientSecretCredentials::Representation
      
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          hash :migration_resources_user_tags, as: 'migrationResourcesUserTags'
          property :resource_group_id, as: 'resourceGroupId'
          property :state, as: 'state'
          property :subscription_id, as: 'subscriptionId'
        end
      end
      
      class AzureSourceVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :committed_storage_bytes, :numeric_string => true, as: 'committedStorageBytes'
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::AzureDiskDetails, decorator: Google::Apis::VmmigrationV1::AzureDiskDetails::Representation
      
          property :firmware, as: 'firmware'
          property :vm_capabilities_info, as: 'vmCapabilitiesInfo', class: Google::Apis::VmmigrationV1::VmCapabilities, decorator: Google::Apis::VmmigrationV1::VmCapabilities::Representation
      
        end
      end
      
      class AzureVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :boot_option, as: 'bootOption'
          property :committed_storage_mb, :numeric_string => true, as: 'committedStorageMb'
          property :computer_name, as: 'computerName'
          property :cpu_count, as: 'cpuCount'
          property :disk_count, as: 'diskCount'
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::Disk, decorator: Google::Apis::VmmigrationV1::Disk::Representation
      
          property :memory_mb, as: 'memoryMb'
          property :os_description, as: 'osDescription', class: Google::Apis::VmmigrationV1::OsDescription, decorator: Google::Apis::VmmigrationV1::OsDescription::Representation
      
          property :os_disk, as: 'osDisk', class: Google::Apis::VmmigrationV1::OsDisk, decorator: Google::Apis::VmmigrationV1::OsDisk::Representation
      
          property :power_state, as: 'powerState'
          hash :tags, as: 'tags'
          property :vm_id, as: 'vmId'
          property :vm_size, as: 'vmSize'
        end
      end
      
      class AzureVmsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::VmmigrationV1::AzureVmDetails, decorator: Google::Apis::VmmigrationV1::AzureVmDetails::Representation
      
        end
      end
      
      class BootDiskDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_name, as: 'deviceName'
          property :disk_name, as: 'diskName'
          property :disk_type, as: 'diskType'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :image, as: 'image', class: Google::Apis::VmmigrationV1::DiskImageDefaults, decorator: Google::Apis::VmmigrationV1::DiskImageDefaults::Representation
      
        end
      end
      
      class CancelCloneJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelCutoverJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelImageImportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ClientSecretCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class CloneJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine_disks_target_details, as: 'computeEngineDisksTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDetails::Representation
      
          property :compute_engine_target_details, as: 'computeEngineTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          collection :steps, as: 'steps', class: Google::Apis::VmmigrationV1::CloneStep, decorator: Google::Apis::VmmigrationV1::CloneStep::Representation
      
        end
      end
      
      class CloneStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapting_os, as: 'adaptingOs', class: Google::Apis::VmmigrationV1::AdaptingOsStep, decorator: Google::Apis::VmmigrationV1::AdaptingOsStep::Representation
      
          property :end_time, as: 'endTime'
          property :instantiating_migrated_vm, as: 'instantiatingMigratedVm', class: Google::Apis::VmmigrationV1::InstantiatingMigratedVmStep, decorator: Google::Apis::VmmigrationV1::InstantiatingMigratedVmStep::Representation
      
          property :preparing_vm_disks, as: 'preparingVmDisks', class: Google::Apis::VmmigrationV1::PreparingVmDisksStep, decorator: Google::Apis::VmmigrationV1::PreparingVmDisksStep::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class ComputeEngineDisksTargetDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::PersistentDiskDefaults, decorator: Google::Apis::VmmigrationV1::PersistentDiskDefaults::Representation
      
          property :disks_target_defaults, as: 'disksTargetDefaults', class: Google::Apis::VmmigrationV1::DisksMigrationDisksTargetDefaults, decorator: Google::Apis::VmmigrationV1::DisksMigrationDisksTargetDefaults::Representation
      
          property :target_project, as: 'targetProject'
          property :vm_target_defaults, as: 'vmTargetDefaults', class: Google::Apis::VmmigrationV1::DisksMigrationVmTargetDefaults, decorator: Google::Apis::VmmigrationV1::DisksMigrationVmTargetDefaults::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class ComputeEngineDisksTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::PersistentDisk, decorator: Google::Apis::VmmigrationV1::PersistentDisk::Representation
      
          property :disks_target_details, as: 'disksTargetDetails', class: Google::Apis::VmmigrationV1::DisksMigrationDisksTargetDetails, decorator: Google::Apis::VmmigrationV1::DisksMigrationDisksTargetDetails::Representation
      
          property :vm_target_details, as: 'vmTargetDetails', class: Google::Apis::VmmigrationV1::DisksMigrationVmTargetDetails, decorator: Google::Apis::VmmigrationV1::DisksMigrationVmTargetDetails::Representation
      
        end
      end
      
      class ComputeEngineTargetDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :applied_license, as: 'appliedLicense', class: Google::Apis::VmmigrationV1::AppliedLicense, decorator: Google::Apis::VmmigrationV1::AppliedLicense::Representation
      
          property :boot_conversion, as: 'bootConversion'
          property :boot_option, as: 'bootOption'
          property :compute_scheduling, as: 'computeScheduling', class: Google::Apis::VmmigrationV1::ComputeScheduling, decorator: Google::Apis::VmmigrationV1::ComputeScheduling::Representation
      
          collection :disk_replica_zones, as: 'diskReplicaZones'
          property :disk_type, as: 'diskType'
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_vtpm, as: 'enableVtpm'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :license_type, as: 'licenseType'
          property :machine_type, as: 'machineType'
          property :machine_type_series, as: 'machineTypeSeries'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          collection :network_tags, as: 'networkTags'
          property :secure_boot, as: 'secureBoot'
          property :service_account, as: 'serviceAccount'
          property :target_project, as: 'targetProject'
          property :vm_name, as: 'vmName'
          property :zone, as: 'zone'
        end
      end
      
      class ComputeEngineTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :applied_license, as: 'appliedLicense', class: Google::Apis::VmmigrationV1::AppliedLicense, decorator: Google::Apis::VmmigrationV1::AppliedLicense::Representation
      
          property :boot_conversion, as: 'bootConversion'
          property :boot_option, as: 'bootOption'
          property :compute_scheduling, as: 'computeScheduling', class: Google::Apis::VmmigrationV1::ComputeScheduling, decorator: Google::Apis::VmmigrationV1::ComputeScheduling::Representation
      
          collection :disk_replica_zones, as: 'diskReplicaZones'
          property :disk_type, as: 'diskType'
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_vtpm, as: 'enableVtpm'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :license_type, as: 'licenseType'
          property :machine_type, as: 'machineType'
          property :machine_type_series, as: 'machineTypeSeries'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          collection :network_tags, as: 'networkTags'
          property :project, as: 'project'
          property :secure_boot, as: 'secureBoot'
          property :service_account, as: 'serviceAccount'
          property :vm_name, as: 'vmName'
          property :zone, as: 'zone'
        end
      end
      
      class ComputeScheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::VmmigrationV1::SchedulingNodeAffinity, decorator: Google::Apis::VmmigrationV1::SchedulingNodeAffinity::Representation
      
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :restart_type, as: 'restartType'
        end
      end
      
      class CreatingImageStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CutoverForecast
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_cutover_job_duration, as: 'estimatedCutoverJobDuration'
        end
      end
      
      class CutoverJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine_disks_target_details, as: 'computeEngineDisksTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDetails::Representation
      
          property :compute_engine_target_details, as: 'computeEngineTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :progress_percent, as: 'progressPercent'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :state_time, as: 'stateTime'
          collection :steps, as: 'steps', class: Google::Apis::VmmigrationV1::CutoverStep, decorator: Google::Apis::VmmigrationV1::CutoverStep::Representation
      
        end
      end
      
      class CutoverStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :final_sync, as: 'finalSync', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          property :instantiating_migrated_vm, as: 'instantiatingMigratedVm', class: Google::Apis::VmmigrationV1::InstantiatingMigratedVmStep, decorator: Google::Apis::VmmigrationV1::InstantiatingMigratedVmStep::Representation
      
          property :preparing_vm_disks, as: 'preparingVmDisks', class: Google::Apis::VmmigrationV1::PreparingVmDisksStep, decorator: Google::Apis::VmmigrationV1::PreparingVmDisksStep::Representation
      
          property :previous_replication_cycle, as: 'previousReplicationCycle', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          property :shutting_down_source_vm, as: 'shuttingDownSourceVm', class: Google::Apis::VmmigrationV1::ShuttingDownSourceVmStep, decorator: Google::Apis::VmmigrationV1::ShuttingDownSourceVmStep::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CycleStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :initializing_replication, as: 'initializingReplication', class: Google::Apis::VmmigrationV1::InitializingReplicationStep, decorator: Google::Apis::VmmigrationV1::InitializingReplicationStep::Representation
      
          property :post_processing, as: 'postProcessing', class: Google::Apis::VmmigrationV1::PostProcessingStep, decorator: Google::Apis::VmmigrationV1::PostProcessingStep::Representation
      
          property :replicating, as: 'replicating', class: Google::Apis::VmmigrationV1::ReplicatingStep, decorator: Google::Apis::VmmigrationV1::ReplicatingStep::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class DataDiskImageImport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DatacenterConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance_infrastructure_version, as: 'applianceInfrastructureVersion'
          property :appliance_software_version, as: 'applianceSoftwareVersion'
          property :available_versions, as: 'availableVersions', class: Google::Apis::VmmigrationV1::AvailableUpdates, decorator: Google::Apis::VmmigrationV1::AvailableUpdates::Representation
      
          property :bucket, as: 'bucket'
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :registration_id, as: 'registrationId'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :update_time, as: 'updateTime'
          property :upgrade_status, as: 'upgradeStatus', class: Google::Apis::VmmigrationV1::UpgradeStatus, decorator: Google::Apis::VmmigrationV1::UpgradeStatus::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lun, as: 'lun'
          property :name, as: 'name'
          property :size_gb, as: 'sizeGb'
        end
      end
      
      class DiskImageDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_image, as: 'sourceImage'
        end
      end
      
      class DiskImageTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :data_disk_image_import, as: 'dataDiskImageImport', class: Google::Apis::VmmigrationV1::DataDiskImageImport, decorator: Google::Apis::VmmigrationV1::DataDiskImageImport::Representation
      
          property :description, as: 'description'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :family_name, as: 'familyName'
          property :image_name, as: 'imageName'
          hash :labels, as: 'labels'
          property :os_adaptation_parameters, as: 'osAdaptationParameters', class: Google::Apis::VmmigrationV1::ImageImportOsAdaptationParameters, decorator: Google::Apis::VmmigrationV1::ImageImportOsAdaptationParameters::Representation
      
          property :single_region_storage, as: 'singleRegionStorage'
          property :target_project, as: 'targetProject'
        end
      end
      
      class DisksMigrationDisksTargetDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisksMigrationDisksTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisksMigrationVmTargetDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :boot_disk_defaults, as: 'bootDiskDefaults', class: Google::Apis::VmmigrationV1::BootDiskDefaults, decorator: Google::Apis::VmmigrationV1::BootDiskDefaults::Representation
      
          property :compute_scheduling, as: 'computeScheduling', class: Google::Apis::VmmigrationV1::ComputeScheduling, decorator: Google::Apis::VmmigrationV1::ComputeScheduling::Representation
      
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_vtpm, as: 'enableVtpm'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :machine_type_series, as: 'machineTypeSeries'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          collection :network_tags, as: 'networkTags'
          property :secure_boot, as: 'secureBoot'
          property :service_account, as: 'serviceAccount'
          property :vm_name, as: 'vmName'
        end
      end
      
      class DisksMigrationVmTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_uri, as: 'vmUri'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Encryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class Expiration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :extendable, as: 'extendable'
          property :extension_count, as: 'extensionCount'
        end
      end
      
      class ExtendMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_vms, as: 'awsVms', class: Google::Apis::VmmigrationV1::AwsVmsDetails, decorator: Google::Apis::VmmigrationV1::AwsVmsDetails::Representation
      
          property :azure_vms, as: 'azureVms', class: Google::Apis::VmmigrationV1::AzureVmsDetails, decorator: Google::Apis::VmmigrationV1::AzureVmsDetails::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :update_time, as: 'updateTime'
          property :vmware_vms, as: 'vmwareVms', class: Google::Apis::VmmigrationV1::VmwareVmsDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmsDetails::Representation
      
        end
      end
      
      class FinalizeMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :migration_target_type, as: 'migrationTargetType'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ImageImport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_uri, as: 'cloudStorageUri'
          property :create_time, as: 'createTime'
          property :disk_image_target_defaults, as: 'diskImageTargetDefaults', class: Google::Apis::VmmigrationV1::DiskImageTargetDetails, decorator: Google::Apis::VmmigrationV1::DiskImageTargetDetails::Representation
      
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :machine_image_target_defaults, as: 'machineImageTargetDefaults', class: Google::Apis::VmmigrationV1::MachineImageTargetDetails, decorator: Google::Apis::VmmigrationV1::MachineImageTargetDetails::Representation
      
          property :name, as: 'name'
          collection :recent_image_import_jobs, as: 'recentImageImportJobs', class: Google::Apis::VmmigrationV1::ImageImportJob, decorator: Google::Apis::VmmigrationV1::ImageImportJob::Representation
      
        end
      end
      
      class ImageImportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_uri, as: 'cloudStorageUri'
          property :create_time, as: 'createTime'
          collection :created_resources, as: 'createdResources'
          property :disk_image_target_details, as: 'diskImageTargetDetails', class: Google::Apis::VmmigrationV1::DiskImageTargetDetails, decorator: Google::Apis::VmmigrationV1::DiskImageTargetDetails::Representation
      
          property :end_time, as: 'endTime'
          collection :errors, as: 'errors', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :machine_image_target_details, as: 'machineImageTargetDetails', class: Google::Apis::VmmigrationV1::MachineImageTargetDetails, decorator: Google::Apis::VmmigrationV1::MachineImageTargetDetails::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::VmmigrationV1::ImageImportStep, decorator: Google::Apis::VmmigrationV1::ImageImportStep::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::VmmigrationV1::MigrationWarning, decorator: Google::Apis::VmmigrationV1::MigrationWarning::Representation
      
        end
      end
      
      class ImageImportOsAdaptationParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_conversion, as: 'bootConversion'
          property :generalize, as: 'generalize'
          property :license_type, as: 'licenseType'
        end
      end
      
      class ImageImportStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapting_os, as: 'adaptingOs', class: Google::Apis::VmmigrationV1::AdaptingOsStep, decorator: Google::Apis::VmmigrationV1::AdaptingOsStep::Representation
      
          property :creating_image, as: 'creatingImage', class: Google::Apis::VmmigrationV1::CreatingImageStep, decorator: Google::Apis::VmmigrationV1::CreatingImageStep::Representation
      
          property :end_time, as: 'endTime'
          property :initializing, as: 'initializing', class: Google::Apis::VmmigrationV1::InitializingImageImportStep, decorator: Google::Apis::VmmigrationV1::InitializingImageImportStep::Representation
      
          property :loading_source_files, as: 'loadingSourceFiles', class: Google::Apis::VmmigrationV1::LoadingImageSourceFilesStep, decorator: Google::Apis::VmmigrationV1::LoadingImageSourceFilesStep::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class InitializingImageImportStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InitializingReplicationStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InstantiatingMigratedVmStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :url, as: 'url'
        end
      end
      
      class ListCloneJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clone_jobs, as: 'cloneJobs', class: Google::Apis::VmmigrationV1::CloneJob, decorator: Google::Apis::VmmigrationV1::CloneJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCutoverJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cutover_jobs, as: 'cutoverJobs', class: Google::Apis::VmmigrationV1::CutoverJob, decorator: Google::Apis::VmmigrationV1::CutoverJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDatacenterConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datacenter_connectors, as: 'datacenterConnectors', class: Google::Apis::VmmigrationV1::DatacenterConnector, decorator: Google::Apis::VmmigrationV1::DatacenterConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::VmmigrationV1::Group, decorator: Google::Apis::VmmigrationV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListImageImportJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_import_jobs, as: 'imageImportJobs', class: Google::Apis::VmmigrationV1::ImageImportJob, decorator: Google::Apis::VmmigrationV1::ImageImportJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListImageImportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_imports, as: 'imageImports', class: Google::Apis::VmmigrationV1::ImageImport, decorator: Google::Apis::VmmigrationV1::ImageImport::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::VmmigrationV1::Location, decorator: Google::Apis::VmmigrationV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMigratingVmsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migrating_vms, as: 'migratingVms', class: Google::Apis::VmmigrationV1::MigratingVm, decorator: Google::Apis::VmmigrationV1::MigratingVm::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::VmmigrationV1::Operation, decorator: Google::Apis::VmmigrationV1::Operation::Representation
      
        end
      end
      
      class ListReplicationCyclesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :replication_cycles, as: 'replicationCycles', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::VmmigrationV1::Source, decorator: Google::Apis::VmmigrationV1::Source::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTargetProjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_projects, as: 'targetProjects', class: Google::Apis::VmmigrationV1::TargetProject, decorator: Google::Apis::VmmigrationV1::TargetProject::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUtilizationReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :utilization_reports, as: 'utilizationReports', class: Google::Apis::VmmigrationV1::UtilizationReport, decorator: Google::Apis::VmmigrationV1::UtilizationReport::Representation
      
        end
      end
      
      class LoadingImageSourceFilesStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LocalizedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :message, as: 'message'
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
      
      class MachineImageParametersOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
        end
      end
      
      class MachineImageTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :description, as: 'description'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          hash :labels, as: 'labels'
          property :machine_image_name, as: 'machineImageName'
          property :machine_image_parameters_overrides, as: 'machineImageParametersOverrides', class: Google::Apis::VmmigrationV1::MachineImageParametersOverrides, decorator: Google::Apis::VmmigrationV1::MachineImageParametersOverrides::Representation
      
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          property :os_adaptation_parameters, as: 'osAdaptationParameters', class: Google::Apis::VmmigrationV1::ImageImportOsAdaptationParameters, decorator: Google::Apis::VmmigrationV1::ImageImportOsAdaptationParameters::Representation
      
          property :service_account, as: 'serviceAccount', class: Google::Apis::VmmigrationV1::ServiceAccount, decorator: Google::Apis::VmmigrationV1::ServiceAccount::Representation
      
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::VmmigrationV1::ShieldedInstanceConfig, decorator: Google::Apis::VmmigrationV1::ShieldedInstanceConfig::Representation
      
          property :single_region_storage, as: 'singleRegionStorage'
          property :skip_os_adaptation, as: 'skipOsAdaptation', class: Google::Apis::VmmigrationV1::SkipOsAdaptation, decorator: Google::Apis::VmmigrationV1::SkipOsAdaptation::Representation
      
          collection :tags, as: 'tags'
          property :target_project, as: 'targetProject'
        end
      end
      
      class MigratingVm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_source_vm_details, as: 'awsSourceVmDetails', class: Google::Apis::VmmigrationV1::AwsSourceVmDetails, decorator: Google::Apis::VmmigrationV1::AwsSourceVmDetails::Representation
      
          property :azure_source_vm_details, as: 'azureSourceVmDetails', class: Google::Apis::VmmigrationV1::AzureSourceVmDetails, decorator: Google::Apis::VmmigrationV1::AzureSourceVmDetails::Representation
      
          property :compute_engine_disks_target_defaults, as: 'computeEngineDisksTargetDefaults', class: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDefaults, decorator: Google::Apis::VmmigrationV1::ComputeEngineDisksTargetDefaults::Representation
      
          property :compute_engine_target_defaults, as: 'computeEngineTargetDefaults', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDefaults, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDefaults::Representation
      
          property :create_time, as: 'createTime'
          property :current_sync_info, as: 'currentSyncInfo', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          property :cutover_forecast, as: 'cutoverForecast', class: Google::Apis::VmmigrationV1::CutoverForecast, decorator: Google::Apis::VmmigrationV1::CutoverForecast::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :expiration, as: 'expiration', class: Google::Apis::VmmigrationV1::Expiration, decorator: Google::Apis::VmmigrationV1::Expiration::Representation
      
          property :group, as: 'group'
          hash :labels, as: 'labels'
          property :last_replication_cycle, as: 'lastReplicationCycle', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          property :last_sync, as: 'lastSync', class: Google::Apis::VmmigrationV1::ReplicationSync, decorator: Google::Apis::VmmigrationV1::ReplicationSync::Representation
      
          property :name, as: 'name'
          property :policy, as: 'policy', class: Google::Apis::VmmigrationV1::SchedulePolicy, decorator: Google::Apis::VmmigrationV1::SchedulePolicy::Representation
      
          collection :recent_clone_jobs, as: 'recentCloneJobs', class: Google::Apis::VmmigrationV1::CloneJob, decorator: Google::Apis::VmmigrationV1::CloneJob::Representation
      
          collection :recent_cutover_jobs, as: 'recentCutoverJobs', class: Google::Apis::VmmigrationV1::CutoverJob, decorator: Google::Apis::VmmigrationV1::CutoverJob::Representation
      
          property :source_vm_id, as: 'sourceVmId'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :update_time, as: 'updateTime'
          property :vmware_source_vm_details, as: 'vmwareSourceVmDetails', class: Google::Apis::VmmigrationV1::VmwareSourceVmDetails, decorator: Google::Apis::VmmigrationV1::VmwareSourceVmDetails::Representation
      
        end
      end
      
      class MigrationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_item, as: 'actionItem', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :code, as: 'code'
          property :error_message, as: 'errorMessage', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :error_time, as: 'errorTime'
          collection :help_links, as: 'helpLinks', class: Google::Apis::VmmigrationV1::Link, decorator: Google::Apis::VmmigrationV1::Link::Representation
      
        end
      end
      
      class MigrationWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_item, as: 'actionItem', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :code, as: 'code'
          collection :help_links, as: 'helpLinks', class: Google::Apis::VmmigrationV1::Link, decorator: Google::Apis::VmmigrationV1::Link::Representation
      
          property :warning_message, as: 'warningMessage', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :warning_time, as: 'warningTime'
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ip, as: 'externalIp'
          property :internal_ip, as: 'internalIp'
          property :network, as: 'network'
          property :network_tier, as: 'networkTier'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class OsDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer, as: 'offer'
          property :plan, as: 'plan'
          property :publisher, as: 'publisher'
          property :type, as: 'type'
        end
      end
      
      class OsDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :size_gb, as: 'sizeGb'
          property :type, as: 'type'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PauseMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PersistentDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_uri, as: 'diskUri'
          property :source_disk_number, as: 'sourceDiskNumber'
        end
      end
      
      class PersistentDiskDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_labels, as: 'additionalLabels'
          property :disk_name, as: 'diskName'
          property :disk_type, as: 'diskType'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          property :source_disk_number, as: 'sourceDiskNumber'
          property :vm_attachment_details, as: 'vmAttachmentDetails', class: Google::Apis::VmmigrationV1::VmAttachmentDetails, decorator: Google::Apis::VmmigrationV1::VmAttachmentDetails::Representation
      
        end
      end
      
      class PostProcessingStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PreparingVmDisksStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RemoveGroupMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrating_vm, as: 'migratingVm'
        end
      end
      
      class ReplicatingStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_thirty_minutes_average_bytes_per_second, :numeric_string => true, as: 'lastThirtyMinutesAverageBytesPerSecond'
          property :last_two_minutes_average_bytes_per_second, :numeric_string => true, as: 'lastTwoMinutesAverageBytesPerSecond'
          property :replicated_bytes, :numeric_string => true, as: 'replicatedBytes'
          property :total_bytes, :numeric_string => true, as: 'totalBytes'
        end
      end
      
      class ReplicationCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cycle_number, as: 'cycleNumber'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::VmmigrationV1::CycleStep, decorator: Google::Apis::VmmigrationV1::CycleStep::Representation
      
          property :total_pause_duration, as: 'totalPauseDuration'
          collection :warnings, as: 'warnings', class: Google::Apis::VmmigrationV1::MigrationWarning, decorator: Google::Apis::VmmigrationV1::MigrationWarning::Representation
      
        end
      end
      
      class ReplicationSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_sync_time, as: 'lastSyncTime'
        end
      end
      
      class ResumeMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idle_duration, as: 'idleDuration'
          property :skip_os_adaptation, as: 'skipOsAdaptation'
        end
      end
      
      class SchedulingNodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_vtpm, as: 'enableVtpm'
          property :secure_boot, as: 'secureBoot'
        end
      end
      
      class ShuttingDownSourceVmStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SkipOsAdaptation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws, as: 'aws', class: Google::Apis::VmmigrationV1::AwsSourceDetails, decorator: Google::Apis::VmmigrationV1::AwsSourceDetails::Representation
      
          property :azure, as: 'azure', class: Google::Apis::VmmigrationV1::AzureSourceDetails, decorator: Google::Apis::VmmigrationV1::AzureSourceDetails::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :encryption, as: 'encryption', class: Google::Apis::VmmigrationV1::Encryption, decorator: Google::Apis::VmmigrationV1::Encryption::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :vmware, as: 'vmware', class: Google::Apis::VmmigrationV1::VmwareSourceDetails, decorator: Google::Apis::VmmigrationV1::VmwareSourceDetails::Representation
      
        end
      end
      
      class StartMigrationRequest
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
      
      class Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class TargetProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :project, as: 'project'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UpgradeApplianceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class UpgradeStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :previous_version, as: 'previousVersion'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class UtilizationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :frame_end_time, as: 'frameEndTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :time_frame, as: 'timeFrame'
          property :vm_count, as: 'vmCount'
          collection :vms, as: 'vms', class: Google::Apis::VmmigrationV1::VmUtilizationInfo, decorator: Google::Apis::VmmigrationV1::VmUtilizationInfo::Representation
      
        end
      end
      
      class VmAttachmentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_name, as: 'deviceName'
        end
      end
      
      class VmCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_os_capabilities_update_time, as: 'lastOsCapabilitiesUpdateTime'
          collection :os_capabilities, as: 'osCapabilities'
        end
      end
      
      class VmUtilizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization, as: 'utilization', class: Google::Apis::VmmigrationV1::VmUtilizationMetrics, decorator: Google::Apis::VmmigrationV1::VmUtilizationMetrics::Representation
      
          property :vm_id, as: 'vmId'
          property :vmware_vm_details, as: 'vmwareVmDetails', class: Google::Apis::VmmigrationV1::VmwareVmDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmDetails::Representation
      
        end
      end
      
      class VmUtilizationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_average_percent, as: 'cpuAveragePercent'
          property :cpu_max_percent, as: 'cpuMaxPercent'
          property :disk_io_rate_average_kbps, :numeric_string => true, as: 'diskIoRateAverageKbps'
          property :disk_io_rate_max_kbps, :numeric_string => true, as: 'diskIoRateMaxKbps'
          property :memory_average_percent, as: 'memoryAveragePercent'
          property :memory_max_percent, as: 'memoryMaxPercent'
          property :network_throughput_average_kbps, :numeric_string => true, as: 'networkThroughputAverageKbps'
          property :network_throughput_max_kbps, :numeric_string => true, as: 'networkThroughputMaxKbps'
        end
      end
      
      class VmwareDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_number, as: 'diskNumber'
          property :label, as: 'label'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
        end
      end
      
      class VmwareSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :resolved_vcenter_host, as: 'resolvedVcenterHost'
          property :thumbprint, as: 'thumbprint'
          property :username, as: 'username'
          property :vcenter_ip, as: 'vcenterIp'
        end
      end
      
      class VmwareSourceVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :committed_storage_bytes, :numeric_string => true, as: 'committedStorageBytes'
          collection :disks, as: 'disks', class: Google::Apis::VmmigrationV1::VmwareDiskDetails, decorator: Google::Apis::VmmigrationV1::VmwareDiskDetails::Representation
      
          property :firmware, as: 'firmware'
          property :vm_capabilities_info, as: 'vmCapabilitiesInfo', class: Google::Apis::VmmigrationV1::VmCapabilities, decorator: Google::Apis::VmmigrationV1::VmCapabilities::Representation
      
        end
      end
      
      class VmwareVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :boot_option, as: 'bootOption'
          property :committed_storage_mb, :numeric_string => true, as: 'committedStorageMb'
          property :cpu_count, as: 'cpuCount'
          property :datacenter_description, as: 'datacenterDescription'
          property :datacenter_id, as: 'datacenterId'
          property :disk_count, as: 'diskCount'
          property :display_name, as: 'displayName'
          property :guest_description, as: 'guestDescription'
          property :memory_mb, as: 'memoryMb'
          property :power_state, as: 'powerState'
          property :uuid, as: 'uuid'
          property :vm_id, as: 'vmId'
        end
      end
      
      class VmwareVmsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::VmmigrationV1::VmwareVmDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmDetails::Representation
      
        end
      end
    end
  end
end
