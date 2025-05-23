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
    module TpuV2
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeletingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateServiceIdentityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateServiceIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetGuestAttributesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetGuestAttributesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Guaranteed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributesEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributesValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAcceleratorTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQueuedResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRuntimeVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultisliceParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeSpec
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
      
      class ProvisioningData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueuedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueuedResourceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueueingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetQueuedResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Spot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartNodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopNodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Symptom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tpu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpcomingMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topology, as: 'topology'
          property :type, as: 'type'
        end
      end
      
      class AcceleratorType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerator_configs, as: 'acceleratorConfigs', class: Google::Apis::TpuV2::AcceleratorConfig, decorator: Google::Apis::TpuV2::AcceleratorConfig::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class AcceptedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ip, as: 'externalIp'
        end
      end
      
      class ActiveData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :source_disk, as: 'sourceDisk'
        end
      end
      
      class CreatingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeletingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FailedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::TpuV2::Status, decorator: Google::Apis::TpuV2::Status::Representation
      
        end
      end
      
      class GenerateServiceIdentityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GenerateServiceIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity', class: Google::Apis::TpuV2::ServiceIdentity, decorator: Google::Apis::TpuV2::ServiceIdentity::Representation
      
        end
      end
      
      class GetGuestAttributesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_path, as: 'queryPath'
          collection :worker_ids, as: 'workerIds'
        end
      end
      
      class GetGuestAttributesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guest_attributes, as: 'guestAttributes', class: Google::Apis::TpuV2::GuestAttributes, decorator: Google::Apis::TpuV2::GuestAttributes::Representation
      
        end
      end
      
      class Guaranteed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_duration, as: 'minDuration'
        end
      end
      
      class GuestAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_path, as: 'queryPath'
          property :query_value, as: 'queryValue', class: Google::Apis::TpuV2::GuestAttributesValue, decorator: Google::Apis::TpuV2::GuestAttributesValue::Representation
      
        end
      end
      
      class GuestAttributesEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :namespace, as: 'namespace'
          property :value, as: 'value'
        end
      end
      
      class GuestAttributesValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::TpuV2::GuestAttributesEntry, decorator: Google::Apis::TpuV2::GuestAttributesEntry::Representation
      
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListAcceleratorTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerator_types, as: 'acceleratorTypes', class: Google::Apis::TpuV2::AcceleratorType, decorator: Google::Apis::TpuV2::AcceleratorType::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::TpuV2::Location, decorator: Google::Apis::TpuV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :nodes, as: 'nodes', class: Google::Apis::TpuV2::Node, decorator: Google::Apis::TpuV2::Node::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::TpuV2::Operation, decorator: Google::Apis::TpuV2::Operation::Representation
      
        end
      end
      
      class ListQueuedResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :queued_resources, as: 'queuedResources', class: Google::Apis::TpuV2::QueuedResource, decorator: Google::Apis::TpuV2::QueuedResource::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRuntimeVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtime_versions, as: 'runtimeVersions', class: Google::Apis::TpuV2::RuntimeVersion, decorator: Google::Apis::TpuV2::RuntimeVersion::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class MultisliceParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_count, as: 'nodeCount'
          property :node_id_prefix, as: 'nodeIdPrefix'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_ip_forward, as: 'canIpForward'
          property :enable_external_ips, as: 'enableExternalIps'
          property :network, as: 'network'
          property :queue_count, as: 'queueCount'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_config, as: 'accessConfig', class: Google::Apis::TpuV2::AccessConfig, decorator: Google::Apis::TpuV2::AccessConfig::Representation
      
          property :ip_address, as: 'ipAddress'
          property :port, as: 'port'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::TpuV2::AcceleratorConfig, decorator: Google::Apis::TpuV2::AcceleratorConfig::Representation
      
          property :accelerator_type, as: 'acceleratorType'
          property :api_version, as: 'apiVersion'
          property :cidr_block, as: 'cidrBlock'
          property :create_time, as: 'createTime'
          collection :data_disks, as: 'dataDisks', class: Google::Apis::TpuV2::AttachedDisk, decorator: Google::Apis::TpuV2::AttachedDisk::Representation
      
          property :description, as: 'description'
          property :health, as: 'health'
          property :health_description, as: 'healthDescription'
          property :id, :numeric_string => true, as: 'id'
          hash :labels, as: 'labels'
          hash :metadata, as: 'metadata'
          property :multislice_node, as: 'multisliceNode'
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::TpuV2::NetworkConfig, decorator: Google::Apis::TpuV2::NetworkConfig::Representation
      
          collection :network_configs, as: 'networkConfigs', class: Google::Apis::TpuV2::NetworkConfig, decorator: Google::Apis::TpuV2::NetworkConfig::Representation
      
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::TpuV2::NetworkEndpoint, decorator: Google::Apis::TpuV2::NetworkEndpoint::Representation
      
          property :queued_resource, as: 'queuedResource'
          property :runtime_version, as: 'runtimeVersion'
          property :scheduling_config, as: 'schedulingConfig', class: Google::Apis::TpuV2::SchedulingConfig, decorator: Google::Apis::TpuV2::SchedulingConfig::Representation
      
          property :service_account, as: 'serviceAccount', class: Google::Apis::TpuV2::ServiceAccount, decorator: Google::Apis::TpuV2::ServiceAccount::Representation
      
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::TpuV2::ShieldedInstanceConfig, decorator: Google::Apis::TpuV2::ShieldedInstanceConfig::Representation
      
          property :state, as: 'state'
          collection :symptoms, as: 'symptoms', class: Google::Apis::TpuV2::Symptom, decorator: Google::Apis::TpuV2::Symptom::Representation
      
          collection :tags, as: 'tags'
          property :upcoming_maintenance, as: 'upcomingMaintenance', class: Google::Apis::TpuV2::UpcomingMaintenance, decorator: Google::Apis::TpuV2::UpcomingMaintenance::Representation
      
        end
      end
      
      class NodeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multislice_params, as: 'multisliceParams', class: Google::Apis::TpuV2::MultisliceParams, decorator: Google::Apis::TpuV2::MultisliceParams::Representation
      
          property :node, as: 'node', class: Google::Apis::TpuV2::Node, decorator: Google::Apis::TpuV2::Node::Representation
      
          property :node_id, as: 'nodeId'
          property :parent, as: 'parent'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::TpuV2::Status, decorator: Google::Apis::TpuV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class ProvisioningData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class QueuedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :guaranteed, as: 'guaranteed', class: Google::Apis::TpuV2::Guaranteed, decorator: Google::Apis::TpuV2::Guaranteed::Representation
      
          property :name, as: 'name'
          property :queueing_policy, as: 'queueingPolicy', class: Google::Apis::TpuV2::QueueingPolicy, decorator: Google::Apis::TpuV2::QueueingPolicy::Representation
      
          property :reservation_name, as: 'reservationName'
          property :spot, as: 'spot', class: Google::Apis::TpuV2::Spot, decorator: Google::Apis::TpuV2::Spot::Representation
      
          property :state, as: 'state', class: Google::Apis::TpuV2::QueuedResourceState, decorator: Google::Apis::TpuV2::QueuedResourceState::Representation
      
          property :tpu, as: 'tpu', class: Google::Apis::TpuV2::Tpu, decorator: Google::Apis::TpuV2::Tpu::Representation
      
        end
      end
      
      class QueuedResourceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepted_data, as: 'acceptedData', class: Google::Apis::TpuV2::AcceptedData, decorator: Google::Apis::TpuV2::AcceptedData::Representation
      
          property :active_data, as: 'activeData', class: Google::Apis::TpuV2::ActiveData, decorator: Google::Apis::TpuV2::ActiveData::Representation
      
          property :creating_data, as: 'creatingData', class: Google::Apis::TpuV2::CreatingData, decorator: Google::Apis::TpuV2::CreatingData::Representation
      
          property :deleting_data, as: 'deletingData', class: Google::Apis::TpuV2::DeletingData, decorator: Google::Apis::TpuV2::DeletingData::Representation
      
          property :failed_data, as: 'failedData', class: Google::Apis::TpuV2::FailedData, decorator: Google::Apis::TpuV2::FailedData::Representation
      
          property :provisioning_data, as: 'provisioningData', class: Google::Apis::TpuV2::ProvisioningData, decorator: Google::Apis::TpuV2::ProvisioningData::Representation
      
          property :state, as: 'state'
          property :state_initiator, as: 'stateInitiator'
          property :suspended_data, as: 'suspendedData', class: Google::Apis::TpuV2::SuspendedData, decorator: Google::Apis::TpuV2::SuspendedData::Representation
      
          property :suspending_data, as: 'suspendingData', class: Google::Apis::TpuV2::SuspendingData, decorator: Google::Apis::TpuV2::SuspendingData::Representation
      
        end
      end
      
      class QueueingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :valid_after_duration, as: 'validAfterDuration'
          property :valid_after_time, as: 'validAfterTime'
          property :valid_interval, as: 'validInterval', class: Google::Apis::TpuV2::Interval, decorator: Google::Apis::TpuV2::Interval::Representation
      
          property :valid_until_duration, as: 'validUntilDuration'
          property :valid_until_time, as: 'validUntilTime'
        end
      end
      
      class ResetQueuedResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RuntimeVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class SchedulingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preemptible, as: 'preemptible'
          property :reserved, as: 'reserved'
          property :spot, as: 'spot'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scope, as: 'scope'
        end
      end
      
      class ServiceIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_secure_boot, as: 'enableSecureBoot'
        end
      end
      
      class Spot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StartNodeRequest
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
      
      class StopNodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SuspendedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SuspendingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Symptom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :details, as: 'details'
          property :symptom_type, as: 'symptomType'
          property :worker_id, as: 'workerId'
        end
      end
      
      class Tpu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_spec, as: 'nodeSpec', class: Google::Apis::TpuV2::NodeSpec, decorator: Google::Apis::TpuV2::NodeSpec::Representation
      
        end
      end
      
      class UpcomingMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :latest_window_start_time, as: 'latestWindowStartTime'
          property :maintenance_status, as: 'maintenanceStatus'
          property :type, as: 'type'
          property :window_end_time, as: 'windowEndTime'
          property :window_start_time, as: 'windowStartTime'
        end
      end
    end
  end
end
