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
    module CloudassetV1p7beta1
      
      # Represents the metadata of the longrunning operation for the
      # AnalyzeIamPolicyLongrunning RPC.
      class AnalyzeIamPolicyLongrunningMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # A response message for AssetService.AnalyzeIamPolicyLongrunning.
      class AnalyzeIamPolicyLongrunningResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Array<Google::Apis::CloudassetV1p7beta1::AuditLogConfig>]
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
        # @return [Google::Apis::CloudassetV1p7beta1::Expr]
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
      
      # An asset in Google Cloud. An asset can be any resource in the Google Cloud [
      # resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-
      # platform-resource-hierarchy), a resource outside the Google Cloud resource
      # hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy
      # (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-
      # inventory/docs/supported-asset-types) for more information.
      class GoogleCloudAssetV1p7beta1Asset
        include Google::Apis::Core::Hashable
      
        # An `AccessLevel` is a label that can be applied to requests to Google Cloud
        # services, along with a list of requirements necessary for the label to be
        # applied.
        # Corresponds to the JSON property `accessLevel`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1AccessLevel]
        attr_accessor :access_level
      
        # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
        # attributes to use Google Cloud services) and `ServicePerimeters` (which define
        # regions of services able to freely pass data within a perimeter). An access
        # policy is globally visible within an organization, and the restrictions it
        # specifies apply to all projects within an organization.
        # Corresponds to the JSON property `accessPolicy`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1AccessPolicy]
        attr_accessor :access_policy
      
        # The ancestry path of an asset in Google Cloud [resource hierarchy](https://
        # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. If the asset is a
        # project, folder, or organization, the ancestry path starts from the asset
        # itself. Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
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
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::CloudassetV1p7beta1::Policy]
        attr_accessor :iam_policy
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A representation of an [organization policy](https://cloud.google.com/resource-
        # manager/docs/organization-policy/overview#organization_policy). There can be
        # more than one organization policy with different constraints set on a given
        # resource.
        # Corresponds to the JSON property `orgPolicy`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleCloudOrgpolicyV1Policy>]
        attr_accessor :org_policy
      
        # The detailed related assets with the `relationship_type`.
        # Corresponds to the JSON property `relatedAssets`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1RelatedAssets]
        attr_accessor :related_assets
      
        # A representation of a Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1Resource]
        attr_accessor :resource
      
        # `ServicePerimeter` describes a set of Google Cloud resources which can freely
        # import and export data amongst themselves, but not export outside of the `
        # ServicePerimeter`. If a request with a source within this `ServicePerimeter`
        # has a target outside of the `ServicePerimeter`, the request will be blocked.
        # Otherwise the request is allowed. There are two types of Service Perimeter -
        # Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google
        # Cloud project or VPC network can only belong to a single regular Service
        # Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as
        # members, a single Google Cloud project may belong to multiple Service
        # Perimeter Bridges.
        # Corresponds to the JSON property `servicePerimeter`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter]
        attr_accessor :service_perimeter
      
        # The last update timestamp of an asset. update_time is updated when create/
        # update/delete operation is performed.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @access_policy = args[:access_policy] if args.key?(:access_policy)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
          @org_policy = args[:org_policy] if args.key?(:org_policy)
          @related_assets = args[:related_assets] if args.key?(:related_assets)
          @resource = args[:resource] if args.key?(:resource)
          @service_perimeter = args[:service_perimeter] if args.key?(:service_perimeter)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A BigQuery destination for exporting assets to.
      class GoogleCloudAssetV1p7beta1BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset in format "projects/projectId/datasets/
        # datasetId", to which the snapshot result should be exported. If this dataset
        # does not exist, the export call returns an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # If the destination table already exists and this flag is `TRUE`, the table
        # will be overwritten by the contents of assets snapshot. If the flag is `FALSE`
        # or unset and the destination table already exists, the export call returns an
        # INVALID_ARGUMENT error.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Specifications of BigQuery partitioned table as export destination.
        # Corresponds to the JSON property `partitionSpec`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1PartitionSpec]
        attr_accessor :partition_spec
      
        # If this flag is `TRUE`, the snapshot results will be written to one or
        # multiple tables, each of which contains results of one asset type. The [force]
        # and [partition_spec] fields will apply to each of them. Field [table] will be
        # concatenated with "_" and the asset type names (see https://cloud.google.com/
        # asset-inventory/docs/supported-asset-types for supported asset types) to
        # construct per-asset-type table names, in which all non-alphanumeric characters
        # like "." and "/" will be substituted by "_". Example: if field [table] is "
        # mytable" and snapshot results contain "storage.googleapis.com/Bucket" assets,
        # the corresponding table name will be "mytable_storage_googleapis_com_Bucket".
        # If any of these tables does not exist, a new table with the concatenated name
        # will be created. When [content_type] in the ExportAssetsRequest is `RESOURCE`,
        # the schema of each table will include RECORD-type columns mapped to the nested
        # fields in the Asset.resource.data field of that asset type (up to the 15
        # nested level BigQuery supports (https://cloud.google.com/bigquery/docs/nested-
        # repeated#limitations)). The fields in >15 nested levels will be stored in JSON
        # format string as a child column of its parent RECORD column. If error occurs
        # when exporting to any table, the whole export call will return an error but
        # the export results that already succeed will persist. Example: if exporting to
        # table_type_A succeeds when exporting to table_type_B fails during one export
        # call, the results in table_type_A will persist and there will not be partial
        # results persisting in a table.
        # Corresponds to the JSON property `separateTablesPerAssetType`
        # @return [Boolean]
        attr_accessor :separate_tables_per_asset_type
        alias_method :separate_tables_per_asset_type?, :separate_tables_per_asset_type
      
        # Required. The BigQuery table to which the snapshot result should be written.
        # If this table does not exist, a new table with the given name will be created.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @force = args[:force] if args.key?(:force)
          @partition_spec = args[:partition_spec] if args.key?(:partition_spec)
          @separate_tables_per_asset_type = args[:separate_tables_per_asset_type] if args.key?(:separate_tables_per_asset_type)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Export asset request.
      class GoogleCloudAssetV1p7beta1ExportAssetsRequest
        include Google::Apis::Core::Hashable
      
        # A list of asset types to take a snapshot for. For example: "compute.googleapis.
        # com/Disk". Regular expressions are also supported. For example: * "compute.
        # googleapis.com.*" snapshots resources whose asset type starts with "compute.
        # googleapis.com". * ".*Instance" snapshots resources whose asset type ends with
        # "Instance". * ".*Instance.*" snapshots resources whose asset type contains "
        # Instance". See [RE2](https://github.com/google/re2/wiki/Syntax) for all
        # supported regular expression syntax. If the regular expression does not match
        # any supported asset type, an INVALID_ARGUMENT error will be returned. If
        # specified, only matching assets will be returned, otherwise, it will snapshot
        # all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.
        # google.com/asset-inventory/docs/overview) for all supported asset types.
        # Corresponds to the JSON property `assetTypes`
        # @return [Array<String>]
        attr_accessor :asset_types
      
        # Asset content type. If not specified, no content but the asset name will be
        # returned.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output configuration for export assets destination.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1OutputConfig]
        attr_accessor :output_config
      
        # Timestamp to take an asset snapshot. This can only be set to a timestamp
        # between the current time and the current time minus 35 days (inclusive). If
        # not specified, the current time will be used. Due to delays in resource data
        # collection and indexing, there is a volatile window during which running the
        # same query may get different results.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A list of relationship types to export, for example: `
        # INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        # content_type=RELATIONSHIP. If specified, it will snapshot [asset_types]'
        # specified relationships, or give errors if any relationship_types' supported
        # types are not in [asset_types]. If not specified, it will snapshot all [
        # asset_types]' supported relationships. An unspecified [asset_types] field
        # means all supported asset_types. See [Introduction to Cloud Asset Inventory](
        # https://cloud.google.com/asset-inventory/docs/overview) for all supported
        # asset types and relationship types.
        # Corresponds to the JSON property `relationshipTypes`
        # @return [Array<String>]
        attr_accessor :relationship_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_types = args[:asset_types] if args.key?(:asset_types)
          @content_type = args[:content_type] if args.key?(:content_type)
          @output_config = args[:output_config] if args.key?(:output_config)
          @read_time = args[:read_time] if args.key?(:read_time)
          @relationship_types = args[:relationship_types] if args.key?(:relationship_types)
        end
      end
      
      # A Cloud Storage location.
      class GoogleCloudAssetV1p7beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # The URI of the Cloud Storage object. It's the same URI that is used by gsutil.
        # Example: "gs://bucket_name/object_name". See [Viewing and Editing Object
        # Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata) for
        # more information.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The URI prefix of all generated Cloud Storage objects. Example: "gs://
        # bucket_name/object_name_prefix". Each object URI is in format: "gs://
        # bucket_name/object_name_prefix/`ASSET_TYPE`/`SHARD_NUMBER` and only contains
        # assets for that type. starts from 0. Example: "gs://bucket_name/
        # object_name_prefix/compute.googleapis.com/Disk/0" is the first shard of output
        # objects containing all compute.googleapis.com/Disk assets. An INVALID_ARGUMENT
        # error will be returned if file with the same name "gs://bucket_name/
        # object_name_prefix" already exists.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
        end
      end
      
      # Output configuration for export assets destination.
      class GoogleCloudAssetV1p7beta1OutputConfig
        include Google::Apis::Core::Hashable
      
        # A BigQuery destination for exporting assets to.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1BigQueryDestination]
        attr_accessor :bigquery_destination
      
        # A Cloud Storage location.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Specifications of BigQuery partitioned table as export destination.
      class GoogleCloudAssetV1p7beta1PartitionSpec
        include Google::Apis::Core::Hashable
      
        # The partition key for BigQuery partitioned table.
        # Corresponds to the JSON property `partitionKey`
        # @return [String]
        attr_accessor :partition_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_key = args[:partition_key] if args.key?(:partition_key)
        end
      end
      
      # An asset identify in Google Cloud which contains its name, type and ancestors.
      # An asset can be any resource in the Google Cloud [resource hierarchy](https://
      # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a
      # resource outside the Google Cloud resource hierarchy (such as Google
      # Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [
      # Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-
      # asset-types) for more information.
      class GoogleCloudAssetV1p7beta1RelatedAsset
        include Google::Apis::Core::Hashable
      
        # The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.
        # google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. Example: `["projects/
        # 123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset = args[:asset] if args.key?(:asset)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
        end
      end
      
      # The detailed related assets with the `relationship_type`.
      class GoogleCloudAssetV1p7beta1RelatedAssets
        include Google::Apis::Core::Hashable
      
        # The peer resources of the relationship.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1RelatedAsset>]
        attr_accessor :assets
      
        # The relationship attributes which include `type`, `source_resource_type`, `
        # target_resource_type` and `action`.
        # Corresponds to the JSON property `relationshipAttributes`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1RelationshipAttributes]
        attr_accessor :relationship_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
          @relationship_attributes = args[:relationship_attributes] if args.key?(:relationship_attributes)
        end
      end
      
      # The relationship attributes which include `type`, `source_resource_type`, `
      # target_resource_type` and `action`.
      class GoogleCloudAssetV1p7beta1RelationshipAttributes
        include Google::Apis::Core::Hashable
      
        # The detail of the relationship, e.g. `contains`, `attaches`
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The source asset type. Example: `compute.googleapis.com/Instance`
        # Corresponds to the JSON property `sourceResourceType`
        # @return [String]
        attr_accessor :source_resource_type
      
        # The target asset type. Example: `compute.googleapis.com/Disk`
        # Corresponds to the JSON property `targetResourceType`
        # @return [String]
        attr_accessor :target_resource_type
      
        # The unique identifier of the relationship type. Example: `
        # INSTANCE_TO_INSTANCEGROUP`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @source_resource_type = args[:source_resource_type] if args.key?(:source_resource_type)
          @target_resource_type = args[:target_resource_type] if args.key?(:target_resource_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A representation of a Google Cloud resource.
      class GoogleCloudAssetV1p7beta1Resource
        include Google::Apis::Core::Hashable
      
        # The content of the resource, in which some sensitive fields are removed and
        # may not be present.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # The URL of the discovery document containing the resource's JSON schema.
        # Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryDocumentUri`
        # @return [String]
        attr_accessor :discovery_document_uri
      
        # The JSON schema name listed in the discovery document. Example: `Project` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryName`
        # @return [String]
        attr_accessor :discovery_name
      
        # The location of the resource in Google Cloud, such as its zone and region. For
        # more information, see https://cloud.google.com/about/locations/.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full name of the immediate parent of this resource. See [Resource Names](
        # https://cloud.google.com/apis/design/resource_names#full_resource_name) for
        # more information. For Google Cloud assets, this value is the parent resource
        # defined in the [IAM policy hierarchy](https://cloud.google.com/iam/docs/
        # overview#policy_hierarchy). Example: `//cloudresourcemanager.googleapis.com/
        # projects/my_project_123` For third-party assets, this field may be set
        # differently.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The REST URL for accessing the resource. An HTTP `GET` request using this URL
        # returns the resource itself. Example: `https://cloudresourcemanager.googleapis.
        # com/v1/projects/my-project-123` This value is unspecified for resources
        # without a REST API.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # The API version. Example: `v1`
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @discovery_document_uri = args[:discovery_document_uri] if args.key?(:discovery_document_uri)
          @discovery_name = args[:discovery_name] if args.key?(:discovery_name)
          @location = args[:location] if args.key?(:location)
          @parent = args[:parent] if args.key?(:parent)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Used in `policy_type` to specify how `boolean_policy` will behave at this
      # resource.
      class GoogleCloudOrgpolicyV1BooleanPolicy
        include Google::Apis::Core::Hashable
      
        # If `true`, then the `Policy` is enforced. If `false`, then any configuration
        # is acceptable. Suppose you have a `Constraint` `constraints/compute.
        # disableSerialPortAccess` with `constraint_default` set to `ALLOW`. A `Policy`
        # for that `Constraint` exhibits the following behavior: - If the `Policy` at
        # this resource has enforced set to `false`, serial port connection attempts
        # will be allowed. - If the `Policy` at this resource has enforced set to `true`,
        # serial port connection attempts will be refused. - If the `Policy` at this
        # resource is `RestoreDefault`, serial port connection attempts will be allowed.
        # - If no `Policy` is set at this resource or anywhere higher in the resource
        # hierarchy, serial port connection attempts will be allowed. - If no `Policy`
        # is set at this resource, but one exists higher in the resource hierarchy, the
        # behavior is as if the`Policy` were set at this resource. The following
        # examples demonstrate the different possible layerings: Example 1 (nearest `
        # Constraint` wins): `organizations/foo` has a `Policy` with: `enforced: false` `
        # projects/bar` has no `Policy` set. The constraint at `projects/bar` and `
        # organizations/foo` will not be enforced. Example 2 (enforcement gets replaced):
        # `organizations/foo` has a `Policy` with: `enforced: false` `projects/bar` has
        # a `Policy` with: `enforced: true` The constraint at `organizations/foo` is not
        # enforced. The constraint at `projects/bar` is enforced. Example 3 (
        # RestoreDefault): `organizations/foo` has a `Policy` with: `enforced: true` `
        # projects/bar` has a `Policy` with: `RestoreDefault: ``` The constraint at `
        # organizations/foo` is enforced. The constraint at `projects/bar` is not
        # enforced, because `constraint_default` for the `Constraint` is `ALLOW`.
        # Corresponds to the JSON property `enforced`
        # @return [Boolean]
        attr_accessor :enforced
        alias_method :enforced?, :enforced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforced = args[:enforced] if args.key?(:enforced)
        end
      end
      
      # Used in `policy_type` to specify how `list_policy` behaves at this resource. `
      # ListPolicy` can define specific values and subtrees of Cloud Resource Manager
      # resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed
      # or denied by setting the `allowed_values` and `denied_values` fields. This is
      # achieved by using the `under:` and optional `is:` prefixes. The `under:`
      # prefix is used to denote resource subtree values. The `is:` prefix is used to
      # denote specific values, and is required only if the value contains a ":".
      # Values prefixed with "is:" are treated the same as values with no prefix.
      # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
      # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
      # e.g. "organizations/1234" The `supports_under` field of the associated `
      # Constraint` defines whether ancestry prefixes can be used. You can set `
      # allowed_values` and `denied_values` in the same `Policy` if `all_values` is `
      # ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
      # values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
      # and `denied_values` must be unset.
      class GoogleCloudOrgpolicyV1ListPolicy
        include Google::Apis::Core::Hashable
      
        # The policy all_values state.
        # Corresponds to the JSON property `allValues`
        # @return [String]
        attr_accessor :all_values
      
        # List of values allowed at this resource. Can only be set if `all_values` is
        # set to `ALL_VALUES_UNSPECIFIED`.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # List of values denied at this resource. Can only be set if `all_values` is set
        # to `ALL_VALUES_UNSPECIFIED`.
        # Corresponds to the JSON property `deniedValues`
        # @return [Array<String>]
        attr_accessor :denied_values
      
        # Determines the inheritance behavior for this `Policy`. By default, a `
        # ListPolicy` set at a resource supersedes any `Policy` set anywhere up the
        # resource hierarchy. However, if `inherit_from_parent` is set to `true`, then
        # the values from the effective `Policy` of the parent resource are inherited,
        # meaning the values set in this `Policy` are added to the values inherited up
        # the hierarchy. Setting `Policy` hierarchies that inherit both allowed values
        # and denied values isn't recommended in most circumstances to keep the
        # configuration simple and understandable. However, it is possible to set a `
        # Policy` with `allowed_values` set that inherits a `Policy` with `denied_values`
        # set. In this case, the values that are allowed must be in `allowed_values`
        # and not present in `denied_values`. For example, suppose you have a `
        # Constraint` `constraints/serviceuser.services`, which has a `constraint_type`
        # of `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose
        # that at the Organization level, a `Policy` is applied that restricts the
        # allowed API activations to ``E1`, `E2``. Then, if a `Policy` is applied to a
        # project below the Organization that has `inherit_from_parent` set to `false`
        # and field all_values set to DENY, then an attempt to activate any API will be
        # denied. The following examples demonstrate different possible layerings for `
        # projects/bar` parented by `organizations/foo`: Example 1 (no inherited values):
        # `organizations/foo` has a `Policy` with values: `allowed_values: "E1"
        # allowed_values:"E2"` `projects/bar` has `inherit_from_parent` `false` and
        # values: `allowed_values: "E3" allowed_values: "E4"` The accepted values at `
        # organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `
        # E3`, and `E4`. Example 2 (inherited values): `organizations/foo` has a `Policy`
        # with values: `allowed_values: "E1" allowed_values:"E2"` `projects/bar` has a `
        # Policy` with values: `value: "E3" value: "E4" inherit_from_parent: true` The
        # accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `
        # projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting both
        # allowed and denied values): `organizations/foo` has a `Policy` with values: `
        # allowed_values: "E1" allowed_values: "E2"` `projects/bar` has a `Policy` with:
        # `denied_values: "E1"` The accepted values at `organizations/foo` are `E1`, `E2`
        # . The value accepted at `projects/bar` is `E2`. Example 4 (RestoreDefault): `
        # organizations/foo` has a `Policy` with values: `allowed_values: "E1"
        # allowed_values:"E2"` `projects/bar` has a `Policy` with values: `
        # RestoreDefault: ``` The accepted values at `organizations/foo` are `E1`, `E2`.
        # The accepted values at `projects/bar` are either all or none depending on the
        # value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 5 (
        # no policy inherits parent policy): `organizations/foo` has no `Policy` set. `
        # projects/bar` has no `Policy` set. The accepted values at both levels are
        # either all or none depending on the value of `constraint_default` (if `ALLOW`,
        # all; if `DENY`, none). Example 6 (ListConstraint allowing all): `organizations/
        # foo` has a `Policy` with values: `allowed_values: "E1" allowed_values: "E2"` `
        # projects/bar` has a `Policy` with: `all: ALLOW` The accepted values at `
        # organizations/foo` are `E1`, E2`. Any value is accepted at `projects/bar`.
        # Example 7 (ListConstraint allowing none): `organizations/foo` has a `Policy`
        # with values: `allowed_values: "E1" allowed_values: "E2"` `projects/bar` has a `
        # Policy` with: `all: DENY` The accepted values at `organizations/foo` are `E1`,
        # E2`. No value is accepted at `projects/bar`. Example 10 (allowed and denied
        # subtrees of Resource Manager hierarchy): Given the following resource
        # hierarchy O1->`F1, F2`; F1->`P1`; F2->`P2, P3`, `organizations/foo` has a `
        # Policy` with values: `allowed_values: "under:organizations/O1"` `projects/bar`
        # has a `Policy` with: `allowed_values: "under:projects/P3"` `denied_values: "
        # under:folders/F2"` The accepted values at `organizations/foo` are `
        # organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`, `
        # projects/P3`. The accepted values at `projects/bar` are `organizations/O1`, `
        # folders/F1`, `projects/P1`.
        # Corresponds to the JSON property `inheritFromParent`
        # @return [Boolean]
        attr_accessor :inherit_from_parent
        alias_method :inherit_from_parent?, :inherit_from_parent
      
        # Optional. The Google Cloud Console will try to default to a configuration that
        # matches the value specified in this `Policy`. If `suggested_value` is not set,
        # it will inherit the value specified higher in the hierarchy, unless `
        # inherit_from_parent` is `false`.
        # Corresponds to the JSON property `suggestedValue`
        # @return [String]
        attr_accessor :suggested_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_values = args[:all_values] if args.key?(:all_values)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @denied_values = args[:denied_values] if args.key?(:denied_values)
          @inherit_from_parent = args[:inherit_from_parent] if args.key?(:inherit_from_parent)
          @suggested_value = args[:suggested_value] if args.key?(:suggested_value)
        end
      end
      
      # Defines a Cloud Organization `Policy` which is used to specify `Constraints`
      # for configurations of Cloud Platform resources.
      class GoogleCloudOrgpolicyV1Policy
        include Google::Apis::Core::Hashable
      
        # Used in `policy_type` to specify how `boolean_policy` will behave at this
        # resource.
        # Corresponds to the JSON property `booleanPolicy`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudOrgpolicyV1BooleanPolicy]
        attr_accessor :boolean_policy
      
        # The name of the `Constraint` the `Policy` is configuring, for example, `
        # constraints/serviceuser.services`. A [list of available constraints](/resource-
        # manager/docs/organization-policy/org-policy-constraints) is available.
        # Immutable after creation.
        # Corresponds to the JSON property `constraint`
        # @return [String]
        attr_accessor :constraint
      
        # An opaque tag indicating the current version of the `Policy`, used for
        # concurrency control. When the `Policy` is returned from either a `GetPolicy`
        # or a `ListOrgPolicy` request, this `etag` indicates the version of the current
        # `Policy` to use when executing a read-modify-write loop. When the `Policy` is
        # returned from a `GetEffectivePolicy` request, the `etag` will be unset. When
        # the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value that was
        # returned from a `GetOrgPolicy` request as part of a read-modify-write loop for
        # concurrency control. Not setting the `etag`in a `SetOrgPolicy` request will
        # result in an unconditional write of the `Policy`.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Used in `policy_type` to specify how `list_policy` behaves at this resource. `
        # ListPolicy` can define specific values and subtrees of Cloud Resource Manager
        # resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed
        # or denied by setting the `allowed_values` and `denied_values` fields. This is
        # achieved by using the `under:` and optional `is:` prefixes. The `under:`
        # prefix is used to denote resource subtree values. The `is:` prefix is used to
        # denote specific values, and is required only if the value contains a ":".
        # Values prefixed with "is:" are treated the same as values with no prefix.
        # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
        # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
        # e.g. "organizations/1234" The `supports_under` field of the associated `
        # Constraint` defines whether ancestry prefixes can be used. You can set `
        # allowed_values` and `denied_values` in the same `Policy` if `all_values` is `
        # ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
        # values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
        # and `denied_values` must be unset.
        # Corresponds to the JSON property `listPolicy`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudOrgpolicyV1ListPolicy]
        attr_accessor :list_policy
      
        # Ignores policies set above this resource and restores the `constraint_default`
        # enforcement behavior of the specific `Constraint` at this resource. Suppose
        # that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/
        # serviceuser.services`. Suppose that organization foo.com sets a `Policy` at
        # their Organization resource node that restricts the allowed service
        # activations to deny all service activations. They could then set a `Policy`
        # with the `policy_type` `restore_default` on several experimental projects,
        # restoring the `constraint_default` enforcement of the `Constraint` for only
        # those projects, allowing those projects to have all services activated.
        # Corresponds to the JSON property `restoreDefault`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleCloudOrgpolicyV1RestoreDefault]
        attr_accessor :restore_default
      
        # The time stamp the `Policy` was previously updated. This is set by the server,
        # not specified by the caller, and represents the last time a call to `
        # SetOrgPolicy` was made for that `Policy`. Any value set by the client will be
        # ignored.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Version of the `Policy`. Default version is 0;
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_policy = args[:boolean_policy] if args.key?(:boolean_policy)
          @constraint = args[:constraint] if args.key?(:constraint)
          @etag = args[:etag] if args.key?(:etag)
          @list_policy = args[:list_policy] if args.key?(:list_policy)
          @restore_default = args[:restore_default] if args.key?(:restore_default)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Ignores policies set above this resource and restores the `constraint_default`
      # enforcement behavior of the specific `Constraint` at this resource. Suppose
      # that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/
      # serviceuser.services`. Suppose that organization foo.com sets a `Policy` at
      # their Organization resource node that restricts the allowed service
      # activations to deny all service activations. They could then set a `Policy`
      # with the `policy_type` `restore_default` on several experimental projects,
      # restoring the `constraint_default` enforcement of the `Constraint` for only
      # those projects, allowing those projects to have all services activated.
      class GoogleCloudOrgpolicyV1RestoreDefault
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An `AccessLevel` is a label that can be applied to requests to Google Cloud
      # services, along with a list of requirements necessary for the label to be
      # applied.
      class GoogleIdentityAccesscontextmanagerV1AccessLevel
        include Google::Apis::Core::Hashable
      
        # `BasicLevel` is an `AccessLevel` using a set of recommended features.
        # Corresponds to the JSON property `basic`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1BasicLevel]
        attr_accessor :basic
      
        # `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
        # to represent the necessary conditions for the level to apply to a request. See
        # CEL spec at: https://github.com/google/cel-spec
        # Corresponds to the JSON property `custom`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1CustomLevel]
        attr_accessor :custom
      
        # Description of the `AccessLevel` and its use. Does not affect behavior.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. Resource name for the `AccessLevel`. Format: `accessPolicies/`
        # access_policy`/accessLevels/`access_level``. The `access_level` component must
        # begin with a letter, followed by alphanumeric characters or `_`. Its maximum
        # length is 50 characters. After you create an `AccessLevel`, you cannot change
        # its `name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Human readable title. Must be unique within the Policy.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic = args[:basic] if args.key?(:basic)
          @custom = args[:custom] if args.key?(:custom)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
      # attributes to use Google Cloud services) and `ServicePerimeters` (which define
      # regions of services able to freely pass data within a perimeter). An access
      # policy is globally visible within an organization, and the restrictions it
      # specifies apply to all projects within an organization.
      class GoogleIdentityAccesscontextmanagerV1AccessPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. An opaque identifier for the current version of the `AccessPolicy`
        # . This will always be a strongly validated etag, meaning that two Access
        # Policies will be identical if and only if their etags are identical. Clients
        # should not expect this to be in any specific format.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Identifier. Resource name of the `AccessPolicy`. Format: `
        # accessPolicies/`access_policy``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy.
        # Currently immutable once created. Format: `organizations/`organization_id``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The scopes of the AccessPolicy. Scopes define which resources a policy can
        # restrict and where its resources can be referenced. For example, policy A with
        # `scopes=["folders/123"]` has the following behavior: - ServicePerimeter can
        # only restrict projects within `folders/123`. - ServicePerimeter within policy
        # A can only reference access levels defined within policy A. - Only one policy
        # can include a given scope; thus, attempting to create a second policy which
        # includes `folders/123` will result in an error. If no scopes are provided,
        # then any resource within the organization can be restricted. Scopes cannot be
        # modified after a policy is created. Policies can only have a single scope.
        # Format: list of `folders/`folder_number`` or `projects/`project_number``
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Required. Human readable title. Does not affect behavior.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @scopes = args[:scopes] if args.key?(:scopes)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Identification for an API Operation.
      class GoogleIdentityAccesscontextmanagerV1ApiOperation
        include Google::Apis::Core::Hashable
      
        # API methods or permissions to allow. Method or permission must belong to the
        # service specified by `service_name` field. A single MethodSelector entry with `
        # *` specified for the `method` field will allow all methods AND permissions for
        # the service specified in `service_name`.
        # Corresponds to the JSON property `methodSelectors`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1MethodSelector>]
        attr_accessor :method_selectors
      
        # The name of the API whose methods or permissions the IngressPolicy or
        # EgressPolicy want to allow. A single ApiOperation with `service_name` field
        # set to `*` will allow all methods AND permissions for all services.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_selectors = args[:method_selectors] if args.key?(:method_selectors)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # `BasicLevel` is an `AccessLevel` using a set of recommended features.
      class GoogleIdentityAccesscontextmanagerV1BasicLevel
        include Google::Apis::Core::Hashable
      
        # How the `conditions` list should be combined to determine if a request is
        # granted this `AccessLevel`. If AND is used, each `Condition` in `conditions`
        # must be satisfied for the `AccessLevel` to be applied. If OR is used, at least
        # one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be
        # applied. Default behavior is AND.
        # Corresponds to the JSON property `combiningFunction`
        # @return [String]
        attr_accessor :combining_function
      
        # Required. A list of requirements for the `AccessLevel` to be granted.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1Condition>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combining_function = args[:combining_function] if args.key?(:combining_function)
          @conditions = args[:conditions] if args.key?(:conditions)
        end
      end
      
      # A condition necessary for an `AccessLevel` to be granted. The Condition is an
      # AND over its fields. So a Condition is true if: 1) the request IP is from one
      # of the listed subnetworks AND 2) the originating device complies with the
      # listed device policy AND 3) all listed access levels are granted AND 4) the
      # request was sent at a time allowed by the DateTimeRestriction.
      class GoogleIdentityAccesscontextmanagerV1Condition
        include Google::Apis::Core::Hashable
      
        # `DevicePolicy` specifies device specific restrictions necessary to acquire a
        # given access level. A `DevicePolicy` specifies requirements for requests from
        # devices to be granted access levels, it does not do any enforcement on the
        # device. `DevicePolicy` acts as an AND over all specified fields, and each
        # repeated field is an OR over its elements. Any unset fields are ignored. For
        # example, if the proto is ` os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
        # encryption_status: ENCRYPTED`, then the DevicePolicy will be true for requests
        # originating from encrypted Linux desktops and encrypted Windows desktops.
        # Corresponds to the JSON property `devicePolicy`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1DevicePolicy]
        attr_accessor :device_policy
      
        # CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a
        # CIDR IP address block, the specified IP address portion must be properly
        # truncated (i.e. all the host bits must be zero) or the input is considered
        # malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not.
        # Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is
        # not. The originating IP of a request must be in one of the listed subnets in
        # order for this Condition to be true. If empty, all IP addresses are allowed.
        # Corresponds to the JSON property `ipSubnetworks`
        # @return [Array<String>]
        attr_accessor :ip_subnetworks
      
        # The request must be made by one of the provided user or service accounts.
        # Groups are not supported. Syntax: `user:`emailid`` `serviceAccount:`emailid``
        # If not specified, a request may come from any user.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Whether to negate the Condition. If true, the Condition becomes a NAND over
        # its non-empty fields. Any non-empty field criteria evaluating to false will
        # result in the Condition to be satisfied. Defaults to false.
        # Corresponds to the JSON property `negate`
        # @return [Boolean]
        attr_accessor :negate
        alias_method :negate?, :negate
      
        # The request must originate from one of the provided countries/regions. Must be
        # valid ISO 3166-1 alpha-2 codes.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        # A list of other access levels defined in the same `Policy`, referenced by
        # resource name. Referencing an `AccessLevel` which does not exist is an error.
        # All access levels listed must be granted for the Condition to be true. Example:
        # "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
        # Corresponds to the JSON property `requiredAccessLevels`
        # @return [Array<String>]
        attr_accessor :required_access_levels
      
        # The request must originate from one of the provided VPC networks in Google
        # Cloud. Cannot specify this field together with `ip_subnetworks`.
        # Corresponds to the JSON property `vpcNetworkSources`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>]
        attr_accessor :vpc_network_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_policy = args[:device_policy] if args.key?(:device_policy)
          @ip_subnetworks = args[:ip_subnetworks] if args.key?(:ip_subnetworks)
          @members = args[:members] if args.key?(:members)
          @negate = args[:negate] if args.key?(:negate)
          @regions = args[:regions] if args.key?(:regions)
          @required_access_levels = args[:required_access_levels] if args.key?(:required_access_levels)
          @vpc_network_sources = args[:vpc_network_sources] if args.key?(:vpc_network_sources)
        end
      end
      
      # `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
      # to represent the necessary conditions for the level to apply to a request. See
      # CEL spec at: https://github.com/google/cel-spec
      class GoogleIdentityAccesscontextmanagerV1CustomLevel
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
        # Corresponds to the JSON property `expr`
        # @return [Google::Apis::CloudassetV1p7beta1::Expr]
        attr_accessor :expr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expr = args[:expr] if args.key?(:expr)
        end
      end
      
      # `DevicePolicy` specifies device specific restrictions necessary to acquire a
      # given access level. A `DevicePolicy` specifies requirements for requests from
      # devices to be granted access levels, it does not do any enforcement on the
      # device. `DevicePolicy` acts as an AND over all specified fields, and each
      # repeated field is an OR over its elements. Any unset fields are ignored. For
      # example, if the proto is ` os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
      # encryption_status: ENCRYPTED`, then the DevicePolicy will be true for requests
      # originating from encrypted Linux desktops and encrypted Windows desktops.
      class GoogleIdentityAccesscontextmanagerV1DevicePolicy
        include Google::Apis::Core::Hashable
      
        # Allowed device management levels, an empty list allows all management levels.
        # Corresponds to the JSON property `allowedDeviceManagementLevels`
        # @return [Array<String>]
        attr_accessor :allowed_device_management_levels
      
        # Allowed encryptions statuses, an empty list allows all statuses.
        # Corresponds to the JSON property `allowedEncryptionStatuses`
        # @return [Array<String>]
        attr_accessor :allowed_encryption_statuses
      
        # Allowed OS versions, an empty list allows all types and all versions.
        # Corresponds to the JSON property `osConstraints`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1OsConstraint>]
        attr_accessor :os_constraints
      
        # Whether the device needs to be approved by the customer admin.
        # Corresponds to the JSON property `requireAdminApproval`
        # @return [Boolean]
        attr_accessor :require_admin_approval
        alias_method :require_admin_approval?, :require_admin_approval
      
        # Whether the device needs to be corp owned.
        # Corresponds to the JSON property `requireCorpOwned`
        # @return [Boolean]
        attr_accessor :require_corp_owned
        alias_method :require_corp_owned?, :require_corp_owned
      
        # Whether or not screenlock is required for the DevicePolicy to be true.
        # Defaults to `false`.
        # Corresponds to the JSON property `requireScreenlock`
        # @return [Boolean]
        attr_accessor :require_screenlock
        alias_method :require_screenlock?, :require_screenlock
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_device_management_levels = args[:allowed_device_management_levels] if args.key?(:allowed_device_management_levels)
          @allowed_encryption_statuses = args[:allowed_encryption_statuses] if args.key?(:allowed_encryption_statuses)
          @os_constraints = args[:os_constraints] if args.key?(:os_constraints)
          @require_admin_approval = args[:require_admin_approval] if args.key?(:require_admin_approval)
          @require_corp_owned = args[:require_corp_owned] if args.key?(:require_corp_owned)
          @require_screenlock = args[:require_screenlock] if args.key?(:require_screenlock)
        end
      end
      
      # Defines the conditions under which an EgressPolicy matches a request.
      # Conditions based on information about the source of the request. Note that if
      # the destination of the request is also protected by a ServicePerimeter, then
      # that ServicePerimeter must have an IngressPolicy which allows access in order
      # for this request to succeed.
      class GoogleIdentityAccesscontextmanagerV1EgressFrom
        include Google::Apis::Core::Hashable
      
        # A list of identities that are allowed access through [EgressPolicy].
        # Identities can be an individual user, service account, Google group, or third-
        # party identity. For third-party identity, only single identities are supported
        # and other identity types are not supported. The `v1` identities that have the
        # prefix `user`, `group`, `serviceAccount`, and `principal` in https://cloud.
        # google.com/iam/docs/principal-identifiers#v1 are supported.
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        # Specifies the type of identities that are allowed access to outside the
        # perimeter. If left unspecified, then members of `identities` field will be
        # allowed access.
        # Corresponds to the JSON property `identityType`
        # @return [String]
        attr_accessor :identity_type
      
        # Whether to enforce traffic restrictions based on `sources` field. If the `
        # sources` fields is non-empty, then this field must be set to `
        # SOURCE_RESTRICTION_ENABLED`.
        # Corresponds to the JSON property `sourceRestriction`
        # @return [String]
        attr_accessor :source_restriction
      
        # Sources that this EgressPolicy authorizes access from. If this field is not
        # empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1EgressSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identities = args[:identities] if args.key?(:identities)
          @identity_type = args[:identity_type] if args.key?(:identity_type)
          @source_restriction = args[:source_restriction] if args.key?(:source_restriction)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Policy for egress from perimeter. EgressPolicies match requests based on `
      # egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `
      # egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy
      # matches a request, the request is allowed to span the ServicePerimeter
      # boundary. For example, an EgressPolicy can be used to allow VMs on networks
      # within the ServicePerimeter to access a defined set of projects outside the
      # perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket
      # or query against a BigQuery dataset). EgressPolicies are concerned with the *
      # resources* that a request relates as well as the API services and API actions
      # being used. They do not related to the direction of data movement. More
      # detailed documentation for this concept can be found in the descriptions of
      # EgressFrom and EgressTo.
      class GoogleIdentityAccesscontextmanagerV1EgressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions based on information about the source of the request. Note that if
        # the destination of the request is also protected by a ServicePerimeter, then
        # that ServicePerimeter must have an IngressPolicy which allows access in order
        # for this request to succeed.
        # Corresponds to the JSON property `egressFrom`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1EgressFrom]
        attr_accessor :egress_from
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the `resources` specified. Note that if the destination of the
        # request is also protected by a ServicePerimeter, then that ServicePerimeter
        # must have an IngressPolicy which allows access in order for this request to
        # succeed. The request must match `operations` AND `resources` fields in order
        # to be allowed egress out of the perimeter.
        # Corresponds to the JSON property `egressTo`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1EgressTo]
        attr_accessor :egress_to
      
        # Optional. Human-readable title for the egress rule. The title must be unique
        # within the perimeter and can not exceed 100 characters. Within the access
        # policy, the combined length of all rule titles must not exceed 240,000
        # characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_from = args[:egress_from] if args.key?(:egress_from)
          @egress_to = args[:egress_to] if args.key?(:egress_to)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The source that EgressPolicy authorizes access from inside the
      # ServicePerimeter to somewhere outside the ServicePerimeter boundaries.
      class GoogleIdentityAccesscontextmanagerV1EgressSource
        include Google::Apis::Core::Hashable
      
        # An AccessLevel resource name that allows protected resources inside the
        # ServicePerimeters to access outside the ServicePerimeter boundaries.
        # AccessLevels listed must be in the same policy as this ServicePerimeter.
        # Referencing a nonexistent AccessLevel will cause an error. If an AccessLevel
        # name is not specified, only resources within the perimeter can be accessed
        # through Google Cloud calls with request origins within the perimeter. Example:
        # `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified
        # for `access_level`, then all EgressSources will be allowed.
        # Corresponds to the JSON property `accessLevel`
        # @return [String]
        attr_accessor :access_level
      
        # A Google Cloud resource from the service perimeter that you want to allow to
        # access data outside the perimeter. This field supports only projects. The
        # project format is `projects/`project_number``. You can't use `*` in this field
        # to allow all Google Cloud resources.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Defines the conditions under which an EgressPolicy matches a request.
      # Conditions are based on information about the ApiOperation intended to be
      # performed on the `resources` specified. Note that if the destination of the
      # request is also protected by a ServicePerimeter, then that ServicePerimeter
      # must have an IngressPolicy which allows access in order for this request to
      # succeed. The request must match `operations` AND `resources` fields in order
      # to be allowed egress out of the perimeter.
      class GoogleIdentityAccesscontextmanagerV1EgressTo
        include Google::Apis::Core::Hashable
      
        # A list of external resources that are allowed to be accessed. Only AWS and
        # Azure resources are supported. For Amazon S3, the supported formats are s3://
        # BUCKET_NAME, s3a://BUCKET_NAME, and s3n://BUCKET_NAME. For Azure Storage, the
        # supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A
        # request matches if it contains an external resource in this list (Example: s3:/
        # /bucket/path). Currently '*' is not allowed.
        # Corresponds to the JSON property `externalResources`
        # @return [Array<String>]
        attr_accessor :external_resources
      
        # A list of ApiOperations allowed to be performed by the sources specified in
        # the corresponding EgressFrom. A request matches if it uses an operation/
        # service in this list.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation>]
        attr_accessor :operations
      
        # A list of resources, currently only projects in the form `projects/`, that are
        # allowed to be accessed by sources defined in the corresponding EgressFrom. A
        # request matches if it contains a resource in this list. If `*` is specified
        # for `resources`, then this EgressTo rule will authorize access to all
        # resources outside the perimeter.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # IAM roles that represent the set of operations that the sources specified in
        # the corresponding EgressFrom. are allowed to perform in this ServicePerimeter.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_resources = args[:external_resources] if args.key?(:external_resources)
          @operations = args[:operations] if args.key?(:operations)
          @resources = args[:resources] if args.key?(:resources)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Defines the conditions under which an IngressPolicy matches a request.
      # Conditions are based on information about the source of the request. The
      # request must satisfy what is defined in `sources` AND identity related fields
      # in order to match.
      class GoogleIdentityAccesscontextmanagerV1IngressFrom
        include Google::Apis::Core::Hashable
      
        # A list of identities that are allowed access through [IngressPolicy].
        # Identities can be an individual user, service account, Google group, or third-
        # party identity. For third-party identity, only single identities are supported
        # and other identity types are not supported. The `v1` identities that have the
        # prefix `user`, `group`, `serviceAccount`, and `principal` in https://cloud.
        # google.com/iam/docs/principal-identifiers#v1 are supported.
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        # Specifies the type of identities that are allowed access from outside the
        # perimeter. If left unspecified, then members of `identities` field will be
        # allowed access.
        # Corresponds to the JSON property `identityType`
        # @return [String]
        attr_accessor :identity_type
      
        # Sources that this IngressPolicy authorizes access from.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1IngressSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identities = args[:identities] if args.key?(:identities)
          @identity_type = args[:identity_type] if args.key?(:identity_type)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Policy for ingress into ServicePerimeter. IngressPolicies match requests based
      # on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match,
      # both the `ingress_from` and `ingress_to` stanzas must be matched. If an
      # IngressPolicy matches a request, the request is allowed through the perimeter
      # boundary from outside the perimeter. For example, access from the internet can
      # be allowed either based on an AccessLevel or, for traffic hosted on Google
      # Cloud, the project of the source network. For access from private networks,
      # using the project of the hosting network is required. Individual ingress
      # policies can be limited by restricting which services and/or actions they
      # match using the `ingress_to` field.
      class GoogleIdentityAccesscontextmanagerV1IngressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the source of the request. The
        # request must satisfy what is defined in `sources` AND identity related fields
        # in order to match.
        # Corresponds to the JSON property `ingressFrom`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1IngressFrom]
        attr_accessor :ingress_from
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the target resource of the request. The request must satisfy what
        # is defined in `operations` AND `resources` in order to match.
        # Corresponds to the JSON property `ingressTo`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1IngressTo]
        attr_accessor :ingress_to
      
        # Optional. Human-readable title for the ingress rule. The title must be unique
        # within the perimeter and can not exceed 100 characters. Within the access
        # policy, the combined length of all rule titles must not exceed 240,000
        # characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingress_from = args[:ingress_from] if args.key?(:ingress_from)
          @ingress_to = args[:ingress_to] if args.key?(:ingress_to)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The source that IngressPolicy authorizes access from.
      class GoogleIdentityAccesscontextmanagerV1IngressSource
        include Google::Apis::Core::Hashable
      
        # An AccessLevel resource name that allow resources within the ServicePerimeters
        # to be accessed from the internet. AccessLevels listed must be in the same
        # policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will
        # cause an error. If no AccessLevel names are listed, resources within the
        # perimeter can only be accessed via Google Cloud calls with request origins
        # within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`
        # . If a single `*` is specified for `access_level`, then all IngressSources
        # will be allowed.
        # Corresponds to the JSON property `accessLevel`
        # @return [String]
        attr_accessor :access_level
      
        # A Google Cloud resource that is allowed to ingress the perimeter. Requests
        # from these resources will be allowed to access perimeter data. Currently only
        # projects and VPCs are allowed. Project format: `projects/`project_number`` VPC
        # network format: `//compute.googleapis.com/projects/`PROJECT_ID`/global/
        # networks/`NAME``. The project may be in any Google Cloud organization, not
        # just the organization that the perimeter is defined in. `*` is not allowed,
        # the case of allowing all Google Cloud resources only is not supported.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Defines the conditions under which an IngressPolicy matches a request.
      # Conditions are based on information about the ApiOperation intended to be
      # performed on the target resource of the request. The request must satisfy what
      # is defined in `operations` AND `resources` in order to match.
      class GoogleIdentityAccesscontextmanagerV1IngressTo
        include Google::Apis::Core::Hashable
      
        # A list of ApiOperations allowed to be performed by the sources specified in
        # corresponding IngressFrom in this ServicePerimeter.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation>]
        attr_accessor :operations
      
        # A list of resources, currently only projects in the form `projects/`,
        # protected by this ServicePerimeter that are allowed to be accessed by sources
        # defined in the corresponding IngressFrom. If a single `*` is specified, then
        # access to all resources inside the perimeter are allowed.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # IAM roles that represent the set of operations that the sources specified in
        # the corresponding IngressFrom are allowed to perform in this ServicePerimeter.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @resources = args[:resources] if args.key?(:resources)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # An allowed method or permission of a service specified in ApiOperation.
      class GoogleIdentityAccesscontextmanagerV1MethodSelector
        include Google::Apis::Core::Hashable
      
        # A valid method name for the corresponding `service_name` in ApiOperation. If `*
        # ` is used as the value for the `method`, then ALL methods and permissions are
        # allowed.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # A valid Cloud IAM permission for the corresponding `service_name` in
        # ApiOperation.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # A restriction on the OS type and version of devices making requests.
      class GoogleIdentityAccesscontextmanagerV1OsConstraint
        include Google::Apis::Core::Hashable
      
        # The minimum allowed OS version. If not set, any version of this OS satisfies
        # the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"
        # `.
        # Corresponds to the JSON property `minimumVersion`
        # @return [String]
        attr_accessor :minimum_version
      
        # Required. The allowed OS type.
        # Corresponds to the JSON property `osType`
        # @return [String]
        attr_accessor :os_type
      
        # Only allows requests from devices with a verified Chrome OS. Verifications
        # includes requirements that the device is enterprise-managed, conformant to
        # domain policies, and the caller has permission to call the API targeted by the
        # request.
        # Corresponds to the JSON property `requireVerifiedChromeOs`
        # @return [Boolean]
        attr_accessor :require_verified_chrome_os
        alias_method :require_verified_chrome_os?, :require_verified_chrome_os
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_version = args[:minimum_version] if args.key?(:minimum_version)
          @os_type = args[:os_type] if args.key?(:os_type)
          @require_verified_chrome_os = args[:require_verified_chrome_os] if args.key?(:require_verified_chrome_os)
        end
      end
      
      # `ServicePerimeter` describes a set of Google Cloud resources which can freely
      # import and export data amongst themselves, but not export outside of the `
      # ServicePerimeter`. If a request with a source within this `ServicePerimeter`
      # has a target outside of the `ServicePerimeter`, the request will be blocked.
      # Otherwise the request is allowed. There are two types of Service Perimeter -
      # Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google
      # Cloud project or VPC network can only belong to a single regular Service
      # Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as
      # members, a single Google Cloud project may belong to multiple Service
      # Perimeter Bridges.
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeter
        include Google::Apis::Core::Hashable
      
        # Description of the `ServicePerimeter` and its use. Does not affect behavior.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. An opaque identifier for the current version of the `
        # ServicePerimeter`. This identifier does not follow any specific format. If an
        # etag is not provided, the operation will be performed as if a valid etag is
        # provided.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. Resource name for the `ServicePerimeter`. Format: `accessPolicies/`
        # access_policy`/servicePerimeters/`service_perimeter``. The `service_perimeter`
        # component must begin with a letter, followed by alphanumeric characters or `_`.
        # After you create a `ServicePerimeter`, you cannot change its `name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Perimeter type indicator. A single project or VPC network is allowed to be a
        # member of single regular perimeter, but multiple service perimeter bridges. A
        # project cannot be a included in a perimeter bridge without being included in
        # regular perimeter. For perimeter bridges, the restricted service list as well
        # as access level lists must be empty.
        # Corresponds to the JSON property `perimeterType`
        # @return [String]
        attr_accessor :perimeter_type
      
        # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
        # describe specific Service Perimeter configuration.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig]
        attr_accessor :spec
      
        # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
        # describe specific Service Perimeter configuration.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig]
        attr_accessor :status
      
        # Human readable title. Must be unique within the Policy.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
        # for all Service Perimeters, and that spec is identical to the status for those
        # Service Perimeters. When this flag is set, it inhibits the generation of the
        # implicit spec, thereby allowing the user to explicitly provide a configuration
        # ("spec") to use in a dry-run version of the Service Perimeter. This allows the
        # user to test changes to the enforced config ("status") without actually
        # enforcing them. This testing is done through analyzing the differences between
        # currently enforced and suggested restrictions. use_explicit_dry_run_spec must
        # bet set to True if any of the fields in the spec are set to non-default values.
        # Corresponds to the JSON property `useExplicitDryRunSpec`
        # @return [Boolean]
        attr_accessor :use_explicit_dry_run_spec
        alias_method :use_explicit_dry_run_spec?, :use_explicit_dry_run_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @perimeter_type = args[:perimeter_type] if args.key?(:perimeter_type)
          @spec = args[:spec] if args.key?(:spec)
          @status = args[:status] if args.key?(:status)
          @title = args[:title] if args.key?(:title)
          @use_explicit_dry_run_spec = args[:use_explicit_dry_run_spec] if args.key?(:use_explicit_dry_run_spec)
        end
      end
      
      # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
      # describe specific Service Perimeter configuration.
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
        include Google::Apis::Core::Hashable
      
        # A list of `AccessLevel` resource names that allow resources within the `
        # ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must
        # be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `
        # AccessLevel` is a syntax error. If no `AccessLevel` names are listed,
        # resources within the perimeter can only be accessed via Google Cloud calls
        # with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/
        # accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<String>]
        attr_accessor :access_levels
      
        # List of EgressPolicies to apply to the perimeter. A perimeter may have
        # multiple EgressPolicies, each of which is evaluated separately. Access is
        # granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
        # Corresponds to the JSON property `egressPolicies`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1EgressPolicy>]
        attr_accessor :egress_policies
      
        # List of IngressPolicies to apply to the perimeter. A perimeter may have
        # multiple IngressPolicies, each of which is evaluated separately. Access is
        # granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
        # Corresponds to the JSON property `ingressPolicies`
        # @return [Array<Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1IngressPolicy>]
        attr_accessor :ingress_policies
      
        # A list of Google Cloud resources that are inside of the service perimeter.
        # Currently only projects and VPCs are allowed. Project format: `projects/`
        # project_number`` VPC network format: `//compute.googleapis.com/projects/`
        # PROJECT_ID`/global/networks/`NAME``.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # Google Cloud services that are subject to the Service Perimeter restrictions.
        # For example, if `storage.googleapis.com` is specified, access to the storage
        # buckets inside the perimeter must meet the perimeter's access restrictions.
        # Corresponds to the JSON property `restrictedServices`
        # @return [Array<String>]
        attr_accessor :restricted_services
      
        # Specifies how APIs are allowed to communicate within the Service Perimeter.
        # Corresponds to the JSON property `vpcAccessibleServices`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices]
        attr_accessor :vpc_accessible_services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @egress_policies = args[:egress_policies] if args.key?(:egress_policies)
          @ingress_policies = args[:ingress_policies] if args.key?(:ingress_policies)
          @resources = args[:resources] if args.key?(:resources)
          @restricted_services = args[:restricted_services] if args.key?(:restricted_services)
          @vpc_accessible_services = args[:vpc_accessible_services] if args.key?(:vpc_accessible_services)
        end
      end
      
      # Specifies how APIs are allowed to communicate within the Service Perimeter.
      class GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
        include Google::Apis::Core::Hashable
      
        # The list of APIs usable within the Service Perimeter. Must be empty unless '
        # enable_restriction' is True. You can specify a list of individual services, as
        # well as include the 'RESTRICTED-SERVICES' value, which automatically includes
        # all of the services protected by the perimeter.
        # Corresponds to the JSON property `allowedServices`
        # @return [Array<String>]
        attr_accessor :allowed_services
      
        # Whether to restrict API calls within the Service Perimeter to the list of APIs
        # specified in 'allowed_services'.
        # Corresponds to the JSON property `enableRestriction`
        # @return [Boolean]
        attr_accessor :enable_restriction
        alias_method :enable_restriction?, :enable_restriction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_services = args[:allowed_services] if args.key?(:allowed_services)
          @enable_restriction = args[:enable_restriction] if args.key?(:enable_restriction)
        end
      end
      
      # The originating network source in Google Cloud.
      class GoogleIdentityAccesscontextmanagerV1VpcNetworkSource
        include Google::Apis::Core::Hashable
      
        # Sub-segment ranges inside of a VPC Network.
        # Corresponds to the JSON property `vpcSubnetwork`
        # @return [Google::Apis::CloudassetV1p7beta1::GoogleIdentityAccesscontextmanagerV1VpcSubNetwork]
        attr_accessor :vpc_subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vpc_subnetwork = args[:vpc_subnetwork] if args.key?(:vpc_subnetwork)
        end
      end
      
      # Sub-segment ranges inside of a VPC Network.
      class GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
        include Google::Apis::Core::Hashable
      
        # Required. Network name. If the network is not part of the organization, the `
        # compute.network.get` permission must be granted to the caller. Format: `//
        # compute.googleapis.com/projects/`PROJECT_ID`/global/networks/`NETWORK_NAME``
        # Example: `//compute.googleapis.com/projects/my-project/global/networks/network-
        # 1`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # CIDR block IP subnetwork specification. The IP address must be an IPv4 address
        # and can be a public or private IP address. Note that for a CIDR IP address
        # block, the specified IP address portion must be properly truncated (i.e. all
        # the host bits must be zero) or the input is considered malformed. For example,
        # "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. If empty, all IP
        # addresses are allowed.
        # Corresponds to the JSON property `vpcIpSubnetworks`
        # @return [Array<String>]
        attr_accessor :vpc_ip_subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @vpc_ip_subnetworks = args[:vpc_ip_subnetworks] if args.key?(:vpc_ip_subnetworks)
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
        # @return [Google::Apis::CloudassetV1p7beta1::Status]
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
        # @return [Array<Google::Apis::CloudassetV1p7beta1::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudassetV1p7beta1::Binding>]
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
    end
  end
end
