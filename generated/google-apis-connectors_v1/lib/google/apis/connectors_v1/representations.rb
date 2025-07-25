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
    module ConnectorsV1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthConfigTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationCodeLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigVariableTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorInfraConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorVersionInfraConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorsLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomConnectorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeadLetterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeprecateCustomConnectorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationConfigTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EuaSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EgressControlConfig
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
      
      class EncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigOauth2AuthCodeFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigOauth2ClientCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigOauth2JwtBearer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigOauth2JwtBearerJwtClaims
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigSshPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigUserPassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationConfigVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationEndUserAuthenticationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationNotifyEndpointDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationNotifyEndpointDestinationEndPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthenticationNotifyEndpointDestinationEndPointHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrichmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventSubscriptionDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventSubscriptionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventingConfigTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventingRuntimeData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtractionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtractionRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchAuthSchemaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldComparison
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HpaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Header
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonAuthSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtClaims
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomConnectorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEndUserAuthenticationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEndpointAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEventSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEventTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListManagedZonesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRuntimeActionSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRuntimeEntitySchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListenEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListenEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LockConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogicalExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarketplaceConnectorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleSelectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleSelectOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthTokenData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2AuthCodeFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2AuthCodeFlowGoogleManaged
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2ClientCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2JwtBearer
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
      
      class PartnerMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerSliSloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishCustomConnectorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshConnectionSchemaMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepairEventingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRequests
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryEventSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoleGrant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeActionSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeEntitySchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaRefreshConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchConnectionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfigTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportedRuntimeFeatures
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
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficShapingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserPassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateCustomConnectorSpecRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateCustomConnectorSpecResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebhookData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebhookSubscriptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WithdrawCustomConnectorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ConnectorsV1::AuditLogConfig, decorator: Google::Apis::ConnectorsV1::AuditLogConfig::Representation
      
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
      
      class AuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :auth_key, as: 'authKey'
          property :auth_type, as: 'authType'
          property :oauth2_auth_code_flow, as: 'oauth2AuthCodeFlow', class: Google::Apis::ConnectorsV1::Oauth2AuthCodeFlow, decorator: Google::Apis::ConnectorsV1::Oauth2AuthCodeFlow::Representation
      
          property :oauth2_auth_code_flow_google_managed, as: 'oauth2AuthCodeFlowGoogleManaged', class: Google::Apis::ConnectorsV1::Oauth2AuthCodeFlowGoogleManaged, decorator: Google::Apis::ConnectorsV1::Oauth2AuthCodeFlowGoogleManaged::Representation
      
          property :oauth2_client_credentials, as: 'oauth2ClientCredentials', class: Google::Apis::ConnectorsV1::Oauth2ClientCredentials, decorator: Google::Apis::ConnectorsV1::Oauth2ClientCredentials::Representation
      
          property :oauth2_jwt_bearer, as: 'oauth2JwtBearer', class: Google::Apis::ConnectorsV1::Oauth2JwtBearer, decorator: Google::Apis::ConnectorsV1::Oauth2JwtBearer::Representation
      
          property :ssh_public_key, as: 'sshPublicKey', class: Google::Apis::ConnectorsV1::SshPublicKey, decorator: Google::Apis::ConnectorsV1::SshPublicKey::Representation
      
          property :user_password, as: 'userPassword', class: Google::Apis::ConnectorsV1::UserPassword, decorator: Google::Apis::ConnectorsV1::UserPassword::Representation
      
        end
      end
      
      class AuthConfigTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_key, as: 'authKey'
          property :auth_type, as: 'authType'
          collection :config_variable_templates, as: 'configVariableTemplates', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
        end
      end
      
      class AuthField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :description, as: 'description'
          property :key, as: 'key'
        end
      end
      
      class AuthObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_properties, as: 'additionalProperties'
          property :auth_key, as: 'authKey'
          property :auth_type, as: 'authType'
          property :description, as: 'description'
          property :is_default, as: 'isDefault'
          hash :properties, as: 'properties', class: Google::Apis::ConnectorsV1::AuthProperty, decorator: Google::Apis::ConnectorsV1::AuthProperty::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AuthProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
        end
      end
      
      class AuthSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_fields, as: 'authFields', class: Google::Apis::ConnectorsV1::AuthField, decorator: Google::Apis::ConnectorsV1::AuthField::Representation
      
          property :auth_key, as: 'authKey'
          property :auth_type, as: 'authType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
        end
      end
      
      class AuthorizationCodeLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :enable_pkce, as: 'enablePkce'
          property :omit_query_params, as: 'omitQueryParams'
          collection :scopes, as: 'scopes'
          property :uri, as: 'uri'
        end
      end
      
      class BillingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_category, as: 'billingCategory'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ConnectorsV1::Expr, decorator: Google::Apis::ConnectorsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConfigVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :encryption_key_value, as: 'encryptionKeyValue', class: Google::Apis::ConnectorsV1::EncryptionKey, decorator: Google::Apis::ConnectorsV1::EncryptionKey::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :key, as: 'key'
          property :secret_value, as: 'secretValue', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class ConfigVariableTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_code_link, as: 'authorizationCodeLink', class: Google::Apis::ConnectorsV1::AuthorizationCodeLink, decorator: Google::Apis::ConnectorsV1::AuthorizationCodeLink::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :enum_options, as: 'enumOptions', class: Google::Apis::ConnectorsV1::EnumOption, decorator: Google::Apis::ConnectorsV1::EnumOption::Representation
      
          property :enum_source, as: 'enumSource'
          property :is_advanced, as: 'isAdvanced'
          property :key, as: 'key'
          property :location_type, as: 'locationType'
          property :multiple_select_config, as: 'multipleSelectConfig', class: Google::Apis::ConnectorsV1::MultipleSelectConfig, decorator: Google::Apis::ConnectorsV1::MultipleSelectConfig::Representation
      
          property :required, as: 'required'
          property :required_condition, as: 'requiredCondition', class: Google::Apis::ConnectorsV1::LogicalExpression, decorator: Google::Apis::ConnectorsV1::LogicalExpression::Representation
      
          property :role_grant, as: 'roleGrant', class: Google::Apis::ConnectorsV1::RoleGrant, decorator: Google::Apis::ConnectorsV1::RoleGrant::Representation
      
          property :state, as: 'state'
          property :validation_regex, as: 'validationRegex'
          property :value_type, as: 'valueType'
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_operations_enabled, as: 'asyncOperationsEnabled'
          property :auth_config, as: 'authConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          property :auth_override_enabled, as: 'authOverrideEnabled'
          property :billing_config, as: 'billingConfig', class: Google::Apis::ConnectorsV1::BillingConfig, decorator: Google::Apis::ConnectorsV1::BillingConfig::Representation
      
          collection :config_variables, as: 'configVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :connection_revision, :numeric_string => true, as: 'connectionRevision'
          property :connector_version, as: 'connectorVersion'
          property :connector_version_infra_config, as: 'connectorVersionInfraConfig', class: Google::Apis::ConnectorsV1::ConnectorVersionInfraConfig, decorator: Google::Apis::ConnectorsV1::ConnectorVersionInfraConfig::Representation
      
          property :connector_version_launch_stage, as: 'connectorVersionLaunchStage'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::ConnectorsV1::DestinationConfig, decorator: Google::Apis::ConnectorsV1::DestinationConfig::Representation
      
          property :envoy_image_location, as: 'envoyImageLocation'
          property :eua_oauth_auth_config, as: 'euaOauthAuthConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          property :eventing_config, as: 'eventingConfig', class: Google::Apis::ConnectorsV1::EventingConfig, decorator: Google::Apis::ConnectorsV1::EventingConfig::Representation
      
          property :eventing_enablement_type, as: 'eventingEnablementType'
          property :eventing_runtime_data, as: 'eventingRuntimeData', class: Google::Apis::ConnectorsV1::EventingRuntimeData, decorator: Google::Apis::ConnectorsV1::EventingRuntimeData::Representation
      
          property :fallback_on_admin_credentials, as: 'fallbackOnAdminCredentials'
          property :host, as: 'host'
          property :image_location, as: 'imageLocation'
          property :is_trusted_tester, as: 'isTrustedTester'
          hash :labels, as: 'labels'
          property :lock_config, as: 'lockConfig', class: Google::Apis::ConnectorsV1::LockConfig, decorator: Google::Apis::ConnectorsV1::LockConfig::Representation
      
          property :log_config, as: 'logConfig', class: Google::Apis::ConnectorsV1::ConnectorsLogConfig, decorator: Google::Apis::ConnectorsV1::ConnectorsLogConfig::Representation
      
          property :name, as: 'name'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ConnectorsV1::NodeConfig, decorator: Google::Apis::ConnectorsV1::NodeConfig::Representation
      
          property :service_account, as: 'serviceAccount'
          property :service_directory, as: 'serviceDirectory'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::ConnectorsV1::SslConfig, decorator: Google::Apis::ConnectorsV1::SslConfig::Representation
      
          property :status, as: 'status', class: Google::Apis::ConnectorsV1::ConnectionStatus, decorator: Google::Apis::ConnectorsV1::ConnectionStatus::Representation
      
          property :subscription_type, as: 'subscriptionType'
          property :suspended, as: 'suspended'
          property :tls_service_directory, as: 'tlsServiceDirectory'
          collection :traffic_shaping_configs, as: 'trafficShapingConfigs', class: Google::Apis::ConnectorsV1::TrafficShapingConfig, decorator: Google::Apis::ConnectorsV1::TrafficShapingConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectionSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions'
          collection :entities, as: 'entities'
          property :error_message, as: 'errorMessage'
          property :name, as: 'name'
          property :refresh_time, as: 'refreshTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
          property :status, as: 'status'
        end
      end
      
      class Connector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :connector_type, as: 'connectorType'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation_uri, as: 'documentationUri'
          property :eventing_details, as: 'eventingDetails', class: Google::Apis::ConnectorsV1::EventingDetails, decorator: Google::Apis::ConnectorsV1::EventingDetails::Representation
      
          property :external_uri, as: 'externalUri'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :marketplace_connector_details, as: 'marketplaceConnectorDetails', class: Google::Apis::ConnectorsV1::MarketplaceConnectorDetails, decorator: Google::Apis::ConnectorsV1::MarketplaceConnectorDetails::Representation
      
          property :name, as: 'name'
          collection :tags, as: 'tags'
          property :update_time, as: 'updateTime'
          property :web_assets_location, as: 'webAssetsLocation'
        end
      end
      
      class ConnectorInfraConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :always_allocate_cpu, as: 'alwaysAllocateCpu'
          property :connection_ratelimit_window_seconds, :numeric_string => true, as: 'connectionRatelimitWindowSeconds'
          property :connector_versioning_enabled, as: 'connectorVersioningEnabled'
          property :deployment_model, as: 'deploymentModel'
          property :hpa_config, as: 'hpaConfig', class: Google::Apis::ConnectorsV1::HpaConfig, decorator: Google::Apis::ConnectorsV1::HpaConfig::Representation
      
          property :internalclient_ratelimit_threshold, :numeric_string => true, as: 'internalclientRatelimitThreshold'
          property :max_instance_request_concurrency, as: 'maxInstanceRequestConcurrency'
          property :migrate_deployment_model, as: 'migrateDeploymentModel'
          property :migrate_tls, as: 'migrateTls'
          property :network_egress_mode, as: 'networkEgressMode'
          property :provision_cloud_spanner, as: 'provisionCloudSpanner'
          property :provision_memstore, as: 'provisionMemstore'
          property :ratelimit_threshold, :numeric_string => true, as: 'ratelimitThreshold'
          property :resource_limits, as: 'resourceLimits', class: Google::Apis::ConnectorsV1::ResourceLimits, decorator: Google::Apis::ConnectorsV1::ResourceLimits::Representation
      
          property :resource_requests, as: 'resourceRequests', class: Google::Apis::ConnectorsV1::ResourceRequests, decorator: Google::Apis::ConnectorsV1::ResourceRequests::Representation
      
          property :shared_deployment, as: 'sharedDeployment'
        end
      end
      
      class ConnectorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_config_templates, as: 'authConfigTemplates', class: Google::Apis::ConnectorsV1::AuthConfigTemplate, decorator: Google::Apis::ConnectorsV1::AuthConfigTemplate::Representation
      
          property :auth_override_enabled, as: 'authOverrideEnabled'
          collection :config_variable_templates, as: 'configVariableTemplates', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          property :connector_infra_config, as: 'connectorInfraConfig', class: Google::Apis::ConnectorsV1::ConnectorInfraConfig, decorator: Google::Apis::ConnectorsV1::ConnectorInfraConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :destination_config_templates, as: 'destinationConfigTemplates', class: Google::Apis::ConnectorsV1::DestinationConfigTemplate, decorator: Google::Apis::ConnectorsV1::DestinationConfigTemplate::Representation
      
          property :display_name, as: 'displayName'
          property :egress_control_config, as: 'egressControlConfig', class: Google::Apis::ConnectorsV1::EgressControlConfig, decorator: Google::Apis::ConnectorsV1::EgressControlConfig::Representation
      
          property :eventing_config_template, as: 'eventingConfigTemplate', class: Google::Apis::ConnectorsV1::EventingConfigTemplate, decorator: Google::Apis::ConnectorsV1::EventingConfigTemplate::Representation
      
          property :is_custom_actions_supported, as: 'isCustomActionsSupported'
          property :is_custom_entities_supported, as: 'isCustomEntitiesSupported'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :release_version, as: 'releaseVersion'
          property :role_grant, as: 'roleGrant', class: Google::Apis::ConnectorsV1::RoleGrant, decorator: Google::Apis::ConnectorsV1::RoleGrant::Representation
      
          collection :role_grants, as: 'roleGrants', class: Google::Apis::ConnectorsV1::RoleGrant, decorator: Google::Apis::ConnectorsV1::RoleGrant::Representation
      
          property :schema_refresh_config, as: 'schemaRefreshConfig', class: Google::Apis::ConnectorsV1::SchemaRefreshConfig, decorator: Google::Apis::ConnectorsV1::SchemaRefreshConfig::Representation
      
          property :ssl_config_template, as: 'sslConfigTemplate', class: Google::Apis::ConnectorsV1::SslConfigTemplate, decorator: Google::Apis::ConnectorsV1::SslConfigTemplate::Representation
      
          property :supported_runtime_features, as: 'supportedRuntimeFeatures', class: Google::Apis::ConnectorsV1::SupportedRuntimeFeatures, decorator: Google::Apis::ConnectorsV1::SupportedRuntimeFeatures::Representation
      
          collection :supported_standard_actions, as: 'supportedStandardActions', class: Google::Apis::ConnectorsV1::StandardAction, decorator: Google::Apis::ConnectorsV1::StandardAction::Representation
      
          collection :supported_standard_entities, as: 'supportedStandardEntities', class: Google::Apis::ConnectorsV1::StandardEntity, decorator: Google::Apis::ConnectorsV1::StandardEntity::Representation
      
          collection :unsupported_connection_types, as: 'unsupportedConnectionTypes'
          property :update_time, as: 'updateTime'
          property :vpcsc_config, as: 'vpcscConfig', class: Google::Apis::ConnectorsV1::VpcscConfig, decorator: Google::Apis::ConnectorsV1::VpcscConfig::Representation
      
        end
      end
      
      class ConnectorVersionInfraConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_ratelimit_window_seconds, :numeric_string => true, as: 'connectionRatelimitWindowSeconds'
          property :deployment_model, as: 'deploymentModel'
          property :deployment_model_migration_state, as: 'deploymentModelMigrationState'
          property :hpa_config, as: 'hpaConfig', class: Google::Apis::ConnectorsV1::HpaConfig, decorator: Google::Apis::ConnectorsV1::HpaConfig::Representation
      
          property :internalclient_ratelimit_threshold, :numeric_string => true, as: 'internalclientRatelimitThreshold'
          property :max_instance_request_concurrency, as: 'maxInstanceRequestConcurrency'
          property :ratelimit_threshold, :numeric_string => true, as: 'ratelimitThreshold'
          property :resource_limits, as: 'resourceLimits', class: Google::Apis::ConnectorsV1::ResourceLimits, decorator: Google::Apis::ConnectorsV1::ResourceLimits::Representation
      
          property :resource_requests, as: 'resourceRequests', class: Google::Apis::ConnectorsV1::ResourceRequests, decorator: Google::Apis::ConnectorsV1::ResourceRequests::Representation
      
          property :shared_deployment, as: 'sharedDeployment'
          property :tls_migration_state, as: 'tlsMigrationState'
        end
      end
      
      class ConnectorsLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :level, as: 'level'
        end
      end
      
      class CustomConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_connector_versions, as: 'activeConnectorVersions'
          collection :all_connector_versions, as: 'allConnectorVersions'
          collection :all_marketplace_versions, as: 'allMarketplaceVersions'
          property :create_time, as: 'createTime'
          property :custom_connector_type, as: 'customConnectorType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :logo, as: 'logo'
          property :name, as: 'name'
          collection :published_marketplace_versions, as: 'publishedMarketplaceVersions'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CustomConnectorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_operations_support, as: 'asyncOperationsSupport'
          property :auth_config, as: 'authConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          collection :auth_config_templates, as: 'authConfigTemplates', class: Google::Apis::ConnectorsV1::AuthConfigTemplate, decorator: Google::Apis::ConnectorsV1::AuthConfigTemplate::Representation
      
          property :auth_override_support, as: 'authOverrideSupport'
          collection :backend_variable_templates, as: 'backendVariableTemplates', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          property :create_time, as: 'createTime'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::ConnectorsV1::DestinationConfig, decorator: Google::Apis::ConnectorsV1::DestinationConfig::Representation
      
          property :enable_backend_destination_config, as: 'enableBackendDestinationConfig'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ConnectorsV1::PartnerMetadata, decorator: Google::Apis::ConnectorsV1::PartnerMetadata::Representation
      
          property :publish_status, as: 'publishStatus', class: Google::Apis::ConnectorsV1::PublishStatus, decorator: Google::Apis::ConnectorsV1::PublishStatus::Representation
      
          property :service_account, as: 'serviceAccount'
          property :spec_location, as: 'specLocation'
          collection :spec_server_urls, as: 'specServerUrls'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ConnectorsV1::TimeOfDay, decorator: Google::Apis::ConnectorsV1::TimeOfDay::Representation
      
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DeadLetterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :topic, as: 'topic'
        end
      end
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::ConnectorsV1::Date, decorator: Google::Apis::ConnectorsV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::ConnectorsV1::Date, decorator: Google::Apis::ConnectorsV1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::ConnectorsV1::TimeOfDay, decorator: Google::Apis::ConnectorsV1::TimeOfDay::Representation
      
        end
      end
      
      class DeprecateCustomConnectorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class DestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::ConnectorsV1::Destination, decorator: Google::Apis::ConnectorsV1::Destination::Representation
      
          property :key, as: 'key'
        end
      end
      
      class DestinationConfigTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autocomplete_suggestions, as: 'autocompleteSuggestions'
          property :default_port, as: 'defaultPort'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_advanced, as: 'isAdvanced'
          property :key, as: 'key'
          property :max, as: 'max'
          property :min, as: 'min'
          property :port_field_type, as: 'portFieldType'
          property :regex_pattern, as: 'regexPattern'
        end
      end
      
      class EuaSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_value, as: 'secretValue'
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class EgressControlConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backends, as: 'backends'
          property :extraction_rules, as: 'extractionRules', class: Google::Apis::ConnectorsV1::ExtractionRules, decorator: Google::Apis::ConnectorsV1::ExtractionRules::Representation
      
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
          property :encryption_type, as: 'encryptionType'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          property :type, as: 'type'
        end
      end
      
      class EndPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_uri, as: 'endpointUri'
          collection :headers, as: 'headers', class: Google::Apis::ConnectorsV1::Header, decorator: Google::Apis::ConnectorsV1::Header::Representation
      
        end
      end
      
      class EndUserAuthentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :config_variables, as: 'configVariables', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigVariable, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigVariable::Representation
      
          property :create_time, as: 'createTime'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::ConnectorsV1::DestinationConfig, decorator: Google::Apis::ConnectorsV1::DestinationConfig::Representation
      
          property :end_user_authentication_config, as: 'endUserAuthenticationConfig', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfig, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfig::Representation
      
          collection :labels, as: 'labels'
          property :name, as: 'name'
          property :notify_endpoint_destination, as: 'notifyEndpointDestination', class: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestination, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestination::Representation
      
          collection :roles, as: 'roles'
          property :status, as: 'status', class: Google::Apis::ConnectorsV1::EndUserAuthenticationEndUserAuthenticationStatus, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationEndUserAuthenticationStatus::Representation
      
          property :update_time, as: 'updateTime'
          property :user_id, as: 'userId'
        end
      end
      
      class EndUserAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigVariable, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigVariable::Representation
      
          property :auth_key, as: 'authKey'
          property :auth_type, as: 'authType'
          property :oauth2_auth_code_flow, as: 'oauth2AuthCodeFlow', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2AuthCodeFlow, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2AuthCodeFlow::Representation
      
          property :oauth2_auth_code_flow_google_managed, as: 'oauth2AuthCodeFlowGoogleManaged', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged::Representation
      
          property :oauth2_client_credentials, as: 'oauth2ClientCredentials', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2ClientCredentials, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2ClientCredentials::Representation
      
          property :oauth2_jwt_bearer, as: 'oauth2JwtBearer', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2JwtBearer, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2JwtBearer::Representation
      
          property :ssh_public_key, as: 'sshPublicKey', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigSshPublicKey, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigSshPublicKey::Representation
      
          property :user_password, as: 'userPassword', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigUserPassword, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigUserPassword::Representation
      
        end
      end
      
      class EndUserAuthenticationConfigOauth2AuthCodeFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_code, as: 'authCode'
          property :auth_uri, as: 'authUri'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :enable_pkce, as: 'enablePkce'
          property :oauth_token_data, as: 'oauthTokenData', class: Google::Apis::ConnectorsV1::OAuthTokenData, decorator: Google::Apis::ConnectorsV1::OAuthTokenData::Representation
      
          property :pkce_verifier, as: 'pkceVerifier'
          property :redirect_uri, as: 'redirectUri'
          collection :scopes, as: 'scopes'
        end
      end
      
      class EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_code, as: 'authCode'
          property :oauth_token_data, as: 'oauthTokenData', class: Google::Apis::ConnectorsV1::OAuthTokenData, decorator: Google::Apis::ConnectorsV1::OAuthTokenData::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :scopes, as: 'scopes'
        end
      end
      
      class EndUserAuthenticationConfigOauth2ClientCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
        end
      end
      
      class EndUserAuthenticationConfigOauth2JwtBearer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_key, as: 'clientKey', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :jwt_claims, as: 'jwtClaims', class: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2JwtBearerJwtClaims, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationConfigOauth2JwtBearerJwtClaims::Representation
      
        end
      end
      
      class EndUserAuthenticationConfigOauth2JwtBearerJwtClaims
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :issuer, as: 'issuer'
          property :subject, as: 'subject'
        end
      end
      
      class EndUserAuthenticationConfigSshPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_type, as: 'certType'
          property :ssh_client_cert, as: 'sshClientCert', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :ssh_client_cert_pass, as: 'sshClientCertPass', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :username, as: 'username'
        end
      end
      
      class EndUserAuthenticationConfigUserPassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :username, as: 'username'
        end
      end
      
      class EndUserAuthenticationConfigVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :key, as: 'key'
          property :secret_value, as: 'secretValue', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class EndUserAuthenticationEndUserAuthenticationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
        end
      end
      
      class EndUserAuthenticationNotifyEndpointDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestinationEndPoint, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestinationEndPoint::Representation
      
          property :service_account, as: 'serviceAccount'
          property :type, as: 'type'
        end
      end
      
      class EndUserAuthenticationNotifyEndpointDestinationEndPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_uri, as: 'endpointUri'
          collection :headers, as: 'headers', class: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestinationEndPointHeader, decorator: Google::Apis::ConnectorsV1::EndUserAuthenticationNotifyEndpointDestinationEndPointHeader::Representation
      
        end
      end
      
      class EndUserAuthenticationNotifyEndpointDestinationEndPointHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class EndpointAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :endpoint_global_access, as: 'endpointGlobalAccess'
          property :endpoint_ip, as: 'endpointIp'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_attachment, as: 'serviceAttachment'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class EnrichmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append_acl, as: 'appendAcl'
        end
      end
      
      class EnumOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class EventSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destinations, as: 'destinations', class: Google::Apis::ConnectorsV1::EventSubscriptionDestination, decorator: Google::Apis::ConnectorsV1::EventSubscriptionDestination::Representation
      
          property :event_type_id, as: 'eventTypeId'
          property :jms, as: 'jms', class: Google::Apis::ConnectorsV1::Jms, decorator: Google::Apis::ConnectorsV1::Jms::Representation
      
          property :name, as: 'name'
          property :status, as: 'status', class: Google::Apis::ConnectorsV1::EventSubscriptionStatus, decorator: Google::Apis::ConnectorsV1::EventSubscriptionStatus::Representation
      
          property :subscriber, as: 'subscriber'
          property :subscriber_link, as: 'subscriberLink'
          collection :trigger_config_variables, as: 'triggerConfigVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class EventSubscriptionDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ConnectorsV1::EndPoint, decorator: Google::Apis::ConnectorsV1::EndPoint::Representation
      
          property :pubsub, as: 'pubsub', class: Google::Apis::ConnectorsV1::PubSub, decorator: Google::Apis::ConnectorsV1::PubSub::Representation
      
          property :service_account, as: 'serviceAccount'
          property :type, as: 'type'
        end
      end
      
      class EventSubscriptionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
        end
      end
      
      class EventType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :enriched_event_payload_schema, as: 'enrichedEventPayloadSchema'
          property :entity_type, as: 'entityType'
          property :event_payload_schema, as: 'eventPayloadSchema'
          property :event_type_id, as: 'eventTypeId'
          property :id_path, as: 'idPath'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class EventingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :auth_config, as: 'authConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          property :dead_letter_config, as: 'deadLetterConfig', class: Google::Apis::ConnectorsV1::DeadLetterConfig, decorator: Google::Apis::ConnectorsV1::DeadLetterConfig::Representation
      
          property :enrichment_config, as: 'enrichmentConfig', class: Google::Apis::ConnectorsV1::EnrichmentConfig, decorator: Google::Apis::ConnectorsV1::EnrichmentConfig::Representation
      
          property :enrichment_enabled, as: 'enrichmentEnabled'
          property :events_listener_ingress_endpoint, as: 'eventsListenerIngressEndpoint'
          property :listener_auth_config, as: 'listenerAuthConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          collection :private_connectivity_allowlisted_projects, as: 'privateConnectivityAllowlistedProjects'
          property :private_connectivity_enabled, as: 'privateConnectivityEnabled'
          property :proxy_destination_config, as: 'proxyDestinationConfig', class: Google::Apis::ConnectorsV1::DestinationConfig, decorator: Google::Apis::ConnectorsV1::DestinationConfig::Representation
      
          property :registration_destination_config, as: 'registrationDestinationConfig', class: Google::Apis::ConnectorsV1::DestinationConfig, decorator: Google::Apis::ConnectorsV1::DestinationConfig::Representation
      
          property :ssl_config, as: 'sslConfig', class: Google::Apis::ConnectorsV1::SslConfig, decorator: Google::Apis::ConnectorsV1::SslConfig::Representation
      
        end
      end
      
      class EventingConfigTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          collection :auth_config_templates, as: 'authConfigTemplates', class: Google::Apis::ConnectorsV1::AuthConfigTemplate, decorator: Google::Apis::ConnectorsV1::AuthConfigTemplate::Representation
      
          property :auto_refresh, as: 'autoRefresh'
          property :auto_registration_supported, as: 'autoRegistrationSupported'
          property :encryption_key_template, as: 'encryptionKeyTemplate', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          property :enrichment_supported, as: 'enrichmentSupported'
          property :event_listener_type, as: 'eventListenerType'
          property :is_eventing_supported, as: 'isEventingSupported'
          collection :listener_auth_config_templates, as: 'listenerAuthConfigTemplates', class: Google::Apis::ConnectorsV1::AuthConfigTemplate, decorator: Google::Apis::ConnectorsV1::AuthConfigTemplate::Representation
      
          property :proxy_destination_config, as: 'proxyDestinationConfig', class: Google::Apis::ConnectorsV1::DestinationConfigTemplate, decorator: Google::Apis::ConnectorsV1::DestinationConfigTemplate::Representation
      
          property :registration_destination_config, as: 'registrationDestinationConfig', class: Google::Apis::ConnectorsV1::DestinationConfigTemplate, decorator: Google::Apis::ConnectorsV1::DestinationConfigTemplate::Representation
      
          property :ssl_config_template, as: 'sslConfigTemplate', class: Google::Apis::ConnectorsV1::SslConfigTemplate, decorator: Google::Apis::ConnectorsV1::SslConfigTemplate::Representation
      
          collection :trigger_config_variables, as: 'triggerConfigVariables', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
        end
      end
      
      class EventingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_event_types, as: 'customEventTypes'
          property :description, as: 'description'
          property :documentation_link, as: 'documentationLink'
          property :icon_location, as: 'iconLocation'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          collection :search_tags, as: 'searchTags'
          property :type, as: 'type'
        end
      end
      
      class EventingRuntimeData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :events_listener_endpoint, as: 'eventsListenerEndpoint'
          property :events_listener_psc_sa, as: 'eventsListenerPscSa'
          property :status, as: 'status', class: Google::Apis::ConnectorsV1::EventingStatus, decorator: Google::Apis::ConnectorsV1::EventingStatus::Representation
      
          property :webhook_data, as: 'webhookData', class: Google::Apis::ConnectorsV1::WebhookData, decorator: Google::Apis::ConnectorsV1::WebhookData::Representation
      
          property :webhook_subscriptions, as: 'webhookSubscriptions', class: Google::Apis::ConnectorsV1::WebhookSubscriptions, decorator: Google::Apis::ConnectorsV1::WebhookSubscriptions::Representation
      
        end
      end
      
      class EventingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
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
      
      class ExtractionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extraction_regex, as: 'extractionRegex'
          property :source, as: 'source', class: Google::Apis::ConnectorsV1::Source, decorator: Google::Apis::ConnectorsV1::Source::Representation
      
        end
      end
      
      class ExtractionRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extraction_rule, as: 'extractionRule', class: Google::Apis::ConnectorsV1::ExtractionRule, decorator: Google::Apis::ConnectorsV1::ExtractionRule::Representation
      
        end
      end
      
      class FetchAuthSchemaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_schemas, as: 'authSchemas', class: Google::Apis::ConnectorsV1::AuthSchema, decorator: Google::Apis::ConnectorsV1::AuthSchema::Representation
      
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV1::JsonAuthSchema, decorator: Google::Apis::ConnectorsV1::JsonAuthSchema::Representation
      
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :field, as: 'field'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          property :key, as: 'key'
          property :nullable, as: 'nullable'
          property :readonly, as: 'readonly'
        end
      end
      
      class FieldComparison
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :comparator, as: 'comparator'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :key, as: 'key'
          property :string_value, as: 'stringValue'
        end
      end
      
      class HpaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_threshold, :numeric_string => true, as: 'cpuUtilizationThreshold'
          property :memory_utilization_threshold, :numeric_string => true, as: 'memoryUtilizationThreshold'
        end
      end
      
      class Header
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class InputParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          property :nullable, as: 'nullable'
          property :parameter, as: 'parameter'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :consumer_project_number, as: 'consumerProjectNumber'
          property :create_time, as: 'createTime'
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::ConnectorsV1::MaintenanceSchedule, decorator: Google::Apis::ConnectorsV1::MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::ConnectorsV1::MaintenanceSettings, decorator: Google::Apis::ConnectorsV1::MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :notification_parameters, as: 'notificationParameters', class: Google::Apis::ConnectorsV1::NotificationParameter, decorator: Google::Apis::ConnectorsV1::NotificationParameter::Representation
      
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::ConnectorsV1::ProvisionedResource, decorator: Google::Apis::ConnectorsV1::ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::ConnectorsV1::SloMetadata, decorator: Google::Apis::ConnectorsV1::SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Jms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class JsonAuthSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :_schema, as: '$schema'
          collection :one_of, as: 'oneOf', class: Google::Apis::ConnectorsV1::AuthObject, decorator: Google::Apis::ConnectorsV1::AuthObject::Representation
      
        end
      end
      
      class JsonSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :default, as: 'default'
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          property :jdbc_type, as: 'jdbcType'
          hash :properties, as: 'properties', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          collection :required, as: 'required'
          collection :type, as: 'type'
        end
      end
      
      class JwtClaims
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :issuer, as: 'issuer'
          property :subject, as: 'subject'
        end
      end
      
      class ListActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ConnectorsV1::RuntimeActionSchema, decorator: Google::Apis::ConnectorsV1::RuntimeActionSchema::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::ConnectorsV1::Connection, decorator: Google::Apis::ConnectorsV1::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_versions, as: 'connectorVersions', class: Google::Apis::ConnectorsV1::ConnectorVersion, decorator: Google::Apis::ConnectorsV1::ConnectorVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connectors, as: 'connectors', class: Google::Apis::ConnectorsV1::Connector, decorator: Google::Apis::ConnectorsV1::Connector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCustomConnectorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_connector_versions, as: 'customConnectorVersions', class: Google::Apis::ConnectorsV1::CustomConnectorVersion, decorator: Google::Apis::ConnectorsV1::CustomConnectorVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCustomConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_connectors, as: 'customConnectors', class: Google::Apis::ConnectorsV1::CustomConnector, decorator: Google::Apis::ConnectorsV1::CustomConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListEndUserAuthenticationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :end_user_authentications, as: 'endUserAuthentications', class: Google::Apis::ConnectorsV1::EndUserAuthentication, decorator: Google::Apis::ConnectorsV1::EndUserAuthentication::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListEndpointAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_attachments, as: 'endpointAttachments', class: Google::Apis::ConnectorsV1::EndpointAttachment, decorator: Google::Apis::ConnectorsV1::EndpointAttachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::ConnectorsV1::RuntimeEntitySchema, decorator: Google::Apis::ConnectorsV1::RuntimeEntitySchema::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEventSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_subscriptions, as: 'eventSubscriptions', class: Google::Apis::ConnectorsV1::EventSubscription, decorator: Google::Apis::ConnectorsV1::EventSubscription::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListEventTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_types, as: 'eventTypes', class: Google::Apis::ConnectorsV1::EventType, decorator: Google::Apis::ConnectorsV1::EventType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ConnectorsV1::Location, decorator: Google::Apis::ConnectorsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListManagedZonesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_zones, as: 'managedZones', class: Google::Apis::ConnectorsV1::ManagedZone, decorator: Google::Apis::ConnectorsV1::ManagedZone::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ConnectorsV1::Operation, decorator: Google::Apis::ConnectorsV1::Operation::Representation
      
        end
      end
      
      class ListProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :providers, as: 'providers', class: Google::Apis::ConnectorsV1::Provider, decorator: Google::Apis::ConnectorsV1::Provider::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRuntimeActionSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtime_action_schemas, as: 'runtimeActionSchemas', class: Google::Apis::ConnectorsV1::RuntimeActionSchema, decorator: Google::Apis::ConnectorsV1::RuntimeActionSchema::Representation
      
        end
      end
      
      class ListRuntimeEntitySchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtime_entity_schemas, as: 'runtimeEntitySchemas', class: Google::Apis::ConnectorsV1::RuntimeEntitySchema, decorator: Google::Apis::ConnectorsV1::RuntimeEntitySchema::Representation
      
        end
      end
      
      class ListenEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :payload, as: 'payload'
        end
      end
      
      class ListenEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class LockConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locked, as: 'locked'
          property :reason, as: 'reason'
        end
      end
      
      class LogicalExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_comparisons, as: 'fieldComparisons', class: Google::Apis::ConnectorsV1::FieldComparison, decorator: Google::Apis::ConnectorsV1::FieldComparison::Representation
      
          collection :logical_expressions, as: 'logicalExpressions', class: Google::Apis::ConnectorsV1::LogicalExpression, decorator: Google::Apis::ConnectorsV1::LogicalExpression::Representation
      
          property :logical_operator, as: 'logicalOperator'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::ConnectorsV1::UpdatePolicy, decorator: Google::Apis::ConnectorsV1::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          property :is_rollback, as: 'isRollback'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::ConnectorsV1::MaintenancePolicy, decorator: Google::Apis::ConnectorsV1::MaintenancePolicy::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::ConnectorsV1::DailyCycle, decorator: Google::Apis::ConnectorsV1::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::ConnectorsV1::WeeklyCycle, decorator: Google::Apis::ConnectorsV1::WeeklyCycle::Representation
      
        end
      end
      
      class ManagedZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :dns, as: 'dns'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :target_project, as: 'targetProject'
          property :target_vpc, as: 'targetVpc'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MarketplaceConnectorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :marketplace_product, as: 'marketplaceProduct'
          property :marketplace_product_id, as: 'marketplaceProductId'
          property :marketplace_product_uri, as: 'marketplaceProductUri'
          property :partner, as: 'partner'
        end
      end
      
      class MultipleSelectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_custom_values, as: 'allowCustomValues'
          collection :multiple_select_options, as: 'multipleSelectOptions', class: Google::Apis::ConnectorsV1::MultipleSelectOption, decorator: Google::Apis::ConnectorsV1::MultipleSelectOption::Representation
      
          property :value_separator, as: 'valueSeparator'
        end
      end
      
      class MultipleSelectOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :key, as: 'key'
          property :preselected, as: 'preselected'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :egress_ips, as: 'egressIps'
          property :egress_mode, as: 'egressMode'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
        end
      end
      
      class NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ConnectorsV1::PerSliSloEligibility, decorator: Google::Apis::ConnectorsV1::PerSliSloEligibility::Representation
      
        end
      end
      
      class NotificationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class OAuthTokenData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
          property :create_time, as: 'createTime'
          property :expiry, as: 'expiry'
          property :refresh_token, as: 'refreshToken', class: Google::Apis::ConnectorsV1::EuaSecret, decorator: Google::Apis::ConnectorsV1::EuaSecret::Representation
      
        end
      end
      
      class Oauth2AuthCodeFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_code, as: 'authCode'
          property :auth_uri, as: 'authUri'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :enable_pkce, as: 'enablePkce'
          property :pkce_verifier, as: 'pkceVerifier'
          property :redirect_uri, as: 'redirectUri'
          collection :scopes, as: 'scopes'
        end
      end
      
      class Oauth2AuthCodeFlowGoogleManaged
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_code, as: 'authCode'
          property :redirect_uri, as: 'redirectUri'
          collection :scopes, as: 'scopes'
        end
      end
      
      class Oauth2ClientCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
        end
      end
      
      class Oauth2JwtBearer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_key, as: 'clientKey', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :jwt_claims, as: 'jwtClaims', class: Google::Apis::ConnectorsV1::JwtClaims, decorator: Google::Apis::ConnectorsV1::JwtClaims::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ConnectorsV1::Status, decorator: Google::Apis::ConnectorsV1::Status::Representation
      
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
      
      class PartnerMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_gcp_tos, as: 'acceptGcpTos'
          property :additional_comments, as: 'additionalComments'
          property :confirm_partner_requirements, as: 'confirmPartnerRequirements'
          property :demo_uri, as: 'demoUri'
          property :has_dynamic_spec_uri, as: 'hasDynamicSpecUri'
          property :integration_templates, as: 'integrationTemplates'
          property :local_spec_path, as: 'localSpecPath'
          property :marketplace_product, as: 'marketplaceProduct'
          property :marketplace_product_id, as: 'marketplaceProductId'
          property :marketplace_product_project_id, as: 'marketplaceProductProjectId'
          property :marketplace_product_uri, as: 'marketplaceProductUri'
          property :partner, as: 'partner'
          property :partner_connector_display_name, as: 'partnerConnectorDisplayName'
          property :publish_request_time, as: 'publishRequestTime'
          property :target_application, as: 'targetApplication'
          property :target_customer_segment, as: 'targetCustomerSegment'
          property :use_cases, as: 'useCases'
        end
      end
      
      class PerSliSloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :eligibilities, as: 'eligibilities', class: Google::Apis::ConnectorsV1::SloEligibility, decorator: Google::Apis::ConnectorsV1::SloEligibility::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ConnectorsV1::AuditConfig, decorator: Google::Apis::ConnectorsV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ConnectorsV1::Binding, decorator: Google::Apis::ConnectorsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Provider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation_uri, as: 'documentationUri'
          property :external_uri, as: 'externalUri'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :web_assets_location, as: 'webAssetsLocation'
        end
      end
      
      class ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class PubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          collection :config_variables, as: 'configVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :project_id, as: 'projectId'
          property :topic_id, as: 'topicId'
        end
      end
      
      class PublishCustomConnectorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ConnectorsV1::PartnerMetadata, decorator: Google::Apis::ConnectorsV1::PartnerMetadata::Representation
      
        end
      end
      
      class PublishStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :publish_state, as: 'publishState'
          property :publish_time, as: 'publishTime'
          property :published_as, as: 'publishedAs'
          property :published_source, as: 'publishedSource'
        end
      end
      
      class RefreshConnectionSchemaMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RegionalSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::ConnectorsV1::EncryptionConfig, decorator: Google::Apis::ConnectorsV1::EncryptionConfig::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::ConnectorsV1::NetworkConfig, decorator: Google::Apis::ConnectorsV1::NetworkConfig::Representation
      
          property :provisioned, as: 'provisioned'
        end
      end
      
      class RepairEventingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path_template, as: 'pathTemplate'
          property :type, as: 'type'
        end
      end
      
      class ResourceLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :memory, as: 'memory'
        end
      end
      
      class ResourceRequests
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :memory, as: 'memory'
        end
      end
      
      class ResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :field, as: 'field'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          property :nullable, as: 'nullable'
        end
      end
      
      class RetryEventSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RoleGrant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :helper_text_template, as: 'helperTextTemplate'
          property :principal, as: 'principal'
          property :resource, as: 'resource', class: Google::Apis::ConnectorsV1::Resource, decorator: Google::Apis::ConnectorsV1::Resource::Representation
      
          collection :roles, as: 'roles'
        end
      end
      
      class RuntimeActionSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :input_json_schema, as: 'inputJsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          collection :input_parameters, as: 'inputParameters', class: Google::Apis::ConnectorsV1::InputParameter, decorator: Google::Apis::ConnectorsV1::InputParameter::Representation
      
          property :input_schema_as_string, as: 'inputSchemaAsString'
          property :result_json_schema, as: 'resultJsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          collection :result_metadata, as: 'resultMetadata', class: Google::Apis::ConnectorsV1::ResultMetadata, decorator: Google::Apis::ConnectorsV1::ResultMetadata::Representation
      
          property :result_schema_as_string, as: 'resultSchemaAsString'
        end
      end
      
      class RuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connd_subscription, as: 'conndSubscription'
          property :connd_topic, as: 'conndTopic'
          property :control_plane_subscription, as: 'controlPlaneSubscription'
          property :control_plane_topic, as: 'controlPlaneTopic'
          property :location_id, as: 'locationId'
          property :name, as: 'name'
          property :runtime_endpoint, as: 'runtimeEndpoint'
          property :schema_gcs_bucket, as: 'schemaGcsBucket'
          property :service_directory, as: 'serviceDirectory'
          property :state, as: 'state'
        end
      end
      
      class RuntimeEntitySchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          collection :fields, as: 'fields', class: Google::Apis::ConnectorsV1::Field, decorator: Google::Apis::ConnectorsV1::Field::Representation
      
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV1::JsonSchema, decorator: Google::Apis::ConnectorsV1::JsonSchema::Representation
      
          collection :operations, as: 'operations'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ConnectorsV1::TimeOfDay, decorator: Google::Apis::ConnectorsV1::TimeOfDay::Representation
      
        end
      end
      
      class SchemaRefreshConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_action_display_names, as: 'useActionDisplayNames'
          property :use_synchronous_schema_refresh, as: 'useSynchronousSchemaRefresh'
        end
      end
      
      class SearchConnectionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_schema, as: 'actionSchema', class: Google::Apis::ConnectorsV1::RuntimeActionSchema, decorator: Google::Apis::ConnectorsV1::RuntimeActionSchema::Representation
      
          property :connection, as: 'connection', class: Google::Apis::ConnectorsV1::Connection, decorator: Google::Apis::ConnectorsV1::Connection::Representation
      
          property :entity_schema, as: 'entitySchema', class: Google::Apis::ConnectorsV1::RuntimeEntitySchema, decorator: Google::Apis::ConnectorsV1::RuntimeEntitySchema::Representation
      
        end
      end
      
      class SearchConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::ConnectorsV1::SearchConnectionInstance, decorator: Google::Apis::ConnectorsV1::SearchConnectionInstance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ConnectorsV1::Policy, decorator: Google::Apis::ConnectorsV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :payg, as: 'payg'
          property :tenant_project_id, as: 'tenantProjectId'
          property :vpcsc, as: 'vpcsc'
        end
      end
      
      class SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::ConnectorsV1::NodeSloMetadata, decorator: Google::Apis::ConnectorsV1::NodeSloMetadata::Representation
      
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ConnectorsV1::PerSliSloEligibility, decorator: Google::Apis::ConnectorsV1::PerSliSloEligibility::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :source_type, as: 'sourceType'
        end
      end
      
      class SshPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_type, as: 'certType'
          property :ssh_client_cert, as: 'sshClientCert', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :ssh_client_cert_pass, as: 'sshClientCertPass', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :username, as: 'username'
        end
      end
      
      class SslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :client_cert_type, as: 'clientCertType'
          property :client_certificate, as: 'clientCertificate', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :client_private_key, as: 'clientPrivateKey', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :client_private_key_pass, as: 'clientPrivateKeyPass', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :private_server_certificate, as: 'privateServerCertificate', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :server_cert_type, as: 'serverCertType'
          property :trust_model, as: 'trustModel'
          property :type, as: 'type'
          property :use_ssl, as: 'useSsl'
        end
      end
      
      class SslConfigTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          collection :client_cert_type, as: 'clientCertType'
          property :is_tls_mandatory, as: 'isTlsMandatory'
          collection :server_cert_type, as: 'serverCertType'
          property :ssl_type, as: 'sslType'
        end
      end
      
      class StandardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class StandardEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
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
      
      class SupportedRuntimeFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_apis, as: 'actionApis'
          property :async_operations, as: 'asyncOperations'
          property :entity_apis, as: 'entityApis'
          property :sql_query, as: 'sqlQuery'
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
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TrafficShapingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :quota_limit, :numeric_string => true, as: 'quotaLimit'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::ConnectorsV1::DenyMaintenancePeriod, decorator: Google::Apis::ConnectorsV1::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::ConnectorsV1::MaintenanceWindow, decorator: Google::Apis::ConnectorsV1::MaintenanceWindow::Representation
      
        end
      end
      
      class UserPassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :username, as: 'username'
        end
      end
      
      class ValidateCustomConnectorSpecRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
          property :spec_location, as: 'specLocation'
          property :spec_type, as: 'specType'
        end
      end
      
      class ValidateCustomConnectorSpecResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class VpcscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_allowlisted_host, as: 'defaultAllowlistedHost'
          property :disable_firewall_vpcsc_flow, as: 'disableFirewallVpcscFlow'
        end
      end
      
      class WebhookData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :create_time, as: 'createTime'
          property :id, as: 'id'
          property :name, as: 'name'
          property :next_refresh_time, as: 'nextRefreshTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class WebhookSubscriptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :webhook_data, as: 'webhookData', class: Google::Apis::ConnectorsV1::WebhookData, decorator: Google::Apis::ConnectorsV1::WebhookData::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::ConnectorsV1::Schedule, decorator: Google::Apis::ConnectorsV1::Schedule::Representation
      
        end
      end
      
      class WithdrawCustomConnectorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
