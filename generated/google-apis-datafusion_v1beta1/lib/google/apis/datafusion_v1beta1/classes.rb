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
    module DatafusionV1beta1
      
      # Identifies Cloud Data Fusion accelerators for an instance.
      class Accelerator
        include Google::Apis::Core::Hashable
      
        # Optional. The type of an accelator for a Cloud Data Fusion instance.
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Output only. The state of the accelerator.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DatafusionV1beta1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DatafusionV1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
      # The crypto key configuration. This field is used by the Customer-managed
      # encryption keys (CMEK) feature.
      class CryptoKeyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the key which is used to encrypt/decrypt customer data.
        # For key in Cloud KMS, the key should be in the format of `projects/*/locations/
        # */keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `keyReference`
        # @return [String]
        attr_accessor :key_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_reference = args[:key_reference] if args.key?(:key_reference)
        end
      end
      
      # DNS peering configuration. These configurations are used to create DNS peering
      # with the customer Cloud DNS.
      class DnsPeering
        include Google::Apis::Core::Hashable
      
        # Optional. Optional description of the dns zone.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The dns name suffix of the zone.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Identifier. The resource name of the dns peering zone. Format: projects/`
        # project`/locations/`location`/instances/`instance`/dnsPeerings/`dns_peering`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Optional target network to which dns peering should happen.
        # Corresponds to the JSON property `targetNetwork`
        # @return [String]
        attr_accessor :target_network
      
        # Optional. Optional target project to which dns peering should happen.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @domain = args[:domain] if args.key?(:domain)
          @name = args[:name] if args.key?(:name)
          @target_network = args[:target_network] if args.key?(:target_network)
          @target_project = args[:target_project] if args.key?(:target_project)
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
      
      # Confirguration of PubSubEventWriter.
      class EventPublishConfig
        include Google::Apis::Core::Hashable
      
        # Required. Option to enable Event Publishing.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Required. The resource name of the Pub/Sub topic. Format: projects/`project_id`
        # /topics/`topic_id`
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # IAMPolicy encapsulates the IAM policy name, definition and status of policy
      # fetching.
      class IamPolicy
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DatafusionV1beta1::Policy]
        attr_accessor :policy
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DatafusionV1beta1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a Data Fusion instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. List of accelerators enabled for this CDF instance.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::DatafusionV1beta1::Accelerator>]
        attr_accessor :accelerators
      
        # Output only. Endpoint on which the REST APIs is accessible.
        # Corresponds to the JSON property `apiEndpoint`
        # @return [String]
        attr_accessor :api_endpoint
      
        # Output only. Available versions that the instance can be upgraded to using
        # UpdateInstanceRequest.
        # Corresponds to the JSON property `availableVersion`
        # @return [Array<Google::Apis::DatafusionV1beta1::Version>]
        attr_accessor :available_version
      
        # Output only. The time the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The crypto key configuration. This field is used by the Customer-managed
        # encryption keys (CMEK) feature.
        # Corresponds to the JSON property `cryptoKeyConfig`
        # @return [Google::Apis::DatafusionV1beta1::CryptoKeyConfig]
        attr_accessor :crypto_key_config
      
        # Optional. Option to enable the Dataplex Lineage Integration feature.
        # Corresponds to the JSON property `dataplexDataLineageIntegrationEnabled`
        # @return [Boolean]
        attr_accessor :dataplex_data_lineage_integration_enabled
        alias_method :dataplex_data_lineage_integration_enabled?, :dataplex_data_lineage_integration_enabled
      
        # Optional. User-managed service account to set on Dataproc when Cloud Data
        # Fusion creates Dataproc to run data processing pipelines. This allows users to
        # have fine-grained access control on Dataproc's accesses to cloud resources.
        # Corresponds to the JSON property `dataprocServiceAccount`
        # @return [String]
        attr_accessor :dataproc_service_account
      
        # Optional. A description of this instance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. If the instance state is DISABLED, the reason for disabling the
        # instance.
        # Corresponds to the JSON property `disabledReason`
        # @return [Array<String>]
        attr_accessor :disabled_reason
      
        # Optional. Display name for an instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Option to enable granular role-based access control.
        # Corresponds to the JSON property `enableRbac`
        # @return [Boolean]
        attr_accessor :enable_rbac
        alias_method :enable_rbac?, :enable_rbac
      
        # Optional. Option to enable Dataproc Stackdriver Logging.
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        # Optional. Option to enable Stackdriver Monitoring.
        # Corresponds to the JSON property `enableStackdriverMonitoring`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_monitoring
        alias_method :enable_stackdriver_monitoring?, :enable_stackdriver_monitoring
      
        # Output only. Option to enable zone separation.
        # Corresponds to the JSON property `enableZoneSeparation`
        # @return [Boolean]
        attr_accessor :enable_zone_separation
        alias_method :enable_zone_separation?, :enable_zone_separation
      
        # Confirguration of PubSubEventWriter.
        # Corresponds to the JSON property `eventPublishConfig`
        # @return [Google::Apis::DatafusionV1beta1::EventPublishConfig]
        attr_accessor :event_publish_config
      
        # Output only. Cloud Storage bucket generated by Data Fusion in the customer
        # project.
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # The resource labels for instance to use to annotate any related underlying
        # resources such as Compute Engine VMs. The character '=' is not allowed to be
        # used within the labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Logging configuration for a Data Fusion instance.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DatafusionV1beta1::LoggingConfig]
        attr_accessor :logging_config
      
        # Output only. The maintenance events for this instance.
        # Corresponds to the JSON property `maintenanceEvents`
        # @return [Array<Google::Apis::DatafusionV1beta1::MaintenanceEvent>]
        attr_accessor :maintenance_events
      
        # Maintenance policy of the instance.
        # Corresponds to the JSON property `maintenancePolicy`
        # @return [Google::Apis::DatafusionV1beta1::MaintenancePolicy]
        attr_accessor :maintenance_policy
      
        # Output only. The name of this instance is in the form of projects/`project`/
        # locations/`location`/instances/`instance`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network configuration for a Data Fusion instance. These configurations are
        # used for peering with the customer network. Configurations are optional when a
        # public Data Fusion instance is to be created. However, providing these
        # configurations allows several benefits, such as reduced network latency while
        # accessing the customer resources from managed Data Fusion instance nodes, as
        # well as access to the customer on-prem resources.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::DatafusionV1beta1::NetworkConfig]
        attr_accessor :network_config
      
        # Optional. Map of additional options used to configure the behavior of Data
        # Fusion instance.
        # Corresponds to the JSON property `options`
        # @return [Hash<String,String>]
        attr_accessor :options
      
        # Output only. Service agent for the customer project.
        # Corresponds to the JSON property `p4ServiceAccount`
        # @return [String]
        attr_accessor :p4_service_account
      
        # Optional. Current patch revision of the Data Fusion.
        # Corresponds to the JSON property `patchRevision`
        # @return [String]
        attr_accessor :patch_revision
      
        # Optional. Specifies whether the Data Fusion instance should be private. If set
        # to true, all Data Fusion nodes will have private IP addresses and will not be
        # able to access the public internet.
        # Corresponds to the JSON property `privateInstance`
        # @return [Boolean]
        attr_accessor :private_instance
        alias_method :private_instance?, :private_instance
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. Deprecated. Use tenant_project_id instead to extract the tenant
        # project ID.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Endpoint on which the Data Fusion UI is accessible.
        # Corresponds to the JSON property `serviceEndpoint`
        # @return [String]
        attr_accessor :service_endpoint
      
        # Output only. The current state of this Data Fusion instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of this Data
        # Fusion instance if available.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: "123/environment": "production", "123/costCenter": "
        # marketing"
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Output only. The name of the tenant project.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Required. Instance type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time the instance was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Current version of Data Fusion.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Output only. Endpoint on which the Data Fusion UI is accessible to third-party
        # users.
        # Corresponds to the JSON property `workforceIdentityServiceEndpoint`
        # @return [String]
        attr_accessor :workforce_identity_service_endpoint
      
        # Optional. Name of the zone in which the Data Fusion instance will be created.
        # Only DEVELOPER instances use this field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @api_endpoint = args[:api_endpoint] if args.key?(:api_endpoint)
          @available_version = args[:available_version] if args.key?(:available_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_config = args[:crypto_key_config] if args.key?(:crypto_key_config)
          @dataplex_data_lineage_integration_enabled = args[:dataplex_data_lineage_integration_enabled] if args.key?(:dataplex_data_lineage_integration_enabled)
          @dataproc_service_account = args[:dataproc_service_account] if args.key?(:dataproc_service_account)
          @description = args[:description] if args.key?(:description)
          @disabled_reason = args[:disabled_reason] if args.key?(:disabled_reason)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_rbac = args[:enable_rbac] if args.key?(:enable_rbac)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
          @enable_stackdriver_monitoring = args[:enable_stackdriver_monitoring] if args.key?(:enable_stackdriver_monitoring)
          @enable_zone_separation = args[:enable_zone_separation] if args.key?(:enable_zone_separation)
          @event_publish_config = args[:event_publish_config] if args.key?(:event_publish_config)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @labels = args[:labels] if args.key?(:labels)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @maintenance_events = args[:maintenance_events] if args.key?(:maintenance_events)
          @maintenance_policy = args[:maintenance_policy] if args.key?(:maintenance_policy)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @options = args[:options] if args.key?(:options)
          @p4_service_account = args[:p4_service_account] if args.key?(:p4_service_account)
          @patch_revision = args[:patch_revision] if args.key?(:patch_revision)
          @private_instance = args[:private_instance] if args.key?(:private_instance)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_endpoint = args[:service_endpoint] if args.key?(:service_endpoint)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @tags = args[:tags] if args.key?(:tags)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
          @workforce_identity_service_endpoint = args[:workforce_identity_service_endpoint] if args.key?(:workforce_identity_service_endpoint)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Response message for the list available versions request.
      class ListAvailableVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Represents a list of versions that are supported. Deprecated: Use versions
        # field instead.
        # Corresponds to the JSON property `availableVersions`
        # @return [Array<Google::Apis::DatafusionV1beta1::Version>]
        attr_accessor :available_versions
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Represents a list of all versions.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::DatafusionV1beta1::Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_versions = args[:available_versions] if args.key?(:available_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Response message for list DNS peerings.
      class ListDnsPeeringsResponse
        include Google::Apis::Core::Hashable
      
        # List of dns peering.
        # Corresponds to the JSON property `dnsPeerings`
        # @return [Array<Google::Apis::DatafusionV1beta1::DnsPeering>]
        attr_accessor :dns_peerings
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_peerings = args[:dns_peerings] if args.key?(:dns_peerings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the list instance request.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # Represents a list of Data Fusion instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::DatafusionV1beta1::Instance>]
        attr_accessor :instances
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DatafusionV1beta1::Location>]
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
      
      # List namespaces response.
      class ListNamespacesResponse
        include Google::Apis::Core::Hashable
      
        # List of namespaces
        # Corresponds to the JSON property `namespaces`
        # @return [Array<Google::Apis::DatafusionV1beta1::Namespace>]
        attr_accessor :namespaces
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaces = args[:namespaces] if args.key?(:namespaces)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::DatafusionV1beta1::Operation>]
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
      
      # Logging configuration for a Data Fusion instance.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Option to determine whether instance logs should be written to Cloud
        # Logging. By default, instance logs are written to Cloud Logging.
        # Corresponds to the JSON property `instanceCloudLoggingDisabled`
        # @return [Boolean]
        attr_accessor :instance_cloud_logging_disabled
        alias_method :instance_cloud_logging_disabled?, :instance_cloud_logging_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_cloud_logging_disabled = args[:instance_cloud_logging_disabled] if args.key?(:instance_cloud_logging_disabled)
        end
      end
      
      # Represents a maintenance event.
      class MaintenanceEvent
        include Google::Apis::Core::Hashable
      
        # Output only. The end time of the maintenance event provided in [RFC 3339](
        # https://www.ietf.org/rfc/rfc3339.txt) format. Example: "2024-01-02T12:04:06-06:
        # 00" This field will be empty if the maintenance event is not yet complete.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The start time of the maintenance event provided in [RFC 3339](
        # https://www.ietf.org/rfc/rfc3339.txt) format. Example: "2024-01-01T12:04:06-04:
        # 00"
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The state of the maintenance event.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Maintenance policy of the instance.
      class MaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # Represents an arbitrary window of time.
        # Corresponds to the JSON property `maintenanceExclusionWindow`
        # @return [Google::Apis::DatafusionV1beta1::TimeWindow]
        attr_accessor :maintenance_exclusion_window
      
        # Maintenance window of the instance.
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::DatafusionV1beta1::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_exclusion_window = args[:maintenance_exclusion_window] if args.key?(:maintenance_exclusion_window)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
        end
      end
      
      # Maintenance window of the instance.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Represents an arbitrary window of time that recurs.
        # Corresponds to the JSON property `recurringTimeWindow`
        # @return [Google::Apis::DatafusionV1beta1::RecurringTimeWindow]
        attr_accessor :recurring_time_window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recurring_time_window = args[:recurring_time_window] if args.key?(:recurring_time_window)
        end
      end
      
      # Represents the information of a namespace
      class Namespace
        include Google::Apis::Core::Hashable
      
        # IAMPolicy encapsulates the IAM policy name, definition and status of policy
        # fetching.
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::DatafusionV1beta1::IamPolicy]
        attr_accessor :iam_policy
      
        # Name of the given namespace.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Network configuration for a Data Fusion instance. These configurations are
      # used for peering with the customer network. Configurations are optional when a
      # public Data Fusion instance is to be created. However, providing these
      # configurations allows several benefits, such as reduced network latency while
      # accessing the customer resources from managed Data Fusion instance nodes, as
      # well as access to the customer on-prem resources.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Type of connection for establishing private IP connectivity between
        # the Data Fusion customer project VPC and the corresponding tenant project from
        # a predefined list of available connection modes. If this field is unspecified
        # for a private instance, VPC peering is used.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Optional. The IP range in CIDR notation to use for the managed Data Fusion
        # instance nodes. This range must not overlap with any other ranges used in the
        # Data Fusion instance network. This is required only when using connection type
        # VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
        # Corresponds to the JSON property `ipAllocation`
        # @return [String]
        attr_accessor :ip_allocation
      
        # Optional. Name of the network in the customer project with which the Tenant
        # Project will be peered for executing pipelines. In case of shared VPC where
        # the network resides in another host project the network should specified in
        # the form of projects/`host-project-id`/global/networks/`network`. This is only
        # required for connectivity type VPC_PEERING.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Configuration for using Private Service Connect to establish connectivity
        # between the Data Fusion consumer project and the corresponding tenant project.
        # Corresponds to the JSON property `privateServiceConnectConfig`
        # @return [Google::Apis::DatafusionV1beta1::PrivateServiceConnectConfig]
        attr_accessor :private_service_connect_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @ip_allocation = args[:ip_allocation] if args.key?(:ip_allocation)
          @network = args[:network] if args.key?(:network)
          @private_service_connect_config = args[:private_service_connect_config] if args.key?(:private_service_connect_config)
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
        # @return [Google::Apis::DatafusionV1beta1::Status]
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
      
      # Represents the metadata of a long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Map to hold any additional status info for the operation If there is an
        # accelerator being enabled/disabled/deleted, this will be populated with
        # accelerator name as key and status as ENABLING, DISABLING or DELETING
        # Corresponds to the JSON property `additionalStatus`
        # @return [Hash<String,String>]
        attr_accessor :additional_status
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Human-readable status of the operation if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_status = args[:additional_status] if args.key?(:additional_status)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DatafusionV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DatafusionV1beta1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for using Private Service Connect to establish connectivity
      # between the Data Fusion consumer project and the corresponding tenant project.
      class PrivateServiceConnectConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The CIDR block to which the CDF instance can't route traffic to
        # in the consumer project VPC. The size of this block is /25. The format of this
        # field is governed by RFC 4632. Example: 240.0.0.0/25
        # Corresponds to the JSON property `effectiveUnreachableCidrBlock`
        # @return [String]
        attr_accessor :effective_unreachable_cidr_block
      
        # Required. The reference to the network attachment used to establish private
        # connectivity. It will be of the form projects/`project-id`/regions/`region`/
        # networkAttachments/`network-attachment-id`.
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        # Optional. Input only. The CIDR block to which the CDF instance can't route
        # traffic to in the consumer project VPC. The size of this block should be at
        # least /25. This range should not overlap with the primary address range of any
        # subnetwork used by the network attachment. This range can be used for other
        # purposes in the consumer VPC as long as there is no requirement for CDF to
        # reach destinations using these addresses. If this value is not provided, the
        # server chooses a non RFC 1918 address range. The format of this field is
        # governed by RFC 4632. Example: 192.168.0.0/25
        # Corresponds to the JSON property `unreachableCidrBlock`
        # @return [String]
        attr_accessor :unreachable_cidr_block
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_unreachable_cidr_block = args[:effective_unreachable_cidr_block] if args.key?(:effective_unreachable_cidr_block)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
          @unreachable_cidr_block = args[:unreachable_cidr_block] if args.key?(:unreachable_cidr_block)
        end
      end
      
      # Represents an arbitrary window of time that recurs.
      class RecurringTimeWindow
        include Google::Apis::Core::Hashable
      
        # Required. An RRULE with format [RFC-5545](https://tools.ietf.org/html/rfc5545#
        # section-3.8.5.3) for how this window reccurs. They go on for the span of time
        # between the start and end time. The only supported FREQ value is "WEEKLY". To
        # have something repeat every weekday, use: "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR".
        # This specifies how frequently the window starts. To have a 9 am - 5 pm UTC-4
        # window every weekday, use something like: ``` start time = 2019-01-01T09:00:00-
        # 0400 end time = 2019-01-01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,
        # WE,TH,FR ```
        # Corresponds to the JSON property `recurrence`
        # @return [String]
        attr_accessor :recurrence
      
        # Represents an arbitrary window of time.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::DatafusionV1beta1::TimeWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recurrence = args[:recurrence] if args.key?(:recurrence)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # Request message for RemoveIamPolicy method.
      class RemoveIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for RemoveIamPolicy method.
      class RemoveIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for restarting a Data Fusion instance.
      class RestartInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DatafusionV1beta1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Represents an arbitrary window of time.
      class TimeWindow
        include Google::Apis::Core::Hashable
      
        # Required. The end time of the time window provided in [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) format. The end time should take place after the
        # start time. Example: "2024-01-02T12:04:06-06:00"
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The start time of the time window provided in [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) format. Example: "2024-01-01T12:04:06-04:00"
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for upgrading a Data Fusion instance. To change the instance
      # properties, instance update should be used.
      class UpgradeInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The Data Fusion version.
      class Version
        include Google::Apis::Core::Hashable
      
        # Represents a list of available feature names for a given version.
        # Corresponds to the JSON property `availableFeatures`
        # @return [Array<String>]
        attr_accessor :available_features
      
        # Whether this is currently the default version for Cloud Data Fusion
        # Corresponds to the JSON property `defaultVersion`
        # @return [Boolean]
        attr_accessor :default_version
        alias_method :default_version?, :default_version
      
        # Type represents the release availability of the version
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The version number of the Data Fusion instance, such as '6.0.1.0'.
        # Corresponds to the JSON property `versionNumber`
        # @return [String]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_features = args[:available_features] if args.key?(:available_features)
          @default_version = args[:default_version] if args.key?(:default_version)
          @type = args[:type] if args.key?(:type)
          @version_number = args[:version_number] if args.key?(:version_number)
        end
      end
    end
  end
end
