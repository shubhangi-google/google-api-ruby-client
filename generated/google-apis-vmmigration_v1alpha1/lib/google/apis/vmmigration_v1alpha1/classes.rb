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
    module VmmigrationV1alpha1
      
      # Message describing AWS Credentials using access key id and secret.
      class AccessKeyCredentials
        include Google::Apis::Core::Hashable
      
        # AWS access key ID.
        # Corresponds to the JSON property `accessKeyId`
        # @return [String]
        attr_accessor :access_key_id
      
        # Input only. AWS secret access key.
        # Corresponds to the JSON property `secretAccessKey`
        # @return [String]
        attr_accessor :secret_access_key
      
        # Input only. AWS session token. Used only when AWS security token service (STS)
        # is responsible for creating the temporary credentials.
        # Corresponds to the JSON property `sessionToken`
        # @return [String]
        attr_accessor :session_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_key_id = args[:access_key_id] if args.key?(:access_key_id)
          @secret_access_key = args[:secret_access_key] if args.key?(:secret_access_key)
          @session_token = args[:session_token] if args.key?(:session_token)
        end
      end
      
      # AdaptingOSStep contains specific step details.
      class AdaptingOsStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'AddGroupMigration' request.
      class AddGroupMigrationRequest
        include Google::Apis::Core::Hashable
      
        # The full path name of the MigratingVm to add.
        # Corresponds to the JSON property `migratingVm`
        # @return [String]
        attr_accessor :migrating_vm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vm = args[:migrating_vm] if args.key?(:migrating_vm)
        end
      end
      
      # Describes an appliance version.
      class ApplianceVersion
        include Google::Apis::Core::Hashable
      
        # Determine whether it's critical to upgrade the appliance to this version.
        # Corresponds to the JSON property `critical`
        # @return [Boolean]
        attr_accessor :critical
        alias_method :critical?, :critical
      
        # Link to a page that contains the version release notes.
        # Corresponds to the JSON property `releaseNotesUri`
        # @return [String]
        attr_accessor :release_notes_uri
      
        # A link for downloading the version.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The appliance version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @critical = args[:critical] if args.key?(:critical)
          @release_notes_uri = args[:release_notes_uri] if args.key?(:release_notes_uri)
          @uri = args[:uri] if args.key?(:uri)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # AppliedLicense holds the license data returned by adaptation module report.
      class AppliedLicense
        include Google::Apis::Core::Hashable
      
        # The OS license returned from the adaptation module's report.
        # Corresponds to the JSON property `osLicense`
        # @return [String]
        attr_accessor :os_license
      
        # The license type that was used in OS adaptation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_license = args[:os_license] if args.key?(:os_license)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Holds information about the available versions for upgrade.
      class AvailableUpdates
        include Google::Apis::Core::Hashable
      
        # Describes an appliance version.
        # Corresponds to the JSON property `inPlaceUpdate`
        # @return [Google::Apis::VmmigrationV1alpha1::ApplianceVersion]
        attr_accessor :in_place_update
      
        # Describes an appliance version.
        # Corresponds to the JSON property `newDeployableAppliance`
        # @return [Google::Apis::VmmigrationV1alpha1::ApplianceVersion]
        attr_accessor :new_deployable_appliance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @in_place_update = args[:in_place_update] if args.key?(:in_place_update)
          @new_deployable_appliance = args[:new_deployable_appliance] if args.key?(:new_deployable_appliance)
        end
      end
      
      # The details of an AWS instance disk.
      class AwsDiskDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The ordinal number of the disk.
        # Corresponds to the JSON property `diskNumber`
        # @return [Fixnum]
        attr_accessor :disk_number
      
        # Output only. Size in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Output only. AWS volume ID.
        # Corresponds to the JSON property `volumeId`
        # @return [String]
        attr_accessor :volume_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_number = args[:disk_number] if args.key?(:disk_number)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @volume_id = args[:volume_id] if args.key?(:volume_id)
        end
      end
      
      # AwsSecurityGroup describes a security group of an AWS VM.
      class AwsSecurityGroup
        include Google::Apis::Core::Hashable
      
        # The AWS security group id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The AWS security group name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # AwsSourceDetails message describes a specific source details for the AWS
      # source type.
      class AwsSourceDetails
        include Google::Apis::Core::Hashable
      
        # Message describing AWS Credentials using access key id and secret.
        # Corresponds to the JSON property `accessKeyCreds`
        # @return [Google::Apis::VmmigrationV1alpha1::AccessKeyCredentials]
        attr_accessor :access_key_creds
      
        # Immutable. The AWS region that the source VMs will be migrated from.
        # Corresponds to the JSON property `awsRegion`
        # @return [String]
        attr_accessor :aws_region
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # AWS security group names to limit the scope of the source inventory.
        # Corresponds to the JSON property `inventorySecurityGroupNames`
        # @return [Array<String>]
        attr_accessor :inventory_security_group_names
      
        # AWS resource tags to limit the scope of the source inventory.
        # Corresponds to the JSON property `inventoryTagList`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Tag>]
        attr_accessor :inventory_tag_list
      
        # User specified tags to add to every M2VM generated resource in AWS. These tags
        # will be set in addition to the default tags that are set as part of the
        # migration process. The tags must not begin with the reserved prefix `m2vm`.
        # Corresponds to the JSON property `migrationResourcesUserTags`
        # @return [Hash<String,String>]
        attr_accessor :migration_resources_user_tags
      
        # Output only. The source's public IP. All communication initiated by this
        # source will originate from this IP.
        # Corresponds to the JSON property `publicIp`
        # @return [String]
        attr_accessor :public_ip
      
        # Output only. State of the source as determined by the health check.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_key_creds = args[:access_key_creds] if args.key?(:access_key_creds)
          @aws_region = args[:aws_region] if args.key?(:aws_region)
          @error = args[:error] if args.key?(:error)
          @inventory_security_group_names = args[:inventory_security_group_names] if args.key?(:inventory_security_group_names)
          @inventory_tag_list = args[:inventory_tag_list] if args.key?(:inventory_tag_list)
          @migration_resources_user_tags = args[:migration_resources_user_tags] if args.key?(:migration_resources_user_tags)
          @public_ip = args[:public_ip] if args.key?(:public_ip)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represent the source AWS VM details.
      class AwsSourceVmDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The VM architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The total size of the disks being migrated in bytes.
        # Corresponds to the JSON property `committedStorageBytes`
        # @return [Fixnum]
        attr_accessor :committed_storage_bytes
      
        # Output only. The disks attached to the source VM.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::AwsDiskDetails>]
        attr_accessor :disks
      
        # Output only. The firmware type of the source VM.
        # Corresponds to the JSON property `firmware`
        # @return [String]
        attr_accessor :firmware
      
        # Migrating VM source information about the VM capabilities needed for some
        # Compute Engine features.
        # Corresponds to the JSON property `vmCapabilitiesInfo`
        # @return [Google::Apis::VmmigrationV1alpha1::VmCapabilities]
        attr_accessor :vm_capabilities_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @committed_storage_bytes = args[:committed_storage_bytes] if args.key?(:committed_storage_bytes)
          @disks = args[:disks] if args.key?(:disks)
          @firmware = args[:firmware] if args.key?(:firmware)
          @vm_capabilities_info = args[:vm_capabilities_info] if args.key?(:vm_capabilities_info)
        end
      end
      
      # AwsVmDetails describes a VM in AWS.
      class AwsVmDetails
        include Google::Apis::Core::Hashable
      
        # The CPU architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The VM Boot Option.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # The total size of the storage allocated to the VM in MB.
        # Corresponds to the JSON property `committedStorageMb`
        # @return [Fixnum]
        attr_accessor :committed_storage_mb
      
        # The number of CPU cores the VM has.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # The number of disks the VM has.
        # Corresponds to the JSON property `diskCount`
        # @return [Fixnum]
        attr_accessor :disk_count
      
        # The display name of the VM. Note that this value is not necessarily unique.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The instance type of the VM.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # The memory size of the VM in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # The VM's OS.
        # Corresponds to the JSON property `osDescription`
        # @return [String]
        attr_accessor :os_description
      
        # Output only. The power state of the VM at the moment list was taken.
        # Corresponds to the JSON property `powerState`
        # @return [String]
        attr_accessor :power_state
      
        # The security groups the VM belongs to.
        # Corresponds to the JSON property `securityGroups`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::AwsSecurityGroup>]
        attr_accessor :security_groups
      
        # The descriptive name of the AWS's source this VM is connected to.
        # Corresponds to the JSON property `sourceDescription`
        # @return [String]
        attr_accessor :source_description
      
        # The id of the AWS's source this VM is connected to.
        # Corresponds to the JSON property `sourceId`
        # @return [String]
        attr_accessor :source_id
      
        # The tags of the VM.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # The number of vCPUs the VM has. It is calculated as the number of CPU cores *
        # threads per CPU the VM has.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Fixnum]
        attr_accessor :vcpu_count
      
        # The virtualization type.
        # Corresponds to the JSON property `virtualizationType`
        # @return [String]
        attr_accessor :virtualization_type
      
        # The VM ID in AWS.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # The VPC ID the VM belongs to.
        # Corresponds to the JSON property `vpcId`
        # @return [String]
        attr_accessor :vpc_id
      
        # The AWS zone of the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @committed_storage_mb = args[:committed_storage_mb] if args.key?(:committed_storage_mb)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @disk_count = args[:disk_count] if args.key?(:disk_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @os_description = args[:os_description] if args.key?(:os_description)
          @power_state = args[:power_state] if args.key?(:power_state)
          @security_groups = args[:security_groups] if args.key?(:security_groups)
          @source_description = args[:source_description] if args.key?(:source_description)
          @source_id = args[:source_id] if args.key?(:source_id)
          @tags = args[:tags] if args.key?(:tags)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
          @virtualization_type = args[:virtualization_type] if args.key?(:virtualization_type)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
          @vpc_id = args[:vpc_id] if args.key?(:vpc_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # AWSVmsDetails describes VMs in AWS.
      class AwsVmsDetails
        include Google::Apis::Core::Hashable
      
        # The details of the AWS VMs.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::AwsVmDetails>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # The details of an Azure VM disk.
      class AzureDiskDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Azure disk ID.
        # Corresponds to the JSON property `diskId`
        # @return [String]
        attr_accessor :disk_id
      
        # Output only. The ordinal number of the disk.
        # Corresponds to the JSON property `diskNumber`
        # @return [Fixnum]
        attr_accessor :disk_number
      
        # Output only. Size in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_id = args[:disk_id] if args.key?(:disk_id)
          @disk_number = args[:disk_number] if args.key?(:disk_number)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # AzureSourceDetails message describes a specific source details for the Azure
      # source type.
      class AzureSourceDetails
        include Google::Apis::Core::Hashable
      
        # Immutable. The Azure location (region) that the source VMs will be migrated
        # from.
        # Corresponds to the JSON property `azureLocation`
        # @return [String]
        attr_accessor :azure_location
      
        # Message describing Azure Credentials using tenant ID, client ID and secret.
        # Corresponds to the JSON property `clientSecretCreds`
        # @return [Google::Apis::VmmigrationV1alpha1::ClientSecretCredentials]
        attr_accessor :client_secret_creds
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # User specified tags to add to every M2VM generated resource in Azure. These
        # tags will be set in addition to the default tags that are set as part of the
        # migration process. The tags must not begin with the reserved prefix `m4ce` or `
        # m2vm`.
        # Corresponds to the JSON property `migrationResourcesUserTags`
        # @return [Hash<String,String>]
        attr_accessor :migration_resources_user_tags
      
        # Output only. The ID of the Azure resource group that contains all resources
        # related to the migration process of this source.
        # Corresponds to the JSON property `resourceGroupId`
        # @return [String]
        attr_accessor :resource_group_id
      
        # Output only. State of the source as determined by the health check.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Immutable. Azure subscription ID.
        # Corresponds to the JSON property `subscriptionId`
        # @return [String]
        attr_accessor :subscription_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azure_location = args[:azure_location] if args.key?(:azure_location)
          @client_secret_creds = args[:client_secret_creds] if args.key?(:client_secret_creds)
          @error = args[:error] if args.key?(:error)
          @migration_resources_user_tags = args[:migration_resources_user_tags] if args.key?(:migration_resources_user_tags)
          @resource_group_id = args[:resource_group_id] if args.key?(:resource_group_id)
          @state = args[:state] if args.key?(:state)
          @subscription_id = args[:subscription_id] if args.key?(:subscription_id)
        end
      end
      
      # Represent the source Azure VM details.
      class AzureSourceVmDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The VM architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The total size of the disks being migrated in bytes.
        # Corresponds to the JSON property `committedStorageBytes`
        # @return [Fixnum]
        attr_accessor :committed_storage_bytes
      
        # Output only. The disks attached to the source VM.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::AzureDiskDetails>]
        attr_accessor :disks
      
        # Output only. The firmware type of the source VM.
        # Corresponds to the JSON property `firmware`
        # @return [String]
        attr_accessor :firmware
      
        # Migrating VM source information about the VM capabilities needed for some
        # Compute Engine features.
        # Corresponds to the JSON property `vmCapabilitiesInfo`
        # @return [Google::Apis::VmmigrationV1alpha1::VmCapabilities]
        attr_accessor :vm_capabilities_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @committed_storage_bytes = args[:committed_storage_bytes] if args.key?(:committed_storage_bytes)
          @disks = args[:disks] if args.key?(:disks)
          @firmware = args[:firmware] if args.key?(:firmware)
          @vm_capabilities_info = args[:vm_capabilities_info] if args.key?(:vm_capabilities_info)
        end
      end
      
      # AzureVmDetails describes a VM in Azure.
      class AzureVmDetails
        include Google::Apis::Core::Hashable
      
        # The CPU architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The VM Boot Option.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # The total size of the storage allocated to the VM in MB.
        # Corresponds to the JSON property `committedStorageMb`
        # @return [Fixnum]
        attr_accessor :committed_storage_mb
      
        # The VM's ComputerName.
        # Corresponds to the JSON property `computerName`
        # @return [String]
        attr_accessor :computer_name
      
        # The number of cpus the VM has.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # The number of disks the VM has, including OS disk.
        # Corresponds to the JSON property `diskCount`
        # @return [Fixnum]
        attr_accessor :disk_count
      
        # Description of the data disks.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Disk>]
        attr_accessor :disks
      
        # The memory size of the VM in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # A message describing the VM's OS. Including OS, Publisher, Offer and Plan if
        # applicable.
        # Corresponds to the JSON property `osDescription`
        # @return [Google::Apis::VmmigrationV1alpha1::OsDescription]
        attr_accessor :os_description
      
        # A message describing the OS disk.
        # Corresponds to the JSON property `osDisk`
        # @return [Google::Apis::VmmigrationV1alpha1::OsDisk]
        attr_accessor :os_disk
      
        # The power state of the VM at the moment list was taken.
        # Corresponds to the JSON property `powerState`
        # @return [String]
        attr_accessor :power_state
      
        # The tags of the VM.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # The VM full path in Azure.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # VM size as configured in Azure. Determines the VM's hardware spec.
        # Corresponds to the JSON property `vmSize`
        # @return [String]
        attr_accessor :vm_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @committed_storage_mb = args[:committed_storage_mb] if args.key?(:committed_storage_mb)
          @computer_name = args[:computer_name] if args.key?(:computer_name)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @disk_count = args[:disk_count] if args.key?(:disk_count)
          @disks = args[:disks] if args.key?(:disks)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @os_description = args[:os_description] if args.key?(:os_description)
          @os_disk = args[:os_disk] if args.key?(:os_disk)
          @power_state = args[:power_state] if args.key?(:power_state)
          @tags = args[:tags] if args.key?(:tags)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
          @vm_size = args[:vm_size] if args.key?(:vm_size)
        end
      end
      
      # AzureVmsDetails describes VMs in Azure.
      class AzureVmsDetails
        include Google::Apis::Core::Hashable
      
        # The details of the Azure VMs.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::AzureVmDetails>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # BootDiskDefaults hold information about the boot disk of a VM.
      class BootDiskDefaults
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a unique device name of your choice that is reflected into
        # the /dev/disk/by-id/google-* tree of a Linux operating system running within
        # the instance. If not specified, the server chooses a default device name to
        # apply to this disk, in the form persistent-disk-x, where x is a number
        # assigned by Google Compute Engine. This field is only applicable for
        # persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Optional. The name of the disk.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # Optional. The type of disk provisioning to use for the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # Contains details about the image source used to create the disk.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::VmmigrationV1alpha1::DiskImageDefaults]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @encryption = args[:encryption] if args.key?(:encryption)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # Request message for 'CancelCloneJob' request.
      class CancelCloneJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'CancelCutoverJob' request.
      class CancelCutoverJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'CancelImageImportJob' request.
      class CancelImageImportJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message describing Azure Credentials using tenant ID, client ID and secret.
      class ClientSecretCredentials
        include Google::Apis::Core::Hashable
      
        # Azure client ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Input only. Azure client secret.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Azure tenant ID.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # CloneJob describes the process of creating a clone of a MigratingVM to the
      # requested target based on the latest successful uploaded snapshots. While the
      # migration cycles of a MigratingVm take place, it is possible to verify the
      # uploaded VM can be started in the cloud, by creating a clone. The clone can be
      # created without any downtime, and it is created using the latest snapshots
      # which are already in the cloud. The cloneJob is only responsible for its work,
      # not its products, which means once it is finished, it will never touch the
      # instance it created. It will only delete it in case of the CloneJob being
      # cancelled or upon failure to clone.
      class CloneJob
        include Google::Apis::Core::Hashable
      
        # ComputeEngineDisksTargetDetails is a collection of created Persistent Disks
        # details.
        # Corresponds to the JSON property `computeEngineDisksTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineDisksTargetDetails]
        attr_accessor :compute_engine_disks_target_details
      
        # ComputeEngineTargetDetails is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineTargetDetails]
        attr_accessor :compute_engine_target_details
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `computeEngineVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :compute_engine_vm_details
      
        # Output only. The time the clone job was created (as an API call, not when it
        # was actually created in the target).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the clone job was ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Output only. The name of the clone.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the clone job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. The clone steps list representing its progress.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CloneStep>]
        attr_accessor :steps
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `targetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :target_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_disks_target_details = args[:compute_engine_disks_target_details] if args.key?(:compute_engine_disks_target_details)
          @compute_engine_target_details = args[:compute_engine_target_details] if args.key?(:compute_engine_target_details)
          @compute_engine_vm_details = args[:compute_engine_vm_details] if args.key?(:compute_engine_vm_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @steps = args[:steps] if args.key?(:steps)
          @target_details = args[:target_details] if args.key?(:target_details)
        end
      end
      
      # CloneStep holds information about the clone step progress.
      class CloneStep
        include Google::Apis::Core::Hashable
      
        # AdaptingOSStep contains specific step details.
        # Corresponds to the JSON property `adaptingOs`
        # @return [Google::Apis::VmmigrationV1alpha1::AdaptingOsStep]
        attr_accessor :adapting_os
      
        # The time the step has ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # InstantiatingMigratedVMStep contains specific step details.
        # Corresponds to the JSON property `instantiatingMigratedVm`
        # @return [Google::Apis::VmmigrationV1alpha1::InstantiatingMigratedVmStep]
        attr_accessor :instantiating_migrated_vm
      
        # PreparingVMDisksStep contains specific step details.
        # Corresponds to the JSON property `preparingVmDisks`
        # @return [Google::Apis::VmmigrationV1alpha1::PreparingVmDisksStep]
        attr_accessor :preparing_vm_disks
      
        # The time the step has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapting_os = args[:adapting_os] if args.key?(:adapting_os)
          @end_time = args[:end_time] if args.key?(:end_time)
          @instantiating_migrated_vm = args[:instantiating_migrated_vm] if args.key?(:instantiating_migrated_vm)
          @preparing_vm_disks = args[:preparing_vm_disks] if args.key?(:preparing_vm_disks)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # ComputeEngineDisksTargetDefaults is a collection of details for creating
      # Persistent Disks in a target Compute Engine project.
      class ComputeEngineDisksTargetDefaults
        include Google::Apis::Core::Hashable
      
        # The details of each Persistent Disk to create.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::PersistentDiskDefaults>]
        attr_accessor :disks
      
        # Details for a disk only migration.
        # Corresponds to the JSON property `disksTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::DisksMigrationDisksTargetDefaults]
        attr_accessor :disks_target_defaults
      
        # The full path of the resource of type TargetProject which represents the
        # Compute Engine project in which to create the Persistent Disks.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # Details for creation of a VM that migrated data disks will be attached to.
        # Corresponds to the JSON property `vmTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::DisksMigrationVmTargetDefaults]
        attr_accessor :vm_target_defaults
      
        # The zone in which to create the Persistent Disks.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
          @disks_target_defaults = args[:disks_target_defaults] if args.key?(:disks_target_defaults)
          @target_project = args[:target_project] if args.key?(:target_project)
          @vm_target_defaults = args[:vm_target_defaults] if args.key?(:vm_target_defaults)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # ComputeEngineDisksTargetDetails is a collection of created Persistent Disks
      # details.
      class ComputeEngineDisksTargetDetails
        include Google::Apis::Core::Hashable
      
        # The details of each created Persistent Disk.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::PersistentDisk>]
        attr_accessor :disks
      
        # Details for a disks-only migration.
        # Corresponds to the JSON property `disksTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::DisksMigrationDisksTargetDetails]
        attr_accessor :disks_target_details
      
        # Details for the VM created VM as part of disks migration.
        # Corresponds to the JSON property `vmTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::DisksMigrationVmTargetDetails]
        attr_accessor :vm_target_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
          @disks_target_details = args[:disks_target_details] if args.key?(:disks_target_details)
          @vm_target_details = args[:vm_target_details] if args.key?(:vm_target_details)
        end
      end
      
      # ComputeEngineTargetDefaults is a collection of details for creating a VM in a
      # target Compute Engine project.
      class ComputeEngineTargetDefaults
        include Google::Apis::Core::Hashable
      
        # Additional licenses to assign to the VM.
        # Corresponds to the JSON property `additionalLicenses`
        # @return [Array<String>]
        attr_accessor :additional_licenses
      
        # AppliedLicense holds the license data returned by adaptation module report.
        # Corresponds to the JSON property `appliedLicense`
        # @return [Google::Apis::VmmigrationV1alpha1::AppliedLicense]
        attr_accessor :applied_license
      
        # Optional. By default the virtual machine will keep its existing boot option.
        # Setting this property will trigger an internal process which will convert the
        # virtual machine from using the existing boot option to another.
        # Corresponds to the JSON property `bootConversion`
        # @return [String]
        attr_accessor :boot_conversion
      
        # Output only. The VM Boot Option, as set in the source VM.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes. Options for instance behavior when the host
        # machine undergoes maintenance that may temporarily impact instance performance.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # Optional. Additional replica zones of the target regional disks. If this list
        # is not empty a regional disk will be created. The first supported zone would
        # be the one stated in the zone field. The rest are taken from this list. Please
        # refer to the [regional disk creation API](https://cloud.google.com/compute/
        # docs/regions-zones/global-regional-zonal-resources) for further details about
        # regional vs zonal disks. If not specified, a zonal disk will be created in the
        # same zone the VM is created.
        # Corresponds to the JSON property `diskReplicaZones`
        # @return [Array<String>]
        attr_accessor :disk_replica_zones
      
        # The disk type to use in the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Optional. Defines whether the instance has integrity monitoring enabled. This
        # can be set to true only if the VM boot option is EFI, and vTPM is enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether the instance has vTPM enabled. This can be set to
        # true only if the VM boot option is EFI.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # The hostname to assign to the VM.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The license type to use in OS adaptation.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The machine type series to create the VM with.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # List of NICs connected to this VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # A list of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Defines whether the instance has Secure Boot enabled. This can be set to true
        # only if the VM boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The full path of the resource of type TargetProject which represents the
        # Compute Engine project in which to create this VM.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # The name of the VM to create.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # The zone in which to create the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_licenses = args[:additional_licenses] if args.key?(:additional_licenses)
          @applied_license = args[:applied_license] if args.key?(:applied_license)
          @boot_conversion = args[:boot_conversion] if args.key?(:boot_conversion)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @disk_replica_zones = args[:disk_replica_zones] if args.key?(:disk_replica_zones)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
          @encryption = args[:encryption] if args.key?(:encryption)
          @hostname = args[:hostname] if args.key?(:hostname)
          @labels = args[:labels] if args.key?(:labels)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @target_project = args[:target_project] if args.key?(:target_project)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # ComputeEngineTargetDetails is a collection of details for creating a VM in a
      # target Compute Engine project.
      class ComputeEngineTargetDetails
        include Google::Apis::Core::Hashable
      
        # Additional licenses to assign to the VM.
        # Corresponds to the JSON property `additionalLicenses`
        # @return [Array<String>]
        attr_accessor :additional_licenses
      
        # AppliedLicense holds the license data returned by adaptation module report.
        # Corresponds to the JSON property `appliedLicense`
        # @return [Google::Apis::VmmigrationV1alpha1::AppliedLicense]
        attr_accessor :applied_license
      
        # Optional. By default the virtual machine will keep its existing boot option.
        # Setting this property will trigger an internal process which will convert the
        # virtual machine from using the existing boot option to another.
        # Corresponds to the JSON property `bootConversion`
        # @return [String]
        attr_accessor :boot_conversion
      
        # The VM Boot Option, as set in the source VM.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes. Options for instance behavior when the host
        # machine undergoes maintenance that may temporarily impact instance performance.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # Optional. Additional replica zones of the target regional disks. If this list
        # is not empty a regional disk will be created. The first supported zone would
        # be the one stated in the zone field. The rest are taken from this list. Please
        # refer to the [regional disk creation API](https://cloud.google.com/compute/
        # docs/regions-zones/global-regional-zonal-resources) for further details about
        # regional vs zonal disks. If not specified, a zonal disk will be created in the
        # same zone the VM is created.
        # Corresponds to the JSON property `diskReplicaZones`
        # @return [Array<String>]
        attr_accessor :disk_replica_zones
      
        # The disk type to use in the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Optional. Defines whether the instance has integrity monitoring enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether the instance has vTPM enabled.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # The hostname to assign to the VM.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The license type to use in OS adaptation.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The machine type series to create the VM with.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # List of NICs connected to this VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # A list of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # The Google Cloud target project ID or project name.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Defines whether the instance has Secure Boot enabled. This can be set to true
        # only if the VM boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The name of the VM to create.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # The zone in which to create the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_licenses = args[:additional_licenses] if args.key?(:additional_licenses)
          @applied_license = args[:applied_license] if args.key?(:applied_license)
          @boot_conversion = args[:boot_conversion] if args.key?(:boot_conversion)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @disk_replica_zones = args[:disk_replica_zones] if args.key?(:disk_replica_zones)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
          @encryption = args[:encryption] if args.key?(:encryption)
          @hostname = args[:hostname] if args.key?(:hostname)
          @labels = args[:labels] if args.key?(:labels)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @project = args[:project] if args.key?(:project)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Scheduling information for VM on maintenance/restart behaviour and node
      # allocation in sole tenant nodes. Options for instance behavior when the host
      # machine undergoes maintenance that may temporarily impact instance performance.
      class ComputeScheduling
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `automaticRestart`
        # @return [Boolean]
        attr_accessor :automatic_restart
        alias_method :automatic_restart?, :automatic_restart
      
        # The minimum number of virtual CPUs this instance will consume when running on
        # a sole-tenant node. Ignored if no node_affinites are configured.
        # Corresponds to the JSON property `minNodeCpus`
        # @return [Fixnum]
        attr_accessor :min_node_cpus
      
        # A set of node affinity and anti-affinity configurations for sole tenant nodes.
        # Corresponds to the JSON property `nodeAffinities`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::SchedulingNodeAffinity>]
        attr_accessor :node_affinities
      
        # How the instance should behave when the host machine undergoes maintenance
        # that may temporarily impact instance performance.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Whether the Instance should be automatically restarted whenever it is
        # terminated by Compute Engine (not terminated by user). This configuration is
        # identical to `automaticRestart` field in Compute Engine create instance under
        # scheduling. It was changed to an enum (instead of a boolean) to match the
        # default value in Compute Engine which is automatic restart.
        # Corresponds to the JSON property `restartType`
        # @return [String]
        attr_accessor :restart_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_restart = args[:automatic_restart] if args.key?(:automatic_restart)
          @min_node_cpus = args[:min_node_cpus] if args.key?(:min_node_cpus)
          @node_affinities = args[:node_affinities] if args.key?(:node_affinities)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @restart_type = args[:restart_type] if args.key?(:restart_type)
        end
      end
      
      # CreatingImageStep contains specific step details.
      class CreatingImageStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # CutoverForecast holds information about future CutoverJobs of a MigratingVm.
      class CutoverForecast
        include Google::Apis::Core::Hashable
      
        # Output only. Estimation of the CutoverJob duration.
        # Corresponds to the JSON property `estimatedCutoverJobDuration`
        # @return [String]
        attr_accessor :estimated_cutover_job_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_cutover_job_duration = args[:estimated_cutover_job_duration] if args.key?(:estimated_cutover_job_duration)
        end
      end
      
      # CutoverJob message describes a cutover of a migrating VM. The CutoverJob is
      # the operation of shutting down the VM, creating a snapshot and cloning the VM
      # using the replicated snapshot.
      class CutoverJob
        include Google::Apis::Core::Hashable
      
        # ComputeEngineDisksTargetDetails is a collection of created Persistent Disks
        # details.
        # Corresponds to the JSON property `computeEngineDisksTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineDisksTargetDetails]
        attr_accessor :compute_engine_disks_target_details
      
        # ComputeEngineTargetDetails is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineTargetDetails]
        attr_accessor :compute_engine_target_details
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `computeEngineVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :compute_engine_vm_details
      
        # Output only. The time the cutover job was created (as an API call, not when it
        # was actually created in the target).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the cutover job had finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Output only. The name of the cutover job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current progress in percentage of the cutover job.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # Output only. The current progress in percentage of the cutover job.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Output only. State of the cutover job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A message providing possible extra details about the current
        # state.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time the state was last updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. The cutover steps list representing its progress.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CutoverStep>]
        attr_accessor :steps
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `targetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :target_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_disks_target_details = args[:compute_engine_disks_target_details] if args.key?(:compute_engine_disks_target_details)
          @compute_engine_target_details = args[:compute_engine_target_details] if args.key?(:compute_engine_target_details)
          @compute_engine_vm_details = args[:compute_engine_vm_details] if args.key?(:compute_engine_vm_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_time = args[:state_time] if args.key?(:state_time)
          @steps = args[:steps] if args.key?(:steps)
          @target_details = args[:target_details] if args.key?(:target_details)
        end
      end
      
      # CutoverStep holds information about the cutover step progress.
      class CutoverStep
        include Google::Apis::Core::Hashable
      
        # The time the step has ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # ReplicationCycle contains information about the current replication cycle
        # status.
        # Corresponds to the JSON property `finalSync`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationCycle]
        attr_accessor :final_sync
      
        # InstantiatingMigratedVMStep contains specific step details.
        # Corresponds to the JSON property `instantiatingMigratedVm`
        # @return [Google::Apis::VmmigrationV1alpha1::InstantiatingMigratedVmStep]
        attr_accessor :instantiating_migrated_vm
      
        # PreparingVMDisksStep contains specific step details.
        # Corresponds to the JSON property `preparingVmDisks`
        # @return [Google::Apis::VmmigrationV1alpha1::PreparingVmDisksStep]
        attr_accessor :preparing_vm_disks
      
        # ReplicationCycle contains information about the current replication cycle
        # status.
        # Corresponds to the JSON property `previousReplicationCycle`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationCycle]
        attr_accessor :previous_replication_cycle
      
        # ShuttingDownSourceVMStep contains specific step details.
        # Corresponds to the JSON property `shuttingDownSourceVm`
        # @return [Google::Apis::VmmigrationV1alpha1::ShuttingDownSourceVmStep]
        attr_accessor :shutting_down_source_vm
      
        # The time the step has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @final_sync = args[:final_sync] if args.key?(:final_sync)
          @instantiating_migrated_vm = args[:instantiating_migrated_vm] if args.key?(:instantiating_migrated_vm)
          @preparing_vm_disks = args[:preparing_vm_disks] if args.key?(:preparing_vm_disks)
          @previous_replication_cycle = args[:previous_replication_cycle] if args.key?(:previous_replication_cycle)
          @shutting_down_source_vm = args[:shutting_down_source_vm] if args.key?(:shutting_down_source_vm)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # CycleStep holds information about a step progress.
      class CycleStep
        include Google::Apis::Core::Hashable
      
        # The time the cycle step has ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # InitializingReplicationStep contains specific step details.
        # Corresponds to the JSON property `initializingReplication`
        # @return [Google::Apis::VmmigrationV1alpha1::InitializingReplicationStep]
        attr_accessor :initializing_replication
      
        # PostProcessingStep contains specific step details.
        # Corresponds to the JSON property `postProcessing`
        # @return [Google::Apis::VmmigrationV1alpha1::PostProcessingStep]
        attr_accessor :post_processing
      
        # ReplicatingStep contains specific step details.
        # Corresponds to the JSON property `replicating`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicatingStep]
        attr_accessor :replicating
      
        # The time the cycle step has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @initializing_replication = args[:initializing_replication] if args.key?(:initializing_replication)
          @post_processing = args[:post_processing] if args.key?(:post_processing)
          @replicating = args[:replicating] if args.key?(:replicating)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Mentions that the image import is not using OS adaptation process.
      class DataDiskImageImport
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DatacenterConnector message describes a connector between the Source and
      # Google Cloud, which is installed on a vmware datacenter (an OVA vm installed
      # by the user) to connect the Datacenter to Google Cloud and support vm
      # migration data transfer.
      class DatacenterConnector
        include Google::Apis::Core::Hashable
      
        # Output only. Appliance OVA version. This is the OVA which is manually
        # installed by the user and contains the infrastructure for the automatically
        # updatable components on the appliance.
        # Corresponds to the JSON property `applianceInfrastructureVersion`
        # @return [String]
        attr_accessor :appliance_infrastructure_version
      
        # Output only. Appliance last installed update bundle version. This is the
        # version of the automatically updatable components on the appliance.
        # Corresponds to the JSON property `applianceSoftwareVersion`
        # @return [String]
        attr_accessor :appliance_software_version
      
        # Holds information about the available versions for upgrade.
        # Corresponds to the JSON property `availableVersions`
        # @return [Google::Apis::VmmigrationV1alpha1::AvailableUpdates]
        attr_accessor :available_versions
      
        # Output only. The communication channel between the datacenter connector and
        # Google Cloud.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Output only. The time the connector was created (as an API call, not when it
        # was actually installed).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Output only. The connector's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. A unique key for this connector. This key is internal to the OVA
        # connector and is supplied with its creation during the registration process
        # and can not be modified.
        # Corresponds to the JSON property `registrationId`
        # @return [String]
        attr_accessor :registration_id
      
        # The service account to use in the connector when communicating with the cloud.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. State of the DatacenterConnector, as determined by the health
        # checks.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last set.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. The last time the connector was updated with an API call.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # UpgradeStatus contains information about upgradeAppliance operation.
        # Corresponds to the JSON property `upgradeStatus`
        # @return [Google::Apis::VmmigrationV1alpha1::UpgradeStatus]
        attr_accessor :upgrade_status
      
        # The version running in the DatacenterConnector. This is supplied by the OVA
        # connector during the registration process and can not be modified.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance_infrastructure_version = args[:appliance_infrastructure_version] if args.key?(:appliance_infrastructure_version)
          @appliance_software_version = args[:appliance_software_version] if args.key?(:appliance_software_version)
          @available_versions = args[:available_versions] if args.key?(:available_versions)
          @bucket = args[:bucket] if args.key?(:bucket)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @registration_id = args[:registration_id] if args.key?(:registration_id)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_status = args[:upgrade_status] if args.key?(:upgrade_status)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A message describing a data disk.
      class Disk
        include Google::Apis::Core::Hashable
      
        # The disk's Logical Unit Number (LUN).
        # Corresponds to the JSON property `lun`
        # @return [Fixnum]
        attr_accessor :lun
      
        # The disk name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The disk size in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lun = args[:lun] if args.key?(:lun)
          @name = args[:name] if args.key?(:name)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # Contains details about the image source used to create the disk.
      class DiskImageDefaults
        include Google::Apis::Core::Hashable
      
        # Required. The Image resource used when creating the disk.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_image = args[:source_image] if args.key?(:source_image)
        end
      end
      
      # The target details of the image resource that will be created by the import
      # job.
      class DiskImageTargetDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Additional licenses to assign to the image. Format: https://www.
        # googleapis.com/compute/v1/projects/PROJECT_ID/global/licenses/LICENSE_NAME Or
        # https://www.googleapis.com/compute/beta/projects/PROJECT_ID/global/licenses/
        # LICENSE_NAME
        # Corresponds to the JSON property `additionalLicenses`
        # @return [Array<String>]
        attr_accessor :additional_licenses
      
        # Mentions that the image import is not using OS adaptation process.
        # Corresponds to the JSON property `dataDiskImageImport`
        # @return [Google::Apis::VmmigrationV1alpha1::DataDiskImageImport]
        attr_accessor :data_disk_image_import
      
        # Optional. An optional description of the image.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # Optional. The name of the image family to which the new image belongs.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Required. The name of the image to be created.
        # Corresponds to the JSON property `imageName`
        # @return [String]
        attr_accessor :image_name
      
        # Optional. A map of labels to associate with the image.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Parameters affecting the OS adaptation process.
        # Corresponds to the JSON property `osAdaptationParameters`
        # @return [Google::Apis::VmmigrationV1alpha1::ImageImportOsAdaptationParameters]
        attr_accessor :os_adaptation_parameters
      
        # Optional. Set to true to set the image storageLocations to the single region
        # of the import job. When false, the closest multi-region is selected.
        # Corresponds to the JSON property `singleRegionStorage`
        # @return [Boolean]
        attr_accessor :single_region_storage
        alias_method :single_region_storage?, :single_region_storage
      
        # Required. Reference to the TargetProject resource that represents the target
        # project in which the imported image will be created.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_licenses = args[:additional_licenses] if args.key?(:additional_licenses)
          @data_disk_image_import = args[:data_disk_image_import] if args.key?(:data_disk_image_import)
          @description = args[:description] if args.key?(:description)
          @encryption = args[:encryption] if args.key?(:encryption)
          @family_name = args[:family_name] if args.key?(:family_name)
          @image_name = args[:image_name] if args.key?(:image_name)
          @labels = args[:labels] if args.key?(:labels)
          @os_adaptation_parameters = args[:os_adaptation_parameters] if args.key?(:os_adaptation_parameters)
          @single_region_storage = args[:single_region_storage] if args.key?(:single_region_storage)
          @target_project = args[:target_project] if args.key?(:target_project)
        end
      end
      
      # Details for a disk only migration.
      class DisksMigrationDisksTargetDefaults
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details for a disks-only migration.
      class DisksMigrationDisksTargetDetails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details for creation of a VM that migrated data disks will be attached to.
      class DisksMigrationVmTargetDefaults
        include Google::Apis::Core::Hashable
      
        # Optional. Additional licenses to assign to the VM.
        # Corresponds to the JSON property `additionalLicenses`
        # @return [Array<String>]
        attr_accessor :additional_licenses
      
        # BootDiskDefaults hold information about the boot disk of a VM.
        # Corresponds to the JSON property `bootDiskDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::BootDiskDefaults]
        attr_accessor :boot_disk_defaults
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes. Options for instance behavior when the host
        # machine undergoes maintenance that may temporarily impact instance performance.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # Optional. Defines whether the instance has integrity monitoring enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether the instance has vTPM enabled.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # Optional. The hostname to assign to the VM.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. The machine type series to create the VM with. For presentation only.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # Optional. The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Optional. NICs to attach to the VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Optional. A list of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Optional. Defines whether the instance has Secure Boot enabled. This can be
        # set to true only if the VM boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # Optional. The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Required. The name of the VM to create.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_licenses = args[:additional_licenses] if args.key?(:additional_licenses)
          @boot_disk_defaults = args[:boot_disk_defaults] if args.key?(:boot_disk_defaults)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
          @encryption = args[:encryption] if args.key?(:encryption)
          @hostname = args[:hostname] if args.key?(:hostname)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
        end
      end
      
      # Details for the VM created VM as part of disks migration.
      class DisksMigrationVmTargetDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The URI of the Compute Engine VM.
        # Corresponds to the JSON property `vmUri`
        # @return [String]
        attr_accessor :vm_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vm_uri = args[:vm_uri] if args.key?(:vm_uri)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encryption message describes the details of the applied encryption.
      class Encryption
        include Google::Apis::Core::Hashable
      
        # Required. The name of the encryption key that is stored in Google Cloud KMS.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # Expiration holds information about the expiration of a MigratingVm.
      class Expiration
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of when this resource is considered expired.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. Describes whether the expiration can be extended.
        # Corresponds to the JSON property `extendable`
        # @return [Boolean]
        attr_accessor :extendable
        alias_method :extendable?, :extendable
      
        # Output only. The number of times expiration was extended.
        # Corresponds to the JSON property `extensionCount`
        # @return [Fixnum]
        attr_accessor :extension_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @extendable = args[:extendable] if args.key?(:extendable)
          @extension_count = args[:extension_count] if args.key?(:extension_count)
        end
      end
      
      # Request message for 'ExtendMigrationRequest' request.
      class ExtendMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for fetchInventory.
      class FetchInventoryResponse
        include Google::Apis::Core::Hashable
      
        # AWSVmsDetails describes VMs in AWS.
        # Corresponds to the JSON property `awsVms`
        # @return [Google::Apis::VmmigrationV1alpha1::AwsVmsDetails]
        attr_accessor :aws_vms
      
        # AzureVmsDetails describes VMs in Azure.
        # Corresponds to the JSON property `azureVms`
        # @return [Google::Apis::VmmigrationV1alpha1::AzureVmsDetails]
        attr_accessor :azure_vms
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The timestamp when the source was last queried (if the result is
        # from the cache).
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VmwareVmsDetails describes VMs in vCenter.
        # Corresponds to the JSON property `vmwareVms`
        # @return [Google::Apis::VmmigrationV1alpha1::VmwareVmsDetails]
        attr_accessor :vmware_vms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_vms = args[:aws_vms] if args.key?(:aws_vms)
          @azure_vms = args[:azure_vms] if args.key?(:azure_vms)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_vms = args[:vmware_vms] if args.key?(:vmware_vms)
        end
      end
      
      # Request message for 'FinalizeMigration' request.
      class FinalizeMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes message for 'Group' resource. The Group is a collections of several
      # MigratingVms.
      class Group
        include Google::Apis::Core::Hashable
      
        # Output only. The create time timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description of the group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name is a user defined name for this group which can be updated.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The target type of this group.
        # Corresponds to the JSON property `migrationTargetType`
        # @return [String]
        attr_accessor :migration_target_type
      
        # Output only. The Group name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @migration_target_type = args[:migration_target_type] if args.key?(:migration_target_type)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ImageImport describes the configuration of the image import to run.
      class ImageImport
        include Google::Apis::Core::Hashable
      
        # Immutable. The path to the Cloud Storage file from which the image should be
        # imported.
        # Corresponds to the JSON property `cloudStorageUri`
        # @return [String]
        attr_accessor :cloud_storage_uri
      
        # Output only. The time the image import was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The target details of the image resource that will be created by the import
        # job.
        # Corresponds to the JSON property `diskImageTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::DiskImageTargetDetails]
        attr_accessor :disk_image_target_defaults
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # The target details of the machine image resource that will be created by the
        # image import job.
        # Corresponds to the JSON property `machineImageTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::MachineImageTargetDetails]
        attr_accessor :machine_image_target_defaults
      
        # Output only. The resource path of the ImageImport.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The result of the most recent runs for this ImageImport. All jobs
        # for this ImageImport can be listed via ListImageImportJobs.
        # Corresponds to the JSON property `recentImageImportJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::ImageImportJob>]
        attr_accessor :recent_image_import_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_uri = args[:cloud_storage_uri] if args.key?(:cloud_storage_uri)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disk_image_target_defaults = args[:disk_image_target_defaults] if args.key?(:disk_image_target_defaults)
          @encryption = args[:encryption] if args.key?(:encryption)
          @machine_image_target_defaults = args[:machine_image_target_defaults] if args.key?(:machine_image_target_defaults)
          @name = args[:name] if args.key?(:name)
          @recent_image_import_jobs = args[:recent_image_import_jobs] if args.key?(:recent_image_import_jobs)
        end
      end
      
      # ImageImportJob describes the progress and result of an image import.
      class ImageImportJob
        include Google::Apis::Core::Hashable
      
        # Output only. The path to the Cloud Storage file from which the image should be
        # imported.
        # Corresponds to the JSON property `cloudStorageUri`
        # @return [String]
        attr_accessor :cloud_storage_uri
      
        # Output only. The time the image import was created (as an API call, not when
        # it was actually created in the target).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource paths of the resources created by the image import
        # job.
        # Corresponds to the JSON property `createdResources`
        # @return [Array<String>]
        attr_accessor :created_resources
      
        # The target details of the image resource that will be created by the import
        # job.
        # Corresponds to the JSON property `diskImageTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::DiskImageTargetDetails]
        attr_accessor :disk_image_target_details
      
        # Output only. The time the image import was ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Provides details on the error that led to the image import state
        # in case of an error.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Status>]
        attr_accessor :errors
      
        # The target details of the machine image resource that will be created by the
        # image import job.
        # Corresponds to the JSON property `machineImageTargetDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::MachineImageTargetDetails]
        attr_accessor :machine_image_target_details
      
        # Output only. The resource path of the ImageImportJob.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the image import.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The image import steps list representing its progress.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::ImageImportStep>]
        attr_accessor :steps
      
        # Output only. Warnings that occurred during the image import.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::MigrationWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_uri = args[:cloud_storage_uri] if args.key?(:cloud_storage_uri)
          @create_time = args[:create_time] if args.key?(:create_time)
          @created_resources = args[:created_resources] if args.key?(:created_resources)
          @disk_image_target_details = args[:disk_image_target_details] if args.key?(:disk_image_target_details)
          @end_time = args[:end_time] if args.key?(:end_time)
          @errors = args[:errors] if args.key?(:errors)
          @machine_image_target_details = args[:machine_image_target_details] if args.key?(:machine_image_target_details)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @steps = args[:steps] if args.key?(:steps)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Parameters affecting the OS adaptation process.
      class ImageImportOsAdaptationParameters
        include Google::Apis::Core::Hashable
      
        # Optional. By default the image will keep its existing boot option. Setting
        # this property will trigger an internal process which will convert the image
        # from using the existing boot option to another. The size of the boot disk
        # might be increased to allow the conversion
        # Corresponds to the JSON property `bootConversion`
        # @return [String]
        attr_accessor :boot_conversion
      
        # Optional. Set to true in order to generalize the imported image. The
        # generalization process enables co-existence of multiple VMs created from the
        # same image. For Windows, generalizing the image removes computer-specific
        # information such as installed drivers and the computer security identifier (
        # SID).
        # Corresponds to the JSON property `generalize`
        # @return [Boolean]
        attr_accessor :generalize
        alias_method :generalize?, :generalize
      
        # Optional. Choose which type of license to apply to the imported image.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_conversion = args[:boot_conversion] if args.key?(:boot_conversion)
          @generalize = args[:generalize] if args.key?(:generalize)
          @license_type = args[:license_type] if args.key?(:license_type)
        end
      end
      
      # ImageImportStep holds information about the image import step progress.
      class ImageImportStep
        include Google::Apis::Core::Hashable
      
        # AdaptingOSStep contains specific step details.
        # Corresponds to the JSON property `adaptingOs`
        # @return [Google::Apis::VmmigrationV1alpha1::AdaptingOsStep]
        attr_accessor :adapting_os
      
        # CreatingImageStep contains specific step details.
        # Corresponds to the JSON property `creatingImage`
        # @return [Google::Apis::VmmigrationV1alpha1::CreatingImageStep]
        attr_accessor :creating_image
      
        # Output only. The time the step has ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # InitializingImageImportStep contains specific step details.
        # Corresponds to the JSON property `initializing`
        # @return [Google::Apis::VmmigrationV1alpha1::InitializingImageImportStep]
        attr_accessor :initializing
      
        # LoadingImageSourceFilesStep contains specific step details.
        # Corresponds to the JSON property `loadingSourceFiles`
        # @return [Google::Apis::VmmigrationV1alpha1::LoadingImageSourceFilesStep]
        attr_accessor :loading_source_files
      
        # Output only. The time the step has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapting_os = args[:adapting_os] if args.key?(:adapting_os)
          @creating_image = args[:creating_image] if args.key?(:creating_image)
          @end_time = args[:end_time] if args.key?(:end_time)
          @initializing = args[:initializing] if args.key?(:initializing)
          @loading_source_files = args[:loading_source_files] if args.key?(:loading_source_files)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # InitializingImageImportStep contains specific step details.
      class InitializingImageImportStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # InitializingReplicationStep contains specific step details.
      class InitializingReplicationStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # InstantiatingMigratedVMStep contains specific step details.
      class InstantiatingMigratedVmStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes a URL link.
      class Link
        include Google::Apis::Core::Hashable
      
        # Describes what the link offers.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The URL of the link.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response message for 'ListCloneJobs' request.
      class ListCloneJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of clone jobs response.
        # Corresponds to the JSON property `cloneJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CloneJob>]
        attr_accessor :clone_jobs
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clone_jobs = args[:clone_jobs] if args.key?(:clone_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListCutoverJobs' request.
      class ListCutoverJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of cutover jobs response.
        # Corresponds to the JSON property `cutoverJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CutoverJob>]
        attr_accessor :cutover_jobs
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutover_jobs = args[:cutover_jobs] if args.key?(:cutover_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListDatacenterConnectors' request.
      class ListDatacenterConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of sources response.
        # Corresponds to the JSON property `datacenterConnectors`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::DatacenterConnector>]
        attr_accessor :datacenter_connectors
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datacenter_connectors = args[:datacenter_connectors] if args.key?(:datacenter_connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListGroups' request.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of groups response.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Group>]
        attr_accessor :groups
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListImageImportJobs' call.
      class ListImageImportJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of target response.
        # Corresponds to the JSON property `imageImportJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::ImageImportJob>]
        attr_accessor :image_import_jobs
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_import_jobs = args[:image_import_jobs] if args.key?(:image_import_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListImageImports' call.
      class ListImageImportsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of target response.
        # Corresponds to the JSON property `imageImports`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::ImageImport>]
        attr_accessor :image_imports
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_imports = args[:image_imports] if args.key?(:image_imports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for 'ListMigratingVms' request.
      class ListMigratingVmsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of Migrating VMs response.
        # Corresponds to the JSON property `migratingVms`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::MigratingVm>]
        attr_accessor :migrating_vms
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vms = args[:migrating_vms] if args.key?(:migrating_vms)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response message for 'ListReplicationCycles' request.
      class ListReplicationCyclesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of replication cycles response.
        # Corresponds to the JSON property `replicationCycles`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::ReplicationCycle>]
        attr_accessor :replication_cycles
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @replication_cycles = args[:replication_cycles] if args.key?(:replication_cycles)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListSources' request.
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of sources response.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Source>]
        attr_accessor :sources
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListTargetProjects' call.
      class ListTargetProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of target response.
        # Corresponds to the JSON property `targetProjects`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::TargetProject>]
        attr_accessor :target_projects
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @target_projects = args[:target_projects] if args.key?(:target_projects)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListUtilizationReports' request.
      class ListUtilizationReportsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # Output only. The list of reports.
        # Corresponds to the JSON property `utilizationReports`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::UtilizationReport>]
        attr_accessor :utilization_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @utilization_reports = args[:utilization_reports] if args.key?(:utilization_reports)
        end
      end
      
      # LoadingImageSourceFilesStep contains specific step details.
      class LoadingImageSourceFilesStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Provides a localized error message that is safe to return to the user which
      # can be attached to an RPC error.
      class LocalizedMessage
        include Google::Apis::Core::Hashable
      
        # The locale used following the specification defined at https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The localized error message in the above locale.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Parameters overriding decisions based on the source machine image
      # configurations.
      class MachineImageParametersOverrides
        include Google::Apis::Core::Hashable
      
        # Optional. The machine type to create the MachineImage with. If empty, the
        # service will choose a relevant machine type based on the information from the
        # source image. For more information about machine types, please refer to https:/
        # /cloud.google.com/compute/docs/machine-resource.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # The target details of the machine image resource that will be created by the
      # image import job.
      class MachineImageTargetDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Additional licenses to assign to the instance created by the machine
        # image. Format: https://www.googleapis.com/compute/v1/projects/PROJECT_ID/
        # global/licenses/LICENSE_NAME Or https://www.googleapis.com/compute/beta/
        # projects/PROJECT_ID/global/licenses/LICENSE_NAME
        # Corresponds to the JSON property `additionalLicenses`
        # @return [Array<String>]
        attr_accessor :additional_licenses
      
        # Optional. An optional description of the machine image.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # Optional. The labels to apply to the instance created by the machine image.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The name of the machine image to be created.
        # Corresponds to the JSON property `machineImageName`
        # @return [String]
        attr_accessor :machine_image_name
      
        # Parameters overriding decisions based on the source machine image
        # configurations.
        # Corresponds to the JSON property `machineImageParametersOverrides`
        # @return [Google::Apis::VmmigrationV1alpha1::MachineImageParametersOverrides]
        attr_accessor :machine_image_parameters_overrides
      
        # Optional. The network interfaces to create with the instance created by the
        # machine image. Internal and external IP addresses, and network tiers are
        # ignored for machine image import.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Parameters affecting the OS adaptation process.
        # Corresponds to the JSON property `osAdaptationParameters`
        # @return [Google::Apis::VmmigrationV1alpha1::ImageImportOsAdaptationParameters]
        attr_accessor :os_adaptation_parameters
      
        # Service account to assign to the instance created by the machine image.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::VmmigrationV1alpha1::ServiceAccount]
        attr_accessor :service_account
      
        # Shielded instance configuration.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::VmmigrationV1alpha1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Optional. Set to true to set the machine image storageLocations to the single
        # region of the import job. When false, the closest multi-region is selected.
        # Corresponds to the JSON property `singleRegionStorage`
        # @return [Boolean]
        attr_accessor :single_region_storage
        alias_method :single_region_storage?, :single_region_storage
      
        # Mentions that the machine image import is not using OS adaptation process.
        # Corresponds to the JSON property `skipOsAdaptation`
        # @return [Google::Apis::VmmigrationV1alpha1::SkipOsAdaptation]
        attr_accessor :skip_os_adaptation
      
        # Optional. The tags to apply to the instance created by the machine image.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Required. Reference to the TargetProject resource that represents the target
        # project in which the imported machine image will be created.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_licenses = args[:additional_licenses] if args.key?(:additional_licenses)
          @description = args[:description] if args.key?(:description)
          @encryption = args[:encryption] if args.key?(:encryption)
          @labels = args[:labels] if args.key?(:labels)
          @machine_image_name = args[:machine_image_name] if args.key?(:machine_image_name)
          @machine_image_parameters_overrides = args[:machine_image_parameters_overrides] if args.key?(:machine_image_parameters_overrides)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @os_adaptation_parameters = args[:os_adaptation_parameters] if args.key?(:os_adaptation_parameters)
          @service_account = args[:service_account] if args.key?(:service_account)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @single_region_storage = args[:single_region_storage] if args.key?(:single_region_storage)
          @skip_os_adaptation = args[:skip_os_adaptation] if args.key?(:skip_os_adaptation)
          @tags = args[:tags] if args.key?(:tags)
          @target_project = args[:target_project] if args.key?(:target_project)
        end
      end
      
      # MigratingVm describes the VM that will be migrated from a Source environment
      # and its replication state.
      class MigratingVm
        include Google::Apis::Core::Hashable
      
        # Represent the source AWS VM details.
        # Corresponds to the JSON property `awsSourceVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::AwsSourceVmDetails]
        attr_accessor :aws_source_vm_details
      
        # Represent the source Azure VM details.
        # Corresponds to the JSON property `azureSourceVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::AzureSourceVmDetails]
        attr_accessor :azure_source_vm_details
      
        # ComputeEngineDisksTargetDefaults is a collection of details for creating
        # Persistent Disks in a target Compute Engine project.
        # Corresponds to the JSON property `computeEngineDisksTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineDisksTargetDefaults]
        attr_accessor :compute_engine_disks_target_defaults
      
        # ComputeEngineTargetDefaults is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeEngineTargetDefaults]
        attr_accessor :compute_engine_target_defaults
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `computeEngineVmDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :compute_engine_vm_defaults
      
        # Output only. The time the migrating VM was created (this refers to this
        # resource and not to the time it was installed in the source).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # ReplicationCycle contains information about the current replication cycle
        # status.
        # Corresponds to the JSON property `currentSyncInfo`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationCycle]
        attr_accessor :current_sync_info
      
        # CutoverForecast holds information about future CutoverJobs of a MigratingVm.
        # Corresponds to the JSON property `cutoverForecast`
        # @return [Google::Apis::VmmigrationV1alpha1::CutoverForecast]
        attr_accessor :cutover_forecast
      
        # The description attached to the migrating VM by the user.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name attached to the MigratingVm by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Expiration holds information about the expiration of a MigratingVm.
        # Corresponds to the JSON property `expiration`
        # @return [Google::Apis::VmmigrationV1alpha1::Expiration]
        attr_accessor :expiration
      
        # Output only. The group this migrating vm is included in, if any. The group is
        # represented by the full path of the appropriate Group resource.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The labels of the migrating VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # ReplicationCycle contains information about the current replication cycle
        # status.
        # Corresponds to the JSON property `lastReplicationCycle`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationCycle]
        attr_accessor :last_replication_cycle
      
        # ReplicationSync contain information about the last replica sync to the cloud.
        # Corresponds to the JSON property `lastSync`
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationSync]
        attr_accessor :last_sync
      
        # Output only. The identifier of the MigratingVm.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A policy for scheduling replications.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::VmmigrationV1alpha1::SchedulePolicy]
        attr_accessor :policy
      
        # Output only. The recent clone jobs performed on the migrating VM. This field
        # holds the vm's last completed clone job and the vm's running clone job, if one
        # exists. Note: To have this field populated you need to explicitly request it
        # via the "view" parameter of the Get/List request.
        # Corresponds to the JSON property `recentCloneJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CloneJob>]
        attr_accessor :recent_clone_jobs
      
        # Output only. The recent cutover jobs performed on the migrating VM. This field
        # holds the vm's last completed cutover job and the vm's running cutover job, if
        # one exists. Note: To have this field populated you need to explicitly request
        # it via the "view" parameter of the Get/List request.
        # Corresponds to the JSON property `recentCutoverJobs`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CutoverJob>]
        attr_accessor :recent_cutover_jobs
      
        # The unique ID of the VM in the source. The VM's name in vSphere can be changed,
        # so this is not the VM's name but rather its moRef id. This id is of the form
        # vm-.
        # Corresponds to the JSON property `sourceVmId`
        # @return [String]
        attr_accessor :source_vm_id
      
        # Output only. State of the MigratingVm.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last time the migrating VM state was updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # TargetVMDetails is a collection of details for creating a VM in a target
        # Compute Engine project.
        # Corresponds to the JSON property `targetDefaults`
        # @return [Google::Apis::VmmigrationV1alpha1::TargetVmDetails]
        attr_accessor :target_defaults
      
        # Output only. The last time the migrating VM resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Represent the source Vmware VM details.
        # Corresponds to the JSON property `vmwareSourceVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::VmwareSourceVmDetails]
        attr_accessor :vmware_source_vm_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_source_vm_details = args[:aws_source_vm_details] if args.key?(:aws_source_vm_details)
          @azure_source_vm_details = args[:azure_source_vm_details] if args.key?(:azure_source_vm_details)
          @compute_engine_disks_target_defaults = args[:compute_engine_disks_target_defaults] if args.key?(:compute_engine_disks_target_defaults)
          @compute_engine_target_defaults = args[:compute_engine_target_defaults] if args.key?(:compute_engine_target_defaults)
          @compute_engine_vm_defaults = args[:compute_engine_vm_defaults] if args.key?(:compute_engine_vm_defaults)
          @create_time = args[:create_time] if args.key?(:create_time)
          @current_sync_info = args[:current_sync_info] if args.key?(:current_sync_info)
          @cutover_forecast = args[:cutover_forecast] if args.key?(:cutover_forecast)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @expiration = args[:expiration] if args.key?(:expiration)
          @group = args[:group] if args.key?(:group)
          @labels = args[:labels] if args.key?(:labels)
          @last_replication_cycle = args[:last_replication_cycle] if args.key?(:last_replication_cycle)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @recent_clone_jobs = args[:recent_clone_jobs] if args.key?(:recent_clone_jobs)
          @recent_cutover_jobs = args[:recent_cutover_jobs] if args.key?(:recent_cutover_jobs)
          @source_vm_id = args[:source_vm_id] if args.key?(:source_vm_id)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @target_defaults = args[:target_defaults] if args.key?(:target_defaults)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_source_vm_details = args[:vmware_source_vm_details] if args.key?(:vmware_source_vm_details)
        end
      end
      
      # Represents migration resource error information that can be used with google.
      # rpc.Status message. MigrationError is used to present the user with error
      # information in migration operations.
      class MigrationError
        include Google::Apis::Core::Hashable
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `actionItem`
        # @return [Google::Apis::VmmigrationV1alpha1::LocalizedMessage]
        attr_accessor :action_item
      
        # Output only. The error code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `errorMessage`
        # @return [Google::Apis::VmmigrationV1alpha1::LocalizedMessage]
        attr_accessor :error_message
      
        # Output only. The time the error occurred.
        # Corresponds to the JSON property `errorTime`
        # @return [String]
        attr_accessor :error_time
      
        # Output only. URL(s) pointing to additional information on handling the current
        # error.
        # Corresponds to the JSON property `helpLinks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Link>]
        attr_accessor :help_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_item = args[:action_item] if args.key?(:action_item)
          @code = args[:code] if args.key?(:code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @error_time = args[:error_time] if args.key?(:error_time)
          @help_links = args[:help_links] if args.key?(:help_links)
        end
      end
      
      # Represents migration resource warning information that can be used with google.
      # rpc.Status message. MigrationWarning is used to present the user with warning
      # information in migration operations.
      class MigrationWarning
        include Google::Apis::Core::Hashable
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `actionItem`
        # @return [Google::Apis::VmmigrationV1alpha1::LocalizedMessage]
        attr_accessor :action_item
      
        # The warning code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. URL(s) pointing to additional information on handling the current
        # warning.
        # Corresponds to the JSON property `helpLinks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::Link>]
        attr_accessor :help_links
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `warningMessage`
        # @return [Google::Apis::VmmigrationV1alpha1::LocalizedMessage]
        attr_accessor :warning_message
      
        # The time the warning occurred.
        # Corresponds to the JSON property `warningTime`
        # @return [String]
        attr_accessor :warning_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_item = args[:action_item] if args.key?(:action_item)
          @code = args[:code] if args.key?(:code)
          @help_links = args[:help_links] if args.key?(:help_links)
          @warning_message = args[:warning_message] if args.key?(:warning_message)
          @warning_time = args[:warning_time] if args.key?(:warning_time)
        end
      end
      
      # NetworkInterface represents a NIC of a VM.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # Optional. The external IP to define in the NIC.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # Optional. The internal IP to define in the NIC. The formats accepted are: `
        # ephemeral` \ ipv4 address \ a named address resource full path.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # The network to connect the NIC to.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The networking tier used for optimizing connectivity between
        # instances and systems on the internet. Applies only for external ephemeral IP
        # addresses. If left empty, will default to PREMIUM.
        # Corresponds to the JSON property `networkTier`
        # @return [String]
        attr_accessor :network_tier
      
        # Optional. The subnetwork to connect the NIC to.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @network = args[:network] if args.key?(:network)
          @network_tier = args[:network_tier] if args.key?(:network_tier)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # A message describing the VM's OS. Including OS, Publisher, Offer and Plan if
      # applicable.
      class OsDescription
        include Google::Apis::Core::Hashable
      
        # OS offer.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # OS plan.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # OS publisher.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # OS type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer = args[:offer] if args.key?(:offer)
          @plan = args[:plan] if args.key?(:plan)
          @publisher = args[:publisher] if args.key?(:publisher)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A message describing the OS disk.
      class OsDisk
        include Google::Apis::Core::Hashable
      
        # The disk's full name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The disk's size in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # The disk's type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Request message for 'PauseMigration' request.
      class PauseMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details of a created Persistent Disk.
      class PersistentDisk
        include Google::Apis::Core::Hashable
      
        # The URI of the Persistent Disk.
        # Corresponds to the JSON property `diskUri`
        # @return [String]
        attr_accessor :disk_uri
      
        # The ordinal number of the source VM disk.
        # Corresponds to the JSON property `sourceDiskNumber`
        # @return [Fixnum]
        attr_accessor :source_disk_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_uri = args[:disk_uri] if args.key?(:disk_uri)
          @source_disk_number = args[:source_disk_number] if args.key?(:source_disk_number)
        end
      end
      
      # Details for creation of a Persistent Disk.
      class PersistentDiskDefaults
        include Google::Apis::Core::Hashable
      
        # A map of labels to associate with the Persistent Disk.
        # Corresponds to the JSON property `additionalLabels`
        # @return [Hash<String,String>]
        attr_accessor :additional_labels
      
        # Optional. The name of the Persistent Disk to create.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # The disk type to use.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # Required. The ordinal number of the source VM disk.
        # Corresponds to the JSON property `sourceDiskNumber`
        # @return [Fixnum]
        attr_accessor :source_disk_number
      
        # Details for attachment of the disk to a VM.
        # Corresponds to the JSON property `vmAttachmentDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::VmAttachmentDetails]
        attr_accessor :vm_attachment_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_labels = args[:additional_labels] if args.key?(:additional_labels)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @encryption = args[:encryption] if args.key?(:encryption)
          @source_disk_number = args[:source_disk_number] if args.key?(:source_disk_number)
          @vm_attachment_details = args[:vm_attachment_details] if args.key?(:vm_attachment_details)
        end
      end
      
      # PostProcessingStep contains specific step details.
      class PostProcessingStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # PreparingVMDisksStep contains specific step details.
      class PreparingVmDisksStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'RemoveMigration' request.
      class RemoveGroupMigrationRequest
        include Google::Apis::Core::Hashable
      
        # The MigratingVm to remove.
        # Corresponds to the JSON property `migratingVm`
        # @return [String]
        attr_accessor :migrating_vm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vm = args[:migrating_vm] if args.key?(:migrating_vm)
        end
      end
      
      # ReplicatingStep contains specific step details.
      class ReplicatingStep
        include Google::Apis::Core::Hashable
      
        # The source disks replication rate for the last 30 minutes in bytes per second.
        # Corresponds to the JSON property `lastThirtyMinutesAverageBytesPerSecond`
        # @return [Fixnum]
        attr_accessor :last_thirty_minutes_average_bytes_per_second
      
        # The source disks replication rate for the last 2 minutes in bytes per second.
        # Corresponds to the JSON property `lastTwoMinutesAverageBytesPerSecond`
        # @return [Fixnum]
        attr_accessor :last_two_minutes_average_bytes_per_second
      
        # Replicated bytes in the step.
        # Corresponds to the JSON property `replicatedBytes`
        # @return [Fixnum]
        attr_accessor :replicated_bytes
      
        # Total bytes to be handled in the step.
        # Corresponds to the JSON property `totalBytes`
        # @return [Fixnum]
        attr_accessor :total_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_thirty_minutes_average_bytes_per_second = args[:last_thirty_minutes_average_bytes_per_second] if args.key?(:last_thirty_minutes_average_bytes_per_second)
          @last_two_minutes_average_bytes_per_second = args[:last_two_minutes_average_bytes_per_second] if args.key?(:last_two_minutes_average_bytes_per_second)
          @replicated_bytes = args[:replicated_bytes] if args.key?(:replicated_bytes)
          @total_bytes = args[:total_bytes] if args.key?(:total_bytes)
        end
      end
      
      # ReplicationCycle contains information about the current replication cycle
      # status.
      class ReplicationCycle
        include Google::Apis::Core::Hashable
      
        # The cycle's ordinal number.
        # Corresponds to the JSON property `cycleNumber`
        # @return [Fixnum]
        attr_accessor :cycle_number
      
        # The time the replication cycle has ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # The identifier of the ReplicationCycle.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current progress in percentage of this cycle.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # The current progress in percentage of this cycle. Was replaced by 'steps'
        # field, which breaks down the cycle progression more accurately.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # The time the replication cycle has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # State of the ReplicationCycle.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The cycle's steps list representing its progress.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::CycleStep>]
        attr_accessor :steps
      
        # The accumulated duration the replication cycle was paused.
        # Corresponds to the JSON property `totalPauseDuration`
        # @return [String]
        attr_accessor :total_pause_duration
      
        # Output only. Warnings that occurred during the cycle.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::MigrationWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cycle_number = args[:cycle_number] if args.key?(:cycle_number)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @steps = args[:steps] if args.key?(:steps)
          @total_pause_duration = args[:total_pause_duration] if args.key?(:total_pause_duration)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # ReplicationSync contain information about the last replica sync to the cloud.
      class ReplicationSync
        include Google::Apis::Core::Hashable
      
        # The most updated snapshot created time in the source that finished replication.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
        end
      end
      
      # Request message for 'ResumeMigration' request.
      class ResumeMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A policy for scheduling replications.
      class SchedulePolicy
        include Google::Apis::Core::Hashable
      
        # The idle duration between replication stages.
        # Corresponds to the JSON property `idleDuration`
        # @return [String]
        attr_accessor :idle_duration
      
        # A flag to indicate whether to skip OS adaptation during the replication sync.
        # OS adaptation is a process where the VM's operating system undergoes changes
        # and adaptations to fully function on Compute Engine.
        # Corresponds to the JSON property `skipOsAdaptation`
        # @return [Boolean]
        attr_accessor :skip_os_adaptation
        alias_method :skip_os_adaptation?, :skip_os_adaptation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idle_duration = args[:idle_duration] if args.key?(:idle_duration)
          @skip_os_adaptation = args[:skip_os_adaptation] if args.key?(:skip_os_adaptation)
        end
      end
      
      # Node Affinity: the configuration of desired nodes onto which this Instance
      # could be scheduled. Based on https://cloud.google.com/compute/docs/reference/
      # rest/v1/instances/setScheduling
      class SchedulingNodeAffinity
        include Google::Apis::Core::Hashable
      
        # The label key of Node resource to reference.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The operator to use for the node resources specified in the `values` parameter.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Corresponds to the label values of Node resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @operator = args[:operator] if args.key?(:operator)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Service account to assign to the instance created by the machine image.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Required. The email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Shielded instance configuration.
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the instance created by the machine image has
        # integrity monitoring enabled. This can be set to true only if the image boot
        # option is EFI, and vTPM is enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether the instance created by the machine image has vTPM
        # enabled. This can be set to true only if the image boot option is EFI.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        # Optional. Defines whether the instance created by the machine image has Secure
        # Boot enabled. This can be set to true only if the image boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [String]
        attr_accessor :secure_boot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
        end
      end
      
      # ShuttingDownSourceVMStep contains specific step details.
      class ShuttingDownSourceVmStep
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Mentions that the machine image import is not using OS adaptation process.
      class SkipOsAdaptation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Source message describes a specific vm migration Source resource. It contains
      # the source environment information.
      class Source
        include Google::Apis::Core::Hashable
      
        # AwsSourceDetails message describes a specific source details for the AWS
        # source type.
        # Corresponds to the JSON property `aws`
        # @return [Google::Apis::VmmigrationV1alpha1::AwsSourceDetails]
        attr_accessor :aws
      
        # AzureSourceDetails message describes a specific source details for the Azure
        # source type.
        # Corresponds to the JSON property `azure`
        # @return [Google::Apis::VmmigrationV1alpha1::AzureSourceDetails]
        attr_accessor :azure
      
        # Output only. The create time timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description of the source.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Encryption message describes the details of the applied encryption.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::VmmigrationV1alpha1::Encryption]
        attr_accessor :encryption
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # The labels of the source.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The Source name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VmwareSourceDetails message describes a specific source details for the vmware
        # source type.
        # Corresponds to the JSON property `vmware`
        # @return [Google::Apis::VmmigrationV1alpha1::VmwareSourceDetails]
        attr_accessor :vmware
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws = args[:aws] if args.key?(:aws)
          @azure = args[:azure] if args.key?(:azure)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @encryption = args[:encryption] if args.key?(:encryption)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware = args[:vmware] if args.key?(:vmware)
        end
      end
      
      # Request message for 'StartMigrationRequest' request.
      class StartMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Tag is an AWS tag representation.
      class Tag
        include Google::Apis::Core::Hashable
      
        # Required. Key of tag.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Required. Value of tag.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # TargetProject message represents a target Compute Engine project for a
      # migration or a clone.
      class TargetProject
        include Google::Apis::Core::Hashable
      
        # Output only. The time this target project resource was created (not related to
        # when the Compute Engine project it points to was created).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The target project's description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the target project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The target project ID (number) or project name.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Output only. The last time the target project resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # TargetVMDetails is a collection of details for creating a VM in a target
      # Compute Engine project.
      class TargetVmDetails
        include Google::Apis::Core::Hashable
      
        # AppliedLicense holds the license data returned by adaptation module report.
        # Corresponds to the JSON property `appliedLicense`
        # @return [Google::Apis::VmmigrationV1alpha1::AppliedLicense]
        attr_accessor :applied_license
      
        # Output only. The VM Boot Option, as set in the source VM.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes. Options for instance behavior when the host
        # machine undergoes maintenance that may temporarily impact instance performance.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1alpha1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # The disk type to use in the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # The external IP to define in the VM.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # The internal IP to define in the VM. The formats accepted are: `ephemeral` \
        # ipv4 address \ a named address resource full path.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The license type to use in OS adaptation.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The machine type series to create the VM with.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The name of the VM to create.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The network to connect the VM to.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # List of NICs connected to this VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # A list of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Output only. The project in which to create the VM.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Defines whether the instance has Secure Boot enabled. This can be set to true
        # only if the vm boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The subnetwork to connect the VM to.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The full path of the resource of type TargetProject which represents the
        # Compute Engine project in which to create this VM.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # The zone in which to create the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_license = args[:applied_license] if args.key?(:applied_license)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @labels = args[:labels] if args.key?(:labels)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @project = args[:project] if args.key?(:project)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @target_project = args[:target_project] if args.key?(:target_project)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Request message for 'UpgradeAppliance' request.
      class UpgradeApplianceRequest
        include Google::Apis::Core::Hashable
      
        # A request ID to identify requests. Specify a unique request ID so that if you
        # must retry your request, the server will know to ignore the request if it has
        # already been completed. The server will guarantee that for at least 60 minutes
        # after the first request. For example, consider a situation where you make an
        # initial request and the request times out. If you make the request again with
        # the same request ID, the server can check if original operation with the same
        # request ID was received, and if so, will ignore the second request. This
        # prevents clients from accidentally creating duplicate commitments. The request
        # ID must be a valid UUID with the exception that zero UUID is not supported (
        # 00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # UpgradeStatus contains information about upgradeAppliance operation.
      class UpgradeStatus
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # The version from which we upgraded.
        # Corresponds to the JSON property `previousVersion`
        # @return [String]
        attr_accessor :previous_version
      
        # The time the operation was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The state of the upgradeAppliance operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The version to upgrade to.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @previous_version = args[:previous_version] if args.key?(:previous_version)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Utilization report details the utilization (CPU, memory, etc.) of selected
      # source VMs.
      class UtilizationReport
        include Google::Apis::Core::Hashable
      
        # Output only. The time the report was created (this refers to the time of the
        # request, not the time the report creation completed).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The report display name, as assigned by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1alpha1::Status]
        attr_accessor :error
      
        # Output only. The point in time when the time frame ends. Notice that the time
        # frame is counted backwards. For instance if the "frame_end_time" value is 2021/
        # 01/20 and the time frame is WEEK then the report covers the week between 2021/
        # 01/20 and 2021/01/14.
        # Corresponds to the JSON property `frameEndTime`
        # @return [String]
        attr_accessor :frame_end_time
      
        # Output only. The report unique name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Current state of the report.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last set.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Time frame of the report.
        # Corresponds to the JSON property `timeFrame`
        # @return [String]
        attr_accessor :time_frame
      
        # Output only. Total number of VMs included in the report.
        # Corresponds to the JSON property `vmCount`
        # @return [Fixnum]
        attr_accessor :vm_count
      
        # List of utilization information per VM. When sent as part of the request, the "
        # vm_id" field is used in order to specify which VMs to include in the report.
        # In that case all other fields are ignored.
        # Corresponds to the JSON property `vms`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::VmUtilizationInfo>]
        attr_accessor :vms
      
        # Output only. Total number of VMs included in the report.
        # Corresponds to the JSON property `vmsCount`
        # @return [Fixnum]
        attr_accessor :vms_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @frame_end_time = args[:frame_end_time] if args.key?(:frame_end_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @time_frame = args[:time_frame] if args.key?(:time_frame)
          @vm_count = args[:vm_count] if args.key?(:vm_count)
          @vms = args[:vms] if args.key?(:vms)
          @vms_count = args[:vms_count] if args.key?(:vms_count)
        end
      end
      
      # Details for attachment of the disk to a VM.
      class VmAttachmentDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a unique device name of your choice that is reflected into
        # the /dev/disk/by-id/google-* tree of a Linux operating system running within
        # the instance. If not specified, the server chooses a default device name to
        # apply to this disk, in the form persistent-disk-x, where x is a number
        # assigned by Google Compute Engine. This field is only applicable for
        # persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
        end
      end
      
      # Migrating VM source information about the VM capabilities needed for some
      # Compute Engine features.
      class VmCapabilities
        include Google::Apis::Core::Hashable
      
        # Output only. The last time OS capabilities list was updated.
        # Corresponds to the JSON property `lastOsCapabilitiesUpdateTime`
        # @return [String]
        attr_accessor :last_os_capabilities_update_time
      
        # Output only. Unordered list. List of certain VM OS capabilities needed for
        # some Compute Engine features.
        # Corresponds to the JSON property `osCapabilities`
        # @return [Array<String>]
        attr_accessor :os_capabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_os_capabilities_update_time = args[:last_os_capabilities_update_time] if args.key?(:last_os_capabilities_update_time)
          @os_capabilities = args[:os_capabilities] if args.key?(:os_capabilities)
        end
      end
      
      # Utilization information of a single VM.
      class VmUtilizationInfo
        include Google::Apis::Core::Hashable
      
        # Utilization metrics values for a single VM.
        # Corresponds to the JSON property `utilization`
        # @return [Google::Apis::VmmigrationV1alpha1::VmUtilizationMetrics]
        attr_accessor :utilization
      
        # The VM's ID in the source.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # VmwareVmDetails describes a VM in vCenter.
        # Corresponds to the JSON property `vmwareVmDetails`
        # @return [Google::Apis::VmmigrationV1alpha1::VmwareVmDetails]
        attr_accessor :vmware_vm_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization = args[:utilization] if args.key?(:utilization)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
          @vmware_vm_details = args[:vmware_vm_details] if args.key?(:vmware_vm_details)
        end
      end
      
      # Utilization metrics values for a single VM.
      class VmUtilizationMetrics
        include Google::Apis::Core::Hashable
      
        # Average CPU usage, percent.
        # Corresponds to the JSON property `cpuAverage`
        # @return [Fixnum]
        attr_accessor :cpu_average
      
        # Average CPU usage, percent.
        # Corresponds to the JSON property `cpuAveragePercent`
        # @return [Fixnum]
        attr_accessor :cpu_average_percent
      
        # Max CPU usage, percent.
        # Corresponds to the JSON property `cpuMax`
        # @return [Fixnum]
        attr_accessor :cpu_max
      
        # Max CPU usage, percent.
        # Corresponds to the JSON property `cpuMaxPercent`
        # @return [Fixnum]
        attr_accessor :cpu_max_percent
      
        # Average disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateAverage`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_average
      
        # Average disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateAverageKbps`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_average_kbps
      
        # Max disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateMax`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_max
      
        # Max disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateMaxKbps`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_max_kbps
      
        # Average memory usage, percent.
        # Corresponds to the JSON property `memoryAverage`
        # @return [Fixnum]
        attr_accessor :memory_average
      
        # Average memory usage, percent.
        # Corresponds to the JSON property `memoryAveragePercent`
        # @return [Fixnum]
        attr_accessor :memory_average_percent
      
        # Max memory usage, percent.
        # Corresponds to the JSON property `memoryMax`
        # @return [Fixnum]
        attr_accessor :memory_max
      
        # Max memory usage, percent.
        # Corresponds to the JSON property `memoryMaxPercent`
        # @return [Fixnum]
        attr_accessor :memory_max_percent
      
        # Average network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputAverage`
        # @return [Fixnum]
        attr_accessor :network_throughput_average
      
        # Average network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputAverageKbps`
        # @return [Fixnum]
        attr_accessor :network_throughput_average_kbps
      
        # Max network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputMax`
        # @return [Fixnum]
        attr_accessor :network_throughput_max
      
        # Max network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputMaxKbps`
        # @return [Fixnum]
        attr_accessor :network_throughput_max_kbps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_average = args[:cpu_average] if args.key?(:cpu_average)
          @cpu_average_percent = args[:cpu_average_percent] if args.key?(:cpu_average_percent)
          @cpu_max = args[:cpu_max] if args.key?(:cpu_max)
          @cpu_max_percent = args[:cpu_max_percent] if args.key?(:cpu_max_percent)
          @disk_io_rate_average = args[:disk_io_rate_average] if args.key?(:disk_io_rate_average)
          @disk_io_rate_average_kbps = args[:disk_io_rate_average_kbps] if args.key?(:disk_io_rate_average_kbps)
          @disk_io_rate_max = args[:disk_io_rate_max] if args.key?(:disk_io_rate_max)
          @disk_io_rate_max_kbps = args[:disk_io_rate_max_kbps] if args.key?(:disk_io_rate_max_kbps)
          @memory_average = args[:memory_average] if args.key?(:memory_average)
          @memory_average_percent = args[:memory_average_percent] if args.key?(:memory_average_percent)
          @memory_max = args[:memory_max] if args.key?(:memory_max)
          @memory_max_percent = args[:memory_max_percent] if args.key?(:memory_max_percent)
          @network_throughput_average = args[:network_throughput_average] if args.key?(:network_throughput_average)
          @network_throughput_average_kbps = args[:network_throughput_average_kbps] if args.key?(:network_throughput_average_kbps)
          @network_throughput_max = args[:network_throughput_max] if args.key?(:network_throughput_max)
          @network_throughput_max_kbps = args[:network_throughput_max_kbps] if args.key?(:network_throughput_max_kbps)
        end
      end
      
      # The details of a Vmware VM disk.
      class VmwareDiskDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The ordinal number of the disk.
        # Corresponds to the JSON property `diskNumber`
        # @return [Fixnum]
        attr_accessor :disk_number
      
        # Output only. The disk label.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Output only. Size in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_number = args[:disk_number] if args.key?(:disk_number)
          @label = args[:label] if args.key?(:label)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # VmwareSourceDetails message describes a specific source details for the vmware
      # source type.
      class VmwareSourceDetails
        include Google::Apis::Core::Hashable
      
        # Input only. The credentials password. This is write only and can not be read
        # in a GET operation.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The hostname of the vcenter.
        # Corresponds to the JSON property `resolvedVcenterHost`
        # @return [String]
        attr_accessor :resolved_vcenter_host
      
        # The thumbprint representing the certificate for the vcenter.
        # Corresponds to the JSON property `thumbprint`
        # @return [String]
        attr_accessor :thumbprint
      
        # The credentials username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The ip address of the vcenter this Source represents.
        # Corresponds to the JSON property `vcenterIp`
        # @return [String]
        attr_accessor :vcenter_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @resolved_vcenter_host = args[:resolved_vcenter_host] if args.key?(:resolved_vcenter_host)
          @thumbprint = args[:thumbprint] if args.key?(:thumbprint)
          @username = args[:username] if args.key?(:username)
          @vcenter_ip = args[:vcenter_ip] if args.key?(:vcenter_ip)
        end
      end
      
      # Represent the source Vmware VM details.
      class VmwareSourceVmDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The VM architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The total size of the disks being migrated in bytes.
        # Corresponds to the JSON property `committedStorageBytes`
        # @return [Fixnum]
        attr_accessor :committed_storage_bytes
      
        # Output only. The disks attached to the source VM.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::VmwareDiskDetails>]
        attr_accessor :disks
      
        # Output only. The firmware type of the source VM.
        # Corresponds to the JSON property `firmware`
        # @return [String]
        attr_accessor :firmware
      
        # Migrating VM source information about the VM capabilities needed for some
        # Compute Engine features.
        # Corresponds to the JSON property `vmCapabilitiesInfo`
        # @return [Google::Apis::VmmigrationV1alpha1::VmCapabilities]
        attr_accessor :vm_capabilities_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @committed_storage_bytes = args[:committed_storage_bytes] if args.key?(:committed_storage_bytes)
          @disks = args[:disks] if args.key?(:disks)
          @firmware = args[:firmware] if args.key?(:firmware)
          @vm_capabilities_info = args[:vm_capabilities_info] if args.key?(:vm_capabilities_info)
        end
      end
      
      # VmwareVmDetails describes a VM in vCenter.
      class VmwareVmDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The CPU architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The VM Boot Option.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # The total size of the storage allocated to the VM in MB.
        # Corresponds to the JSON property `committedStorage`
        # @return [Fixnum]
        attr_accessor :committed_storage
      
        # The total size of the storage allocated to the VM in MB.
        # Corresponds to the JSON property `committedStorageMb`
        # @return [Fixnum]
        attr_accessor :committed_storage_mb
      
        # The number of cpus in the VM.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # The descriptive name of the vCenter's datacenter this VM is contained in.
        # Corresponds to the JSON property `datacenterDescription`
        # @return [String]
        attr_accessor :datacenter_description
      
        # The id of the vCenter's datacenter this VM is contained in.
        # Corresponds to the JSON property `datacenterId`
        # @return [String]
        attr_accessor :datacenter_id
      
        # The number of disks the VM has.
        # Corresponds to the JSON property `diskCount`
        # @return [Fixnum]
        attr_accessor :disk_count
      
        # The display name of the VM. Note that this is not necessarily unique.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-
        # public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-
        # 746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of
        # strings this might hold.
        # Corresponds to the JSON property `guestDescription`
        # @return [String]
        attr_accessor :guest_description
      
        # The size of the memory of the VM in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # The power state of the VM at the moment list was taken.
        # Corresponds to the JSON property `powerState`
        # @return [String]
        attr_accessor :power_state
      
        # The unique identifier of the VM in vCenter.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        # The VM's id in the source (note that this is not the MigratingVm's id). This
        # is the moref id of the VM.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @committed_storage = args[:committed_storage] if args.key?(:committed_storage)
          @committed_storage_mb = args[:committed_storage_mb] if args.key?(:committed_storage_mb)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @datacenter_description = args[:datacenter_description] if args.key?(:datacenter_description)
          @datacenter_id = args[:datacenter_id] if args.key?(:datacenter_id)
          @disk_count = args[:disk_count] if args.key?(:disk_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @guest_description = args[:guest_description] if args.key?(:guest_description)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @power_state = args[:power_state] if args.key?(:power_state)
          @uuid = args[:uuid] if args.key?(:uuid)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # VmwareVmsDetails describes VMs in vCenter.
      class VmwareVmsDetails
        include Google::Apis::Core::Hashable
      
        # The details of the vmware VMs.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::VmmigrationV1alpha1::VmwareVmDetails>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
    end
  end
end
