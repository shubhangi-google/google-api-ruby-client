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
    module ApigeeV1
      
      # Describes why a bundle is invalid. Intended for use in error details.
      class EdgeConfigstoreBundleBadBundle
        include Google::Apis::Core::Hashable
      
        # Describes all precondition violations.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::ApigeeV1::EdgeConfigstoreBundleBadBundleViolation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # A message type used to describe a single bundle validation error.
      class EdgeConfigstoreBundleBadBundleViolation
        include Google::Apis::Core::Hashable
      
        # A description of why the bundle is invalid and how to fix it.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The filename (including relative path from the bundle root) in which the error
        # occurred.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # APIProductAssociation has the API product and its administrative state
      # association.
      class GoogleCloudApigeeV1ApiProductAssociation
        include Google::Apis::Core::Hashable
      
        # API product to be associated with the credential.
        # Corresponds to the JSON property `apiproduct`
        # @return [String]
        attr_accessor :apiproduct
      
        # The API product credential associated status. Valid values are `approved` or `
        # revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apiproduct = args[:apiproduct] if args.key?(:apiproduct)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Access
        include Google::Apis::Core::Hashable
      
        # Get action. For example, "Get" : ` "name" : "target.name", "value" : "default"
        # `
        # Corresponds to the JSON property `Get`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessGet]
        attr_accessor :get
      
        # Remove action. For example, "Remove" : ` "name" : "target.name", "success" :
        # true `
        # Corresponds to the JSON property `Remove`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessRemove]
        attr_accessor :remove
      
        # Set action. For example, "Set" : ` "name" : "target.name", "success" : true, "
        # value" : "default" `
        # Corresponds to the JSON property `Set`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessSet]
        attr_accessor :set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @get = args[:get] if args.key?(:get)
          @remove = args[:remove] if args.key?(:remove)
          @set = args[:set] if args.key?(:set)
        end
      end
      
      # Get action. For example, "Get" : ` "name" : "target.name", "value" : "default"
      # `
      class GoogleCloudApigeeV1AccessGet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Access logging configuration enables customers to ship the access logs from
      # the tenant projects to their own project's cloud logging. The feature is at
      # the instance level ad disabled by default. It can be enabled during
      # CreateInstance or UpdateInstance.
      class GoogleCloudApigeeV1AccessLoggingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Boolean flag that specifies whether the customer access log feature
        # is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. Ship the access log entries that match the status_code defined in
        # the filter. The status_code is the only expected/supported filter field. (Ex:
        # status_code) The filter will parse it to the Common Expression Language
        # semantics for expression evaluation to build the filter condition. (Ex: "
        # filter": status_code >= 200 && status_code < 300 )
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Remove action. For example, "Remove" : ` "name" : "target.name", "success" :
      # true `
      class GoogleCloudApigeeV1AccessRemove
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # Set action. For example, "Set" : ` "name" : "target.name", "success" : true, "
      # value" : "default" `
      class GoogleCloudApigeeV1AccessSet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @success = args[:success] if args.key?(:success)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request for ActivateNatAddressRequest. Activate the nat address request.
      class GoogleCloudApigeeV1ActivateNatAddressRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Add-on configurations for the Apigee organization.
      class GoogleCloudApigeeV1AddonsConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for the Advanced API Ops add-on.
        # Corresponds to the JSON property `advancedApiOpsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AdvancedApiOpsConfig]
        attr_accessor :advanced_api_ops_config
      
        # Configuration for the Analytics add-on.
        # Corresponds to the JSON property `analyticsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AnalyticsConfig]
        attr_accessor :analytics_config
      
        # Configurations of the API Security add-on.
        # Corresponds to the JSON property `apiSecurityConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityConfig]
        attr_accessor :api_security_config
      
        # Configuration for the Connectors Platform add-on.
        # Corresponds to the JSON property `connectorsPlatformConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConnectorsPlatformConfig]
        attr_accessor :connectors_platform_config
      
        # Configuration for the Integration add-on.
        # Corresponds to the JSON property `integrationConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1IntegrationConfig]
        attr_accessor :integration_config
      
        # Configuration for the Monetization add-on.
        # Corresponds to the JSON property `monetizationConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1MonetizationConfig]
        attr_accessor :monetization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_api_ops_config = args[:advanced_api_ops_config] if args.key?(:advanced_api_ops_config)
          @analytics_config = args[:analytics_config] if args.key?(:analytics_config)
          @api_security_config = args[:api_security_config] if args.key?(:api_security_config)
          @connectors_platform_config = args[:connectors_platform_config] if args.key?(:connectors_platform_config)
          @integration_config = args[:integration_config] if args.key?(:integration_config)
          @monetization_config = args[:monetization_config] if args.key?(:monetization_config)
        end
      end
      
      # Request for AdjustDeveloperBalance.
      class GoogleCloudApigeeV1AdjustDeveloperBalanceRequest
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `adjustment`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :adjustment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adjustment = args[:adjustment] if args.key?(:adjustment)
        end
      end
      
      # Configuration for the Advanced API Ops add-on.
      class GoogleCloudApigeeV1AdvancedApiOpsConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the Advanced API Ops add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Reference to a certificate or key/certificate pair.
      class GoogleCloudApigeeV1Alias
        include Google::Apis::Core::Hashable
      
        # Resource ID for this alias. Values must match the regular expression `[^/]`1,
        # 255``.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Chain of certificates under this alias.
        # Corresponds to the JSON property `certsInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Certificate]
        attr_accessor :certs_info
      
        # Type of alias.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @certs_info = args[:certs_info] if args.key?(:certs_info)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AliasRevisionConfig
        include Google::Apis::Core::Hashable
      
        # Location of the alias file. For example, a Google Cloud Storage URI.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the alias revision included in the keystore in the following format: `
        # organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias`/
        # revisions/`rev``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for the Analytics add-on.
      class GoogleCloudApigeeV1AnalyticsConfig
        include Google::Apis::Core::Hashable
      
        # Whether the Analytics add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. Time at which the Analytics add-on expires in milliseconds since
        # epoch. If unspecified, the add-on will never expire.
        # Corresponds to the JSON property `expireTimeMillis`
        # @return [Fixnum]
        attr_accessor :expire_time_millis
      
        # Output only. The state of the Analytics add-on.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The latest update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @expire_time_millis = args[:expire_time_millis] if args.key?(:expire_time_millis)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `ApiCategory` represents an API category. [Catalog items](/apigee/docs/
      # reference/apis/apigee/rest/v1/organizations.sites.apidocs) can be tagged with
      # API categories; users viewing the API catalog in the portal will have the
      # option to browse the catalog by category.
      class GoogleCloudApigeeV1ApiCategory
        include Google::Apis::Core::Hashable
      
        # ID of the category (a UUID).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the portal.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Time the category was last modified in milliseconds since epoch.
        # Corresponds to the JSON property `updateTime`
        # @return [Fixnum]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @site_id = args[:site_id] if args.key?(:site_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The API category resource wrapped with response status, error_code, etc.
      class GoogleCloudApigeeV1ApiCategoryResponse
        include Google::Apis::Core::Hashable
      
        # `ApiCategory` represents an API category. [Catalog items](/apigee/docs/
        # reference/apis/apigee/rest/v1/organizations.sites.apidocs) can be tagged with
        # API categories; users viewing the API catalog in the portal will have the
        # option to browse the catalog by category.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory]
        attr_accessor :data
      
        # Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Session carries the debug session id and its creation time.
      class GoogleCloudApigeeV1ApiDebugSession
        include Google::Apis::Core::Hashable
      
        # The revision ID of the deployed API proxy.
        # Corresponds to the JSON property `apiProxyRevisionId`
        # @return [String]
        attr_accessor :api_proxy_revision_id
      
        # The first transaction creation timestamp in millisecond, recorded by UAP.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The environment ID of the deployed API proxy.
        # Corresponds to the JSON property `environmentId`
        # @return [String]
        attr_accessor :environment_id
      
        # The debug session ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy_revision_id = args[:api_proxy_revision_id] if args.key?(:api_proxy_revision_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @environment_id = args[:environment_id] if args.key?(:environment_id)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # `ApiDoc` represents an API catalog item. Catalog items are used in two ways in
      # a portal: - Users can browse and interact with a visual representation of the
      # API documentation - The `api_product_name` field provides a link to a backing [
      # API product] (/apigee/docs/reference/apis/apigee/rest/v1/organizations.
      # apiproducts). Through this link, portal users can create and manage developer
      # apps linked to one or more API products.
      class GoogleCloudApigeeV1ApiDoc
        include Google::Apis::Core::Hashable
      
        # Optional. Boolean flag that manages user access to the catalog item. When true,
        # the catalog item has public visibility and can be viewed anonymously;
        # otherwise, only registered users may view it. Note: when the parent portal is
        # enrolled in the [audience management feature](https://cloud.google.com/apigee/
        # docs/api-platform/publish/portal/portal-audience#
        # enrolling_in_the_beta_release_of_the_audience_management_feature), and this
        # flag is set to false, visibility is set to an indeterminate state and must be
        # explicitly specified in the management UI (see [Manage the visibility of an
        # API in your portal](https://cloud.google.com/apigee/docs/api-platform/publish/
        # portal/publish-apis#visibility)). Additionally, when enrolled in the audience
        # management feature, updates to this flag will be ignored as visibility
        # permissions must be updated in the management UI.
        # Corresponds to the JSON property `anonAllowed`
        # @return [Boolean]
        attr_accessor :anon_allowed
        alias_method :anon_allowed?, :anon_allowed
      
        # Required. Immutable. The `name` field of the associated [API product](/apigee/
        # docs/reference/apis/apigee/rest/v1/organizations.apiproducts). A portal may
        # have only one catalog item associated with a given API product.
        # Corresponds to the JSON property `apiProductName`
        # @return [String]
        attr_accessor :api_product_name
      
        # Optional. The IDs of the API categories to which this catalog item belongs.
        # Corresponds to the JSON property `categoryIds`
        # @return [Array<String>]
        attr_accessor :category_ids
      
        # Optional. Description of the catalog item. Max length is 10,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Immutable. DEPRECATED: use the `apiProductName` field instead
        # Corresponds to the JSON property `edgeAPIProductName`
        # @return [String]
        attr_accessor :edge_api_product_name
      
        # Optional. DEPRECATED: manage documentation through the `getDocumentation` and `
        # updateDocumentation` methods
        # Corresponds to the JSON property `graphqlEndpointUrl`
        # @return [String]
        attr_accessor :graphql_endpoint_url
      
        # Optional. DEPRECATED: manage documentation through the `getDocumentation` and `
        # updateDocumentation` methods
        # Corresponds to the JSON property `graphqlSchema`
        # @return [String]
        attr_accessor :graphql_schema
      
        # Optional. DEPRECATED: manage documentation through the `getDocumentation` and `
        # updateDocumentation` methods
        # Corresponds to the JSON property `graphqlSchemaDisplayName`
        # @return [String]
        attr_accessor :graphql_schema_display_name
      
        # Output only. The ID of the catalog item.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Optional. Location of the image used for the catalog item in the catalog. This
        # can be either an image with an external URL or a file path for [image files
        # stored in the portal](/apigee/docs/api-platform/publish/portal/portal-files"),
        # for example, `/files/book-tree.jpg`. When specifying the URL of an external
        # image, the image won't be uploaded to your assets; additionally, loading the
        # image in the integrated portal will be subject to its availability, which may
        # be blocked or restricted by [content security policies](/apigee/docs/api-
        # platform/publish/portal/csp). Max length of file path is 2,083 characters.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Output only. Time the catalog item was last modified in milliseconds since
        # epoch.
        # Corresponds to the JSON property `modified`
        # @return [Fixnum]
        attr_accessor :modified
      
        # Optional. Denotes whether the catalog item is published to the portal or is in
        # a draft state. When the parent portal is enrolled in the [audience management
        # feature](https://cloud.google.com/apigee/docs/api-platform/publish/portal/
        # portal-audience#
        # enrolling_in_the_beta_release_of_the_audience_management_feature), the
        # visibility can be set to public on creation by setting the anonAllowed flag to
        # true or further managed in the management UI (see [Manage the visibility of an
        # API in your portal](https://cloud.google.com/apigee/docs/api-platform/publish/
        # portal/publish-apis#visibility)) before it can be visible to any users. If not
        # enrolled in the audience management feature, the visibility is managed by the `
        # anonAllowed` flag.
        # Corresponds to the JSON property `published`
        # @return [Boolean]
        attr_accessor :published
        alias_method :published?, :published
      
        # Optional. Whether a callback URL is required when this catalog item's API
        # product is enabled in a developer app. When true, a portal user will be
        # required to input a URL when managing the app (this is typically used for the
        # app's OAuth flow).
        # Corresponds to the JSON property `requireCallbackUrl`
        # @return [Boolean]
        attr_accessor :require_callback_url
        alias_method :require_callback_url?, :require_callback_url
      
        # Output only. The ID of the parent portal.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Optional. DEPRECATED: DO NOT USE
        # Corresponds to the JSON property `specId`
        # @return [String]
        attr_accessor :spec_id
      
        # Required. The user-facing name of the catalog item. `title` must be a non-
        # empty string with a max length of 255 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional. DEPRECATED: use the `published` field instead
        # Corresponds to the JSON property `visibility`
        # @return [Boolean]
        attr_accessor :visibility
        alias_method :visibility?, :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anon_allowed = args[:anon_allowed] if args.key?(:anon_allowed)
          @api_product_name = args[:api_product_name] if args.key?(:api_product_name)
          @category_ids = args[:category_ids] if args.key?(:category_ids)
          @description = args[:description] if args.key?(:description)
          @edge_api_product_name = args[:edge_api_product_name] if args.key?(:edge_api_product_name)
          @graphql_endpoint_url = args[:graphql_endpoint_url] if args.key?(:graphql_endpoint_url)
          @graphql_schema = args[:graphql_schema] if args.key?(:graphql_schema)
          @graphql_schema_display_name = args[:graphql_schema_display_name] if args.key?(:graphql_schema_display_name)
          @id = args[:id] if args.key?(:id)
          @image_url = args[:image_url] if args.key?(:image_url)
          @modified = args[:modified] if args.key?(:modified)
          @published = args[:published] if args.key?(:published)
          @require_callback_url = args[:require_callback_url] if args.key?(:require_callback_url)
          @site_id = args[:site_id] if args.key?(:site_id)
          @spec_id = args[:spec_id] if args.key?(:spec_id)
          @title = args[:title] if args.key?(:title)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # The documentation for a catalog item.
      class GoogleCloudApigeeV1ApiDocDocumentation
        include Google::Apis::Core::Hashable
      
        # GraphQL documentation for a catalog item.
        # Corresponds to the JSON property `graphqlDocumentation`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphqlDocumentation]
        attr_accessor :graphql_documentation
      
        # OpenAPI Specification documentation for a catalog item.
        # Corresponds to the JSON property `oasDocumentation`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OasDocumentation]
        attr_accessor :oas_documentation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @graphql_documentation = args[:graphql_documentation] if args.key?(:graphql_documentation)
          @oas_documentation = args[:oas_documentation] if args.key?(:oas_documentation)
        end
      end
      
      # The catalog item documentation wrapped with response status, error_code, etc.
      class GoogleCloudApigeeV1ApiDocDocumentationResponse
        include Google::Apis::Core::Hashable
      
        # The documentation for a catalog item.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDocDocumentation]
        attr_accessor :data
      
        # Output only. Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Output only. Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The catalog item resource wrapped with response status, error_code, etc.
      class GoogleCloudApigeeV1ApiDocResponse
        include Google::Apis::Core::Hashable
      
        # `ApiDoc` represents an API catalog item. Catalog items are used in two ways in
        # a portal: - Users can browse and interact with a visual representation of the
        # API documentation - The `api_product_name` field provides a link to a backing [
        # API product] (/apigee/docs/reference/apis/apigee/rest/v1/organizations.
        # apiproducts). Through this link, portal users can create and manage developer
        # apps linked to one or more API products.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc]
        attr_accessor :data
      
        # Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ApiProduct
        include Google::Apis::Core::Hashable
      
        # Comma-separated list of API resources to be bundled in the API product. By
        # default, the resource paths are mapped from the `proxy.pathsuffix` variable.
        # The proxy path suffix is defined as the URI fragment following the
        # ProxyEndpoint base path. For example, if the `apiResources` element is defined
        # to be `/forecastrss` and the base path defined for the API proxy is `/weather`,
        # then only requests to `/weather/forecastrss` are permitted by the API product.
        # You can select a specific path, or you can select all subpaths with the
        # following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` :
        # Indicates that only URIs one level down are included. By default, / supports
        # the same resources as /** as well as the base path defined by the API proxy.
        # For example, if the base path of the API proxy is `/v1/weatherapikey`, then
        # the API product supports requests to `/v1/weatherapikey` and to any sub-URIs,
        # such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so
        # on. For more information, see Managing API products.
        # Corresponds to the JSON property `apiResources`
        # @return [Array<String>]
        attr_accessor :api_resources
      
        # Flag that specifies how API keys are approved to access the APIs defined by
        # the API product. If set to `manual`, the consumer key is generated and
        # returned in "pending" state. In this case, the API keys won't work until they
        # have been explicitly approved. If set to `auto`, the consumer key is generated
        # and returned in "approved" state and can be used immediately. **Note:**
        # Typically, `auto` is used to provide access to free or trial API products that
        # provide limited quota or capabilities.
        # Corresponds to the JSON property `approvalType`
        # @return [String]
        attr_accessor :approval_type
      
        # Array of attributes that may be used to extend the default API product profile
        # with customer-specific metadata. You can specify a maximum of 18 attributes.
        # Use this property to specify the access level of the API product as either `
        # public`, `private`, or `internal`. Only products marked `public` are available
        # to developers in the Apigee developer portal. For example, you can set a
        # product to `internal` while it is in development and then change access to `
        # public` when it is ready to release on the portal. API products marked as `
        # private` do not appear on the portal, but can be accessed by external
        # developers.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Response only. Creation time of this environment as milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Description of the API product. Include key information about the API product
        # that is not captured by other fields.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name displayed in the UI or developer portal to developers registering for API
        # access.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Comma-separated list of environment names to which the API product is bound.
        # Requests to environments that are not listed are rejected. By specifying one
        # or more environments, you can bind the resources listed in the API product to
        # a specific environment, preventing developers from accessing those resources
        # through API proxies deployed in another environment. This setting is used, for
        # example, to prevent resources associated with API proxies in `prod` from being
        # accessed by API proxies deployed in `test`.
        # Corresponds to the JSON property `environments`
        # @return [Array<String>]
        attr_accessor :environments
      
        # List of graphQL operation configuration details associated with Apigee API
        # proxies or remote services. Remote services are non-Apigee proxies, such as
        # Istio-Envoy.
        # Corresponds to the JSON property `graphqlOperationGroup`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationGroup]
        attr_accessor :graphql_operation_group
      
        # List of gRPC operation configuration details associated with Apigee API
        # proxies.
        # Corresponds to the JSON property `grpcOperationGroup`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationGroup]
        attr_accessor :grpc_operation_group
      
        # Response only. Modified time of this environment as milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Internal name of the API product. Characters you can use in the name are
        # restricted to: `A-Z0-9._\-$ %`. **Note:** The internal name cannot be edited
        # when updating the API product.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of operation configuration details associated with Apigee API proxies or
        # remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
        # Corresponds to the JSON property `operationGroup`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationGroup]
        attr_accessor :operation_group
      
        # Comma-separated list of API proxy names to which this API product is bound. By
        # specifying API proxies, you can associate resources in the API product with
        # specific API proxies, preventing developers from accessing those resources
        # through other API proxies. Apigee rejects requests to API proxies that are not
        # listed. **Note:** The API proxy names must already exist in the specified
        # environment as they will be validated upon creation.
        # Corresponds to the JSON property `proxies`
        # @return [Array<String>]
        attr_accessor :proxies
      
        # Number of request messages permitted per app by this API product for the
        # specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50,
        # for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests
        # are allowed every 12 hours.
        # Corresponds to the JSON property `quota`
        # @return [String]
        attr_accessor :quota
      
        # Scope of the quota decides how the quota counter gets applied and evaluate for
        # quota violation. If the Scope is set as PROXY, then all the operations defined
        # for the APIproduct that are associated with the same proxy will share the same
        # quota counter set at the APIproduct level, making it a global counter at a
        # proxy level. If the Scope is set as OPERATION, then each operations get the
        # counter set at the API product dedicated, making it a local counter. Note that,
        # the QuotaCounterScope applies only when an operation does not have dedicated
        # quota set for itself.
        # Corresponds to the JSON property `quotaCounterScope`
        # @return [String]
        attr_accessor :quota_counter_scope
      
        # Time interval over which the number of request messages is calculated.
        # Corresponds to the JSON property `quotaInterval`
        # @return [String]
        attr_accessor :quota_interval
      
        # Time unit defined for the `quotaInterval`. Valid values include `minute`, `
        # hour`, `day`, or `month`.
        # Corresponds to the JSON property `quotaTimeUnit`
        # @return [String]
        attr_accessor :quota_time_unit
      
        # Comma-separated list of OAuth scopes that are validated at runtime. Apigee
        # validates that the scopes in any access token presented match the scopes
        # defined in the OAuth policy associated with the API product.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Optional. The resource ID of the parent Space. If not set, the parent resource
        # will be the Organization. To learn how Spaces can be used to manage resources,
        # read the [Apigee Spaces Overview](https://cloud.google.com/apigee/docs/api-
        # platform/system-administration/spaces/apigee-spaces-overview).
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_resources = args[:api_resources] if args.key?(:api_resources)
          @approval_type = args[:approval_type] if args.key?(:approval_type)
          @attributes = args[:attributes] if args.key?(:attributes)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environments = args[:environments] if args.key?(:environments)
          @graphql_operation_group = args[:graphql_operation_group] if args.key?(:graphql_operation_group)
          @grpc_operation_group = args[:grpc_operation_group] if args.key?(:grpc_operation_group)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @operation_group = args[:operation_group] if args.key?(:operation_group)
          @proxies = args[:proxies] if args.key?(:proxies)
          @quota = args[:quota] if args.key?(:quota)
          @quota_counter_scope = args[:quota_counter_scope] if args.key?(:quota_counter_scope)
          @quota_interval = args[:quota_interval] if args.key?(:quota_interval)
          @quota_time_unit = args[:quota_time_unit] if args.key?(:quota_time_unit)
          @scopes = args[:scopes] if args.key?(:scopes)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ApiProductRef
        include Google::Apis::Core::Hashable
      
        # Name of the API product.
        # Corresponds to the JSON property `apiproduct`
        # @return [String]
        attr_accessor :apiproduct
      
        # Status of the API product. Valid values are `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apiproduct = args[:apiproduct] if args.key?(:apiproduct)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Metadata describing the API proxy
      class GoogleCloudApigeeV1ApiProxy
        include Google::Apis::Core::Hashable
      
        # Output only. The type of the API proxy.
        # Corresponds to the JSON property `apiProxyType`
        # @return [String]
        attr_accessor :api_proxy_type
      
        # User labels applied to this API Proxy.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The id of the most recently created revision for this api proxy.
        # Corresponds to the JSON property `latestRevisionId`
        # @return [String]
        attr_accessor :latest_revision_id
      
        # Metadata common to many entities in this API.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata]
        attr_accessor :meta_data
      
        # Output only. Name of the API proxy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether this proxy is read-only. A read-only proxy cannot have
        # new revisions created through calls to CreateApiProxyRevision. A proxy is read-
        # only if it was generated by an archive.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Output only. List of revisions defined for the API proxy.
        # Corresponds to the JSON property `revision`
        # @return [Array<String>]
        attr_accessor :revision
      
        # Optional. The id of the space this proxy is associated with. Any IAM policies
        # applied to the space will control access to this proxy. To learn how Spaces
        # can be used to manage resources, read the [Apigee Spaces Overview](https://
        # cloud.google.com/apigee/docs/api-platform/system-administration/spaces/apigee-
        # spaces-overview).
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy_type = args[:api_proxy_type] if args.key?(:api_proxy_type)
          @labels = args[:labels] if args.key?(:labels)
          @latest_revision_id = args[:latest_revision_id] if args.key?(:latest_revision_id)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @name = args[:name] if args.key?(:name)
          @read_only = args[:read_only] if args.key?(:read_only)
          @revision = args[:revision] if args.key?(:revision)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # API proxy revision.
      class GoogleCloudApigeeV1ApiProxyRevision
        include Google::Apis::Core::Hashable
      
        # Output only. The archive that generated this proxy revision. This field is
        # only present on proxy revisions that were generated by an archive. Proxies
        # generated by archives cannot be updated, deleted, or deployed to other
        # environments. Format: `organizations/*/environments/*/archiveDeployments/*`
        # Corresponds to the JSON property `archive`
        # @return [String]
        attr_accessor :archive
      
        # Base URL of the API proxy.
        # Corresponds to the JSON property `basepaths`
        # @return [Array<String>]
        attr_accessor :basepaths
      
        # Version of the API proxy configuration schema. Currently, only 4.0 is
        # supported.
        # Corresponds to the JSON property `configurationVersion`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion]
        attr_accessor :configuration_version
      
        # Revision number, app name, and organization for the API proxy.
        # Corresponds to the JSON property `contextInfo`
        # @return [String]
        attr_accessor :context_info
      
        # Time that the API proxy revision was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Description of the API proxy revision.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human-readable name of the API proxy.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Metadata describing the API proxy revision as a key-value map.
        # Corresponds to the JSON property `entityMetaDataAsProperties`
        # @return [Hash<String,String>]
        attr_accessor :entity_meta_data_as_properties
      
        # Output only. This field will be marked as true if revision contains any
        # policies marked as extensible.
        # Corresponds to the JSON property `hasExtensiblePolicy`
        # @return [Boolean]
        attr_accessor :has_extensible_policy
        alias_method :has_extensible_policy?, :has_extensible_policy
      
        # List of IntegrationEndpoints in the '/integration-endpoints' directory of the
        # API proxy. This is a 'manifest' setting designed to provide visibility into
        # the contents of the API proxy.
        # Corresponds to the JSON property `integrationEndpoints`
        # @return [Array<String>]
        attr_accessor :integration_endpoints
      
        # Time that the API proxy revision was last modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the API proxy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of policy names included in the API proxy revision..
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # List of proxy names included in the API proxy revision.
        # Corresponds to the JSON property `proxies`
        # @return [Array<String>]
        attr_accessor :proxies
      
        # List of ProxyEndpoints in the `/proxies` directory of the API proxy. Typically,
        # this element is included only when the API proxy was created using the Edge
        # UI. This is a 'manifest' setting designed to provide visibility into the
        # contents of the API proxy.
        # Corresponds to the JSON property `proxyEndpoints`
        # @return [Array<String>]
        attr_accessor :proxy_endpoints
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFiles`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles]
        attr_accessor :resource_files
      
        # List of the resources included in the API proxy revision formatted as "`type`:/
        # /`name`".
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # API proxy revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # List of the shared flows included in the API proxy revision.
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<String>]
        attr_accessor :shared_flows
      
        # OpenAPI Specification that is associated with the API proxy. The value is set
        # to a URL or to a path in the specification store.
        # Corresponds to the JSON property `spec`
        # @return [String]
        attr_accessor :spec
      
        # List of TargetEndpoints in the `/targets` directory of the API proxy.
        # Typically, this element is included only when the API proxy was created using
        # the Edge UI. This is a 'manifest' setting designed to provide visibility into
        # the contents of the API proxy.
        # Corresponds to the JSON property `targetEndpoints`
        # @return [Array<String>]
        attr_accessor :target_endpoints
      
        # List of TargetServers referenced in any TargetEndpoint in the API proxy.
        # Typically, you will see this element only when the API proxy was created using
        # the Edge UI. This is a 'manifest' setting designed to provide visibility into
        # the contents of the API proxy.
        # Corresponds to the JSON property `targetServers`
        # @return [Array<String>]
        attr_accessor :target_servers
      
        # List of the targets included in the API proxy revision.
        # Corresponds to the JSON property `targets`
        # @return [Array<String>]
        attr_accessor :targets
      
        # List of the teams included in the API proxy revision.
        # Corresponds to the JSON property `teams`
        # @return [Array<String>]
        attr_accessor :teams
      
        # Type. Set to `Application`. Maintained for compatibility with the Apigee Edge
        # API.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive = args[:archive] if args.key?(:archive)
          @basepaths = args[:basepaths] if args.key?(:basepaths)
          @configuration_version = args[:configuration_version] if args.key?(:configuration_version)
          @context_info = args[:context_info] if args.key?(:context_info)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_meta_data_as_properties = args[:entity_meta_data_as_properties] if args.key?(:entity_meta_data_as_properties)
          @has_extensible_policy = args[:has_extensible_policy] if args.key?(:has_extensible_policy)
          @integration_endpoints = args[:integration_endpoints] if args.key?(:integration_endpoints)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @policies = args[:policies] if args.key?(:policies)
          @proxies = args[:proxies] if args.key?(:proxies)
          @proxy_endpoints = args[:proxy_endpoints] if args.key?(:proxy_endpoints)
          @resource_files = args[:resource_files] if args.key?(:resource_files)
          @resources = args[:resources] if args.key?(:resources)
          @revision = args[:revision] if args.key?(:revision)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
          @spec = args[:spec] if args.key?(:spec)
          @target_endpoints = args[:target_endpoints] if args.key?(:target_endpoints)
          @target_servers = args[:target_servers] if args.key?(:target_servers)
          @targets = args[:targets] if args.key?(:targets)
          @teams = args[:teams] if args.key?(:teams)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configurations of the API Security add-on.
      class GoogleCloudApigeeV1ApiSecurityConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the API security add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. Time at which the API Security add-on expires in milliseconds
        # since epoch. If unspecified, the add-on will never expire.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
        end
      end
      
      # Response for GetApiSecurityRuntimeConfig[EnvironmentService.
      # GetApiSecurityRuntimeConfig].
      class GoogleCloudApigeeV1ApiSecurityRuntimeConfig
        include Google::Apis::Core::Hashable
      
        # A list of up to 5 Cloud Storage Blobs that contain SecurityActions.
        # Corresponds to the JSON property `location`
        # @return [Array<String>]
        attr_accessor :location
      
        # Name of the environment API Security Runtime configuration resource. Format: `
        # organizations/`org`/environments/`env`/apiSecurityRuntimeConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Revision ID of the API Security Runtime configuration. The higher the value,
        # the more recently the configuration was deployed.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # Unique ID for the API Security Runtime configuration. The ID will only change
        # if the environment is deleted and recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Time that the API Security Runtime configuration was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudApigeeV1App
        include Google::Apis::Core::Hashable
      
        # List of API products associated with the app.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef>]
        attr_accessor :api_products
      
        # Name of the AppGroup
        # Corresponds to the JSON property `appGroup`
        # @return [String]
        attr_accessor :app_group
      
        # ID of the app.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # List of attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Callback URL used by OAuth 2.0 authorization servers to communicate
        # authorization codes back to apps.
        # Corresponds to the JSON property `callbackUrl`
        # @return [String]
        attr_accessor :callback_url
      
        # Name of the company that owns the app.
        # Corresponds to the JSON property `companyName`
        # @return [String]
        attr_accessor :company_name
      
        # Output only. Unix time when the app was created.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Output only. Set of credentials for the app. Credentials are API key/secret
        # pairs associated with API products.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential>]
        attr_accessor :credentials
      
        # Email of the developer.
        # Corresponds to the JSON property `developerEmail`
        # @return [String]
        attr_accessor :developer_email
      
        # ID of the developer.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Duration, in milliseconds, of the consumer key that will be generated for the
        # app. The default value, -1, indicates an infinite validity period. Once set,
        # the expiration can't be updated. json key: keyExpiresIn
        # Corresponds to the JSON property `keyExpiresIn`
        # @return [Fixnum]
        attr_accessor :key_expires_in
      
        # Output only. Last modified time as milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Scopes to apply to the app. The specified scope names must already exist on
        # the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_group = args[:app_group] if args.key?(:app_group)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @callback_url = args[:callback_url] if args.key?(:callback_url)
          @company_name = args[:company_name] if args.key?(:company_name)
          @created_at = args[:created_at] if args.key?(:created_at)
          @credentials = args[:credentials] if args.key?(:credentials)
          @developer_email = args[:developer_email] if args.key?(:developer_email)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @key_expires_in = args[:key_expires_in] if args.key?(:key_expires_in)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # AppGroup contains the request/response fields representing the logical
      # grouping of apps. Note that appgroup_id, create_time and update_time cannot be
      # changed by the user, and gets updated by the system. The name and the
      # organization once provided cannot be edited subsequently.
      class GoogleCloudApigeeV1AppGroup
        include Google::Apis::Core::Hashable
      
        # Output only. Internal identifier that cannot be edited
        # Corresponds to the JSON property `appGroupId`
        # @return [String]
        attr_accessor :app_group_id
      
        # A list of attributes
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # channel identifier identifies the owner maintaing this grouping.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # A reference to the associated storefront/marketplace.
        # Corresponds to the JSON property `channelUri`
        # @return [String]
        attr_accessor :channel_uri
      
        # Output only. Created time as milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # app group name displayed in the UI
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Modified time as milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Immutable. Name of the AppGroup. Characters you can use in the name are
        # restricted to: A-Z0-9._\-$ %.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. the org the app group is created
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Valid values are `active` or `inactive`. Note that the status of the AppGroup
        # should be updated via UpdateAppGroupRequest by setting the action as `active`
        # or `inactive`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_group_id = args[:app_group_id] if args.key?(:app_group_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @channel_uri = args[:channel_uri] if args.key?(:channel_uri)
          @created_at = args[:created_at] if args.key?(:created_at)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @organization = args[:organization] if args.key?(:organization)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response for [GetAppGroupApp].[AppGroupApps.GetAppGroupApp], [
      # CreateAppGroupAppRequest].[AppGroupApp.CreateAppGroupAppRequest] and [
      # DeleteAppGroupApp].[AppGroupApp.DeleteAppGroupApp]
      class GoogleCloudApigeeV1AppGroupApp
        include Google::Apis::Core::Hashable
      
        # List of API products associated with the AppGroup app.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<String>]
        attr_accessor :api_products
      
        # Immutable. Name of the parent AppGroup whose resource name format is of syntax
        # (organizations/*/appgroups/*).
        # Corresponds to the JSON property `appGroup`
        # @return [String]
        attr_accessor :app_group
      
        # Immutable. ID of the AppGroup app.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # List of attributes for the AppGroup app.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Callback URL used by OAuth 2.0 authorization servers to communicate
        # authorization codes back to AppGroup apps.
        # Corresponds to the JSON property `callbackUrl`
        # @return [String]
        attr_accessor :callback_url
      
        # Output only. Time the AppGroup app was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Output only. Set of credentials for the AppGroup app consisting of the
        # consumer key/secret pairs associated with the API products.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential>]
        attr_accessor :credentials
      
        # Immutable. Expiration time, in seconds, for the consumer key that is generated
        # for the AppGroup app. If not set or left to the default value of `-1`, the API
        # key never expires. The expiration time can't be updated after it is set.
        # Corresponds to the JSON property `keyExpiresIn`
        # @return [Fixnum]
        attr_accessor :key_expires_in
      
        # Output only. Time the AppGroup app was modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Immutable. Name of the AppGroup app whose resource name format is of syntax (
        # organizations/*/appgroups/*/apps/*).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Scopes to apply to the AppGroup app. The specified scopes must already exist
        # for the API product that you associate with the AppGroup app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the App. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_group = args[:app_group] if args.key?(:app_group)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @callback_url = args[:callback_url] if args.key?(:callback_url)
          @created_at = args[:created_at] if args.key?(:created_at)
          @credentials = args[:credentials] if args.key?(:credentials)
          @key_expires_in = args[:key_expires_in] if args.key?(:key_expires_in)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # AppGroupAppKey contains all the information associated with the credentials.
      class GoogleCloudApigeeV1AppGroupAppKey
        include Google::Apis::Core::Hashable
      
        # Output only. List of API products and its status for which the credential can
        # be used. **Note**: Use UpdateAppGroupAppKeyApiProductRequest API to make the
        # association after the consumer key and secret are created.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductAssociation>]
        attr_accessor :api_products
      
        # List of attributes associated with the credential.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Immutable. Consumer key.
        # Corresponds to the JSON property `consumerKey`
        # @return [String]
        attr_accessor :consumer_key
      
        # Secret key.
        # Corresponds to the JSON property `consumerSecret`
        # @return [String]
        attr_accessor :consumer_secret
      
        # Output only. Time the AppGroup app expires in milliseconds since epoch.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Immutable. Expiration time, in seconds, for the consumer key. If not set or
        # left to the default value of `-1`, the API key never expires. The expiration
        # time can't be updated after it is set.
        # Corresponds to the JSON property `expiresInSeconds`
        # @return [Fixnum]
        attr_accessor :expires_in_seconds
      
        # Output only. Time the AppGroup app was created in milliseconds since epoch.
        # Corresponds to the JSON property `issuedAt`
        # @return [Fixnum]
        attr_accessor :issued_at
      
        # Scopes to apply to the app. The specified scope names must already be defined
        # for the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer_key = args[:consumer_key] if args.key?(:consumer_key)
          @consumer_secret = args[:consumer_secret] if args.key?(:consumer_secret)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @expires_in_seconds = args[:expires_in_seconds] if args.key?(:expires_in_seconds)
          @issued_at = args[:issued_at] if args.key?(:issued_at)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Archive Deployment information.
      class GoogleCloudApigeeV1ArchiveDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the Archive Deployment was created in
        # milliseconds since the epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Input only. The Google Cloud Storage signed URL returned from
        # GenerateUploadUrl and used to upload the Archive zip file.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # User-supplied key-value pairs used to organize ArchiveDeployments. Label keys
        # must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
        # bytes, and must conform to the following PCRE regular expression: \p`Ll`\p`Lo``
        # 0,62` Label values must be between 1 and 63 characters long, have a UTF-8
        # encoding of maximum 128 bytes, and must conform to the following PCRE regular
        # expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63` No more than 64 labels can be
        # associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Name of the Archive Deployment in the following format: `organizations/`org`/
        # environments/`env`/archiveDeployments/`id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A reference to the LRO that created this Archive Deployment in
        # the following format: `organizations/`org`/operations/`id``
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Output only. The time at which the Archive Deployment was updated in
        # milliseconds since the epoch.
        # Corresponds to the JSON property `updatedAt`
        # @return [Fixnum]
        attr_accessor :updated_at
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @updated_at = args[:updated_at] if args.key?(:updated_at)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AsyncQuery
        include Google::Apis::Core::Hashable
      
        # Creation time of the query.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # Hostname is available only when query is executed at host level.
        # Corresponds to the JSON property `envgroupHostname`
        # @return [String]
        attr_accessor :envgroup_hostname
      
        # Error is set when query fails.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # ExecutionTime is available only after the query is completed.
        # Corresponds to the JSON property `executionTime`
        # @return [String]
        attr_accessor :execution_time
      
        # Asynchronous Query Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains information like metrics, dimenstions etc of the AsyncQuery.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata]
        attr_accessor :query_params
      
        # Asynchronous Report ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Result is available only after the query is completed.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResult]
        attr_accessor :result
      
        # ResultFileSize is available only after the query is completed.
        # Corresponds to the JSON property `resultFileSize`
        # @return [String]
        attr_accessor :result_file_size
      
        # ResultRows is available only after the query is completed.
        # Corresponds to the JSON property `resultRows`
        # @return [Fixnum]
        attr_accessor :result_rows
      
        # Self link of the query. Example: `/organizations/myorg/environments/myenv/
        # queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is
        # running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-
        # ae6f-318d0cb961bd`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        # Query state could be "enqueued", "running", "completed", "failed".
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last updated timestamp for the query.
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] if args.key?(:created)
          @envgroup_hostname = args[:envgroup_hostname] if args.key?(:envgroup_hostname)
          @error = args[:error] if args.key?(:error)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @name = args[:name] if args.key?(:name)
          @query_params = args[:query_params] if args.key?(:query_params)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @result = args[:result] if args.key?(:result)
          @result_file_size = args[:result_file_size] if args.key?(:result_file_size)
          @result_rows = args[:result_rows] if args.key?(:result_rows)
          @self = args[:self] if args.key?(:self)
          @state = args[:state] if args.key?(:state)
          @updated = args[:updated] if args.key?(:updated)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AsyncQueryResult
        include Google::Apis::Core::Hashable
      
        # Query result will be unaccessable after this time.
        # Corresponds to the JSON property `expires`
        # @return [String]
        attr_accessor :expires
      
        # Self link of the query results. Example: `/organizations/myorg/environments/
        # myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format
        # if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-
        # 0f30-46d6-ae6f-318d0cb961bd/result`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires = args[:expires] if args.key?(:expires)
          @self = args[:self] if args.key?(:self)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AsyncQueryResultView
        include Google::Apis::Core::Hashable
      
        # Error code when there is a failure.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Error message when there is a failure.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Metadata contains information like metrics, dimenstions etc of the AsyncQuery.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata]
        attr_accessor :metadata
      
        # Rows of query result. Each row is a JSON object. Example: `sum(message_count):
        # 1, developer_app: "(not set)",…`
        # Corresponds to the JSON property `rows`
        # @return [Array<Object>]
        attr_accessor :rows
      
        # State of retrieving ResultView.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rows = args[:rows] if args.key?(:rows)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Key-value pair to store extra metadata.
      class GoogleCloudApigeeV1Attribute
        include Google::Apis::Core::Hashable
      
        # API key of the attribute.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Attributes
        include Google::Apis::Core::Hashable
      
        # List of attributes.
        # Corresponds to the JSON property `attribute`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
        end
      end
      
      # Request for BatchComputeSecurityAssessmentResults.
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequest
        include Google::Apis::Core::Hashable
      
        # Message for the array of resources. For Apigee, the proxies are resources.
        # Corresponds to the JSON property `include`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray]
        attr_accessor :include
      
        # Message for include_all_resources option.
        # Corresponds to the JSON property `includeAllResources`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll]
        attr_accessor :include_all_resources
      
        # Optional. The maximum number of results to return. The service may return
        # fewer than this value. If unspecified, at most 50 results will be returned.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `
        # BatchComputeSecurityAssessmentResults` call. Provide this to retrieve the
        # subsequent page.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Name of the profile that is used for computation.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # Required. Scope of the resources for the computation. For Apigee, the
        # environment is the scope of the resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include = args[:include] if args.key?(:include)
          @include_all_resources = args[:include_all_resources] if args.key?(:include_all_resources)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @profile = args[:profile] if args.key?(:profile)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Message for include_all_resources option.
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for the array of resources. For Apigee, the proxies are resources.
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray
        include Google::Apis::Core::Hashable
      
        # Required. The array of resources. For Apigee, the proxies are resources.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Resource for which we are computing security assessment.
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource
        include Google::Apis::Core::Hashable
      
        # Required. Name of this resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Type of this resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response for BatchComputeSecurityAssessmentResults.
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse
        include Google::Apis::Core::Hashable
      
        # The time of the assessment api call.
        # Corresponds to the JSON property `assessmentTime`
        # @return [String]
        attr_accessor :assessment_time
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is blank, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Default sort order is by resource name in alphabetic order.
        # Corresponds to the JSON property `securityAssessmentResults`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResult>]
        attr_accessor :security_assessment_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assessment_time = args[:assessment_time] if args.key?(:assessment_time)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_assessment_results = args[:security_assessment_results] if args.key?(:security_assessment_results)
        end
      end
      
      # Request for BatchUpdateSecurityIncident.
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Required. The request message specifying the resources to update. A
        # maximum of 1000 can be modified in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateSecurityIncidentRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response for BatchUpdateSecurityIncident.
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Updated security incidents
        # Corresponds to the JSON property `securityIncidents`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident>]
        attr_accessor :security_incidents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @security_incidents = args[:security_incidents] if args.key?(:security_incidents)
        end
      end
      
      # CanaryEvaluation represents the canary analysis between two versions of the
      # runtime that is serving requests.
      class GoogleCloudApigeeV1CanaryEvaluation
        include Google::Apis::Core::Hashable
      
        # Required. The stable version that is serving requests.
        # Corresponds to the JSON property `control`
        # @return [String]
        attr_accessor :control
      
        # Output only. Create time of the canary evaluation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. End time for the evaluation's analysis.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Labels that can be used to filter Apigee metrics.
        # Corresponds to the JSON property `metricLabels`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluationMetricLabels]
        attr_accessor :metric_labels
      
        # Output only. Name of the canary evalution.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Start time for the canary evaluation's analysis.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the canary evaluation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The newer version that is serving requests.
        # Corresponds to the JSON property `treatment`
        # @return [String]
        attr_accessor :treatment
      
        # Output only. The resulting verdict of the canary evaluations: NONE, PASS, or
        # FAIL.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control = args[:control] if args.key?(:control)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @metric_labels = args[:metric_labels] if args.key?(:metric_labels)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @treatment = args[:treatment] if args.key?(:treatment)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # Labels that can be used to filter Apigee metrics.
      class GoogleCloudApigeeV1CanaryEvaluationMetricLabels
        include Google::Apis::Core::Hashable
      
        # The environment ID associated with the metrics.
        # Corresponds to the JSON property `env`
        # @return [String]
        attr_accessor :env
      
        # Required. The instance ID associated with the metrics. In Apigee Hybrid, the
        # value is configured during installation.
        # Corresponds to the JSON property `instance_id`
        # @return [String]
        attr_accessor :instance_id
      
        # Required. The location associated with the metrics.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # X.509 certificate as defined in RFC 5280.
      class GoogleCloudApigeeV1CertInfo
        include Google::Apis::Core::Hashable
      
        # X.509 basic constraints extension.
        # Corresponds to the JSON property `basicConstraints`
        # @return [String]
        attr_accessor :basic_constraints
      
        # X.509 `notAfter` validity period in milliseconds since epoch.
        # Corresponds to the JSON property `expiryDate`
        # @return [Fixnum]
        attr_accessor :expiry_date
      
        # Flag that specifies whether the certificate is valid. Flag is set to `Yes` if
        # the certificate is valid, `No` if expired, or `Not yet` if not yet valid.
        # Corresponds to the JSON property `isValid`
        # @return [String]
        attr_accessor :is_valid
      
        # X.509 issuer.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Public key component of the X.509 subject public key info.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # X.509 serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # X.509 signatureAlgorithm.
        # Corresponds to the JSON property `sigAlgName`
        # @return [String]
        attr_accessor :sig_alg_name
      
        # X.509 subject.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # X.509 subject alternative names (SANs) extension.
        # Corresponds to the JSON property `subjectAlternativeNames`
        # @return [Array<String>]
        attr_accessor :subject_alternative_names
      
        # X.509 `notBefore` validity period in milliseconds since epoch.
        # Corresponds to the JSON property `validFrom`
        # @return [Fixnum]
        attr_accessor :valid_from
      
        # X.509 version.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_constraints = args[:basic_constraints] if args.key?(:basic_constraints)
          @expiry_date = args[:expiry_date] if args.key?(:expiry_date)
          @is_valid = args[:is_valid] if args.key?(:is_valid)
          @issuer = args[:issuer] if args.key?(:issuer)
          @public_key = args[:public_key] if args.key?(:public_key)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @sig_alg_name = args[:sig_alg_name] if args.key?(:sig_alg_name)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alternative_names = args[:subject_alternative_names] if args.key?(:subject_alternative_names)
          @valid_from = args[:valid_from] if args.key?(:valid_from)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Certificate
        include Google::Apis::Core::Hashable
      
        # Chain of certificates under this name.
        # Corresponds to the JSON property `certInfo`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CertInfo>]
        attr_accessor :cert_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_info = args[:cert_info] if args.key?(:cert_info)
        end
      end
      
      # 
      class GoogleCloudApigeeV1CommonNameConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `matchWildCards`
        # @return [Boolean]
        attr_accessor :match_wild_cards
        alias_method :match_wild_cards?, :match_wild_cards
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_wild_cards = args[:match_wild_cards] if args.key?(:match_wild_cards)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request for ComputeEnvironmentScores.
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Filters are used to filter scored components. Return all the
        # components if no filter is mentioned. Example: [` "scorePath": "/org@myorg/
        # envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/source" `, ` "scorePath": "
        # /org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/target", `]
        # This will return components with path: "/org@myorg/envgroup@myenvgroup/env@
        # myenv/proxies/proxy@myproxy/source" OR "/org@myorg/envgroup@myenvgroup/env@
        # myenv/proxies/proxy@myproxy/target"
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter>]
        attr_accessor :filters
      
        # Optional. The maximum number of subcomponents to be returned in a single page.
        # The service may return fewer than this value. If unspecified, at most 100
        # subcomponents will be returned in a single page.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A token that can be sent as `page_token` to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::ApigeeV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Filter scores by component path. Used custom filter instead of AIP-160 as the
      # use cases are highly constrained and predictable.
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Return scores for this component. Example: "/org@myorg/envgroup@
        # myenvgroup/env@myenv/proxies/proxy@myproxy/source"
        # Corresponds to the JSON property `scorePath`
        # @return [String]
        attr_accessor :score_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score_path = args[:score_path] if args.key?(:score_path)
        end
      end
      
      # Response for ComputeEnvironmentScores.
      class GoogleCloudApigeeV1ComputeEnvironmentScoresResponse
        include Google::Apis::Core::Hashable
      
        # A page token, received from a previous `ComputeScore` call. Provide this to
        # retrieve the subsequent page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of scores. One score per day.
        # Corresponds to the JSON property `scores`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Score>]
        attr_accessor :scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scores = args[:scores] if args.key?(:scores)
        end
      end
      
      # Version of the API proxy configuration schema. Currently, only 4.0 is
      # supported.
      class GoogleCloudApigeeV1ConfigVersion
        include Google::Apis::Core::Hashable
      
        # Major version of the API proxy configuration schema.
        # Corresponds to the JSON property `majorVersion`
        # @return [Fixnum]
        attr_accessor :major_version
      
        # Minor version of the API proxy configuration schema.
        # Corresponds to the JSON property `minorVersion`
        # @return [Fixnum]
        attr_accessor :minor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @major_version = args[:major_version] if args.key?(:major_version)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
        end
      end
      
      # Configuration for the Connectors Platform add-on.
      class GoogleCloudApigeeV1ConnectorsPlatformConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the Connectors Platform add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. Time at which the Connectors Platform add-on expires in
        # milliseconds since epoch. If unspecified, the add-on will never expire.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
        end
      end
      
      # ControlPlaneAccess is the request body and response body of
      # UpdateControlPlaneAccess. and the response body of GetControlPlaneAccess. The
      # input identities contains an array of service accounts to grant access to the
      # respective control plane resource, with each service account specified using
      # the following format: `serviceAccount:`***service-account-name***. The ***
      # service-account-name*** is formatted like an email address. For example: `my-
      # control-plane-service_account@my_project_id.iam.gserviceaccount.com` You might
      # specify multiple service accounts, for example, if you have multiple
      # environments and wish to assign a unique service account to each one.
      class GoogleCloudApigeeV1ControlPlaneAccess
        include Google::Apis::Core::Hashable
      
        # Optional. Array of service accounts authorized to publish analytics data to
        # the control plane (for the Message Processor component).
        # Corresponds to the JSON property `analyticsPublisherIdentities`
        # @return [Array<String>]
        attr_accessor :analytics_publisher_identities
      
        # Identifier. The resource name of the ControlPlaneAccess. Format: "
        # organizations/`org`/controlPlaneAccess"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Array of service accounts to grant access to control plane resources
        # (for the Synchronizer component). The service accounts must have **Apigee
        # Synchronizer Manager** role. See also [Create service accounts](https://cloud.
        # google.com/apigee/docs/hybrid/latest/sa-about#create-the-service-accounts).
        # Corresponds to the JSON property `synchronizerIdentities`
        # @return [Array<String>]
        attr_accessor :synchronizer_identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_publisher_identities = args[:analytics_publisher_identities] if args.key?(:analytics_publisher_identities)
          @name = args[:name] if args.key?(:name)
          @synchronizer_identities = args[:synchronizer_identities] if args.key?(:synchronizer_identities)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Credential
        include Google::Apis::Core::Hashable
      
        # List of API products this credential can be used for.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef>]
        attr_accessor :api_products
      
        # List of attributes associated with this credential.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Consumer key.
        # Corresponds to the JSON property `consumerKey`
        # @return [String]
        attr_accessor :consumer_key
      
        # Secret key.
        # Corresponds to the JSON property `consumerSecret`
        # @return [String]
        attr_accessor :consumer_secret
      
        # Time the credential will expire in milliseconds since epoch.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Time the credential was issued in milliseconds since epoch.
        # Corresponds to the JSON property `issuedAt`
        # @return [Fixnum]
        attr_accessor :issued_at
      
        # List of scopes to apply to the app. Specified scopes must already exist on the
        # API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer_key = args[:consumer_key] if args.key?(:consumer_key)
          @consumer_secret = args[:consumer_secret] if args.key?(:consumer_secret)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @issued_at = args[:issued_at] if args.key?(:issued_at)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Request for CreditDeveloperBalance.
      class GoogleCloudApigeeV1CreditDeveloperBalanceRequest
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `transactionAmount`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :transaction_amount
      
        # Each transaction_id uniquely identifies a credit balance request. If multiple
        # requests are received with the same transaction_id, only one of them will be
        # considered.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction_amount = args[:transaction_amount] if args.key?(:transaction_amount)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # 
      class GoogleCloudApigeeV1CustomReport
        include Google::Apis::Core::Hashable
      
        # This field contains the chart type for the report
        # Corresponds to the JSON property `chartType`
        # @return [String]
        attr_accessor :chart_type
      
        # Legacy field: not used. This field contains a list of comments associated with
        # custom report
        # Corresponds to the JSON property `comments`
        # @return [Array<String>]
        attr_accessor :comments
      
        # Output only. Unix time when the app was created json key: createdAt
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # This contains the list of dimensions for the report
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # This is the display name for the report
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Environment name
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # This field contains the filter expression
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Legacy field: not used. Contains the from time for the report
        # Corresponds to the JSON property `fromTime`
        # @return [String]
        attr_accessor :from_time
      
        # Output only. Modified time of this entity as milliseconds since epoch. json
        # key: lastModifiedAt
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Last viewed time of this entity as milliseconds since epoch
        # Corresponds to the JSON property `lastViewedAt`
        # @return [Fixnum]
        attr_accessor :last_viewed_at
      
        # Legacy field: not used This field contains the limit for the result retrieved
        # Corresponds to the JSON property `limit`
        # @return [String]
        attr_accessor :limit
      
        # Required. This contains the list of metrics
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReportMetric>]
        attr_accessor :metrics
      
        # Required. Unique identifier for the report T his is a legacy field used to
        # encode custom report unique id
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Legacy field: not used. This field contains the offset for the data
        # Corresponds to the JSON property `offset`
        # @return [String]
        attr_accessor :offset
      
        # Output only. Organization name
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # This field contains report properties such as ui metadata etc.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportProperty>]
        attr_accessor :properties
      
        # Legacy field: not used much. Contains the list of sort by columns
        # Corresponds to the JSON property `sortByCols`
        # @return [Array<String>]
        attr_accessor :sort_by_cols
      
        # Legacy field: not used much. Contains the sort order for the sort columns
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        # Legacy field: not used. This field contains a list of tags associated with
        # custom report
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # This field contains the time unit of aggregation for the report
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        # Legacy field: not used. Contains the end time for the report
        # Corresponds to the JSON property `toTime`
        # @return [String]
        attr_accessor :to_time
      
        # Legacy field: not used. This field contains the top k parameter value for
        # restricting the result
        # Corresponds to the JSON property `topk`
        # @return [String]
        attr_accessor :topk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_type = args[:chart_type] if args.key?(:chart_type)
          @comments = args[:comments] if args.key?(:comments)
          @created_at = args[:created_at] if args.key?(:created_at)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment = args[:environment] if args.key?(:environment)
          @filter = args[:filter] if args.key?(:filter)
          @from_time = args[:from_time] if args.key?(:from_time)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @last_viewed_at = args[:last_viewed_at] if args.key?(:last_viewed_at)
          @limit = args[:limit] if args.key?(:limit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @offset = args[:offset] if args.key?(:offset)
          @organization = args[:organization] if args.key?(:organization)
          @properties = args[:properties] if args.key?(:properties)
          @sort_by_cols = args[:sort_by_cols] if args.key?(:sort_by_cols)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
          @tags = args[:tags] if args.key?(:tags)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @to_time = args[:to_time] if args.key?(:to_time)
          @topk = args[:topk] if args.key?(:topk)
        end
      end
      
      # This encapsulates a metric property of the form sum(message_count) where name
      # is message_count and function is sum
      class GoogleCloudApigeeV1CustomReportMetric
        include Google::Apis::Core::Hashable
      
        # aggregate function
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # name of the metric
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Data collector configuration.
      class GoogleCloudApigeeV1DataCollector
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the data collector was created in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # A description of the data collector.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time at which the Data Collector was last updated in
        # milliseconds since the epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # ID of the data collector. Must begin with `dc_`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The type of data this data collector will collect.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Data collector and its configuration.
      class GoogleCloudApigeeV1DataCollectorConfig
        include Google::Apis::Core::Hashable
      
        # Name of the data collector in the following format: `organizations/`org`/
        # datacollectors/`datacollector``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data type accepted by the data collector.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The data store defines the connection to export data repository (Cloud Storage,
      # BigQuery), including the credentials used to access the data repository.
      class GoogleCloudApigeeV1Datastore
        include Google::Apis::Core::Hashable
      
        # Output only. Datastore create time, in milliseconds since the epoch of 1970-01-
        # 01T00:00:00Z
        # Corresponds to the JSON property `createTime`
        # @return [Fixnum]
        attr_accessor :create_time
      
        # Configuration detail for datastore
        # Corresponds to the JSON property `datastoreConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DatastoreConfig]
        attr_accessor :datastore_config
      
        # Required. Display name in UI
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Datastore last update time, in milliseconds since the epoch of
        # 1970-01-01T00:00:00Z
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [Fixnum]
        attr_accessor :last_update_time
      
        # Output only. Organization that the datastore belongs to
        # Corresponds to the JSON property `org`
        # @return [String]
        attr_accessor :org
      
        # Output only. Resource link of Datastore. Example: `/organizations/`org`/
        # analytics/datastores/`uuid``
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        # Destination storage type. Supported types `gcs` or `bigquery`.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @datastore_config = args[:datastore_config] if args.key?(:datastore_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @org = args[:org] if args.key?(:org)
          @self = args[:self] if args.key?(:self)
          @target_type = args[:target_type] if args.key?(:target_type)
        end
      end
      
      # Configuration detail for datastore
      class GoogleCloudApigeeV1DatastoreConfig
        include Google::Apis::Core::Hashable
      
        # Name of the Cloud Storage bucket. Required for `gcs` target_type.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # BigQuery dataset name Required for `bigquery` target_type.
        # Corresponds to the JSON property `datasetName`
        # @return [String]
        attr_accessor :dataset_name
      
        # Path of Cloud Storage bucket Required for `gcs` target_type.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. Google Cloud project in which the datastore exists
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Prefix of BigQuery table Required for `bigquery` target_type.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @dataset_name = args[:dataset_name] if args.key?(:dataset_name)
          @path = args[:path] if args.key?(:path)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
        end
      end
      
      # Date range of the data to export.
      class GoogleCloudApigeeV1DateRange
        include Google::Apis::Core::Hashable
      
        # Required. End date (exclusive) of the data to export in the format `yyyy-mm-dd`
        # . The date range ends at 00:00:00 UTC on the end date- which will not be in
        # the output.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Required. Start date of the data to export in the format `yyyy-mm-dd`. The
        # date range begins at 00:00:00 UTC on the start date.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DebugMask
        include Google::Apis::Core::Hashable
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # payloads in error flows.
        # Corresponds to the JSON property `faultJSONPaths`
        # @return [Array<String>]
        attr_accessor :fault_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML payloads
        # in error flows.
        # Corresponds to the JSON property `faultXPaths`
        # @return [Array<String>]
        attr_accessor :fault_x_paths
      
        # Name of the debug mask.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Map of namespaces to URIs.
        # Corresponds to the JSON property `namespaces`
        # @return [Hash<String,String>]
        attr_accessor :namespaces
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # request message payloads.
        # Corresponds to the JSON property `requestJSONPaths`
        # @return [Array<String>]
        attr_accessor :request_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML request
        # message payloads.
        # Corresponds to the JSON property `requestXPaths`
        # @return [Array<String>]
        attr_accessor :request_x_paths
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # response message payloads.
        # Corresponds to the JSON property `responseJSONPaths`
        # @return [Array<String>]
        attr_accessor :response_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML response
        # message payloads.
        # Corresponds to the JSON property `responseXPaths`
        # @return [Array<String>]
        attr_accessor :response_x_paths
      
        # List of variables that should be masked from the debug output.
        # Corresponds to the JSON property `variables`
        # @return [Array<String>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fault_json_paths = args[:fault_json_paths] if args.key?(:fault_json_paths)
          @fault_x_paths = args[:fault_x_paths] if args.key?(:fault_x_paths)
          @name = args[:name] if args.key?(:name)
          @namespaces = args[:namespaces] if args.key?(:namespaces)
          @request_json_paths = args[:request_json_paths] if args.key?(:request_json_paths)
          @request_x_paths = args[:request_x_paths] if args.key?(:request_x_paths)
          @response_json_paths = args[:response_json_paths] if args.key?(:response_json_paths)
          @response_x_paths = args[:response_x_paths] if args.key?(:response_x_paths)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DebugSession
        include Google::Apis::Core::Hashable
      
        # Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. The first transaction creation timestamp, recorded by UAP.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A conditional statement which is evaluated against the request
        # message to determine if it should be traced. Syntax matches that of on API
        # Proxy bundle flow Condition.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A unique ID for this DebugSession.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The time in seconds after which this DebugSession should end. This
        # value will override the value in query param, if both are provided.
        # Corresponds to the JSON property `timeout`
        # @return [Fixnum]
        attr_accessor :timeout
      
        # Optional. The maximum number of bytes captured from the response payload. Min =
        # 0, Max = 5120, Default = 5120.
        # Corresponds to the JSON property `tracesize`
        # @return [Fixnum]
        attr_accessor :tracesize
      
        # Optional. The length of time, in seconds, that this debug session is valid,
        # starting from when it's received in the control plane. Min = 1, Max = 15,
        # Default = 10.
        # Corresponds to the JSON property `validity`
        # @return [Fixnum]
        attr_accessor :validity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
          @timeout = args[:timeout] if args.key?(:timeout)
          @tracesize = args[:tracesize] if args.key?(:tracesize)
          @validity = args[:validity] if args.key?(:validity)
        end
      end
      
      # A transaction contains all of the debug information of the entire message flow
      # of an API call processed by the runtime plane. The information is collected
      # and recorded at critical points of the message flow in the runtime apiproxy.
      class GoogleCloudApigeeV1DebugSessionTransaction
        include Google::Apis::Core::Hashable
      
        # Flag indicating whether a transaction is completed or not
        # Corresponds to the JSON property `completed`
        # @return [Boolean]
        attr_accessor :completed
        alias_method :completed?, :completed
      
        # List of debug data collected by runtime plane at various defined points in the
        # flow.
        # Corresponds to the JSON property `point`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Point>]
        attr_accessor :point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed = args[:completed] if args.key?(:completed)
          @point = args[:point] if args.key?(:point)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeleteCustomReportResponse
        include Google::Apis::Core::Hashable
      
        # The response contains only a message field.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Response for certain delete operations.
      class GoogleCloudApigeeV1DeleteResponse
        include Google::Apis::Core::Hashable
      
        # Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Google Cloud name of deleted resource.
        # Corresponds to the JSON property `gcpResource`
        # @return [String]
        attr_accessor :gcp_resource
      
        # Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @gcp_resource = args[:gcp_resource] if args.key?(:gcp_resource)
          @message = args[:message] if args.key?(:message)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Deployment represents a deployment of an API proxy or shared flow.
      class GoogleCloudApigeeV1Deployment
        include Google::Apis::Core::Hashable
      
        # API proxy.
        # Corresponds to the JSON property `apiProxy`
        # @return [String]
        attr_accessor :api_proxy
      
        # Time the API proxy was marked `deployed` in the control plane in millisconds
        # since epoch.
        # Corresponds to the JSON property `deployStartTime`
        # @return [Fixnum]
        attr_accessor :deploy_start_time
      
        # Environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Errors reported for this deployment. Populated only when state == ERROR. **
        # Note**: This field is displayed only when viewing deployment status.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ApigeeV1::GoogleRpcStatus>]
        attr_accessor :errors
      
        # Status reported by each runtime instance. **Note**: This field is displayed
        # only when viewing deployment status.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatus>]
        attr_accessor :instances
      
        # Status reported by runtime pods. **Note**: **This field is deprecated**.
        # Runtime versions 1.3 and above report instance level status rather than pod
        # status.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1PodStatus>]
        attr_accessor :pods
      
        # Output only. The type of the deployment (standard or extensible) Deployed
        # proxy revision will be marked as extensible in following 2 cases. 1. The
        # deployed proxy revision uses extensible policies. 2. If a environment supports
        # flowhooks and flow hook is configured.
        # Corresponds to the JSON property `proxyDeploymentType`
        # @return [String]
        attr_accessor :proxy_deployment_type
      
        # API proxy revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Conflicts in the desired state routing configuration. The presence of
        # conflicts does not cause the state to be `ERROR`, but it will mean that some
        # of the deployment's base paths are not routed to its environment. If the
        # conflicts change, the state will transition to `PROGRESSING` until the latest
        # configuration is rolled out to all instances. **Note**: This field is
        # displayed only when viewing deployment status.
        # Corresponds to the JSON property `routeConflicts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>]
        attr_accessor :route_conflicts
      
        # The full resource name of Cloud IAM Service Account that this deployment is
        # using, eg, `projects/-/serviceAccounts/`email``.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Current state of the deployment. **Note**: This field is displayed only when
        # viewing deployment status.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy = args[:api_proxy] if args.key?(:api_proxy)
          @deploy_start_time = args[:deploy_start_time] if args.key?(:deploy_start_time)
          @environment = args[:environment] if args.key?(:environment)
          @errors = args[:errors] if args.key?(:errors)
          @instances = args[:instances] if args.key?(:instances)
          @pods = args[:pods] if args.key?(:pods)
          @proxy_deployment_type = args[:proxy_deployment_type] if args.key?(:proxy_deployment_type)
          @revision = args[:revision] if args.key?(:revision)
          @route_conflicts = args[:route_conflicts] if args.key?(:route_conflicts)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response for GenerateDeployChangeReport and GenerateUndeployChangeReport. This
      # report contains any validation failures that would cause the deployment to be
      # rejected, as well changes and conflicts in routing that may occur due to the
      # new deployment. The existence of a routing warning does not necessarily imply
      # that the deployment request is bad, if the desired state of the deployment
      # request is to effect a routing change. The primary purposes of the routing
      # messages are: 1) To inform users of routing changes that may have an effect on
      # traffic currently being routed to other existing deployments. 2) To warn users
      # if some base path in the proxy will not receive traffic due to an existing
      # deployment having already claimed that base path. The presence of routing
      # conflicts/changes will not cause non-dry-run DeployApiProxy/UndeployApiProxy
      # requests to be rejected.
      class GoogleCloudApigeeV1DeploymentChangeReport
        include Google::Apis::Core::Hashable
      
        # All routing changes that may result from a deployment request.
        # Corresponds to the JSON property `routingChanges`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>]
        attr_accessor :routing_changes
      
        # All base path conflicts detected for a deployment request.
        # Corresponds to the JSON property `routingConflicts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>]
        attr_accessor :routing_conflicts
      
        # Describes what preconditions have failed. For example, if an RPC failed
        # because it required the Terms of Service to be acknowledged, it could list the
        # terms of service violation in the PreconditionFailure message.
        # Corresponds to the JSON property `validationErrors`
        # @return [Google::Apis::ApigeeV1::GoogleRpcPreconditionFailure]
        attr_accessor :validation_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @routing_changes = args[:routing_changes] if args.key?(:routing_changes)
          @routing_conflicts = args[:routing_conflicts] if args.key?(:routing_conflicts)
          @validation_errors = args[:validation_errors] if args.key?(:validation_errors)
        end
      end
      
      # Describes a potential routing change that may occur as a result of some
      # deployment operation.
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingChange
        include Google::Apis::Core::Hashable
      
        # Human-readable description of this routing change.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the environment group affected by this routing change.
        # Corresponds to the JSON property `environmentGroup`
        # @return [String]
        attr_accessor :environment_group
      
        # Tuple representing a base path and the deployment containing it.
        # Corresponds to the JSON property `fromDeployment`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment]
        attr_accessor :from_deployment
      
        # Set to `true` if using sequenced rollout would make this routing change safer.
        # **Note**: This does not necessarily imply that automated sequenced rollout
        # mode is supported for the operation.
        # Corresponds to the JSON property `shouldSequenceRollout`
        # @return [Boolean]
        attr_accessor :should_sequence_rollout
        alias_method :should_sequence_rollout?, :should_sequence_rollout
      
        # Tuple representing a base path and the deployment containing it.
        # Corresponds to the JSON property `toDeployment`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment]
        attr_accessor :to_deployment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @environment_group = args[:environment_group] if args.key?(:environment_group)
          @from_deployment = args[:from_deployment] if args.key?(:from_deployment)
          @should_sequence_rollout = args[:should_sequence_rollout] if args.key?(:should_sequence_rollout)
          @to_deployment = args[:to_deployment] if args.key?(:to_deployment)
        end
      end
      
      # Describes a routing conflict that may cause a deployment not to receive
      # traffic at some base path.
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
        include Google::Apis::Core::Hashable
      
        # Tuple representing a base path and the deployment containing it.
        # Corresponds to the JSON property `conflictingDeployment`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment]
        attr_accessor :conflicting_deployment
      
        # Human-readable description of this conflict.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the environment group in which this conflict exists.
        # Corresponds to the JSON property `environmentGroup`
        # @return [String]
        attr_accessor :environment_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_deployment = args[:conflicting_deployment] if args.key?(:conflicting_deployment)
          @description = args[:description] if args.key?(:description)
          @environment_group = args[:environment_group] if args.key?(:environment_group)
        end
      end
      
      # Tuple representing a base path and the deployment containing it.
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
        include Google::Apis::Core::Hashable
      
        # Name of the deployed API proxy revision containing the base path.
        # Corresponds to the JSON property `apiProxy`
        # @return [String]
        attr_accessor :api_proxy
      
        # Base path receiving traffic.
        # Corresponds to the JSON property `basepath`
        # @return [String]
        attr_accessor :basepath
      
        # Name of the environment in which the proxy is deployed.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Name of the deployed API proxy revision containing the base path.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy = args[:api_proxy] if args.key?(:api_proxy)
          @basepath = args[:basepath] if args.key?(:basepath)
          @environment = args[:environment] if args.key?(:environment)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # NEXT ID: 11
      class GoogleCloudApigeeV1DeploymentConfig
        include Google::Apis::Core::Hashable
      
        # Additional key-value metadata for the deployment.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Base path where the application will be hosted. Defaults to "/".
        # Corresponds to the JSON property `basePath`
        # @return [String]
        attr_accessor :base_path
      
        # The list of deployment groups in which this proxy should be deployed. Not
        # currently populated for shared flows.
        # Corresponds to the JSON property `deploymentGroups`
        # @return [Array<String>]
        attr_accessor :deployment_groups
      
        # A mapping from basepaths to proxy endpoint names in this proxy. Not populated
        # for shared flows.
        # Corresponds to the JSON property `endpoints`
        # @return [Hash<String,String>]
        attr_accessor :endpoints
      
        # Location of the API proxy bundle as a URI.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the API or shared flow revision to be deployed in the following format:
        # `organizations/`org`/apis/`api`/revisions/`rev`` or `organizations/`org`/
        # sharedflows/`sharedflow`/revisions/`rev``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Unique ID of the API proxy revision.
        # Corresponds to the JSON property `proxyUid`
        # @return [String]
        attr_accessor :proxy_uid
      
        # The service account identity associated with this deployment. If non-empty,
        # will be in the following format: `projects/-/serviceAccounts/`account_email``
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Unique ID. The ID will only change if the deployment is deleted and recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @base_path = args[:base_path] if args.key?(:base_path)
          @deployment_groups = args[:deployment_groups] if args.key?(:deployment_groups)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @proxy_uid = args[:proxy_uid] if args.key?(:proxy_uid)
          @service_account = args[:service_account] if args.key?(:service_account)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # DeploymentGroupConfig represents a deployment group that should be present in
      # a particular environment.
      class GoogleCloudApigeeV1DeploymentGroupConfig
        include Google::Apis::Core::Hashable
      
        # Type of the deployment group, which will be either Standard or Extensible.
        # Corresponds to the JSON property `deploymentGroupType`
        # @return [String]
        attr_accessor :deployment_group_type
      
        # Name of the deployment group in the following format: `organizations/`org`/
        # environments/`env`/deploymentGroups/`group``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Revision number which can be used by the runtime to detect if the deployment
        # group has changed between two versions.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # Unique ID. The ID will only change if the deployment group is deleted and
        # recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_group_type = args[:deployment_group_type] if args.key?(:deployment_group_type)
          @name = args[:name] if args.key?(:name)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Developer
        include Google::Apis::Core::Hashable
      
        # Access type.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Developer app family.
        # Corresponds to the JSON property `appFamily`
        # @return [String]
        attr_accessor :app_family
      
        # List of apps associated with the developer.
        # Corresponds to the JSON property `apps`
        # @return [Array<String>]
        attr_accessor :apps
      
        # Optional. Developer attributes (name/value pairs). The custom attribute limit
        # is 18.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # List of companies associated with the developer.
        # Corresponds to the JSON property `companies`
        # @return [Array<String>]
        attr_accessor :companies
      
        # Output only. Time at which the developer was created in milliseconds since
        # epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # ID of the developer. **Note**: IDs are generated internally by Apigee and are
        # not guaranteed to stay the same over time.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Required. Email address of the developer. This value is used to uniquely
        # identify the developer in Apigee hybrid. Note that the email address has to be
        # in lowercase only.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. First name of the developer.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # Output only. Time at which the developer was last modified in milliseconds
        # since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Required. Last name of the developer.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Output only. Name of the Apigee organization in which the developer resides.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # Output only. Status of the developer. Valid values are `active` and `inactive`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Required. User name of the developer. Not used by Apigee hybrid.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @app_family = args[:app_family] if args.key?(:app_family)
          @apps = args[:apps] if args.key?(:apps)
          @attributes = args[:attributes] if args.key?(:attributes)
          @companies = args[:companies] if args.key?(:companies)
          @created_at = args[:created_at] if args.key?(:created_at)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @last_name = args[:last_name] if args.key?(:last_name)
          @organization_name = args[:organization_name] if args.key?(:organization_name)
          @status = args[:status] if args.key?(:status)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeveloperApp
        include Google::Apis::Core::Hashable
      
        # List of API products associated with the developer app.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<String>]
        attr_accessor :api_products
      
        # Developer app family.
        # Corresponds to the JSON property `appFamily`
        # @return [String]
        attr_accessor :app_family
      
        # ID of the developer app. This ID is not user specified but is automatically
        # generated on app creation. appId is a UUID.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # List of attributes for the developer app.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Callback URL used by OAuth 2.0 authorization servers to communicate
        # authorization codes back to developer apps.
        # Corresponds to the JSON property `callbackUrl`
        # @return [String]
        attr_accessor :callback_url
      
        # Output only. Time the developer app was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Output only. Set of credentials for the developer app consisting of the
        # consumer key/secret pairs associated with the API products.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential>]
        attr_accessor :credentials
      
        # ID of the developer.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Expiration time, in milliseconds, for the consumer key that is generated for
        # the developer app. If not set or left to the default value of `-1`, the API
        # key never expires. The expiration time can't be updated after it is set.
        # Corresponds to the JSON property `keyExpiresIn`
        # @return [Fixnum]
        attr_accessor :key_expires_in
      
        # Output only. Time the developer app was modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the developer app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Scopes to apply to the developer app. The specified scopes must already exist
        # for the API product that you associate with the developer app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_family = args[:app_family] if args.key?(:app_family)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @callback_url = args[:callback_url] if args.key?(:callback_url)
          @created_at = args[:created_at] if args.key?(:created_at)
          @credentials = args[:credentials] if args.key?(:credentials)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @key_expires_in = args[:key_expires_in] if args.key?(:key_expires_in)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeveloperAppKey
        include Google::Apis::Core::Hashable
      
        # List of API products for which the credential can be used. **Note**: Do not
        # specify the list of API products when creating a consumer key and secret for a
        # developer app. Instead, use the UpdateDeveloperAppKey API to make the
        # association after the consumer key and secret are created.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Object>]
        attr_accessor :api_products
      
        # List of attributes associated with the credential.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Consumer key.
        # Corresponds to the JSON property `consumerKey`
        # @return [String]
        attr_accessor :consumer_key
      
        # Secret key.
        # Corresponds to the JSON property `consumerSecret`
        # @return [String]
        attr_accessor :consumer_secret
      
        # Time the developer app expires in milliseconds since epoch.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Input only. Expiration time, in seconds, for the consumer key. If not set or
        # left to the default value of `-1`, the API key never expires. The expiration
        # time can't be updated after it is set.
        # Corresponds to the JSON property `expiresInSeconds`
        # @return [Fixnum]
        attr_accessor :expires_in_seconds
      
        # Time the developer app was created in milliseconds since epoch.
        # Corresponds to the JSON property `issuedAt`
        # @return [Fixnum]
        attr_accessor :issued_at
      
        # Scopes to apply to the app. The specified scope names must already be defined
        # for the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer_key = args[:consumer_key] if args.key?(:consumer_key)
          @consumer_secret = args[:consumer_secret] if args.key?(:consumer_secret)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @expires_in_seconds = args[:expires_in_seconds] if args.key?(:expires_in_seconds)
          @issued_at = args[:issued_at] if args.key?(:issued_at)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Account balance for the developer.
      class GoogleCloudApigeeV1DeveloperBalance
        include Google::Apis::Core::Hashable
      
        # Output only. List of all wallets. Each individual wallet stores the account
        # balance for a particular currency.
        # Corresponds to the JSON property `wallets`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalanceWallet>]
        attr_accessor :wallets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wallets = args[:wallets] if args.key?(:wallets)
        end
      end
      
      # Wallet used to manage an account balance for a particular currency.
      class GoogleCloudApigeeV1DeveloperBalanceWallet
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `balance`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :balance
      
        # Output only. Time at which the developer last added credit to the account in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastCreditTime`
        # @return [Fixnum]
        attr_accessor :last_credit_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balance = args[:balance] if args.key?(:balance)
          @last_credit_time = args[:last_credit_time] if args.key?(:last_credit_time)
        end
      end
      
      # Monetization configuration for the developer.
      class GoogleCloudApigeeV1DeveloperMonetizationConfig
        include Google::Apis::Core::Hashable
      
        # Billing type.
        # Corresponds to the JSON property `billingType`
        # @return [String]
        attr_accessor :billing_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_type = args[:billing_type] if args.key?(:billing_type)
        end
      end
      
      # Structure of a DeveloperSubscription.
      class GoogleCloudApigeeV1DeveloperSubscription
        include Google::Apis::Core::Hashable
      
        # Name of the API product for which the developer is purchasing a subscription.
        # Corresponds to the JSON property `apiproduct`
        # @return [String]
        attr_accessor :apiproduct
      
        # Output only. Time when the API product subscription was created in
        # milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Time when the API product subscription ends in milliseconds since epoch.
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # Output only. Time when the API product subscription was last modified in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Name of the API product subscription.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Time when the API product subscription starts in milliseconds since epoch.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apiproduct = args[:apiproduct] if args.key?(:apiproduct)
          @created_at = args[:created_at] if args.key?(:created_at)
          @end_time = args[:end_time] if args.key?(:end_time)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Encapsulates a metric grouped by dimension.
      class GoogleCloudApigeeV1DimensionMetric
        include Google::Apis::Core::Hashable
      
        # Individual dimension names. E.g. ["dim1_name", "dim2_name"].
        # Corresponds to the JSON property `individualNames`
        # @return [Array<String>]
        attr_accessor :individual_names
      
        # List of metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric>]
        attr_accessor :metrics
      
        # Comma joined dimension names. E.g. "dim1_name,dim2_name". Deprecated. If name
        # already has comma before join, we may get wrong splits. Please use
        # individual_names.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @individual_names = args[:individual_names] if args.key?(:individual_names)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message to disable an enabled SecurityAction.
      class GoogleCloudApigeeV1DisableSecurityActionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A DNS zone is a resource under an Apigee organization that is used to create a
      # DNS peering with Apigee's network. DNS peering will let Apigee instances
      # resolve the hostnames created in a peered network.
      class GoogleCloudApigeeV1DnsZone
        include Google::Apis::Core::Hashable
      
        # Output only. The time that this resource was created on the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Description of the resource. String of at most 1024 characters
        # associated with this resource for the user's convenience.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The domain name for hosts in this private zone, for instance "
        # example.com.".
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Identifier. Unique name for the resource. Defined by the server Format: "
        # organizations/`organization`/dnsZones/`dns_zone`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Fields for DNS PEERING zone.
        # Corresponds to the JSON property `peeringConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZonePeeringConfig]
        attr_accessor :peering_config
      
        # Output only. State of the DNS Peering. Values other than `ACTIVE` mean the
        # resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time that this resource was updated on the server.
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
          @domain = args[:domain] if args.key?(:domain)
          @name = args[:name] if args.key?(:name)
          @peering_config = args[:peering_config] if args.key?(:peering_config)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Fields for DNS PEERING zone.
      class GoogleCloudApigeeV1DnsZonePeeringConfig
        include Google::Apis::Core::Hashable
      
        # Required. The VPC network where the records for that private DNS zone's
        # namespace are available. Apigee will be performing DNS peering with this VPC
        # network.
        # Corresponds to the JSON property `targetNetworkId`
        # @return [String]
        attr_accessor :target_network_id
      
        # Required. The ID of the project that contains the producer VPC network.
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_network_id = args[:target_network_id] if args.key?(:target_network_id)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
        end
      end
      
      # Documentation file contents for a catalog item.
      class GoogleCloudApigeeV1DocumentationFile
        include Google::Apis::Core::Hashable
      
        # Required. The file contents. The max size is 4 MB.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Required. A display name for the file, shown in the management UI. Max length
        # is 255 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Message to enable a disabled SecurityAction.
      class GoogleCloudApigeeV1EnableSecurityActionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Apigee endpoint attachment. For more information, see [Southbound networking
      # patterns] (https://cloud.google.com/apigee/docs/api-platform/architecture/
      # southbound-networking-patterns-endpoints).
      class GoogleCloudApigeeV1EndpointAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. State of the endpoint attachment connection to the service
        # attachment.
        # Corresponds to the JSON property `connectionState`
        # @return [String]
        attr_accessor :connection_state
      
        # Output only. Host that can be used in either the HTTP target endpoint directly
        # or as the host in target server.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Required. Location of the endpoint attachment.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the endpoint attachment. Use the following structure in your request: `
        # organizations/`org`/endpointAttachments/`endpoint_attachment``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Format: projects/*/regions/*/serviceAttachments/*
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        # Output only. State of the endpoint attachment. Values other than `ACTIVE` mean
        # the resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_state = args[:connection_state] if args.key?(:connection_state)
          @host = args[:host] if args.key?(:host)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # EndpointChainingRule specifies the proxies contained in a particular
      # deployment group, so that other deployment groups can find them in chaining
      # calls.
      class GoogleCloudApigeeV1EndpointChainingRule
        include Google::Apis::Core::Hashable
      
        # The deployment group to target for cross-shard chaining calls to these proxies.
        # Corresponds to the JSON property `deploymentGroup`
        # @return [String]
        attr_accessor :deployment_group
      
        # List of proxy ids which may be found in the given deployment group.
        # Corresponds to the JSON property `proxyIds`
        # @return [Array<String>]
        attr_accessor :proxy_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_group = args[:deployment_group] if args.key?(:deployment_group)
          @proxy_ids = args[:proxy_ids] if args.key?(:proxy_ids)
        end
      end
      
      # Metadata common to many entities in this API.
      class GoogleCloudApigeeV1EntityMetadata
        include Google::Apis::Core::Hashable
      
        # Time at which the API proxy was created, in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Time at which the API proxy was most recently modified, in milliseconds since
        # epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # The type of entity described
        # Corresponds to the JSON property `subType`
        # @return [String]
        attr_accessor :sub_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @sub_type = args[:sub_type] if args.key?(:sub_type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Environment
        include Google::Apis::Core::Hashable
      
        # Optional. API Proxy type supported by the environment. The type can be set
        # when creating the Environment and cannot be changed.
        # Corresponds to the JSON property `apiProxyType`
        # @return [String]
        attr_accessor :api_proxy_type
      
        # Configuration for resolving the client ip.
        # Corresponds to the JSON property `clientIpResolutionConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig]
        attr_accessor :client_ip_resolution_config
      
        # Output only. Creation time of this environment as milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Optional. Deployment type supported by the environment. The deployment type
        # can be set when creating the environment and cannot be changed. When you
        # enable archive deployment, you will be **prevented from performing** a [subset
        # of actions](/apigee/docs/api-platform/local-development/overview#prevented-
        # actions) within the environment, including: * Managing the deployment of API
        # proxy or shared flow revisions * Creating, updating, or deleting resource
        # files * Creating, updating, or deleting target servers
        # Corresponds to the JSON property `deploymentType`
        # @return [String]
        attr_accessor :deployment_type
      
        # Optional. Description of the environment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Display name for this environment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. URI of the forward proxy to be applied to the runtime instances in
        # this environment. Must be in the format of `scheme`://`hostname`:`port`. Note
        # that the only supported scheme is "http". The port must be supplied. To remove
        # a forward proxy setting, update the field to an empty value. Note: At this
        # time, PUT operations to add forwardProxyUri to an existing environment fail if
        # the environment has nodeConfig set up. To successfully add the forwardProxyUri
        # setting in this case, include the NodeConfig details with the request.
        # Corresponds to the JSON property `forwardProxyUri`
        # @return [String]
        attr_accessor :forward_proxy_uri
      
        # 
        # Corresponds to the JSON property `hasAttachedFlowHooks`
        # @return [Boolean]
        attr_accessor :has_attached_flow_hooks
        alias_method :has_attached_flow_hooks?, :has_attached_flow_hooks
      
        # Output only. Last modification time of this environment as milliseconds since
        # epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Required. Name of the environment. Values must match the regular expression `^[
        # .\\p`Alnum`-_]`1,255`$`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NodeConfig for setting the min/max number of nodes associated with the
        # environment.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1NodeConfig]
        attr_accessor :node_config
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        # Output only. State of the environment. Values other than ACTIVE means the
        # resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. EnvironmentType selected for the environment.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy_type = args[:api_proxy_type] if args.key?(:api_proxy_type)
          @client_ip_resolution_config = args[:client_ip_resolution_config] if args.key?(:client_ip_resolution_config)
          @created_at = args[:created_at] if args.key?(:created_at)
          @deployment_type = args[:deployment_type] if args.key?(:deployment_type)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @forward_proxy_uri = args[:forward_proxy_uri] if args.key?(:forward_proxy_uri)
          @has_attached_flow_hooks = args[:has_attached_flow_hooks] if args.key?(:has_attached_flow_hooks)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @node_config = args[:node_config] if args.key?(:node_config)
          @properties = args[:properties] if args.key?(:properties)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for resolving the client ip.
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig
        include Google::Apis::Core::Hashable
      
        # Resolves the client ip based on a custom header.
        # Corresponds to the JSON property `headerIndexAlgorithm`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm]
        attr_accessor :header_index_algorithm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header_index_algorithm = args[:header_index_algorithm] if args.key?(:header_index_algorithm)
        end
      end
      
      # Resolves the client ip based on a custom header.
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm
        include Google::Apis::Core::Hashable
      
        # Required. The index of the ip in the header. Positive indices 0, 1, 2, 3
        # chooses indices from the left (first ips) Negative indices -1, -2, -3 chooses
        # indices from the right (last ips)
        # Corresponds to the JSON property `ipHeaderIndex`
        # @return [Fixnum]
        attr_accessor :ip_header_index
      
        # Required. The name of the header to extract the client ip from. We are
        # currently only supporting the X-Forwarded-For header.
        # Corresponds to the JSON property `ipHeaderName`
        # @return [String]
        attr_accessor :ip_header_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_header_index = args[:ip_header_index] if args.key?(:ip_header_index)
          @ip_header_name = args[:ip_header_name] if args.key?(:ip_header_name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1EnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # RuntimeAddonsConfig defines the runtime configurations for add-ons in an
        # environment.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAddonsConfig]
        attr_accessor :addons_config
      
        # The location for the config blob of API Runtime Control, aka Envoy Adapter,
        # for op-based authentication as a URI, e.g. a Cloud Storage URI. This is only
        # used by Envoy-based gateways.
        # Corresponds to the JSON property `arcConfigLocation`
        # @return [String]
        attr_accessor :arc_config_location
      
        # Configuration for resolving the client ip.
        # Corresponds to the JSON property `clientIpResolutionConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig]
        attr_accessor :client_ip_resolution_config
      
        # Time that the environment configuration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # List of data collectors used by the deployments in the environment.
        # Corresponds to the JSON property `dataCollectors`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollectorConfig>]
        attr_accessor :data_collectors
      
        # Debug mask that applies to all deployments in the environment.
        # Corresponds to the JSON property `debugMask`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask]
        attr_accessor :debug_mask
      
        # List of deployment groups in the environment.
        # Corresponds to the JSON property `deploymentGroups`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentGroupConfig>]
        attr_accessor :deployment_groups
      
        # List of deployments in the environment.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentConfig>]
        attr_accessor :deployments
      
        # Revision ID for environment-scoped resources (e.g. target servers, keystores)
        # in this config. This ID will increment any time a resource not scoped to a
        # deployment group changes.
        # Corresponds to the JSON property `envScopedRevisionId`
        # @return [Fixnum]
        attr_accessor :env_scoped_revision_id
      
        # Feature flags inherited from the organization and environment.
        # Corresponds to the JSON property `featureFlags`
        # @return [Hash<String,String>]
        attr_accessor :feature_flags
      
        # List of flow hooks in the environment.
        # Corresponds to the JSON property `flowhooks`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHookConfig>]
        attr_accessor :flowhooks
      
        # The forward proxy's url to be used by the runtime. When set, runtime will send
        # requests to the target via the given forward proxy. This is only used by
        # programmable gateways.
        # Corresponds to the JSON property `forwardProxyUri`
        # @return [String]
        attr_accessor :forward_proxy_uri
      
        # The location for the gateway config blob as a URI, e.g. a Cloud Storage URI.
        # This is only used by Envoy-based gateways.
        # Corresponds to the JSON property `gatewayConfigLocation`
        # @return [String]
        attr_accessor :gateway_config_location
      
        # List of keystores in the environment.
        # Corresponds to the JSON property `keystores`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeystoreConfig>]
        attr_accessor :keystores
      
        # Name of the environment configuration in the following format: `organizations/`
        # org`/environments/`env`/configs/`config``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Used by the Control plane to add context information to help detect the source
        # of the document during diagnostics and debugging.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Name of the PubSub topic for the environment.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # List of resource references in the environment.
        # Corresponds to the JSON property `resourceReferences`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReferenceConfig>]
        attr_accessor :resource_references
      
        # List of resource versions in the environment.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceConfig>]
        attr_accessor :resources
      
        # Revision ID of the environment configuration. The higher the value, the more
        # recently the configuration was deployed.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # DEPRECATED: Use revision_id.
        # Corresponds to the JSON property `sequenceNumber`
        # @return [Fixnum]
        attr_accessor :sequence_number
      
        # List of target servers in the environment. Disabled target servers are not
        # displayed.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServerConfig>]
        attr_accessor :targets
      
        # NEXT ID: 8 RuntimeTraceConfig defines the configurations for distributed trace
        # in an environment.
        # Corresponds to the JSON property `traceConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfig]
        attr_accessor :trace_config
      
        # Unique ID for the environment configuration. The ID will only change if the
        # environment is deleted and recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @arc_config_location = args[:arc_config_location] if args.key?(:arc_config_location)
          @client_ip_resolution_config = args[:client_ip_resolution_config] if args.key?(:client_ip_resolution_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_collectors = args[:data_collectors] if args.key?(:data_collectors)
          @debug_mask = args[:debug_mask] if args.key?(:debug_mask)
          @deployment_groups = args[:deployment_groups] if args.key?(:deployment_groups)
          @deployments = args[:deployments] if args.key?(:deployments)
          @env_scoped_revision_id = args[:env_scoped_revision_id] if args.key?(:env_scoped_revision_id)
          @feature_flags = args[:feature_flags] if args.key?(:feature_flags)
          @flowhooks = args[:flowhooks] if args.key?(:flowhooks)
          @forward_proxy_uri = args[:forward_proxy_uri] if args.key?(:forward_proxy_uri)
          @gateway_config_location = args[:gateway_config_location] if args.key?(:gateway_config_location)
          @keystores = args[:keystores] if args.key?(:keystores)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @resource_references = args[:resource_references] if args.key?(:resource_references)
          @resources = args[:resources] if args.key?(:resources)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
          @targets = args[:targets] if args.key?(:targets)
          @trace_config = args[:trace_config] if args.key?(:trace_config)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Configuration for resolving the client ip.
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig
        include Google::Apis::Core::Hashable
      
        # Resolves the client ip based on a custom header.
        # Corresponds to the JSON property `headerIndexAlgorithm`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm]
        attr_accessor :header_index_algorithm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header_index_algorithm = args[:header_index_algorithm] if args.key?(:header_index_algorithm)
        end
      end
      
      # Resolves the client ip based on a custom header.
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm
        include Google::Apis::Core::Hashable
      
        # The index of the ip in the header. (By default, value is 0 if missing)
        # Corresponds to the JSON property `ipHeaderIndex`
        # @return [Fixnum]
        attr_accessor :ip_header_index
      
        # The name of the header to extract the client ip from.
        # Corresponds to the JSON property `ipHeaderName`
        # @return [String]
        attr_accessor :ip_header_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_header_index = args[:ip_header_index] if args.key?(:ip_header_index)
          @ip_header_name = args[:ip_header_name] if args.key?(:ip_header_name)
        end
      end
      
      # EnvironmentGroup configuration. An environment group is used to group one or
      # more Apigee environments under a single host name.
      class GoogleCloudApigeeV1EnvironmentGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the environment group was created as
        # milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Required. Host names for this environment group.
        # Corresponds to the JSON property `hostnames`
        # @return [Array<String>]
        attr_accessor :hostnames
      
        # Output only. The time at which the environment group was last updated as
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # ID of the environment group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the environment group. Values other than ACTIVE means
        # the resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @hostnames = args[:hostnames] if args.key?(:hostnames)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # EnvironmentGroupAttachment is a resource which defines an attachment of an
      # environment to an environment group.
      class GoogleCloudApigeeV1EnvironmentGroupAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the environment group attachment was created as
        # milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Required. ID of the attached environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Output only. ID of the environment group.
        # Corresponds to the JSON property `environmentGroupId`
        # @return [String]
        attr_accessor :environment_group_id
      
        # ID of the environment group attachment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @environment = args[:environment] if args.key?(:environment)
          @environment_group_id = args[:environment_group_id] if args.key?(:environment_group_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # EnvironmentGroupConfig is a revisioned snapshot of an EnvironmentGroup and its
      # associated routing rules.
      class GoogleCloudApigeeV1EnvironmentGroupConfig
        include Google::Apis::Core::Hashable
      
        # A list of proxies in each deployment group for proxy chaining calls.
        # Corresponds to the JSON property `endpointChainingRules`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointChainingRule>]
        attr_accessor :endpoint_chaining_rules
      
        # Host names for the environment group.
        # Corresponds to the JSON property `hostnames`
        # @return [Array<String>]
        attr_accessor :hostnames
      
        # When this message appears in the top-level IngressConfig, this field will be
        # populated in lieu of the inlined routing_rules and hostnames fields. Some URL
        # for downloading the full EnvironmentGroupConfig for this group.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the environment group in the following format: `organizations/`org`/
        # envgroups/`envgroup``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Revision id that defines the ordering of the EnvironmentGroupConfig resource.
        # The higher the revision, the more recently the configuration was deployed.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # Ordered list of routing rules defining how traffic to this environment group's
        # hostnames should be routed to different environments.
        # Corresponds to the JSON property `routingRules`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RoutingRule>]
        attr_accessor :routing_rules
      
        # A unique id for the environment group config that will only change if the
        # environment group is deleted and recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_chaining_rules = args[:endpoint_chaining_rules] if args.key?(:endpoint_chaining_rules)
          @hostnames = args[:hostnames] if args.key?(:hostnames)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @routing_rules = args[:routing_rules] if args.key?(:routing_rules)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Request for ExpireDeveloperSubscription.
      class GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details of an export job.
      class GoogleCloudApigeeV1Export
        include Google::Apis::Core::Hashable
      
        # Output only. Time the export job was created.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # Name of the datastore that is the destination of the export job [datastore]
        # Corresponds to the JSON property `datastoreName`
        # @return [String]
        attr_accessor :datastore_name
      
        # Description of the export job.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Error is set when export fails
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. Execution time for this export job. If the job is still in
        # progress, it will be set to the amount of time that has elapsed since`created`,
        # in seconds. Else, it will set to (`updated` - `created`), in seconds.
        # Corresponds to the JSON property `executionTime`
        # @return [String]
        attr_accessor :execution_time
      
        # Display name of the export job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Self link of the export job. A URI that can be used to retrieve
        # the status of an export job. Example: `/organizations/myorg/environments/myenv/
        # analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        # Output only. Status of the export job. Valid values include `enqueued`, `
        # running`, `completed`, and `failed`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Time the export job was last updated.
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] if args.key?(:created)
          @datastore_name = args[:datastore_name] if args.key?(:datastore_name)
          @description = args[:description] if args.key?(:description)
          @error = args[:error] if args.key?(:error)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @name = args[:name] if args.key?(:name)
          @self = args[:self] if args.key?(:self)
          @state = args[:state] if args.key?(:state)
          @updated = args[:updated] if args.key?(:updated)
        end
      end
      
      # Request body for [CreateExportRequest]
      class GoogleCloudApigeeV1ExportRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Delimiter used in the CSV file, if `outputFormat` is set to `csv`.
        # Defaults to the `,` (comma) character. Supported delimiter characters include
        # comma (`,`), pipe (`|`), and tab (`\t`).
        # Corresponds to the JSON property `csvDelimiter`
        # @return [String]
        attr_accessor :csv_delimiter
      
        # Required. Name of the preconfigured datastore.
        # Corresponds to the JSON property `datastoreName`
        # @return [String]
        attr_accessor :datastore_name
      
        # Date range of the data to export.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DateRange]
        attr_accessor :date_range
      
        # Optional. Description of the export job.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the export job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Output format of the export. Valid values include: `csv` or `json`.
        # Defaults to `json`. Note: Configure the delimiter for CSV output using the `
        # csvDelimiter` property.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_delimiter = args[:csv_delimiter] if args.key?(:csv_delimiter)
          @datastore_name = args[:datastore_name] if args.key?(:datastore_name)
          @date_range = args[:date_range] if args.key?(:date_range)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @output_format = args[:output_format] if args.key?(:output_format)
        end
      end
      
      # 
      class GoogleCloudApigeeV1FlowHook
        include Google::Apis::Core::Hashable
      
        # Optional. Flag that specifies whether execution should continue if the flow
        # hook throws an exception. Set to `true` to continue execution. Set to `false`
        # to stop execution if the flow hook throws an exception. Defaults to `true`.
        # Corresponds to the JSON property `continueOnError`
        # @return [Boolean]
        attr_accessor :continue_on_error
        alias_method :continue_on_error?, :continue_on_error
      
        # Description of the flow hook.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Where in the API call flow the flow hook is invoked. Must be one
        # of `PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, or `
        # PostTargetFlowHook`.
        # Corresponds to the JSON property `flowHookPoint`
        # @return [String]
        attr_accessor :flow_hook_point
      
        # Shared flow attached to this flow hook, or empty if there is none attached.
        # Corresponds to the JSON property `sharedFlow`
        # @return [String]
        attr_accessor :shared_flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_error = args[:continue_on_error] if args.key?(:continue_on_error)
          @description = args[:description] if args.key?(:description)
          @flow_hook_point = args[:flow_hook_point] if args.key?(:flow_hook_point)
          @shared_flow = args[:shared_flow] if args.key?(:shared_flow)
        end
      end
      
      # 
      class GoogleCloudApigeeV1FlowHookConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the flow should abort after an error in the flow
        # hook. Defaults to `true` (continue on error).
        # Corresponds to the JSON property `continueOnError`
        # @return [Boolean]
        attr_accessor :continue_on_error
        alias_method :continue_on_error?, :continue_on_error
      
        # Name of the flow hook in the following format: `organizations/`org`/
        # environments/`env`/flowhooks/`point``. Valid `point` values include: `
        # PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, and `
        # PostTargetFlowHook`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the shared flow to invoke in the following format: `organizations/`org`
        # /sharedflows/`sharedflow``
        # Corresponds to the JSON property `sharedFlowName`
        # @return [String]
        attr_accessor :shared_flow_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_error = args[:continue_on_error] if args.key?(:continue_on_error)
          @name = args[:name] if args.key?(:name)
          @shared_flow_name = args[:shared_flow_name] if args.key?(:shared_flow_name)
        end
      end
      
      # Request for GenerateDownloadUrl method.
      class GoogleCloudApigeeV1GenerateDownloadUrlRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for GenerateDownloadUrl method.
      class GoogleCloudApigeeV1GenerateDownloadUrlResponse
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage signed URL that can be used to download the Archive
        # zip file.
        # Corresponds to the JSON property `downloadUri`
        # @return [String]
        attr_accessor :download_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_uri = args[:download_uri] if args.key?(:download_uri)
        end
      end
      
      # Request for GenerateUploadUrl method.
      class GoogleCloudApigeeV1GenerateUploadUrlRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for GenerateUploadUrl method.
      class GoogleCloudApigeeV1GenerateUploadUrlResponse
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage signed URL that can be used to upload a new Archive
        # zip file.
        # Corresponds to the JSON property `uploadUri`
        # @return [String]
        attr_accessor :upload_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upload_uri = args[:upload_uri] if args.key?(:upload_uri)
        end
      end
      
      # The response for GetAsyncQueryResultUrl
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse
        include Google::Apis::Core::Hashable
      
        # The list of Signed URLs generated by the CreateAsyncQuery request
        # Corresponds to the JSON property `urls`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # A Signed URL and the relevant metadata associated with it.
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo
        include Google::Apis::Core::Hashable
      
        # The MD5 Hash of the JSON data
        # Corresponds to the JSON property `md5`
        # @return [String]
        attr_accessor :md5
      
        # The size of the returned file in bytes
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # The signed URL of the JSON data. Will be of the form `https://storage.
        # googleapis.com/example-bucket/cat.jpeg?X-Goog-Algorithm= GOOG4-RSA-SHA256&X-
        # Goog-Credential=example%40example-project.iam.gserviceaccount .com%2F20181026%
        # 2Fus-central1%2Fstorage%2Fgoog4_request&X-Goog-Date=20181026T18 1309Z&X-Goog-
        # Expires=900&X-Goog-SignedHeaders=host&X-Goog-Signature=247a2aa45f16
        # df4d187d54e7cc46e4731b1e6273242c4f4c39a1d2507a0e58706e25e3a85a7dbb891d62afa849
        # ef8e260c1db863d9ace85ff0a184b894b117fe46d1225c82f2aa19efd52cf21d3e2022b3b868dc
        # aca2741951ed5bf3bb25a34f5e9316a2841e8ff4c530b22ceaa1c5ce09c7cbb5732631510c2058
        # 61723f5594de3aea497f195456a2ff2bdd0d13bad47289d8611b6f9cfeef0c46c91a455b94e90a
        # 924f722292d21e24d31dcfb38ce0c0f353ffa5a9756fc2a9f2b40bc2113206a81e324fc4fd6823
        # 9163fa845c8ae7eca1fcf6e5bb48b3200983c56c5ca81fffb151cca7402beddfc4a76b13344703
        # 2ea7abedc098d2eb14a7`
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @md5 = args[:md5] if args.key?(:md5)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Request for GetSyncAuthorization.
      class GoogleCloudApigeeV1GetSyncAuthorizationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents the pairing of GraphQL operation types and the GraphQL operation
      # name.
      class GoogleCloudApigeeV1GraphQlOperation
        include Google::Apis::Core::Hashable
      
        # GraphQL operation name. The name and operation type will be used to apply
        # quotas. If no name is specified, the quota will be applied to all GraphQL
        # operations irrespective of their operation names in the payload.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Required. GraphQL operation types. Valid values include `query` or `mutation`.
        # **Note**: Apigee does not currently support `subscription` types.
        # Corresponds to the JSON property `operationTypes`
        # @return [Array<String>]
        attr_accessor :operation_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @operation_types = args[:operation_types] if args.key?(:operation_types)
        end
      end
      
      # Binds the resources in a proxy or remote service with the GraphQL operation
      # and its associated quota enforcement.
      class GoogleCloudApigeeV1GraphQlOperationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the API proxy endpoint or remote service with which the
        # GraphQL operation and quota are associated.
        # Corresponds to the JSON property `apiSource`
        # @return [String]
        attr_accessor :api_source
      
        # Custom attributes associated with the operation.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Required. List of GraphQL name/operation type pairs for the proxy or remote
        # service to which quota will be applied. If only operation types are specified,
        # the quota will be applied to all GraphQL requests irrespective of the GraphQL
        # name. **Note**: Currently, you can specify only a single GraphQLOperation.
        # Specifying more than one will cause the operation to fail.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperation>]
        attr_accessor :operations
      
        # Quota contains the essential parameters needed that can be applied on the
        # resources, methods, API source combination associated with this API product.
        # While Quota is optional, setting it prevents requests from exceeding the
        # provisioned parameters.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota]
        attr_accessor :quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_source = args[:api_source] if args.key?(:api_source)
          @attributes = args[:attributes] if args.key?(:attributes)
          @operations = args[:operations] if args.key?(:operations)
          @quota = args[:quota] if args.key?(:quota)
        end
      end
      
      # List of graphQL operation configuration details associated with Apigee API
      # proxies or remote services. Remote services are non-Apigee proxies, such as
      # Istio-Envoy.
      class GoogleCloudApigeeV1GraphQlOperationGroup
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the configuration is for Apigee API proxy or a
        # remote service. Valid values include `proxy` or `remoteservice`. Defaults to `
        # proxy`. Set to `proxy` when Apigee API proxies are associated with the API
        # product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are
        # associated with the API product.
        # Corresponds to the JSON property `operationConfigType`
        # @return [String]
        attr_accessor :operation_config_type
      
        # Required. List of operation configurations for either Apigee API proxies or
        # other remote services that are associated with this API product.
        # Corresponds to the JSON property `operationConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationConfig>]
        attr_accessor :operation_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_config_type = args[:operation_config_type] if args.key?(:operation_config_type)
          @operation_configs = args[:operation_configs] if args.key?(:operation_configs)
        end
      end
      
      # GraphQL documentation for a catalog item.
      class GoogleCloudApigeeV1GraphqlDocumentation
        include Google::Apis::Core::Hashable
      
        # Required. The GraphQL endpoint URI to be queried by API consumers. Max length
        # is 2,083 characters.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Documentation file contents for a catalog item.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Binds the resources in a proxy or remote service with the gRPC operation and
      # its associated quota enforcement.
      class GoogleCloudApigeeV1GrpcOperationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the API proxy with which the gRPC operation and quota are
        # associated.
        # Corresponds to the JSON property `apiSource`
        # @return [String]
        attr_accessor :api_source
      
        # Custom attributes associated with the operation.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # List of unqualified gRPC method names for the proxy to which quota will be
        # applied. If this field is empty, the Quota will apply to all operations on the
        # gRPC service defined on the proxy. Example: Given a proxy that is configured
        # to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets
        # and com.petstore.PetService.GetPet would be specified here as simply ["
        # ListPets", "GetPet"].
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # Quota contains the essential parameters needed that can be applied on the
        # resources, methods, API source combination associated with this API product.
        # While Quota is optional, setting it prevents requests from exceeding the
        # provisioned parameters.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota]
        attr_accessor :quota
      
        # Required. gRPC Service name associated to be associated with the API proxy, on
        # which quota rules can be applied upon.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_source = args[:api_source] if args.key?(:api_source)
          @attributes = args[:attributes] if args.key?(:attributes)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @quota = args[:quota] if args.key?(:quota)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # List of gRPC operation configuration details associated with Apigee API
      # proxies.
      class GoogleCloudApigeeV1GrpcOperationGroup
        include Google::Apis::Core::Hashable
      
        # Required. List of operation configurations for either Apigee API proxies that
        # are associated with this API product.
        # Corresponds to the JSON property `operationConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationConfig>]
        attr_accessor :operation_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_configs = args[:operation_configs] if args.key?(:operation_configs)
        end
      end
      
      # 
      class GoogleCloudApigeeV1IngressConfig
        include Google::Apis::Core::Hashable
      
        # List of environment groups in the organization.
        # Corresponds to the JSON property `environmentGroups`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig>]
        attr_accessor :environment_groups
      
        # Name of the resource in the following format: `organizations/`org`/
        # deployedIngressConfig`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Time at which the IngressConfig revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Revision id that defines the ordering on IngressConfig resources. The higher
        # the revision, the more recently the configuration was deployed.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # A unique id for the ingress config that will only change if the organization
        # is deleted and recreated.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_groups = args[:environment_groups] if args.key?(:environment_groups)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Apigee runtime instance.
      class GoogleCloudApigeeV1Instance
        include Google::Apis::Core::Hashable
      
        # Access logging configuration enables customers to ship the access logs from
        # the tenant projects to their own project's cloud logging. The feature is at
        # the instance level ad disabled by default. It can be enabled during
        # CreateInstance or UpdateInstance.
        # Corresponds to the JSON property `accessLoggingConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessLoggingConfig]
        attr_accessor :access_logging_config
      
        # Optional. Customer accept list represents the list of projects (id/number) on
        # customer side that can privately connect to the service attachment. It is an
        # optional field which the customers can provide during the instance creation.
        # By default, the customer project associated with the Apigee organization will
        # be included to the list.
        # Corresponds to the JSON property `consumerAcceptList`
        # @return [Array<String>]
        attr_accessor :consumer_accept_list
      
        # Output only. Time the instance was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Optional. Description of the instance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Customer Managed Encryption Key (CMEK) used for disk and volume
        # encryption. If not specified, a Google-Managed encryption key will be used.
        # Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/
        # cryptoKeys/([^/]+)`
        # Corresponds to the JSON property `diskEncryptionKeyName`
        # @return [String]
        attr_accessor :disk_encryption_key_name
      
        # Optional. Display name for the instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Internal hostname or IP address of the Apigee endpoint used by
        # clients to connect to the service.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to
        # create the Apigee instance. Providing CIDR ranges is optional. You can provide
        # just /22 or /28 or both (or neither). Ranges you provide should be freely
        # available as part of a larger named range you have allocated to the Service
        # Networking peering. If this parameter is not provided, Apigee automatically
        # requests an available /22 and /28 CIDR block from Service Networking. Use the /
        # 22 CIDR block for configuring your firewall needs to allow traffic from Apigee.
        # Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
        # Corresponds to the JSON property `ipRange`
        # @return [String]
        attr_accessor :ip_range
      
        # Output only. Time the instance was last modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Required. Compute Engine location where the instance resides.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. Resource ID of the instance. Values must match the regular
        # expression `^a-z`0,30`[a-z\d]$`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Size of the CIDR block range that will be reserved by the instance.
        # PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`.
        # Evaluation organizations support only `SLASH_23`.
        # Corresponds to the JSON property `peeringCidrRange`
        # @return [String]
        attr_accessor :peering_cidr_range
      
        # Output only. Port number of the exposed Apigee endpoint.
        # Corresponds to the JSON property `port`
        # @return [String]
        attr_accessor :port
      
        # Output only. Version of the runtime system running in the instance. The
        # runtime system is the set of components that serve the API Proxy traffic in
        # your Environments.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Output only. Resource name of the service attachment created for the instance
        # in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers
        # can privately forward traffic to this service attachment using the PSC
        # endpoints.
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        # Output only. State of the instance. Values other than `ACTIVE` means the
        # resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_logging_config = args[:access_logging_config] if args.key?(:access_logging_config)
          @consumer_accept_list = args[:consumer_accept_list] if args.key?(:consumer_accept_list)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @disk_encryption_key_name = args[:disk_encryption_key_name] if args.key?(:disk_encryption_key_name)
          @display_name = args[:display_name] if args.key?(:display_name)
          @host = args[:host] if args.key?(:host)
          @ip_range = args[:ip_range] if args.key?(:ip_range)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @peering_cidr_range = args[:peering_cidr_range] if args.key?(:peering_cidr_range)
          @port = args[:port] if args.key?(:port)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # InstanceAttachment represents the installation of an environment onto an
      # instance.
      class GoogleCloudApigeeV1InstanceAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Time the attachment was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # ID of the attached environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Output only. ID of the attachment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @environment = args[:environment] if args.key?(:environment)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The status of a deployment as reported by a single instance.
      class GoogleCloudApigeeV1InstanceDeploymentStatus
        include Google::Apis::Core::Hashable
      
        # Revisions currently deployed in MPs.
        # Corresponds to the JSON property `deployedRevisions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>]
        attr_accessor :deployed_revisions
      
        # Current routes deployed in the ingress routing table. A route which is missing
        # will appear in `missing_routes`.
        # Corresponds to the JSON property `deployedRoutes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>]
        attr_accessor :deployed_routes
      
        # ID of the instance reporting the status.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployed_revisions = args[:deployed_revisions] if args.key?(:deployed_revisions)
          @deployed_routes = args[:deployed_routes] if args.key?(:deployed_routes)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # Revisions deployed in the MPs.
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
        include Google::Apis::Core::Hashable
      
        # Percentage of MP replicas reporting this revision.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # API proxy revision reported as deployed.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Route deployed in the ingress routing table.
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute
        include Google::Apis::Core::Hashable
      
        # Base path in the routing table.
        # Corresponds to the JSON property `basepath`
        # @return [String]
        attr_accessor :basepath
      
        # Environment group where this route is installed.
        # Corresponds to the JSON property `envgroup`
        # @return [String]
        attr_accessor :envgroup
      
        # Destination environment. This will be empty if the route is not yet reported.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Percentage of ingress replicas reporting this route.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basepath = args[:basepath] if args.key?(:basepath)
          @envgroup = args[:envgroup] if args.key?(:envgroup)
          @environment = args[:environment] if args.key?(:environment)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Configuration for the Integration add-on.
      class GoogleCloudApigeeV1IntegrationConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the Integration add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # 
      class GoogleCloudApigeeV1KeyAliasReference
        include Google::Apis::Core::Hashable
      
        # Alias ID. Must exist in the keystore referred to by the reference.
        # Corresponds to the JSON property `aliasId`
        # @return [String]
        attr_accessor :alias_id
      
        # Reference name in the following format: `organizations/`org`/environments/`env`
        # /references/`reference``
        # Corresponds to the JSON property `reference`
        # @return [String]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_id = args[:alias_id] if args.key?(:alias_id)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # Key value map pair where the value represents the data associated with the
      # corresponding key. **Note**: Supported for Apigee hybrid 1.8.x and higher.
      class GoogleCloudApigeeV1KeyValueEntry
        include Google::Apis::Core::Hashable
      
        # Resource URI that can be used to identify the scope of the key value map
        # entries.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Data or payload that is being retrieved and associated with the
        # unique key.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Collection of key/value string pairs.
      class GoogleCloudApigeeV1KeyValueMap
        include Google::Apis::Core::Hashable
      
        # Required. Flag that specifies whether entry values will be encrypted. This
        # field is retained for backward compatibility and the value of encrypted will
        # always be `true`. Apigee X and hybrid do not support unencrypted key value
        # maps.
        # Corresponds to the JSON property `encrypted`
        # @return [Boolean]
        attr_accessor :encrypted
        alias_method :encrypted?, :encrypted
      
        # Required. ID of the key value map.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted = args[:encrypted] if args.key?(:encrypted)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Datastore for Certificates and Aliases.
      class GoogleCloudApigeeV1Keystore
        include Google::Apis::Core::Hashable
      
        # Output only. Aliases in this keystore.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Required. Resource ID for this keystore. Values must match the regular
        # expression `[\w[:space:].-]`1,255``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1KeystoreConfig
        include Google::Apis::Core::Hashable
      
        # Aliases in the keystore.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AliasRevisionConfig>]
        attr_accessor :aliases
      
        # Resource name in the following format: `organizations/`org`/environments/`env`/
        # keystores/`keystore``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response for `ListApiCategoriesRequest`. Next ID: 6
      class GoogleCloudApigeeV1ListApiCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # The API category resources.
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory>]
        attr_accessor :data
      
        # Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response for ListApiDebugSessions.
      class GoogleCloudApigeeV1ListApiDebugSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Page token that you can include in a ListApiDebugSessionsRequest to retrieve
        # the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Session info that includes debug session ID, environment ID, api proxy
        # revision ID and the first transaction creation timestamp.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDebugSession>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListApiDocsResponse
        include Google::Apis::Core::Hashable
      
        # The catalog item resources.
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc>]
        attr_accessor :data
      
        # Unique error code for the request, if any.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Description of the operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unique ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @request_id = args[:request_id] if args.key?(:request_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListApiProductsResponse
        include Google::Apis::Core::Hashable
      
        # Lists all API product names defined for an organization.
        # Corresponds to the JSON property `apiProduct`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct>]
        attr_accessor :api_product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_product = args[:api_product] if args.key?(:api_product)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListApiProxiesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `proxies`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy>]
        attr_accessor :proxies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proxies = args[:proxies] if args.key?(:proxies)
        end
      end
      
      # Response for ListAppGroupApps
      class GoogleCloudApigeeV1ListAppGroupAppsResponse
        include Google::Apis::Core::Hashable
      
        # List of AppGroup apps and their credentials.
        # Corresponds to the JSON property `appGroupApps`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp>]
        attr_accessor :app_group_apps
      
        # Token that can be sent as `next_page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_group_apps = args[:app_group_apps] if args.key?(:app_group_apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # ListAppGroupsResponse contains the 0 or more AppGroups, along with the
      # optional page token and the total count of apps.
      class GoogleCloudApigeeV1ListAppGroupsResponse
        include Google::Apis::Core::Hashable
      
        # List of AppGroups.
        # Corresponds to the JSON property `appGroups`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup>]
        attr_accessor :app_groups
      
        # Token that can be sent as `next_page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total count of AppGroups.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_groups = args[:app_groups] if args.key?(:app_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListAppsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `app`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1App>]
        attr_accessor :app
      
        # Token that can be sent as `next_page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total count of Apps.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response for ListArchiveDeployments method.
      class GoogleCloudApigeeV1ListArchiveDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # Archive Deployments in the specified environment.
        # Corresponds to the JSON property `archiveDeployments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment>]
        attr_accessor :archive_deployments
      
        # Page token that you can include in a ListArchiveDeployments request to
        # retrieve the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_deployments = args[:archive_deployments] if args.key?(:archive_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListAsyncQueries.
      class GoogleCloudApigeeV1ListAsyncQueriesResponse
        include Google::Apis::Core::Hashable
      
        # The asynchronous queries belong to requested resource name.
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery>]
        attr_accessor :queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @queries = args[:queries] if args.key?(:queries)
        end
      end
      
      # This message encapsulates a list of custom report definitions
      class GoogleCloudApigeeV1ListCustomReportsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `qualifier`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport>]
        attr_accessor :qualifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qualifier = args[:qualifier] if args.key?(:qualifier)
        end
      end
      
      # Response for ListDataCollectors.
      class GoogleCloudApigeeV1ListDataCollectorsResponse
        include Google::Apis::Core::Hashable
      
        # Data collectors in the specified organization.
        # Corresponds to the JSON property `dataCollectors`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector>]
        attr_accessor :data_collectors
      
        # Page token that you can include in a ListDataCollectors request to retrieve
        # the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_collectors = args[:data_collectors] if args.key?(:data_collectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListDatastores
      class GoogleCloudApigeeV1ListDatastoresResponse
        include Google::Apis::Core::Hashable
      
        # A list of datastores
        # Corresponds to the JSON property `datastores`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore>]
        attr_accessor :datastores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastores = args[:datastores] if args.key?(:datastores)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDebugSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Page token that you can include in a ListDebugSessionsRequest to retrieve the
        # next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Session info that includes debug session ID and the first transaction creation
        # timestamp.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # List of deployments.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment>]
        attr_accessor :deployments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDeveloperAppsResponse
        include Google::Apis::Core::Hashable
      
        # List of developer apps and their credentials.
        # Corresponds to the JSON property `app`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp>]
        attr_accessor :app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
        end
      end
      
      # Response for ListDeveloperSubscriptions.
      class GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # List of all subscriptions.
        # Corresponds to the JSON property `developerSubscriptions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription>]
        attr_accessor :developer_subscriptions
      
        # Value that can be sent as `startKey` to retrieve the next page of content. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextStartKey`
        # @return [String]
        attr_accessor :next_start_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer_subscriptions = args[:developer_subscriptions] if args.key?(:developer_subscriptions)
          @next_start_key = args[:next_start_key] if args.key?(:next_start_key)
        end
      end
      
      # Response for list DNS zones.
      class GoogleCloudApigeeV1ListDnsZonesResponse
        include Google::Apis::Core::Hashable
      
        # DNS zones in a given organization.
        # Corresponds to the JSON property `dnsZones`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZone>]
        attr_accessor :dns_zones
      
        # Page token that you can include in an `ListDnsZones` request to retrieve the
        # next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_zones = args[:dns_zones] if args.key?(:dns_zones)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListEndpointAttachments method.
      class GoogleCloudApigeeV1ListEndpointAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # Endpoint attachments in the specified organization.
        # Corresponds to the JSON property `endpointAttachments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment>]
        attr_accessor :endpoint_attachments
      
        # Page token that you can include in an `ListEndpointAttachments` request to
        # retrieve the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_attachments = args[:endpoint_attachments] if args.key?(:endpoint_attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListEnvironmentGroupAttachments.
      class GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # EnvironmentGroupAttachments for the specified environment group.
        # Corresponds to the JSON property `environmentGroupAttachments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment>]
        attr_accessor :environment_group_attachments
      
        # Page token that you can include in a ListEnvironmentGroupAttachments request
        # to retrieve the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_group_attachments = args[:environment_group_attachments] if args.key?(:environment_group_attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListEnvironmentGroups.
      class GoogleCloudApigeeV1ListEnvironmentGroupsResponse
        include Google::Apis::Core::Hashable
      
        # EnvironmentGroups in the specified organization.
        # Corresponds to the JSON property `environmentGroups`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup>]
        attr_accessor :environment_groups
      
        # Page token that you can include in a ListEnvironmentGroups request to retrieve
        # the next page. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_groups = args[:environment_groups] if args.key?(:environment_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListEnvironmentResources
      class GoogleCloudApigeeV1ListEnvironmentResourcesResponse
        include Google::Apis::Core::Hashable
      
        # List of resources files.
        # Corresponds to the JSON property `resourceFile`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile>]
        attr_accessor :resource_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_file = args[:resource_file] if args.key?(:resource_file)
        end
      end
      
      # The response for ListExports
      class GoogleCloudApigeeV1ListExportsResponse
        include Google::Apis::Core::Hashable
      
        # Details of the export jobs.
        # Corresponds to the JSON property `exports`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export>]
        attr_accessor :exports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exports = args[:exports] if args.key?(:exports)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListHybridIssuersResponse
        include Google::Apis::Core::Hashable
      
        # Lists of hybrid services and its trusted issuer email ids.
        # Corresponds to the JSON property `issuers`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ServiceIssuersMapping>]
        attr_accessor :issuers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuers = args[:issuers] if args.key?(:issuers)
        end
      end
      
      # Response for ListInstanceAttachments.
      class GoogleCloudApigeeV1ListInstanceAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # Attachments for the instance.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment>]
        attr_accessor :attachments
      
        # Page token that you can include in a ListInstanceAttachments request to
        # retrieve the next page of content. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListInstances.
      class GoogleCloudApigeeV1ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # Instances in the specified organization.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance>]
        attr_accessor :instances
      
        # Page token that you can include in a ListInstance request to retrieve the next
        # page of content. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request structure for listing key value map keys and its corresponding
      # values.
      class GoogleCloudApigeeV1ListKeyValueEntriesResponse
        include Google::Apis::Core::Hashable
      
        # One or more key value map keys and values.
        # Corresponds to the JSON property `keyValueEntries`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry>]
        attr_accessor :key_value_entries
      
        # Token that can be sent as `next_page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_value_entries = args[:key_value_entries] if args.key?(:key_value_entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListNatAddresses.
      class GoogleCloudApigeeV1ListNatAddressesResponse
        include Google::Apis::Core::Hashable
      
        # List of NAT Addresses for the instance.
        # Corresponds to the JSON property `natAddresses`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress>]
        attr_accessor :nat_addresses
      
        # Page token that you can include in a ListNatAddresses request to retrieve the
        # next page of content. If omitted, no subsequent pages exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nat_addresses = args[:nat_addresses] if args.key?(:nat_addresses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListOfDevelopersResponse
        include Google::Apis::Core::Hashable
      
        # List of developers.
        # Corresponds to the JSON property `developer`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer>]
        attr_accessor :developer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer = args[:developer] if args.key?(:developer)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListOrganizationsResponse
        include Google::Apis::Core::Hashable
      
        # List of Apigee organizations and associated Google Cloud projects.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping>]
        attr_accessor :organizations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organizations = args[:organizations] if args.key?(:organizations)
        end
      end
      
      # Response for ListRatePlans.
      class GoogleCloudApigeeV1ListRatePlansResponse
        include Google::Apis::Core::Hashable
      
        # Value that can be sent as `startKey` to retrieve the next page of content. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextStartKey`
        # @return [String]
        attr_accessor :next_start_key
      
        # List of rate plans in an organization.
        # Corresponds to the JSON property `ratePlans`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan>]
        attr_accessor :rate_plans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_start_key = args[:next_start_key] if args.key?(:next_start_key)
          @rate_plans = args[:rate_plans] if args.key?(:rate_plans)
        end
      end
      
      # Contains a list of SecurityActions in response to a ListSecurityActionRequest.
      class GoogleCloudApigeeV1ListSecurityActionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The SecurityActions for the specified environment.
        # Corresponds to the JSON property `securityActions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction>]
        attr_accessor :security_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_actions = args[:security_actions] if args.key?(:security_actions)
        end
      end
      
      # Response for ListSecurityIncidents.
      class GoogleCloudApigeeV1ListSecurityIncidentsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of security incidents in the organization
        # Corresponds to the JSON property `securityIncidents`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident>]
        attr_accessor :security_incidents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_incidents = args[:security_incidents] if args.key?(:security_incidents)
        end
      end
      
      # Response for ListSecurityMonitoringConditions.
      class GoogleCloudApigeeV1ListSecurityMonitoringConditionsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of security monitoring conditions in the organization.
        # Corresponds to the JSON property `securityMonitoringConditions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityMonitoringCondition>]
        attr_accessor :security_monitoring_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_monitoring_conditions = args[:security_monitoring_conditions] if args.key?(:security_monitoring_conditions)
        end
      end
      
      # Response for ListSecurityProfileRevisions.
      class GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of security profile revisions. The revisions may be attached or
        # unattached to any environment.
        # Corresponds to the JSON property `securityProfiles`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile>]
        attr_accessor :security_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_profiles = args[:security_profiles] if args.key?(:security_profiles)
        end
      end
      
      # Response for ListSecurityProfiles.
      class GoogleCloudApigeeV1ListSecurityProfilesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of security profiles in the organization. The profiles may be attached or
        # unattached to any environment. This will return latest revision of each
        # profile.
        # Corresponds to the JSON property `securityProfiles`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile>]
        attr_accessor :security_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_profiles = args[:security_profiles] if args.key?(:security_profiles)
        end
      end
      
      # Response for ListSecurityProfilesV2.
      class GoogleCloudApigeeV1ListSecurityProfilesV2Response
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of security profiles in the organization.
        # Corresponds to the JSON property `securityProfilesV2`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2>]
        attr_accessor :security_profiles_v2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_profiles_v2 = args[:security_profiles_v2] if args.key?(:security_profiles_v2)
        end
      end
      
      # The response for SecurityReports.
      class GoogleCloudApigeeV1ListSecurityReportsResponse
        include Google::Apis::Core::Hashable
      
        # If the number of security reports exceeded the page size requested, the token
        # can be used to fetch the next page in a subsequent call. If the response is
        # the last page and there are no more reports to return this field is left empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The security reports belong to requested resource name.
        # Corresponds to the JSON property `securityReports`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport>]
        attr_accessor :security_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_reports = args[:security_reports] if args.key?(:security_reports)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListSharedFlowsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow>]
        attr_accessor :shared_flows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
        end
      end
      
      # A response to a ListSpaces request containing the list of organization spaces
      # and a page token for the next page.
      class GoogleCloudApigeeV1ListSpacesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Apigee organization spaces.
        # Corresponds to the JSON property `spaces`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Space>]
        attr_accessor :spaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spaces = args[:spaces] if args.key?(:spaces)
        end
      end
      
      # Response for ListTraceConfigOverrides.
      class GoogleCloudApigeeV1ListTraceConfigOverridesResponse
        include Google::Apis::Core::Hashable
      
        # Token value that can be passed as `page_token` to retrieve the next page of
        # content.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List all trace configuration overrides in an environment.
        # Corresponds to the JSON property `traceConfigOverrides`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride>]
        attr_accessor :trace_config_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @trace_config_overrides = args[:trace_config_overrides] if args.key?(:trace_config_overrides)
        end
      end
      
      # Encapsulates additional information about query execution.
      class GoogleCloudApigeeV1Metadata
        include Google::Apis::Core::Hashable
      
        # List of error messages as strings.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # List of additional information such as data source, if result was truncated.
        # For example: ``` "notices": [ "Source:Postgres", "PG Host:uappg0rw.e2e.
        # apigeeks.net", "query served by:4b64601e-40de-4eb1-bfb9-eeee7ac929ed", "Table
        # used: edge.api.uapgroup2.agg_api" ]```
        # Corresponds to the JSON property `notices`
        # @return [Array<String>]
        attr_accessor :notices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @notices = args[:notices] if args.key?(:notices)
        end
      end
      
      # Encapsulates the metric data point. For example: ```` "name": "sum(
      # message_count)", "values" : [ ` "timestamp": 1549004400000, "value": "39.0" `,
      # ` "timestamp" : 1548997200000, "value" : "0.0" ` ] ```` or ```` "name": "sum(
      # message_count)", "values" : ["39.0"] ````
      class GoogleCloudApigeeV1Metric
        include Google::Apis::Core::Hashable
      
        # Metric name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of metric values. Possible value formats include: `"values":["39.0"]` or `
        # "values":[ ` "value": "39.0", "timestamp": 1232434354` ]`
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The optionally aggregated metric to query with its ordering.
      class GoogleCloudApigeeV1MetricAggregation
        include Google::Apis::Core::Hashable
      
        # Aggregation function associated with the metric.
        # Corresponds to the JSON property `aggregation`
        # @return [String]
        attr_accessor :aggregation
      
        # Name of the metric
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Ordering for this aggregation in the result. For time series this is ignored
        # since the ordering of points depends only on the timestamp, not the values.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation = args[:aggregation] if args.key?(:aggregation)
          @name = args[:name] if args.key?(:name)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # Configuration for the Monetization add-on.
      class GoogleCloudApigeeV1MonetizationConfig
        include Google::Apis::Core::Hashable
      
        # Flag that specifies whether the Monetization add-on is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Moves API product to a different space.
      class GoogleCloudApigeeV1MoveApiProductRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Resource ID of the space to move the API product to. If unspecified,
        # the API product will be moved to the organization level.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Moves an API Proxy to a different Space.
      class GoogleCloudApigeeV1MoveApiProxyRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Resource ID of the space to move the proxy to. If unspecified, the
        # proxy will be moved to the organization level.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Moves a Shared Flow to a different space.
      class GoogleCloudApigeeV1MoveSharedFlowRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Resource ID of the space to move the shared flow to. If unspecified,
        # the shared flow will be moved to the organization level.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Apigee NAT(network address translation) address. A NAT address is a static
      # external IP address used for Internet egress traffic.
      class GoogleCloudApigeeV1NatAddress
        include Google::Apis::Core::Hashable
      
        # Output only. The static IPV4 address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Required. Resource ID of the NAT address.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the nat address.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # NodeConfig for setting the min/max number of nodes associated with the
      # environment.
      class GoogleCloudApigeeV1NodeConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The current total number of gateway nodes that each environment
        # currently has across all instances.
        # Corresponds to the JSON property `currentAggregateNodeCount`
        # @return [Fixnum]
        attr_accessor :current_aggregate_node_count
      
        # Optional. The maximum total number of gateway nodes that the is reserved for
        # all instances that has the specified environment. If not specified, the
        # default is determined by the recommended maximum number of nodes for that
        # gateway.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Optional. The minimum total number of gateway nodes that the is reserved for
        # all instances that has the specified environment. If not specified, the
        # default is determined by the recommended minimum number of nodes for that
        # gateway.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_aggregate_node_count = args[:current_aggregate_node_count] if args.key?(:current_aggregate_node_count)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
        end
      end
      
      # OpenAPI Specification documentation for a catalog item.
      class GoogleCloudApigeeV1OasDocumentation
        include Google::Apis::Core::Hashable
      
        # Output only. The format of the input specification file contents.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Documentation file contents for a catalog item.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Represents the pairing of REST resource path and the actions (verbs) allowed
      # on the resource path.
      class GoogleCloudApigeeV1Operation
        include Google::Apis::Core::Hashable
      
        # methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/
        # rfc2616-sec9.html. When none specified, all verb types are allowed.
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # Required. REST resource path associated with the API proxy or remote service.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Binds the resources in an API proxy or remote service with the allowed REST
      # methods and associated quota enforcement.
      class GoogleCloudApigeeV1OperationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the API proxy or remote service with which the resources,
        # methods, and quota are associated.
        # Corresponds to the JSON property `apiSource`
        # @return [String]
        attr_accessor :api_source
      
        # Custom attributes associated with the operation.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # List of resource/method pairs for the API proxy or remote service to which
        # quota will applied. **Note**: Currently, you can specify only a single
        # resource/method pair. The call will fail if more than one resource/method pair
        # is provided.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Operation>]
        attr_accessor :operations
      
        # Quota contains the essential parameters needed that can be applied on the
        # resources, methods, API source combination associated with this API product.
        # While Quota is optional, setting it prevents requests from exceeding the
        # provisioned parameters.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota]
        attr_accessor :quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_source = args[:api_source] if args.key?(:api_source)
          @attributes = args[:attributes] if args.key?(:attributes)
          @operations = args[:operations] if args.key?(:operations)
          @quota = args[:quota] if args.key?(:quota)
        end
      end
      
      # List of operation configuration details associated with Apigee API proxies or
      # remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
      class GoogleCloudApigeeV1OperationGroup
        include Google::Apis::Core::Hashable
      
        # Flag that specifes whether the configuration is for Apigee API proxy or a
        # remote service. Valid values include `proxy` or `remoteservice`. Defaults to `
        # proxy`. Set to `proxy` when Apigee API proxies are associated with the API
        # product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are
        # associated with the API product.
        # Corresponds to the JSON property `operationConfigType`
        # @return [String]
        attr_accessor :operation_config_type
      
        # Required. List of operation configurations for either Apigee API proxies or
        # other remote services that are associated with this API product.
        # Corresponds to the JSON property `operationConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationConfig>]
        attr_accessor :operation_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_config_type = args[:operation_config_type] if args.key?(:operation_config_type)
          @operation_configs = args[:operation_configs] if args.key?(:operation_configs)
        end
      end
      
      # Metadata describing an Operation.
      class GoogleCloudApigeeV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Information about operation progress.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationMetadataProgress]
        attr_accessor :progress
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Name of the resource for which the operation is operating on.
        # Corresponds to the JSON property `targetResourceName`
        # @return [String]
        attr_accessor :target_resource_name
      
        # Warnings encountered while executing the operation.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @state = args[:state] if args.key?(:state)
          @target_resource_name = args[:target_resource_name] if args.key?(:target_resource_name)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Information about operation progress.
      class GoogleCloudApigeeV1OperationMetadataProgress
        include Google::Apis::Core::Hashable
      
        # Description of the operation's progress.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The additional details of the progress.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Object>]
        attr_accessor :details
      
        # The percentage of the operation progress.
        # Corresponds to the JSON property `percentDone`
        # @return [Fixnum]
        attr_accessor :percent_done
      
        # State of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @percent_done = args[:percent_done] if args.key?(:percent_done)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Encapsulates a response format for JavaScript Optimized Scenario.
      class GoogleCloudApigeeV1OptimizedStats
        include Google::Apis::Core::Hashable
      
        # Encapsulates a response format for JavaScript Optimized Scenario.
        # Corresponds to the JSON property `Response`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Encapsulates a data node as represented below: ``` ` "identifier": ` "names": [
      # "apiproxy" ], "values": [ "sirjee" ] `, "metric": [ ` "env": "prod", "name": "
      # sum(message_count)", "values": [ 36.0 ] ` ] ```` or ``` ` "env": "prod", "name"
      # : "sum(message_count)", "values": [ 36.0 ] ```` Depending on whether a
      # dimension is present in the query or not the data node type can be a simple
      # metric value or dimension identifier with list of metrics.
      class GoogleCloudApigeeV1OptimizedStatsNode
        include Google::Apis::Core::Hashable
      
        # List of data values.
        # Corresponds to the JSON property `data`
        # @return [Array<Object>]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # Encapsulates a response format for JavaScript Optimized Scenario.
      class GoogleCloudApigeeV1OptimizedStatsResponse
        include Google::Apis::Core::Hashable
      
        # List of time unit values. Time unit refers to an epoch timestamp value.
        # Corresponds to the JSON property `TimeUnit`
        # @return [Array<Fixnum>]
        attr_accessor :time_unit
      
        # Encapsulates additional information about query execution.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata]
        attr_accessor :meta_data
      
        # Boolean flag that indicates whether the results were truncated based on the
        # limit parameter.
        # Corresponds to the JSON property `resultTruncated`
        # @return [Boolean]
        attr_accessor :result_truncated
        alias_method :result_truncated?, :result_truncated
      
        # Encapsulates a data node as represented below: ``` ` "identifier": ` "names": [
        # "apiproxy" ], "values": [ "sirjee" ] `, "metric": [ ` "env": "prod", "name": "
        # sum(message_count)", "values": [ 36.0 ] ` ] ```` or ``` ` "env": "prod", "name"
        # : "sum(message_count)", "values": [ 36.0 ] ```` Depending on whether a
        # dimension is present in the query or not the data node type can be a simple
        # metric value or dimension identifier with list of metrics.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsNode]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @result_truncated = args[:result_truncated] if args.key?(:result_truncated)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Organization
        include Google::Apis::Core::Hashable
      
        # Add-on configurations for the Apigee organization.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig]
        attr_accessor :addons_config
      
        # Required. DEPRECATED: This field will eventually be deprecated and replaced
        # with a differently-named field. Primary Google Cloud region for analytics data
        # storage. For valid values, see [Create an Apigee organization](https://cloud.
        # google.com/apigee/docs/api-platform/get-started/create-org).
        # Corresponds to the JSON property `analyticsRegion`
        # @return [String]
        attr_accessor :analytics_region
      
        # Optional. Cloud KMS key name used for encrypting API consumer data. If not
        # specified or [BillingType](#BillingType) is `EVALUATION`, a Google-Managed
        # encryption key will be used. Format: `projects/*/locations/*/keyRings/*/
        # cryptoKeys/*`
        # Corresponds to the JSON property `apiConsumerDataEncryptionKeyName`
        # @return [String]
        attr_accessor :api_consumer_data_encryption_key_name
      
        # Optional. This field is needed only for customers using non-default data
        # residency regions. Apigee stores some control plane data only in single region.
        # This field determines which single region Apigee should use. For example: "us-
        # west1" when control plane is in US or "europe-west2" when control plane is in
        # EU.
        # Corresponds to the JSON property `apiConsumerDataLocation`
        # @return [String]
        attr_accessor :api_consumer_data_location
      
        # Output only. Apigee Project ID associated with the organization. Use this
        # project to allowlist Apigee in the Service Attachment when using private
        # service connect with Apigee.
        # Corresponds to the JSON property `apigeeProjectId`
        # @return [String]
        attr_accessor :apigee_project_id
      
        # Not used by Apigee.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # Optional. Compute Engine network used for Service Networking to be peered with
        # Apigee runtime instances. See [Getting started with the Service Networking API]
        # (https://cloud.google.com/service-infrastructure/docs/service-networking/
        # getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`
        # . The value must be set before the creation of a runtime instance and can be
        # updated only when there are no runtime instances. For example: `default`. When
        # changing authorizedNetwork, you must reconfigure VPC peering. After VPC
        # peering with previous network is deleted, [run the following command](https://
        # cloud.google.com/sdk/gcloud/reference/services/vpc-peerings/delete): `gcloud
        # services vpc-peerings delete --network=NETWORK`, where `NETWORK` is the name
        # of the previous network. This will delete the previous Service Networking.
        # Otherwise, you will get the following error: `The resource 'projects/...-tp'
        # is already linked to another shared VPC host 'projects/...-tp`. Apigee also
        # supports shared VPC (that is, the host network project is not the same as the
        # one that is peering with Apigee). See [Shared VPC overview](https://cloud.
        # google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the
        # following format: `projects/`host-project-id`/`region`/networks/`network-name``
        # . For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:**
        # Not supported for Apigee hybrid.
        # Corresponds to the JSON property `authorizedNetwork`
        # @return [String]
        attr_accessor :authorized_network
      
        # Optional. Billing type of the Apigee organization. See [Apigee pricing](https:/
        # /cloud.google.com/apigee/pricing).
        # Corresponds to the JSON property `billingType`
        # @return [String]
        attr_accessor :billing_type
      
        # Output only. Base64-encoded public certificate for the root CA of the Apigee
        # organization. Valid only when [RuntimeType](#RuntimeType) is `CLOUD`.
        # Corresponds to the JSON property `caCertificate`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :ca_certificate
      
        # Optional. Cloud KMS key name used for encrypting control plane data that is
        # stored in a multi region. Only used for the data residency region "US" or "EU".
        # If not specified or [BillingType](#BillingType) is `EVALUATION`, a Google-
        # Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*
        # /cryptoKeys/*`
        # Corresponds to the JSON property `controlPlaneEncryptionKeyName`
        # @return [String]
        attr_accessor :control_plane_encryption_key_name
      
        # Output only. Time that the Apigee organization was created in milliseconds
        # since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Not used by Apigee.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # Optional. Description of the Apigee organization.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Flag that specifies whether the VPC Peering through Private Google
        # Access should be disabled between the consumer network and Apigee. Valid only
        # when RuntimeType is set to CLOUD. Required if an authorizedNetwork on the
        # consumer project is not provided, in which case the flag should be set to true.
        # The value must be set before the creation of any Apigee runtime instance and
        # can be updated only when there are no runtime instances. **Note:** Apigee will
        # be deprecating the vpc peering model that requires you to provide '
        # authorizedNetwork', by making the non-peering model as the default way of
        # provisioning Apigee organization in future. So, this will be a temporary flag
        # to enable the transition. Not supported for Apigee hybrid.
        # Corresponds to the JSON property `disableVpcPeering`
        # @return [Boolean]
        attr_accessor :disable_vpc_peering
        alias_method :disable_vpc_peering?, :disable_vpc_peering
      
        # Optional. Display name for the Apigee organization. Unused, but reserved for
        # future use.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. List of environments in the Apigee organization.
        # Corresponds to the JSON property `environments`
        # @return [Array<String>]
        attr_accessor :environments
      
        # Output only. Time that the Apigee organization is scheduled for deletion.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Output only. Time that the Apigee organization was last modified in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Name of the Apigee organization.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Flag that specifies if internet egress is restricted for VPC Service
        # Controls. Valid only when runtime_type is `CLOUD` and disable_vpc_peering is `
        # true`.
        # Corresponds to the JSON property `networkEgressRestricted`
        # @return [Boolean]
        attr_accessor :network_egress_restricted
        alias_method :network_egress_restricted?, :network_egress_restricted
      
        # Optional. Configuration for the Portals settings.
        # Corresponds to the JSON property `portalDisabled`
        # @return [Boolean]
        attr_accessor :portal_disabled
        alias_method :portal_disabled?, :portal_disabled
      
        # Output only. Project ID associated with the Apigee organization.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        # Optional. Cloud KMS key name used for encrypting the data that is stored and
        # replicated across runtime instances. Update is not allowed after the
        # organization is created. If not specified or [RuntimeType](#RuntimeType) is `
        # TRIAL`, a Google-Managed encryption key will be used. For example: "projects/
        # foo/locations/us/keyRings/bar/cryptoKeys/baz". **Note:** Not supported for
        # Apigee hybrid.
        # Corresponds to the JSON property `runtimeDatabaseEncryptionKeyName`
        # @return [String]
        attr_accessor :runtime_database_encryption_key_name
      
        # Required. Runtime type of the Apigee organization based on the Apigee
        # subscription purchased.
        # Corresponds to the JSON property `runtimeType`
        # @return [String]
        attr_accessor :runtime_type
      
        # Output only. State of the organization. Values other than ACTIVE means the
        # resource is not ready to use.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Subscription plan that the customer has purchased. Output only.
        # Corresponds to the JSON property `subscriptionPlan`
        # @return [String]
        attr_accessor :subscription_plan
      
        # Output only. DEPRECATED: This will eventually be replaced by BillingType.
        # Subscription type of the Apigee organization. Valid values include trial (free,
        # limited, and for evaluation purposes only) or paid (full subscription has
        # been purchased). See [Apigee pricing](https://cloud.google.com/apigee/pricing/)
        # .
        # Corresponds to the JSON property `subscriptionType`
        # @return [String]
        attr_accessor :subscription_type
      
        # Not used by Apigee.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @analytics_region = args[:analytics_region] if args.key?(:analytics_region)
          @api_consumer_data_encryption_key_name = args[:api_consumer_data_encryption_key_name] if args.key?(:api_consumer_data_encryption_key_name)
          @api_consumer_data_location = args[:api_consumer_data_location] if args.key?(:api_consumer_data_location)
          @apigee_project_id = args[:apigee_project_id] if args.key?(:apigee_project_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @authorized_network = args[:authorized_network] if args.key?(:authorized_network)
          @billing_type = args[:billing_type] if args.key?(:billing_type)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @control_plane_encryption_key_name = args[:control_plane_encryption_key_name] if args.key?(:control_plane_encryption_key_name)
          @created_at = args[:created_at] if args.key?(:created_at)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @description = args[:description] if args.key?(:description)
          @disable_vpc_peering = args[:disable_vpc_peering] if args.key?(:disable_vpc_peering)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environments = args[:environments] if args.key?(:environments)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @network_egress_restricted = args[:network_egress_restricted] if args.key?(:network_egress_restricted)
          @portal_disabled = args[:portal_disabled] if args.key?(:portal_disabled)
          @project_id = args[:project_id] if args.key?(:project_id)
          @properties = args[:properties] if args.key?(:properties)
          @runtime_database_encryption_key_name = args[:runtime_database_encryption_key_name] if args.key?(:runtime_database_encryption_key_name)
          @runtime_type = args[:runtime_type] if args.key?(:runtime_type)
          @state = args[:state] if args.key?(:state)
          @subscription_plan = args[:subscription_plan] if args.key?(:subscription_plan)
          @subscription_type = args[:subscription_type] if args.key?(:subscription_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1OrganizationProjectMapping
        include Google::Apis::Core::Hashable
      
        # Output only. The Google Cloud region where control plane data is located. For
        # more information, see https://cloud.google.com/about/locations/.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the Apigee organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Google Cloud project associated with the Apigee organization
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # DEPRECATED: Use `project_id`. An Apigee Organization is mapped to a single
        # project.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @organization = args[:organization] if args.key?(:organization)
          @project_id = args[:project_id] if args.key?(:project_id)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # 
      class GoogleCloudApigeeV1PodStatus
        include Google::Apis::Core::Hashable
      
        # Version of the application running in the pod.
        # Corresponds to the JSON property `appVersion`
        # @return [String]
        attr_accessor :app_version
      
        # Status of the deployment. Valid values include: - `deployed`: Successful. - `
        # error` : Failed. - `pending` : Pod has not yet reported on the deployment.
        # Corresponds to the JSON property `deploymentStatus`
        # @return [String]
        attr_accessor :deployment_status
      
        # Time the deployment status was reported in milliseconds since epoch.
        # Corresponds to the JSON property `deploymentStatusTime`
        # @return [Fixnum]
        attr_accessor :deployment_status_time
      
        # Time the proxy was deployed in milliseconds since epoch.
        # Corresponds to the JSON property `deploymentTime`
        # @return [Fixnum]
        attr_accessor :deployment_time
      
        # Name of the pod which is reporting the status.
        # Corresponds to the JSON property `podName`
        # @return [String]
        attr_accessor :pod_name
      
        # Overall status of the pod (not this specific deployment). Valid values include:
        # - `active`: Up to date. - `stale` : Recently out of date. Pods that have not
        # reported status in a long time are excluded from the output.
        # Corresponds to the JSON property `podStatus`
        # @return [String]
        attr_accessor :pod_status
      
        # Time the pod status was reported in milliseconds since epoch.
        # Corresponds to the JSON property `podStatusTime`
        # @return [Fixnum]
        attr_accessor :pod_status_time
      
        # Code associated with the deployment status.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # Human-readable message associated with the status code.
        # Corresponds to the JSON property `statusCodeDetails`
        # @return [String]
        attr_accessor :status_code_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_version = args[:app_version] if args.key?(:app_version)
          @deployment_status = args[:deployment_status] if args.key?(:deployment_status)
          @deployment_status_time = args[:deployment_status_time] if args.key?(:deployment_status_time)
          @deployment_time = args[:deployment_time] if args.key?(:deployment_time)
          @pod_name = args[:pod_name] if args.key?(:pod_name)
          @pod_status = args[:pod_status] if args.key?(:pod_status)
          @pod_status_time = args[:pod_status_time] if args.key?(:pod_status_time)
          @status_code = args[:status_code] if args.key?(:status_code)
          @status_code_details = args[:status_code_details] if args.key?(:status_code_details)
        end
      end
      
      # Point is a group of information collected by runtime plane at critical points
      # of the message flow of the processed API request. This is a list of supported
      # point IDs, categorized to three major buckets. For each category, debug points
      # that we are currently supporting are listed below: - Flow status debug points:
      # StateChange FlowInfo Condition Execution DebugMask Error - Flow control debug
      # points: FlowCallout Paused Resumed FlowReturn BreakFlow Error - Runtime debug
      # points: ScriptExecutor FlowCalloutStepDefinition CustomTarget StepDefinition
      # Oauth2ServicePoint RaiseFault NodeJS The detail information of the given debug
      # point is stored in a list of results.
      class GoogleCloudApigeeV1Point
        include Google::Apis::Core::Hashable
      
        # Name of a step in the transaction.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # List of results extracted from a given debug point.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Result>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # ProfileConfig defines a set of categories and policies which will be used to
      # compute security score.
      class GoogleCloudApigeeV1ProfileConfig
        include Google::Apis::Core::Hashable
      
        # List of categories of profile config.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCategory>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
        end
      end
      
      # Checks for abuse, which includes any requests sent to the API for purposes
      # other than what it is intended for, such as high volumes of requests, data
      # scraping, and abuse related to authorization.
      class GoogleCloudApigeeV1ProfileConfigAbuse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # By default, following policies will be included: - JWS - JWT - OAuth -
      # BasicAuth - APIKey
      class GoogleCloudApigeeV1ProfileConfigAuthorization
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Checks to see if you have CORS policy in place.
      class GoogleCloudApigeeV1ProfileConfigCors
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Advanced API Security provides security profile that scores the following
      # categories.
      class GoogleCloudApigeeV1ProfileConfigCategory
        include Google::Apis::Core::Hashable
      
        # Checks for abuse, which includes any requests sent to the API for purposes
        # other than what it is intended for, such as high volumes of requests, data
        # scraping, and abuse related to authorization.
        # Corresponds to the JSON property `abuse`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAbuse]
        attr_accessor :abuse
      
        # By default, following policies will be included: - JWS - JWT - OAuth -
        # BasicAuth - APIKey
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAuthorization]
        attr_accessor :authorization
      
        # Checks to see if you have CORS policy in place.
        # Corresponds to the JSON property `cors`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCors]
        attr_accessor :cors
      
        # By default, following policies will be included: - OASValidation -
        # SOAPMessageValidation
        # Corresponds to the JSON property `mediation`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMediation]
        attr_accessor :mediation
      
        # Checks to see if you have configured mTLS for the target server.
        # Corresponds to the JSON property `mtls`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMtls]
        attr_accessor :mtls
      
        # By default, following policies will be included: - XMLThreatProtection -
        # JSONThreatProtection
        # Corresponds to the JSON property `threat`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigThreat]
        attr_accessor :threat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abuse = args[:abuse] if args.key?(:abuse)
          @authorization = args[:authorization] if args.key?(:authorization)
          @cors = args[:cors] if args.key?(:cors)
          @mediation = args[:mediation] if args.key?(:mediation)
          @mtls = args[:mtls] if args.key?(:mtls)
          @threat = args[:threat] if args.key?(:threat)
        end
      end
      
      # Checks to see if you have configured mTLS for the target server.
      class GoogleCloudApigeeV1ProfileConfigMtls
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # By default, following policies will be included: - OASValidation -
      # SOAPMessageValidation
      class GoogleCloudApigeeV1ProfileConfigMediation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # By default, following policies will be included: - XMLThreatProtection -
      # JSONThreatProtection
      class GoogleCloudApigeeV1ProfileConfigThreat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for compatibility with legacy Edge specification for Java Properties
      # object in JSON.
      class GoogleCloudApigeeV1Properties
        include Google::Apis::Core::Hashable
      
        # List of all properties in the object
        # Corresponds to the JSON property `property`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property>]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A single property entry in the Properties message.
      class GoogleCloudApigeeV1Property
        include Google::Apis::Core::Hashable
      
        # The property key
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The property value
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request for ProvisionOrganization.
      class GoogleCloudApigeeV1ProvisionOrganizationRequest
        include Google::Apis::Core::Hashable
      
        # Primary Cloud Platform region for analytics data storage. For valid values,
        # see [Create an organization](https://cloud.google.com/apigee/docs/hybrid/
        # latest/precog-provision). Defaults to `us-west1`.
        # Corresponds to the JSON property `analyticsRegion`
        # @return [String]
        attr_accessor :analytics_region
      
        # Compute Engine network used for Service Networking to be peered with Apigee
        # runtime instances. See [Getting started with the Service Networking API](https:
        # //cloud.google.com/service-infrastructure/docs/service-networking/getting-
        # started). Apigee also supports shared VPC (that is, the host network project
        # is not the same as the one that is peering with Apigee). See [Shared VPC
        # overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC
        # network, use the following format: `projects/`host-project-id`/`region`/
        # networks/`network-name``. For example: `projects/my-sharedvpc-host/global/
        # networks/mynetwork`
        # Corresponds to the JSON property `authorizedNetwork`
        # @return [String]
        attr_accessor :authorized_network
      
        # Optional. Flag that specifies whether the VPC Peering through Private Google
        # Access should be disabled between the consumer network and Apigee. Required if
        # an authorizedNetwork on the consumer project is not provided, in which case
        # the flag should be set to true. The value must be set before the creation of
        # any Apigee runtime instance and can be updated only when there are no runtime
        # instances. **Note:** Apigee will be deprecating the vpc peering model that
        # requires you to provide 'authorizedNetwork', by making the non-peering model
        # as the default way of provisioning Apigee organization in future. So, this
        # will be a temporary flag to enable the transition. Not supported for Apigee
        # hybrid.
        # Corresponds to the JSON property `disableVpcPeering`
        # @return [Boolean]
        attr_accessor :disable_vpc_peering
        alias_method :disable_vpc_peering?, :disable_vpc_peering
      
        # Cloud Platform location for the runtime instance. Defaults to zone `us-west1-a`
        # . If a region is provided, `EVAL` organizations will use the region for
        # automatically selecting a zone for the runtime instance.
        # Corresponds to the JSON property `runtimeLocation`
        # @return [String]
        attr_accessor :runtime_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_region = args[:analytics_region] if args.key?(:analytics_region)
          @authorized_network = args[:authorized_network] if args.key?(:authorized_network)
          @disable_vpc_peering = args[:disable_vpc_peering] if args.key?(:disable_vpc_peering)
          @runtime_location = args[:runtime_location] if args.key?(:runtime_location)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Query
        include Google::Apis::Core::Hashable
      
        # Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to
        # the `,` (comma) character. Supported delimiter characters include comma (`,`),
        # pipe (`|`), and tab (`\t`).
        # Corresponds to the JSON property `csvDelimiter`
        # @return [String]
        attr_accessor :csv_delimiter
      
        # A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-
        # reference#dimensions
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Hostname needs to be specified if query intends to run at host level. This
        # field is only allowed when query is submitted by CreateHostAsyncQuery where
        # analytics data will be grouped by organization and hostname.
        # Corresponds to the JSON property `envgroupHostname`
        # @return [String]
        attr_accessor :envgroup_hostname
      
        # Boolean expression that can be used to filter data. Filter expressions can be
        # combined using AND/OR terms and should be fully parenthesized to avoid
        # ambiguity. See Analytics metrics, dimensions, and filters reference https://
        # docs.apigee.com/api-platform/analytics/analytics-reference for more
        # information on the fields available to filter on. For more information on the
        # tokens that you use to build filter expressions, see Filter expression syntax.
        # https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-
        # expression-syntax
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Time unit used to group the result set. Valid values include: second, minute,
        # hour, day, week, or month. If a query includes groupByTimeUnit, then the
        # result is an aggregation based on the specified time unit and the resultant
        # timestamp does not include milliseconds precision. If a query omits
        # groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
        # Corresponds to the JSON property `groupByTimeUnit`
        # @return [String]
        attr_accessor :group_by_time_unit
      
        # Maximum number of rows that can be returned in the result.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # A list of Metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetric>]
        attr_accessor :metrics
      
        # Asynchronous Query Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the
        # delimiter for CSV output using the csvDelimiter property.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Asynchronous Report ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Required. Time range for the query. Can use the following predefined strings
        # to specify the time range: `last60minutes` `last24hours` `last7days` Or,
        # specify the timeRange as a structure describing start and end timestamps in
        # the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": ` "start": "2018-
        # 07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" `
        # Corresponds to the JSON property `timeRange`
        # @return [Object]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_delimiter = args[:csv_delimiter] if args.key?(:csv_delimiter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @envgroup_hostname = args[:envgroup_hostname] if args.key?(:envgroup_hostname)
          @filter = args[:filter] if args.key?(:filter)
          @group_by_time_unit = args[:group_by_time_unit] if args.key?(:group_by_time_unit)
          @limit = args[:limit] if args.key?(:limit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @output_format = args[:output_format] if args.key?(:output_format)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # 
      class GoogleCloudApigeeV1QueryMetadata
        include Google::Apis::Core::Hashable
      
        # Dimensions of the AsyncQuery.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # End timestamp of the query range.
        # Corresponds to the JSON property `endTimestamp`
        # @return [String]
        attr_accessor :end_timestamp
      
        # Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:
        # sum_message_count"]
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Output format.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Start timestamp of the query range.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        # Query GroupBy time unit.
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @metrics = args[:metrics] if args.key?(:metrics)
          @output_format = args[:output_format] if args.key?(:output_format)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
        end
      end
      
      # More info about Metric: https://docs.apigee.com/api-platform/analytics/
      # analytics-reference#metrics
      class GoogleCloudApigeeV1QueryMetric
        include Google::Apis::Core::Hashable
      
        # Alias for the metric. Alias will be used to replace metric name in query
        # results.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Aggregation function: avg, min, max, or sum.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Required. Metric name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # One of `+`, `-`, `/`, `%`, `*`.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Operand value should be provided when operator is set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @function = args[:function] if args.key?(:function)
          @name = args[:name] if args.key?(:name)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request payload representing the query to be run for fetching security
      # statistics as rows.
      class GoogleCloudApigeeV1QueryTabularStatsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of dimension names to group the aggregations by.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filter further on specific dimension values. Follows the same grammar as
        # custom report's filter expressions. Example, apiproxy eq 'foobar'. https://
        # cloud.google.com/apigee/docs/api-platform/analytics/analytics-reference#
        # filters
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. List of metrics and their aggregations.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation>]
        attr_accessor :metrics
      
        # Page size represents the number of rows.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Identifies a sequence of rows.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::ApigeeV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Encapsulates two kinds of stats that are results of the dimensions and
      # aggregations requested. - Tabular rows. - Time series data. Example of tabular
      # rows, Represents security stats results as a row of flat values.
      class GoogleCloudApigeeV1QueryTabularStatsResponse
        include Google::Apis::Core::Hashable
      
        # Column names corresponding to the same order as the inner values in the stats
        # field.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resultant rows from the executed query.
        # Corresponds to the JSON property `values`
        # @return [Array<Array<Object>>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # QueryTimeSeriesStatsRequest represents a query that returns a collection of
      # time series sequences grouped by their values.
      class GoogleCloudApigeeV1QueryTimeSeriesStatsRequest
        include Google::Apis::Core::Hashable
      
        # List of dimension names to group the aggregations by. If no dimensions are
        # passed, a single trend line representing the requested metric aggregations
        # grouped by environment is returned.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filter further on specific dimension values. Follows the same grammar as
        # custom report's filter expressions. Example, apiproxy eq 'foobar'. https://
        # cloud.google.com/apigee/docs/api-platform/analytics/analytics-reference#
        # filters
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. List of metrics and their aggregations.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation>]
        attr_accessor :metrics
      
        # Page size represents the number of time series sequences, one per unique set
        # of dimensions and their values.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Page token stands for a specific collection of time series sequences.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::ApigeeV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        # Order the sequences in increasing or decreasing order of timestamps. Default
        # is descending order of timestamps (latest first).
        # Corresponds to the JSON property `timestampOrder`
        # @return [String]
        attr_accessor :timestamp_order
      
        # Time buckets to group the stats by.
        # Corresponds to the JSON property `windowSize`
        # @return [String]
        attr_accessor :window_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @time_range = args[:time_range] if args.key?(:time_range)
          @timestamp_order = args[:timestamp_order] if args.key?(:timestamp_order)
          @window_size = args[:window_size] if args.key?(:window_size)
        end
      end
      
      # Represents security stats result as a collection of time series sequences.
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponse
        include Google::Apis::Core::Hashable
      
        # Column names corresponding to the same order as the inner values in the stats
        # field.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results of the query returned as a JSON array.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A sequence of time series.
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence
        include Google::Apis::Core::Hashable
      
        # Map of dimensions and their values that uniquely identifies a time series
        # sequence.
        # Corresponds to the JSON property `dimensions`
        # @return [Hash<String,String>]
        attr_accessor :dimensions
      
        # List of points. First value of each inner list is a timestamp.
        # Corresponds to the JSON property `points`
        # @return [Array<Array<Object>>]
        attr_accessor :points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @points = args[:points] if args.key?(:points)
        end
      end
      
      # Quota contains the essential parameters needed that can be applied on the
      # resources, methods, API source combination associated with this API product.
      # While Quota is optional, setting it prevents requests from exceeding the
      # provisioned parameters.
      class GoogleCloudApigeeV1Quota
        include Google::Apis::Core::Hashable
      
        # Required. Time interval over which the number of request messages is
        # calculated.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # Required. Upper limit allowed for the time interval and time unit specified.
        # Requests exceeding this limit will be rejected.
        # Corresponds to the JSON property `limit`
        # @return [String]
        attr_accessor :limit
      
        # Time unit defined for the `interval`. Valid values include `minute`, `hour`, `
        # day`, or `month`. If `limit` and `interval` are valid, the default value is `
        # hour`; otherwise, the default is null.
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @limit = args[:limit] if args.key?(:limit)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
        end
      end
      
      # Rate plan details.
      class GoogleCloudApigeeV1RatePlan
        include Google::Apis::Core::Hashable
      
        # Name of the API product that the rate plan is associated with.
        # Corresponds to the JSON property `apiproduct`
        # @return [String]
        attr_accessor :apiproduct
      
        # Frequency at which the customer will be billed.
        # Corresponds to the JSON property `billingPeriod`
        # @return [String]
        attr_accessor :billing_period
      
        # API call volume ranges and the fees charged when the total number of API calls
        # is within a given range. The method used to calculate the final fee depends on
        # the selected pricing model. For example, if the pricing model is `BANDED` and
        # the ranges are defined as follows: ``` ` "start": 1, "end": 100, "fee": 2 `, `
        # "start": 101, "end": 200, "fee": 1.50 `, ` "start": 201, "end": 0, "fee": 1 `,
        # ` ``` Then the following fees would be charged based on the total number of
        # API calls (assuming the currency selected is `USD`): * 50 calls cost 50 x $2 =
        # $100 * 150 calls cost 100 x $2 + 50 x $1.5 = $275 * 250 calls cost 100 x $2 +
        # 100 x $1.5 + 50 x $1 = $400 * 500 calls cost 100 x $2 + 100 x $1.5 + 300 x $1 =
        # $650
        # Corresponds to the JSON property `consumptionPricingRates`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RateRange>]
        attr_accessor :consumption_pricing_rates
      
        # Pricing model used for consumption-based charges.
        # Corresponds to the JSON property `consumptionPricingType`
        # @return [String]
        attr_accessor :consumption_pricing_type
      
        # Output only. Time that the rate plan was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Currency to be used for billing. Consists of a three-letter code as defined by
        # the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Description of the rate plan.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of the rate plan.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `
        # null` to indicate that the rate plan should never expire.
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # Frequency at which the fixed fee is charged.
        # Corresponds to the JSON property `fixedFeeFrequency`
        # @return [Fixnum]
        attr_accessor :fixed_fee_frequency
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `fixedRecurringFee`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :fixed_recurring_fee
      
        # Output only. Time the rate plan was last modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Name of the rate plan.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # DEPRECATED: This field is no longer supported and will eventually be removed
        # when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `
        # billingType` field inside `DeveloperMonetizationConfig` resource. Flag that
        # specifies the billing account type, prepaid or postpaid.
        # Corresponds to the JSON property `paymentFundingModel`
        # @return [String]
        attr_accessor :payment_funding_model
      
        # Details of the revenue sharing model.
        # Corresponds to the JSON property `revenueShareRates`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevenueShareRange>]
        attr_accessor :revenue_share_rates
      
        # Method used to calculate the revenue that is shared with developers.
        # Corresponds to the JSON property `revenueShareType`
        # @return [String]
        attr_accessor :revenue_share_type
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `setupFee`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :setup_fee
      
        # Time when the rate plan becomes active in milliseconds since epoch.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
        attr_accessor :start_time
      
        # Current state of the rate plan (draft or published).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apiproduct = args[:apiproduct] if args.key?(:apiproduct)
          @billing_period = args[:billing_period] if args.key?(:billing_period)
          @consumption_pricing_rates = args[:consumption_pricing_rates] if args.key?(:consumption_pricing_rates)
          @consumption_pricing_type = args[:consumption_pricing_type] if args.key?(:consumption_pricing_type)
          @created_at = args[:created_at] if args.key?(:created_at)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @fixed_fee_frequency = args[:fixed_fee_frequency] if args.key?(:fixed_fee_frequency)
          @fixed_recurring_fee = args[:fixed_recurring_fee] if args.key?(:fixed_recurring_fee)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @payment_funding_model = args[:payment_funding_model] if args.key?(:payment_funding_model)
          @revenue_share_rates = args[:revenue_share_rates] if args.key?(:revenue_share_rates)
          @revenue_share_type = args[:revenue_share_type] if args.key?(:revenue_share_type)
          @setup_fee = args[:setup_fee] if args.key?(:setup_fee)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # API call volume range and the fees charged when the total number of API calls
      # is within the range.
      class GoogleCloudApigeeV1RateRange
        include Google::Apis::Core::Hashable
      
        # Ending value of the range. Set to 0 or `null` for the last range of values.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `fee`
        # @return [Google::Apis::ApigeeV1::GoogleTypeMoney]
        attr_accessor :fee
      
        # Starting value of the range. Set to 0 or `null` for the initial range of
        # values.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @fee = args[:fee] if args.key?(:fee)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A Reference configuration. References must refer to a keystore that also
      # exists in the parent environment.
      class GoogleCloudApigeeV1Reference
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description of this reference.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The resource id of this reference. Values must match the regular
        # expression [\w\s\-.]+.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The id of the resource to which this reference refers. Must be the
        # id of a resource that exists in the parent environment and is of the given
        # resource_type.
        # Corresponds to the JSON property `refers`
        # @return [String]
        attr_accessor :refers
      
        # The type of resource referred to by this reference. Valid values are 'KeyStore'
        # or 'TrustStore'.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @refers = args[:refers] if args.key?(:refers)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ReferenceConfig
        include Google::Apis::Core::Hashable
      
        # Name of the reference in the following format: `organizations/`org`/
        # environments/`env`/references/`reference``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the referenced resource in the following format: `organizations/`org`/
        # environments/`env`/keystores/`keystore`` Only references to keystore resources
        # are supported.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Request for ReportInstanceStatus.
      class GoogleCloudApigeeV1ReportInstanceStatusRequest
        include Google::Apis::Core::Hashable
      
        # A unique ID for the instance which is guaranteed to be unique in case the user
        # installs multiple hybrid runtimes with the same instance ID.
        # Corresponds to the JSON property `instanceUid`
        # @return [String]
        attr_accessor :instance_uid
      
        # The time the report was generated in the runtime. Used to prevent an old
        # status from overwriting a newer one. An instance should space out it's status
        # reports so that clock skew does not play a factor.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Status for config resources
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_uid = args[:instance_uid] if args.key?(:instance_uid)
          @report_time = args[:report_time] if args.key?(:report_time)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Placeholder for future enhancements to status reporting protocol
      class GoogleCloudApigeeV1ReportInstanceStatusResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ReportProperty
        include Google::Apis::Core::Hashable
      
        # name of the property
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # property values
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ResourceConfig
        include Google::Apis::Core::Hashable
      
        # Location of the resource as a URI.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Resource name in the following format: `organizations/`org`/environments/`env`/
        # resourcefiles/`type`/`file`/revisions/`rev`` Only environment-scoped resource
        # files are supported.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata about a resource file.
      class GoogleCloudApigeeV1ResourceFile
        include Google::Apis::Core::Hashable
      
        # ID of the resource file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource file type. `` resource_file_type ``
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # List of resource files.
      class GoogleCloudApigeeV1ResourceFiles
        include Google::Apis::Core::Hashable
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFile`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile>]
        attr_accessor :resource_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_file = args[:resource_file] if args.key?(:resource_file)
        end
      end
      
      # The status of a resource loaded in the runtime.
      class GoogleCloudApigeeV1ResourceStatus
        include Google::Apis::Core::Hashable
      
        # The resource name. Currently only two resources are supported:
        # EnvironmentGroup - organizations/`org`/envgroups/`envgroup` EnvironmentConfig -
        # organizations/`org`/environments/`environment`/deployedConfig
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Revisions of the resource currently deployed in the instance.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevisionStatus>]
        attr_accessor :revisions
      
        # The total number of replicas that should have this resource.
        # Corresponds to the JSON property `totalReplicas`
        # @return [Fixnum]
        attr_accessor :total_replicas
      
        # The uid of the resource. In the unexpected case that the instance has multiple
        # uids for the same name, they should be reported under separate
        # ResourceStatuses.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @revisions = args[:revisions] if args.key?(:revisions)
          @total_replicas = args[:total_replicas] if args.key?(:total_replicas)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Result is short for "action result", could be different types identified by "
      # action_result" field. Supported types: 1. DebugInfo : generic debug info
      # collected by runtime recorded as a list of properties. For example, the
      # contents could be virtual host info, state change result, or execution
      # metadata. Required fields : properties, timestamp 2. RequestMessage:
      # information of a http request. Contains headers, request URI and http methods
      # type.Required fields : headers, uri, verb 3. ResponseMessage: information of a
      # http response. Contains headers, reason phrase and http status code. Required
      # fields : headers, reasonPhrase, statusCode 4. ErrorMessage: information of a
      # http error message. Contains detail error message, reason phrase and status
      # code. Required fields : content, headers, reasonPhrase, statusCode 5.
      # VariableAccess: a list of variable access actions, can be Get, Set and Remove.
      # Required fields : accessList
      class GoogleCloudApigeeV1Result
        include Google::Apis::Core::Hashable
      
        # Type of the action result. Can be one of the five: DebugInfo, RequestMessage,
        # ResponseMessage, ErrorMessage, VariableAccess
        # Corresponds to the JSON property `ActionResult`
        # @return [String]
        attr_accessor :action_result
      
        # A list of variable access actions agaist the api proxy. Supported values: Get,
        # Set, Remove.
        # Corresponds to the JSON property `accessList`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Access>]
        attr_accessor :access_list
      
        # Error message content. for example, "content" : "`\"fault\":`\"faultstring\":\"
        # API timed out\",\"detail\":`\"errorcode\":\"flow.APITimedOut\"```"
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A list of HTTP headers. for example, '"headers" : [ ` "name" : "Content-Length"
        # , "value" : "83" `, ` "name" : "Content-Type", "value" : "application/json" ` ]
        # '
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property>]
        attr_accessor :headers
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        # HTTP response phrase
        # Corresponds to the JSON property `reasonPhrase`
        # @return [String]
        attr_accessor :reason_phrase
      
        # HTTP response code
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # Timestamp of when the result is recorded. Its format is dd-mm-yy hh:mm:ss:xxx.
        # For example, `"timestamp" : "12-08-19 00:31:59:960"`
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The relative path of the api proxy. for example, `"uRI" : "/iloveapis"`
        # Corresponds to the JSON property `uRI`
        # @return [String]
        attr_accessor :u_ri
      
        # HTTP method verb
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_result = args[:action_result] if args.key?(:action_result)
          @access_list = args[:access_list] if args.key?(:access_list)
          @content = args[:content] if args.key?(:content)
          @headers = args[:headers] if args.key?(:headers)
          @properties = args[:properties] if args.key?(:properties)
          @reason_phrase = args[:reason_phrase] if args.key?(:reason_phrase)
          @status_code = args[:status_code] if args.key?(:status_code)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @u_ri = args[:u_ri] if args.key?(:u_ri)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # API call volume range and the percentage of revenue to share with the
      # developer when the total number of API calls is within the range.
      class GoogleCloudApigeeV1RevenueShareRange
        include Google::Apis::Core::Hashable
      
        # Ending value of the range. Set to 0 or `null` for the last range of values.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Percentage of the revenue to be shared with the developer. For example, to
        # share 21 percent of the total revenue with the developer, set this value to 21.
        # Specify a decimal number with a maximum of two digits following the decimal
        # point.
        # Corresponds to the JSON property `sharePercentage`
        # @return [Float]
        attr_accessor :share_percentage
      
        # Starting value of the range. Set to 0 or `null` for the initial range of
        # values.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @share_percentage = args[:share_percentage] if args.key?(:share_percentage)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # The status of a specific resource revision.
      class GoogleCloudApigeeV1RevisionStatus
        include Google::Apis::Core::Hashable
      
        # Errors reported when attempting to load this revision.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateError>]
        attr_accessor :errors
      
        # The json content of the resource revision. Large specs should be sent
        # individually via the spec field to avoid hitting request size limits.
        # Corresponds to the JSON property `jsonSpec`
        # @return [String]
        attr_accessor :json_spec
      
        # The number of replicas that have successfully loaded this revision.
        # Corresponds to the JSON property `replicas`
        # @return [Fixnum]
        attr_accessor :replicas
      
        # The revision of the resource.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @json_spec = args[:json_spec] if args.key?(:json_spec)
          @replicas = args[:replicas] if args.key?(:replicas)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # 
      class GoogleCloudApigeeV1RoutingRule
        include Google::Apis::Core::Hashable
      
        # URI path prefix used to route to the specified environment. May contain one or
        # more wildcards. For example, path segments consisting of a single `*`
        # character will match any string.
        # Corresponds to the JSON property `basepath`
        # @return [String]
        attr_accessor :basepath
      
        # Name of a deployment group in an environment bound to the environment group in
        # the following format: `organizations/`org`/environment/`env`/deploymentGroups/`
        # group`` Only one of environment or deployment_group will be set.
        # Corresponds to the JSON property `deploymentGroup`
        # @return [String]
        attr_accessor :deployment_group
      
        # The env group config revision_id when this rule was added or last updated.
        # This value is set when the rule is created and will only update if the the
        # environment_id changes. It is used to determine if the runtime is up to date
        # with respect to this rule. This field is omitted from the IngressConfig unless
        # the GetDeployedIngressConfig API is called with view=FULL.
        # Corresponds to the JSON property `envGroupRevision`
        # @return [Fixnum]
        attr_accessor :env_group_revision
      
        # Name of an environment bound to the environment group in the following format:
        # `organizations/`org`/environments/`env``. Only one of environment or
        # deployment_group will be set.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Conflicting targets, which will be resource names specifying either deployment
        # groups or environments.
        # Corresponds to the JSON property `otherTargets`
        # @return [Array<String>]
        attr_accessor :other_targets
      
        # The resource name of the proxy revision that is receiving this basepath in the
        # following format: `organizations/`org`/apis/`api`/revisions/`rev``. This field
        # is omitted from the IngressConfig unless the GetDeployedIngressConfig API is
        # called with view=FULL.
        # Corresponds to the JSON property `receiver`
        # @return [String]
        attr_accessor :receiver
      
        # The unix timestamp when this rule was updated. This is updated whenever
        # env_group_revision is updated. This field is omitted from the IngressConfig
        # unless the GetDeployedIngressConfig API is called with view=FULL.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basepath = args[:basepath] if args.key?(:basepath)
          @deployment_group = args[:deployment_group] if args.key?(:deployment_group)
          @env_group_revision = args[:env_group_revision] if args.key?(:env_group_revision)
          @environment = args[:environment] if args.key?(:environment)
          @other_targets = args[:other_targets] if args.key?(:other_targets)
          @receiver = args[:receiver] if args.key?(:receiver)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # RuntimeAddonsConfig defines the runtime configurations for add-ons in an
      # environment.
      class GoogleCloudApigeeV1RuntimeAddonsConfig
        include Google::Apis::Core::Hashable
      
        # Runtime configuration for the Analytics add-on.
        # Corresponds to the JSON property `analyticsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAnalyticsConfig]
        attr_accessor :analytics_config
      
        # Runtime configuration for the API Security add-on.
        # Corresponds to the JSON property `apiSecurityConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeApiSecurityConfig]
        attr_accessor :api_security_config
      
        # Name of the addons config in the format: `organizations/`org`/environments/`
        # env`/addonsConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Revision number used by the runtime to detect config changes.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # UID is to detect if config is recreated after deletion. The add-on config will
        # only be deleted when the environment itself gets deleted, thus it will always
        # be the same as the UID of EnvironmentConfig.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_config = args[:analytics_config] if args.key?(:analytics_config)
          @api_security_config = args[:api_security_config] if args.key?(:api_security_config)
          @name = args[:name] if args.key?(:name)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Runtime configuration for the Analytics add-on.
      class GoogleCloudApigeeV1RuntimeAnalyticsConfig
        include Google::Apis::Core::Hashable
      
        # If Runtime should send billing data to AX or not.
        # Corresponds to the JSON property `billingPipelineEnabled`
        # @return [Boolean]
        attr_accessor :billing_pipeline_enabled
        alias_method :billing_pipeline_enabled?, :billing_pipeline_enabled
      
        # If the Analytics is enabled or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_pipeline_enabled = args[:billing_pipeline_enabled] if args.key?(:billing_pipeline_enabled)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Runtime configuration for the API Security add-on.
      class GoogleCloudApigeeV1RuntimeApiSecurityConfig
        include Google::Apis::Core::Hashable
      
        # If the API Security is enabled or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Runtime configuration for the organization. Response for GetRuntimeConfig.
      class GoogleCloudApigeeV1RuntimeConfig
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket used for uploading Analytics records.
        # Corresponds to the JSON property `analyticsBucket`
        # @return [String]
        attr_accessor :analytics_bucket
      
        # Name of the resource in the following format: `organizations/`org`/
        # runtimeConfig`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Tenant project ID associated with the Apigee organization. The
        # tenant project is used to host Google-managed resources that are dedicated to
        # this Apigee organization. Clients have limited access to resources within the
        # tenant project used to support Apigee runtime instances. Access to the tenant
        # project is managed using SetSyncAuthorization. It can be empty if the tenant
        # project hasn't been created yet.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Cloud Storage bucket used for uploading Trace records.
        # Corresponds to the JSON property `traceBucket`
        # @return [String]
        attr_accessor :trace_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_bucket = args[:analytics_bucket] if args.key?(:analytics_bucket)
          @name = args[:name] if args.key?(:name)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @trace_bucket = args[:trace_bucket] if args.key?(:trace_bucket)
        end
      end
      
      # NEXT ID: 8 RuntimeTraceConfig defines the configurations for distributed trace
      # in an environment.
      class GoogleCloudApigeeV1RuntimeTraceConfig
        include Google::Apis::Core::Hashable
      
        # Endpoint of the exporter.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Exporter that is used to view the distributed trace captured using OpenCensus.
        # An exporter sends traces to any backend that is capable of consuming them.
        # Recorded spans can be exported by registered exporters.
        # Corresponds to the JSON property `exporter`
        # @return [String]
        attr_accessor :exporter
      
        # Name of the trace config in the following format: `organizations/`org`/
        # environment/`env`/traceConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of trace configuration overrides for spicific API proxies.
        # Corresponds to the JSON property `overrides`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfigOverride>]
        attr_accessor :overrides
      
        # The timestamp that the revision was created or updated.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Revision number which can be used by the runtime to detect if the trace config
        # has changed between two versions.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # NEXT ID: 3 RuntimeTraceSamplingConfig represents the detail settings of
        # distributed tracing. Only the fields that are defined in the distributed trace
        # configuration can be overridden using the distribute trace configuration
        # override APIs.
        # Corresponds to the JSON property `samplingConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig]
        attr_accessor :sampling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @exporter = args[:exporter] if args.key?(:exporter)
          @name = args[:name] if args.key?(:name)
          @overrides = args[:overrides] if args.key?(:overrides)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @sampling_config = args[:sampling_config] if args.key?(:sampling_config)
        end
      end
      
      # NEXT ID: 7 Trace configuration override for a specific API proxy in an
      # environment.
      class GoogleCloudApigeeV1RuntimeTraceConfigOverride
        include Google::Apis::Core::Hashable
      
        # Name of the API proxy that will have its trace configuration overridden
        # following format: `organizations/`org`/apis/`api``
        # Corresponds to the JSON property `apiProxy`
        # @return [String]
        attr_accessor :api_proxy
      
        # Name of the trace config override in the following format: `organizations/`org`
        # /environment/`env`/traceConfig/overrides/`override``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The timestamp that the revision was created or updated.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Revision number which can be used by the runtime to detect if the trace config
        # override has changed between two versions.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # NEXT ID: 3 RuntimeTraceSamplingConfig represents the detail settings of
        # distributed tracing. Only the fields that are defined in the distributed trace
        # configuration can be overridden using the distribute trace configuration
        # override APIs.
        # Corresponds to the JSON property `samplingConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig]
        attr_accessor :sampling_config
      
        # Unique ID for the configuration override. The ID will only change if the
        # override is deleted and recreated. Corresponds to name's "override" field.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy = args[:api_proxy] if args.key?(:api_proxy)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @sampling_config = args[:sampling_config] if args.key?(:sampling_config)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # NEXT ID: 3 RuntimeTraceSamplingConfig represents the detail settings of
      # distributed tracing. Only the fields that are defined in the distributed trace
      # configuration can be overridden using the distribute trace configuration
      # override APIs.
      class GoogleCloudApigeeV1RuntimeTraceSamplingConfig
        include Google::Apis::Core::Hashable
      
        # Sampler of distributed tracing. OFF is the default value.
        # Corresponds to the JSON property `sampler`
        # @return [String]
        attr_accessor :sampler
      
        # Field sampling rate. This value is only applicable when using the PROBABILITY
        # sampler. The supported values are > 0 and <= 0.5.
        # Corresponds to the JSON property `samplingRate`
        # @return [Float]
        attr_accessor :sampling_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sampler = args[:sampler] if args.key?(:sampler)
          @sampling_rate = args[:sampling_rate] if args.key?(:sampling_rate)
        end
      end
      
      # Response for Schema call
      class GoogleCloudApigeeV1Schema
        include Google::Apis::Core::Hashable
      
        # List of schema fields grouped as dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement>]
        attr_accessor :dimensions
      
        # Additional metadata associated with schema. This is a legacy field and usually
        # consists of an empty array of strings.
        # Corresponds to the JSON property `meta`
        # @return [Array<String>]
        attr_accessor :meta
      
        # List of schema fields grouped as dimensions that can be used with an aggregate
        # function such as `sum`, `avg`, `min`, and `max`.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @meta = args[:meta] if args.key?(:meta)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Message type for the schema element
      class GoogleCloudApigeeV1SchemaSchemaElement
        include Google::Apis::Core::Hashable
      
        # Name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Properties for the schema field.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaProperty]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Properties for the schema field.
      class GoogleCloudApigeeV1SchemaSchemaProperty
        include Google::Apis::Core::Hashable
      
        # Time the field was created in RFC3339 string form. For example: `2016-02-26T10:
        # 23:09.592Z`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Flag that specifies whether the field is standard in the dataset or a custom
        # field created by the customer. `true` indicates that it is a custom field.
        # Corresponds to the JSON property `custom`
        # @return [String]
        attr_accessor :custom
      
        # Data type of the field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom = args[:custom] if args.key?(:custom)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents Security Score.
      class GoogleCloudApigeeV1Score
        include Google::Apis::Core::Hashable
      
        # Component is an individual security element that is scored.
        # Corresponds to the JSON property `component`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent]
        attr_accessor :component
      
        # List of all the drilldown score components.
        # Corresponds to the JSON property `subcomponents`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent>]
        attr_accessor :subcomponents
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::ApigeeV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component = args[:component] if args.key?(:component)
          @subcomponents = args[:subcomponents] if args.key?(:subcomponents)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Component is an individual security element that is scored.
      class GoogleCloudApigeeV1ScoreComponent
        include Google::Apis::Core::Hashable
      
        # Time when score was calculated.
        # Corresponds to the JSON property `calculateTime`
        # @return [String]
        attr_accessor :calculate_time
      
        # Time in the requested time period when data was last captured to compute the
        # score.
        # Corresponds to the JSON property `dataCaptureTime`
        # @return [String]
        attr_accessor :data_capture_time
      
        # List of paths for next components.
        # Corresponds to the JSON property `drilldownPaths`
        # @return [Array<String>]
        attr_accessor :drilldown_paths
      
        # List of recommendations to improve API security.
        # Corresponds to the JSON property `recommendations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendation>]
        attr_accessor :recommendations
      
        # Score for the component.
        # Corresponds to the JSON property `score`
        # @return [Fixnum]
        attr_accessor :score
      
        # Path of the component. Example: /org@myorg/envgroup@myenvgroup/proxies/proxy@
        # myproxy
        # Corresponds to the JSON property `scorePath`
        # @return [String]
        attr_accessor :score_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calculate_time = args[:calculate_time] if args.key?(:calculate_time)
          @data_capture_time = args[:data_capture_time] if args.key?(:data_capture_time)
          @drilldown_paths = args[:drilldown_paths] if args.key?(:drilldown_paths)
          @recommendations = args[:recommendations] if args.key?(:recommendations)
          @score = args[:score] if args.key?(:score)
          @score_path = args[:score_path] if args.key?(:score_path)
        end
      end
      
      # Recommendation based on security concerns and score.
      class GoogleCloudApigeeV1ScoreComponentRecommendation
        include Google::Apis::Core::Hashable
      
        # Actions for the recommendation to improve the security score.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationAction>]
        attr_accessor :actions
      
        # Description of the recommendation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Potential impact of this recommendation on the overall score. This denotes how
        # important this recommendation is to improve the score.
        # Corresponds to the JSON property `impact`
        # @return [Fixnum]
        attr_accessor :impact
      
        # Title represents recommendation title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @description = args[:description] if args.key?(:description)
          @impact = args[:impact] if args.key?(:impact)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Action to improve security score.
      class GoogleCloudApigeeV1ScoreComponentRecommendationAction
        include Google::Apis::Core::Hashable
      
        # Action context are all the relevant details for the action.
        # Corresponds to the JSON property `actionContext`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext]
        attr_accessor :action_context
      
        # Description of the action.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_context = args[:action_context] if args.key?(:action_context)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Action context are all the relevant details for the action.
      class GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext
        include Google::Apis::Core::Hashable
      
        # Documentation link for the action.
        # Corresponds to the JSON property `documentationLink`
        # @return [String]
        attr_accessor :documentation_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documentation_link = args[:documentation_link] if args.key?(:documentation_link)
        end
      end
      
      # A SecurityAction is rule that can be enforced at an environment level. The
      # result is one of: - A denied API call - An explicitly allowed API call - A
      # flagged API call (HTTP headers added before the target receives it) At least
      # one condition is required to create a SecurityAction.
      class GoogleCloudApigeeV1SecurityAction
        include Google::Apis::Core::Hashable
      
        # Message that should be set in case of an Allow Action. This does not have any
        # fields.
        # Corresponds to the JSON property `allow`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionAllow]
        attr_accessor :allow
      
        # Optional. If unset, this would apply to all proxies in the environment. If set,
        # this action is enforced only if at least one proxy in the repeated list is
        # deployed at the time of enforcement. If set, several restrictions are enforced
        # on SecurityActions. There can be at most 100 enabled actions with proxies set
        # in an env. Several other restrictions apply on conditions and are detailed
        # later.
        # Corresponds to the JSON property `apiProxies`
        # @return [Array<String>]
        attr_accessor :api_proxies
      
        # The following are a list of conditions. A valid SecurityAction must contain at
        # least one condition. Within a condition, each element is ORed. Across
        # conditions elements are ANDed. For example if a SecurityAction has the
        # following: ip_address_ranges: ["ip1", "ip2"] and bot_reasons: ["Flooder", "
        # Robot Abuser"] then this is interpreted as: enforce the action if the incoming
        # request has ((ip_address_ranges = "ip1" OR ip_address_ranges = "ip2") AND (
        # bot_reasons="Flooder" OR bot_reasons="Robot Abuser")). Conditions other than
        # ip_address_ranges and bot_reasons cannot be ANDed.
        # Corresponds to the JSON property `conditionConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionConditionConfig]
        attr_accessor :condition_config
      
        # Output only. The create time for this SecurityAction.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Message that should be set in case of a Deny Action.
        # Corresponds to the JSON property `deny`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionDeny]
        attr_accessor :deny
      
        # Optional. An optional user provided description of the SecurityAction.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The expiration for this SecurityAction.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The message that should be set in the case of a Flag action.
        # Corresponds to the JSON property `flag`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionFlag]
        attr_accessor :flag
      
        # Immutable. This field is ignored during creation as per AIP-133. Please set
        # the `security_action_id` field in the CreateSecurityActionRequest when
        # creating a new SecurityAction. Format: organizations/`org`/environments/`env`/
        # securityActions/`security_action`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Only an ENABLED SecurityAction is enforced. An ENABLED
        # SecurityAction past its expiration time will not be enforced.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Input only. The TTL for this SecurityAction.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Output only. The update time for this SecurityAction. This reflects when this
        # SecurityAction changed states.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow = args[:allow] if args.key?(:allow)
          @api_proxies = args[:api_proxies] if args.key?(:api_proxies)
          @condition_config = args[:condition_config] if args.key?(:condition_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deny = args[:deny] if args.key?(:deny)
          @description = args[:description] if args.key?(:description)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @flag = args[:flag] if args.key?(:flag)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @ttl = args[:ttl] if args.key?(:ttl)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message that should be set in case of an Allow Action. This does not have any
      # fields.
      class GoogleCloudApigeeV1SecurityActionAllow
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The following are a list of conditions. A valid SecurityAction must contain at
      # least one condition. Within a condition, each element is ORed. Across
      # conditions elements are ANDed. For example if a SecurityAction has the
      # following: ip_address_ranges: ["ip1", "ip2"] and bot_reasons: ["Flooder", "
      # Robot Abuser"] then this is interpreted as: enforce the action if the incoming
      # request has ((ip_address_ranges = "ip1" OR ip_address_ranges = "ip2") AND (
      # bot_reasons="Flooder" OR bot_reasons="Robot Abuser")). Conditions other than
      # ip_address_ranges and bot_reasons cannot be ANDed.
      class GoogleCloudApigeeV1SecurityActionConditionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A list of access_tokens. Limit 1000 per action.
        # Corresponds to the JSON property `accessTokens`
        # @return [Array<String>]
        attr_accessor :access_tokens
      
        # Optional. A list of API keys. Limit 1000 per action.
        # Corresponds to the JSON property `apiKeys`
        # @return [Array<String>]
        attr_accessor :api_keys
      
        # Optional. A list of API Products. Limit 1000 per action.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<String>]
        attr_accessor :api_products
      
        # Optional. A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/
        # wiki/Autonomous_system_(Internet) This uses int64 instead of uint32 because of
        # https://linter.aip.dev/141/forbidden-types.
        # Corresponds to the JSON property `asns`
        # @return [Array<Fixnum>]
        attr_accessor :asns
      
        # Optional. A list of Bot Reasons. Current options: Flooder, Brute Guessor,
        # Static Content Scraper, OAuth Abuser, Robot Abuser, TorListRule, Advanced
        # Anomaly Detection, Advanced API Scraper, Search Engine Crawlers, Public Clouds,
        # Public Cloud AWS, Public Cloud Azure, and Public Cloud Google.
        # Corresponds to the JSON property `botReasons`
        # @return [Array<String>]
        attr_accessor :bot_reasons
      
        # Optional. A list of developer apps. Limit 1000 per action.
        # Corresponds to the JSON property `developerApps`
        # @return [Array<String>]
        attr_accessor :developer_apps
      
        # Optional. A list of developers. Limit 1000 per action.
        # Corresponds to the JSON property `developers`
        # @return [Array<String>]
        attr_accessor :developers
      
        # Optional. Act only on particular HTTP methods. E.g. A read-only API can block
        # POST/PUT/DELETE methods. Accepted values are: GET, HEAD, POST, PUT, DELETE,
        # CONNECT, OPTIONS, TRACE and PATCH.
        # Corresponds to the JSON property `httpMethods`
        # @return [Array<String>]
        attr_accessor :http_methods
      
        # Optional. A list of IP addresses. This could be either IPv4 or IPv6. Limited
        # to 100 per action.
        # Corresponds to the JSON property `ipAddressRanges`
        # @return [Array<String>]
        attr_accessor :ip_address_ranges
      
        # Optional. A list of countries/region codes to act on, e.g. US. This follows
        # https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # Optional. A list of user agents to deny. We look for exact matches. Limit 50
        # per action.
        # Corresponds to the JSON property `userAgents`
        # @return [Array<String>]
        attr_accessor :user_agents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_tokens = args[:access_tokens] if args.key?(:access_tokens)
          @api_keys = args[:api_keys] if args.key?(:api_keys)
          @api_products = args[:api_products] if args.key?(:api_products)
          @asns = args[:asns] if args.key?(:asns)
          @bot_reasons = args[:bot_reasons] if args.key?(:bot_reasons)
          @developer_apps = args[:developer_apps] if args.key?(:developer_apps)
          @developers = args[:developers] if args.key?(:developers)
          @http_methods = args[:http_methods] if args.key?(:http_methods)
          @ip_address_ranges = args[:ip_address_ranges] if args.key?(:ip_address_ranges)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @user_agents = args[:user_agents] if args.key?(:user_agents)
        end
      end
      
      # Message that should be set in case of a Deny Action.
      class GoogleCloudApigeeV1SecurityActionDeny
        include Google::Apis::Core::Hashable
      
        # Optional. The HTTP response code if the Action = DENY.
        # Corresponds to the JSON property `responseCode`
        # @return [Fixnum]
        attr_accessor :response_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_code = args[:response_code] if args.key?(:response_code)
        end
      end
      
      # The message that should be set in the case of a Flag action.
      class GoogleCloudApigeeV1SecurityActionFlag
        include Google::Apis::Core::Hashable
      
        # Optional. A list of HTTP headers to be sent to the target in case of a FLAG
        # SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionHttpHeader>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # An HTTP header.
      class GoogleCloudApigeeV1SecurityActionHttpHeader
        include Google::Apis::Core::Hashable
      
        # The header name to be sent to the target.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The header value to be sent to the target.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # SecurityActionsConfig reflects the current state of the SecurityActions
      # feature. This is a singleton resource: https://google.aip.dev/156
      class GoogleCloudApigeeV1SecurityActionsConfig
        include Google::Apis::Core::Hashable
      
        # The flag that controls whether this feature is enabled. This is `unset` by
        # default. When this flag is `false`, even if individual rules are enabled, no
        # SecurityActions will be enforced.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # This is a singleton resource, the name will always be set by SecurityActions
        # and any user input will be ignored. The name is always: `organizations/`org`/
        # environments/`env`/security_actions_config`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time for configuration.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The security assessment result for one resource.
      class GoogleCloudApigeeV1SecurityAssessmentResult
        include Google::Apis::Core::Hashable
      
        # The time of the assessment of this resource. This could lag behind `
        # assessment_time` due to caching within the backend.
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
        # @return [Google::Apis::ApigeeV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Resource for which we are computing security assessment.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultResource]
        attr_accessor :resource
      
        # The result of the assessment.
        # Corresponds to the JSON property `scoringResult`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResult]
        attr_accessor :scoring_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @resource = args[:resource] if args.key?(:resource)
          @scoring_result = args[:scoring_result] if args.key?(:scoring_result)
        end
      end
      
      # Resource for which we are computing security assessment.
      class GoogleCloudApigeeV1SecurityAssessmentResultResource
        include Google::Apis::Core::Hashable
      
        # Required. Name of this resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The revision id for the resource. In case of Apigee, this is proxy revision id.
        # Corresponds to the JSON property `resourceRevisionId`
        # @return [String]
        attr_accessor :resource_revision_id
      
        # Required. Type of this resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @resource_revision_id = args[:resource_revision_id] if args.key?(:resource_revision_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The result of the assessment.
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResult
        include Google::Apis::Core::Hashable
      
        # The recommendations of the assessment. The key is the "name" of the assessment
        # (not display_name), and the value are the recommendations.
        # Corresponds to the JSON property `assessmentRecommendations`
        # @return [Hash<String,Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation>]
        attr_accessor :assessment_recommendations
      
        # The time when resource data was last fetched for this resource. This time may
        # be different than when the resource was actually updated due to lag in data
        # collection.
        # Corresponds to the JSON property `dataUpdateTime`
        # @return [String]
        attr_accessor :data_update_time
      
        # The number of failed assessments grouped by its weight. Keys are one of the
        # following: "MAJOR", "MODERATE", "MINOR".
        # Corresponds to the JSON property `failedAssessmentPerWeight`
        # @return [Hash<String,Fixnum>]
        attr_accessor :failed_assessment_per_weight
      
        # The security score of the assessment.
        # Corresponds to the JSON property `score`
        # @return [Fixnum]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assessment_recommendations = args[:assessment_recommendations] if args.key?(:assessment_recommendations)
          @data_update_time = args[:data_update_time] if args.key?(:data_update_time)
          @failed_assessment_per_weight = args[:failed_assessment_per_weight] if args.key?(:failed_assessment_per_weight)
          @score = args[:score] if args.key?(:score)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # The message format of a recommendation from the assessment.
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation
        include Google::Apis::Core::Hashable
      
        # The display name of the assessment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The recommended steps of the assessment.
        # Corresponds to the JSON property `recommendations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation>]
        attr_accessor :recommendations
      
        # Score impact indicates the impact on the overall score if the assessment were
        # to pass.
        # Corresponds to the JSON property `scoreImpact`
        # @return [Fixnum]
        attr_accessor :score_impact
      
        # Verdict indicates the assessment result.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        # The weight of the assessment which was set in the profile.
        # Corresponds to the JSON property `weight`
        # @return [String]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @recommendations = args[:recommendations] if args.key?(:recommendations)
          @score_impact = args[:score_impact] if args.key?(:score_impact)
          @verdict = args[:verdict] if args.key?(:verdict)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # The format of the assessment recommendation.
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation
        include Google::Apis::Core::Hashable
      
        # The description of the recommendation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The format for a link in the recommendation.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink]
        attr_accessor :link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @link = args[:link] if args.key?(:link)
        end
      end
      
      # The format for a link in the recommendation.
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink
        include Google::Apis::Core::Hashable
      
        # The text of the url. (ie: "Learn more")
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The link itself.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents an SecurityIncident resource.
      class GoogleCloudApigeeV1SecurityIncident
        include Google::Apis::Core::Hashable
      
        # Output only. Detection types which are part of the incident. Examples: Flooder,
        # OAuth Abuser, Static Content Scraper, Anomaly Detection.
        # Corresponds to the JSON property `detectionTypes`
        # @return [Array<String>]
        attr_accessor :detection_types
      
        # Optional. Display name of the security incident.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The time when events associated with the incident were first
        # detected.
        # Corresponds to the JSON property `firstDetectedTime`
        # @return [String]
        attr_accessor :first_detected_time
      
        # Output only. The time when events associated with the incident were last
        # detected.
        # Corresponds to the JSON property `lastDetectedTime`
        # @return [String]
        attr_accessor :last_detected_time
      
        # Output only. The time when the incident observability was last changed.
        # Corresponds to the JSON property `lastObservabilityChangeTime`
        # @return [String]
        attr_accessor :last_observability_change_time
      
        # Immutable. Name of the security incident resource. Format: organizations/`org`/
        # environments/`environment`/securityIncidents/`incident` Example: organizations/
        # apigee-org/environments/dev/securityIncidents/1234-5678-9101-1111
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Indicates if the user archived this incident.
        # Corresponds to the JSON property `observability`
        # @return [String]
        attr_accessor :observability
      
        # Output only. Risk level of the incident.
        # Corresponds to the JSON property `riskLevel`
        # @return [String]
        attr_accessor :risk_level
      
        # Total traffic detected as part of the incident.
        # Corresponds to the JSON property `trafficCount`
        # @return [Fixnum]
        attr_accessor :traffic_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detection_types = args[:detection_types] if args.key?(:detection_types)
          @display_name = args[:display_name] if args.key?(:display_name)
          @first_detected_time = args[:first_detected_time] if args.key?(:first_detected_time)
          @last_detected_time = args[:last_detected_time] if args.key?(:last_detected_time)
          @last_observability_change_time = args[:last_observability_change_time] if args.key?(:last_observability_change_time)
          @name = args[:name] if args.key?(:name)
          @observability = args[:observability] if args.key?(:observability)
          @risk_level = args[:risk_level] if args.key?(:risk_level)
          @traffic_count = args[:traffic_count] if args.key?(:traffic_count)
        end
      end
      
      # Security monitoring condition for risk assessment version 2.
      class GoogleCloudApigeeV1SecurityMonitoringCondition
        include Google::Apis::Core::Hashable
      
        # Output only. The time of the security monitoring condition creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Message for the array of resources. For Apigee, the proxies are resources.
        # Corresponds to the JSON property `include`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray]
        attr_accessor :include
      
        # Message for include_all_resources option.
        # Corresponds to the JSON property `includeAllResources`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll]
        attr_accessor :include_all_resources
      
        # Identifier. Name of the security monitoring condition resource. Format:
        # organizations/`org`/securityMonitoringConditions/`
        # security_monitoring_condition`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. ID of security profile of the security monitoring condition.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # Required. Scope of the security monitoring condition. For Apigee, the
        # environment is the scope of the resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Output only. Total number of deployed resources within scope.
        # Corresponds to the JSON property `totalDeployedResources`
        # @return [Fixnum]
        attr_accessor :total_deployed_resources
      
        # Output only. Total number of monitored resources within this condition.
        # Corresponds to the JSON property `totalMonitoredResources`
        # @return [Fixnum]
        attr_accessor :total_monitored_resources
      
        # Output only. The time of the security monitoring condition update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @include = args[:include] if args.key?(:include)
          @include_all_resources = args[:include_all_resources] if args.key?(:include_all_resources)
          @name = args[:name] if args.key?(:name)
          @profile = args[:profile] if args.key?(:profile)
          @scope = args[:scope] if args.key?(:scope)
          @total_deployed_resources = args[:total_deployed_resources] if args.key?(:total_deployed_resources)
          @total_monitored_resources = args[:total_monitored_resources] if args.key?(:total_monitored_resources)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a SecurityProfile resource.
      class GoogleCloudApigeeV1SecurityProfile
        include Google::Apis::Core::Hashable
      
        # Description of the security profile.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # DEPRECATED: DO NOT USE Display name of the security profile.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # List of environments attached to security profile.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironment>]
        attr_accessor :environments
      
        # Output only. Maximum security score that can be generated by this profile.
        # Corresponds to the JSON property `maxScore`
        # @return [Fixnum]
        attr_accessor :max_score
      
        # Output only. Minimum security score that can be generated by this profile.
        # Corresponds to the JSON property `minScore`
        # @return [Fixnum]
        attr_accessor :min_score
      
        # Immutable. Name of the security profile resource. Format: organizations/`org`/
        # securityProfiles/`profile`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ProfileConfig defines a set of categories and policies which will be used to
        # compute security score.
        # Corresponds to the JSON property `profileConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfig]
        attr_accessor :profile_config
      
        # Output only. The time when revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. Revision ID of the security profile.
        # Corresponds to the JSON property `revisionId`
        # @return [Fixnum]
        attr_accessor :revision_id
      
        # Output only. DEPRECATED: DO NOT USE The time when revision was published. Once
        # published, the security profile revision cannot be updated further and can be
        # attached to environments.
        # Corresponds to the JSON property `revisionPublishTime`
        # @return [String]
        attr_accessor :revision_publish_time
      
        # Output only. The time when revision was updated.
        # Corresponds to the JSON property `revisionUpdateTime`
        # @return [String]
        attr_accessor :revision_update_time
      
        # List of profile scoring configs in this revision.
        # Corresponds to the JSON property `scoringConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileScoringConfig>]
        attr_accessor :scoring_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environments = args[:environments] if args.key?(:environments)
          @max_score = args[:max_score] if args.key?(:max_score)
          @min_score = args[:min_score] if args.key?(:min_score)
          @name = args[:name] if args.key?(:name)
          @profile_config = args[:profile_config] if args.key?(:profile_config)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @revision_publish_time = args[:revision_publish_time] if args.key?(:revision_publish_time)
          @revision_update_time = args[:revision_update_time] if args.key?(:revision_update_time)
          @scoring_configs = args[:scoring_configs] if args.key?(:scoring_configs)
        end
      end
      
      # Environment information of attached environments. Scoring an environment is
      # enabled only if it is attached to a security profile.
      class GoogleCloudApigeeV1SecurityProfileEnvironment
        include Google::Apis::Core::Hashable
      
        # Output only. Time at which environment was attached to the security profile.
        # Corresponds to the JSON property `attachTime`
        # @return [String]
        attr_accessor :attach_time
      
        # Output only. Name of the environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attach_time = args[:attach_time] if args.key?(:attach_time)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # Represents a SecurityProfileEnvironmentAssociation resource.
      class GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation
        include Google::Apis::Core::Hashable
      
        # Output only. The time when environment was attached to the security profile.
        # Corresponds to the JSON property `attachTime`
        # @return [String]
        attr_accessor :attach_time
      
        # Immutable. Name of the environment that the profile is attached to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # DEPRECATED: DO NOT USE Revision ID of the security profile.
        # Corresponds to the JSON property `securityProfileRevisionId`
        # @return [Fixnum]
        attr_accessor :security_profile_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attach_time = args[:attach_time] if args.key?(:attach_time)
          @name = args[:name] if args.key?(:name)
          @security_profile_revision_id = args[:security_profile_revision_id] if args.key?(:security_profile_revision_id)
        end
      end
      
      # Security configurations to manage scoring.
      class GoogleCloudApigeeV1SecurityProfileScoringConfig
        include Google::Apis::Core::Hashable
      
        # Description of the config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Path of the component config used for scoring.
        # Corresponds to the JSON property `scorePath`
        # @return [String]
        attr_accessor :score_path
      
        # Title of the config.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @score_path = args[:score_path] if args.key?(:score_path)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Security profile for risk assessment version 2.
      class GoogleCloudApigeeV1SecurityProfileV2
        include Google::Apis::Core::Hashable
      
        # Output only. The time of the security profile creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the security profile.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Whether the security profile is google defined.
        # Corresponds to the JSON property `googleDefined`
        # @return [Boolean]
        attr_accessor :google_defined
        alias_method :google_defined?, :google_defined
      
        # Identifier. Name of the security profile v2 resource. Format: organizations/`
        # org`/securityProfilesV2/`profile`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The configuration for each assessment in this profile. Key is the
        # name/id of the assessment.
        # Corresponds to the JSON property `profileAssessmentConfigs`
        # @return [Hash<String,Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig>]
        attr_accessor :profile_assessment_configs
      
        # Output only. The time of the security profile update.
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
          @google_defined = args[:google_defined] if args.key?(:google_defined)
          @name = args[:name] if args.key?(:name)
          @profile_assessment_configs = args[:profile_assessment_configs] if args.key?(:profile_assessment_configs)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The configuration definition for a specific assessment.
      class GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig
        include Google::Apis::Core::Hashable
      
        # The weight of the assessment.
        # Corresponds to the JSON property `weight`
        # @return [String]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # SecurityReport saves all the information about the created security report.
      class GoogleCloudApigeeV1SecurityReport
        include Google::Apis::Core::Hashable
      
        # Creation time of the query.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # Display Name specified by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Hostname is available only when query is executed at host level.
        # Corresponds to the JSON property `envgroupHostname`
        # @return [String]
        attr_accessor :envgroup_hostname
      
        # Error is set when query fails.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # ExecutionTime is available only after the query is completed.
        # Corresponds to the JSON property `executionTime`
        # @return [String]
        attr_accessor :execution_time
      
        # Metadata for the security report.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata]
        attr_accessor :query_params
      
        # Report Definition ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Contains informations about the security report results.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultMetadata]
        attr_accessor :result
      
        # ResultFileSize is available only after the query is completed.
        # Corresponds to the JSON property `resultFileSize`
        # @return [String]
        attr_accessor :result_file_size
      
        # ResultRows is available only after the query is completed.
        # Corresponds to the JSON property `resultRows`
        # @return [Fixnum]
        attr_accessor :result_rows
      
        # Self link of the query. Example: `/organizations/myorg/environments/myenv/
        # securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if
        # query is running at host level: `/organizations/myorg/hostSecurityReports/
        # 9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        # Query state could be "enqueued", "running", "completed", "expired" and "failed"
        # .
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Last updated timestamp for the query.
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] if args.key?(:created)
          @display_name = args[:display_name] if args.key?(:display_name)
          @envgroup_hostname = args[:envgroup_hostname] if args.key?(:envgroup_hostname)
          @error = args[:error] if args.key?(:error)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @query_params = args[:query_params] if args.key?(:query_params)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @result = args[:result] if args.key?(:result)
          @result_file_size = args[:result_file_size] if args.key?(:result_file_size)
          @result_rows = args[:result_rows] if args.key?(:result_rows)
          @self = args[:self] if args.key?(:self)
          @state = args[:state] if args.key?(:state)
          @updated = args[:updated] if args.key?(:updated)
        end
      end
      
      # Metadata for the security report.
      class GoogleCloudApigeeV1SecurityReportMetadata
        include Google::Apis::Core::Hashable
      
        # Dimensions of the SecurityReport.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # End timestamp of the query range.
        # Corresponds to the JSON property `endTimestamp`
        # @return [String]
        attr_accessor :end_timestamp
      
        # Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:
        # sum_bot_count"]
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # MIME type / Output format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Start timestamp of the query range.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        # Query GroupBy time unit. Example: "seconds", "minute", "hour"
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @metrics = args[:metrics] if args.key?(:metrics)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
        end
      end
      
      # Body structure when user makes a request to create a security report.
      class GoogleCloudApigeeV1SecurityReportQuery
        include Google::Apis::Core::Hashable
      
        # Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to
        # the `,` (comma) character. Supported delimiter characters include comma (`,`),
        # pipe (`|`), and tab (`\t`).
        # Corresponds to the JSON property `csvDelimiter`
        # @return [String]
        attr_accessor :csv_delimiter
      
        # A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-
        # reference#dimensions
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Security Report display name which users can specify.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Hostname needs to be specified if query intends to run at host level. This
        # field is only allowed when query is submitted by CreateHostSecurityReport
        # where analytics data will be grouped by organization and hostname.
        # Corresponds to the JSON property `envgroupHostname`
        # @return [String]
        attr_accessor :envgroup_hostname
      
        # Boolean expression that can be used to filter data. Filter expressions can be
        # combined using AND/OR terms and should be fully parenthesized to avoid
        # ambiguity. See Analytics metrics, dimensions, and filters reference https://
        # docs.apigee.com/api-platform/analytics/analytics-reference for more
        # information on the fields available to filter on. For more information on the
        # tokens that you use to build filter expressions, see Filter expression syntax.
        # https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-
        # expression-syntax
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Time unit used to group the result set. Valid values include: second, minute,
        # hour, day, week, or month. If a query includes groupByTimeUnit, then the
        # result is an aggregation based on the specified time unit and the resultant
        # timestamp does not include milliseconds precision. If a query omits
        # groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
        # Corresponds to the JSON property `groupByTimeUnit`
        # @return [String]
        attr_accessor :group_by_time_unit
      
        # Maximum number of rows that can be returned in the result.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # A list of Metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQueryMetric>]
        attr_accessor :metrics
      
        # Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the
        # delimiter for CSV output using the csvDelimiter property.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Report Definition ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Required. Time range for the query. Can use the following predefined strings
        # to specify the time range: `last60minutes` `last24hours` `last7days` Or,
        # specify the timeRange as a structure describing start and end timestamps in
        # the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": ` "start": "2018-
        # 07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" `
        # Corresponds to the JSON property `timeRange`
        # @return [Object]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_delimiter = args[:csv_delimiter] if args.key?(:csv_delimiter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @envgroup_hostname = args[:envgroup_hostname] if args.key?(:envgroup_hostname)
          @filter = args[:filter] if args.key?(:filter)
          @group_by_time_unit = args[:group_by_time_unit] if args.key?(:group_by_time_unit)
          @limit = args[:limit] if args.key?(:limit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Metric of the Query
      class GoogleCloudApigeeV1SecurityReportQueryMetric
        include Google::Apis::Core::Hashable
      
        # Aggregation function: avg, min, max, or sum.
        # Corresponds to the JSON property `aggregationFunction`
        # @return [String]
        attr_accessor :aggregation_function
      
        # Alias for the metric. Alias will be used to replace metric name in query
        # results.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Required. Metric name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # One of `+`, `-`, `/`, `%`, `*`.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Operand value should be provided when operator is set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_function = args[:aggregation_function] if args.key?(:aggregation_function)
          @alias = args[:alias] if args.key?(:alias)
          @name = args[:name] if args.key?(:name)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Contains informations about the security report results.
      class GoogleCloudApigeeV1SecurityReportResultMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Expire_time is set to 7 days after report creation. Query result
        # will be unaccessable after this time. Example: "2021-05-04T13:38:52-07:00"
        # Corresponds to the JSON property `expires`
        # @return [String]
        attr_accessor :expires
      
        # Self link of the query results. Example: `/organizations/myorg/environments/
        # myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or
        # following format if query is running at host level: `/organizations/myorg/
        # hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires = args[:expires] if args.key?(:expires)
          @self = args[:self] if args.key?(:self)
        end
      end
      
      # The response for security report result view APIs.
      class GoogleCloudApigeeV1SecurityReportResultView
        include Google::Apis::Core::Hashable
      
        # Error code when there is a failure.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Error message when there is a failure.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Metadata for the security report.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata]
        attr_accessor :metadata
      
        # Rows of security report result. Each row is a JSON object. Example: `sum(
        # message_count): 1, developer_app: "(not set)",…`
        # Corresponds to the JSON property `rows`
        # @return [Array<Object>]
        attr_accessor :rows
      
        # State of retrieving ResultView.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rows = args[:rows] if args.key?(:rows)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # SecuritySettings reflects the current state of the SecuritySettings feature.
      class GoogleCloudApigeeV1SecuritySettings
        include Google::Apis::Core::Hashable
      
        # Optional. If true the user consents to the use of ML models for Abuse
        # detection.
        # Corresponds to the JSON property `mlRetrainingFeedbackEnabled`
        # @return [Boolean]
        attr_accessor :ml_retraining_feedback_enabled
        alias_method :ml_retraining_feedback_enabled?, :ml_retraining_feedback_enabled
      
        # Identifier. Full resource name is always `organizations/`org`/securitySettings`
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ml_retraining_feedback_enabled = args[:ml_retraining_feedback_enabled] if args.key?(:ml_retraining_feedback_enabled)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ServiceIssuersMapping
        include Google::Apis::Core::Hashable
      
        # List of trusted issuer email ids.
        # Corresponds to the JSON property `emailIds`
        # @return [Array<String>]
        attr_accessor :email_ids
      
        # String indicating the Apigee service name.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_ids = args[:email_ids] if args.key?(:email_ids)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Session carries the debug session id and its creation time.
      class GoogleCloudApigeeV1Session
        include Google::Apis::Core::Hashable
      
        # The debug session ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The first transaction creation timestamp in millisecond, recorded by UAP.
        # Corresponds to the JSON property `timestampMs`
        # @return [Fixnum]
        attr_accessor :timestamp_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @timestamp_ms = args[:timestamp_ms] if args.key?(:timestamp_ms)
        end
      end
      
      # Request for SetAddonEnablement.
      class GoogleCloudApigeeV1SetAddonEnablementRequest
        include Google::Apis::Core::Hashable
      
        # If the Analytics should be enabled in the environment.
        # Corresponds to the JSON property `analyticsEnabled`
        # @return [Boolean]
        attr_accessor :analytics_enabled
        alias_method :analytics_enabled?, :analytics_enabled
      
        # If the API Security should be enabled in the environment.
        # Corresponds to the JSON property `apiSecurityEnabled`
        # @return [Boolean]
        attr_accessor :api_security_enabled
        alias_method :api_security_enabled?, :api_security_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_enabled = args[:analytics_enabled] if args.key?(:analytics_enabled)
          @api_security_enabled = args[:api_security_enabled] if args.key?(:api_security_enabled)
        end
      end
      
      # Request for SetAddons.
      class GoogleCloudApigeeV1SetAddonsRequest
        include Google::Apis::Core::Hashable
      
        # Add-on configurations for the Apigee organization.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig]
        attr_accessor :addons_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
        end
      end
      
      # The metadata describing a shared flow
      class GoogleCloudApigeeV1SharedFlow
        include Google::Apis::Core::Hashable
      
        # The id of the most recently created revision for this shared flow.
        # Corresponds to the JSON property `latestRevisionId`
        # @return [String]
        attr_accessor :latest_revision_id
      
        # Metadata common to many entities in this API.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata]
        attr_accessor :meta_data
      
        # The ID of the shared flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of revisions of this shared flow.
        # Corresponds to the JSON property `revision`
        # @return [Array<String>]
        attr_accessor :revision
      
        # Optional. The ID of the space associated with this shared flow. Any IAM
        # policies applied to the space will control access to this shared flow. To
        # learn how Spaces can be used to manage resources, read the [Apigee Spaces
        # Overview](https://cloud.google.com/apigee/docs/api-platform/system-
        # administration/spaces/apigee-spaces-overview).
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_revision_id = args[:latest_revision_id] if args.key?(:latest_revision_id)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # The metadata describing a shared flow revision.
      class GoogleCloudApigeeV1SharedFlowRevision
        include Google::Apis::Core::Hashable
      
        # Version of the API proxy configuration schema. Currently, only 4.0 is
        # supported.
        # Corresponds to the JSON property `configurationVersion`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion]
        attr_accessor :configuration_version
      
        # A textual description of the shared flow revision.
        # Corresponds to the JSON property `contextInfo`
        # @return [String]
        attr_accessor :context_info
      
        # Time at which this shared flow revision was created, in milliseconds since
        # epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Description of the shared flow revision.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name of this shared flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A Key-Value map of metadata about this shared flow revision.
        # Corresponds to the JSON property `entityMetaDataAsProperties`
        # @return [Hash<String,String>]
        attr_accessor :entity_meta_data_as_properties
      
        # Time at which this shared flow revision was most recently modified, in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # The resource ID of the parent shared flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of policy names included in this shared flow revision.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFiles`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles]
        attr_accessor :resource_files
      
        # A list of the resources included in this shared flow revision formatted as "`
        # type`://`name`".
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # The resource ID of this revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # A list of the shared flow names included in this shared flow revision.
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<String>]
        attr_accessor :shared_flows
      
        # The string "Application"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration_version = args[:configuration_version] if args.key?(:configuration_version)
          @context_info = args[:context_info] if args.key?(:context_info)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_meta_data_as_properties = args[:entity_meta_data_as_properties] if args.key?(:entity_meta_data_as_properties)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @policies = args[:policies] if args.key?(:policies)
          @resource_files = args[:resource_files] if args.key?(:resource_files)
          @resources = args[:resources] if args.key?(:resources)
          @revision = args[:revision] if args.key?(:revision)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Organization space resource.
      class GoogleCloudApigeeV1Space
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp of the space.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Display name of the space.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Identifier. Id of the space. This field is used as the resource
        # name, and must follow [AIP-122](https://google.aip.dev/122) guidelines.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Last modified timestamp of the space.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Encapsulates a `stats` response.
      class GoogleCloudApigeeV1Stats
        include Google::Apis::Core::Hashable
      
        # List of query results on the environment level.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsEnvironmentStats>]
        attr_accessor :environments
      
        # List of query results grouped by host.
        # Corresponds to the JSON property `hosts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsHostStats>]
        attr_accessor :hosts
      
        # Encapsulates additional information about query execution.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata]
        attr_accessor :meta_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @hosts = args[:hosts] if args.key?(:hosts)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
        end
      end
      
      # Encapsulates the environment wrapper: ``` "environments": [ ` "metrics": [ ` "
      # name": "sum(message_count)", "values": [ "2.52056245E8" ] ` ], "name": "prod" `
      # ]```
      class GoogleCloudApigeeV1StatsEnvironmentStats
        include Google::Apis::Core::Hashable
      
        # List of metrics grouped under dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric>]
        attr_accessor :dimensions
      
        # In the final response, only one of the following fields will be present based
        # on the dimensions provided. If no dimensions are provided, then only top-level
        # metrics is provided. If dimensions are included, then there will be a top-
        # level dimensions field under environments which will contain metrics values
        # and the dimension name. Example: ``` "environments": [ ` "dimensions": [ ` "
        # metrics": [ ` "name": "sum(message_count)", "values": [ "2.14049521E8" ] ` ], "
        # name": "nit_proxy" ` ], "name": "prod" ` ]``` or ```"environments": [ ` "
        # metrics": [ ` "name": "sum(message_count)", "values": [ "2.19026331E8" ] ` ], "
        # name": "prod" ` ]``` List of metric values.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric>]
        attr_accessor :metrics
      
        # Name of the environment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Encapsulates the hostname wrapper: ``` "hosts": [ ` "metrics": [ ` "name": "
      # sum(message_count)", "values": [ "2.52056245E8" ] ` ], "name": "example.com" `
      # ]```
      class GoogleCloudApigeeV1StatsHostStats
        include Google::Apis::Core::Hashable
      
        # List of metrics grouped under dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric>]
        attr_accessor :dimensions
      
        # In the final response, only one of the following fields will be present based
        # on the dimensions provided. If no dimensions are provided, then only the top-
        # level metrics are provided. If dimensions are included, then there will be a
        # top-level dimensions field under hostnames which will contain metrics values
        # and the dimension name. Example: ``` "hosts": [ ` "dimensions": [ ` "metrics":
        # [ ` "name": "sum(message_count)", "values": [ "2.14049521E8" ] ` ], "name": "
        # nit_proxy" ` ], "name": "example.com" ` ]``` OR ```"hosts": [ ` "metrics": [ `
        # "name": "sum(message_count)", "values": [ "2.19026331E8" ] ` ], "name": "
        # example.com" ` ]``` List of metric values.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric>]
        attr_accessor :metrics
      
        # Hostname used in query.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Pub/Sub subscription of an environment.
      class GoogleCloudApigeeV1Subscription
        include Google::Apis::Core::Hashable
      
        # Full name of the Pub/Sub subcription. Use the following structure in your
        # request: `subscription "projects/foo/subscription/bar"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1SyncAuthorization
        include Google::Apis::Core::Hashable
      
        # Entity tag (ETag) used for optimistic concurrency control as a way to help
        # prevent simultaneous updates from overwriting each other. For example, when
        # you call [getSyncAuthorization](organizations/getSyncAuthorization) an ETag is
        # returned in the response. Pass that ETag when calling the [
        # setSyncAuthorization](organizations/setSyncAuthorization) to ensure that you
        # are updating the correct version. If you don't pass the ETag in the call to `
        # setSyncAuthorization`, then the existing authorization is overwritten
        # indiscriminately. **Note**: We strongly recommend that you use the ETag in the
        # read-modify-write cycle to avoid race conditions.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Required. Array of service accounts to grant access to control plane resources,
        # each specified using the following format: `serviceAccount:` service-account-
        # name. The service-account-name is formatted like an email address. For example:
        # `my-synchronizer-manager-service_account@my_project_id.iam.gserviceaccount.
        # com` You might specify multiple service accounts, for example, if you have
        # multiple environments and wish to assign a unique service account to each one.
        # The service accounts must have **Apigee Synchronizer Manager** role. See also [
        # Create service accounts](https://cloud.google.com/apigee/docs/hybrid/latest/sa-
        # about#create-the-service-accounts).
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @identities = args[:identities] if args.key?(:identities)
        end
      end
      
      # TargetServer configuration. TargetServers are used to decouple a proxy
      # TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.
      class GoogleCloudApigeeV1TargetServer
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description of this TargetServer.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The host name this target connects to. Value must be a valid
        # hostname as described by RFC-1123.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Optional. Enabling/disabling a TargetServer is useful when TargetServers are
        # used in load balancing configurations, and one or more TargetServers need to
        # taken out of rotation periodically. Defaults to true.
        # Corresponds to the JSON property `isEnabled`
        # @return [Boolean]
        attr_accessor :is_enabled
        alias_method :is_enabled?, :is_enabled
      
        # Required. The resource id of this target server. Values must match the regular
        # expression
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The port number this target connects to on the given host. Value
        # must be between 1 and 65535, inclusive.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Immutable. The protocol used by this TargetServer.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # TLS configuration information for virtual hosts and TargetServers.
        # Corresponds to the JSON property `sSLInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfo]
        attr_accessor :s_sl_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @host = args[:host] if args.key?(:host)
          @is_enabled = args[:is_enabled] if args.key?(:is_enabled)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @s_sl_info = args[:s_sl_info] if args.key?(:s_sl_info)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TargetServerConfig
        include Google::Apis::Core::Hashable
      
        # Whether the target server is enabled. An empty/omitted value for this field
        # should be interpreted as true.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Host name of the target server.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Target server revision name in the following format: `organizations/`org`/
        # environments/`env`/targetservers/`targetserver`/revisions/`rev``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Port number for the target server.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The protocol used by this target server.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # TLS settings for the target server.
        # Corresponds to the JSON property `tlsInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoConfig]
        attr_accessor :tls_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @host = args[:host] if args.key?(:host)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @tls_info = args[:tls_info] if args.key?(:tls_info)
        end
      end
      
      # The response for TestDatastore
      class GoogleCloudApigeeV1TestDatastoreResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Error message of test connection failure
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. It could be `completed` or `failed`
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # TLS configuration information for virtual hosts and TargetServers.
      class GoogleCloudApigeeV1TlsInfo
        include Google::Apis::Core::Hashable
      
        # The SSL/TLS cipher suites to be used. For programmable proxies, it must be one
        # of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/
        # technotes/guides/security/StandardNames.html#ciphersuites. For configurable
        # proxies, it must follow the configuration specified in: https://
        # commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-
        # suite-configuration. This setting has no effect for configurable proxies when
        # negotiating TLS 1.3.
        # Corresponds to the JSON property `ciphers`
        # @return [Array<String>]
        attr_accessor :ciphers
      
        # Optional. Enables two-way TLS.
        # Corresponds to the JSON property `clientAuthEnabled`
        # @return [Boolean]
        attr_accessor :client_auth_enabled
        alias_method :client_auth_enabled?, :client_auth_enabled
      
        # The TLS Common Name of the certificate.
        # Corresponds to the JSON property `commonName`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoCommonName]
        attr_accessor :common_name
      
        # Required. Enables TLS. If false, neither one-way nor two-way TLS will be
        # enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # TLS is strictly enforced.
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # If true, Edge ignores TLS certificate errors. Valid when configuring TLS for
        # target servers and target endpoints, and when configuring virtual hosts that
        # use 2-way TLS. When used with a target endpoint/target server, if the backend
        # system uses SNI and returns a cert with a subject Distinguished Name (DN) that
        # does not match the hostname, there is no way to ignore the error and the
        # connection fails.
        # Corresponds to the JSON property `ignoreValidationErrors`
        # @return [Boolean]
        attr_accessor :ignore_validation_errors
        alias_method :ignore_validation_errors?, :ignore_validation_errors
      
        # Required if `client_auth_enabled` is true. The resource ID for the alias
        # containing the private key and cert.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Required if `client_auth_enabled` is true. The resource ID of the keystore.
        # Corresponds to the JSON property `keyStore`
        # @return [String]
        attr_accessor :key_store
      
        # The TLS versioins to be used.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # The resource ID of the truststore.
        # Corresponds to the JSON property `trustStore`
        # @return [String]
        attr_accessor :trust_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphers = args[:ciphers] if args.key?(:ciphers)
          @client_auth_enabled = args[:client_auth_enabled] if args.key?(:client_auth_enabled)
          @common_name = args[:common_name] if args.key?(:common_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @enforce = args[:enforce] if args.key?(:enforce)
          @ignore_validation_errors = args[:ignore_validation_errors] if args.key?(:ignore_validation_errors)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @key_store = args[:key_store] if args.key?(:key_store)
          @protocols = args[:protocols] if args.key?(:protocols)
          @trust_store = args[:trust_store] if args.key?(:trust_store)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TlsInfoCommonName
        include Google::Apis::Core::Hashable
      
        # The TLS Common Name string of the certificate.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Indicates whether the cert should be matched against as a wildcard cert.
        # Corresponds to the JSON property `wildcardMatch`
        # @return [Boolean]
        attr_accessor :wildcard_match
        alias_method :wildcard_match?, :wildcard_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @wildcard_match = args[:wildcard_match] if args.key?(:wildcard_match)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TlsInfoConfig
        include Google::Apis::Core::Hashable
      
        # List of ciphers that are granted access.
        # Corresponds to the JSON property `ciphers`
        # @return [Array<String>]
        attr_accessor :ciphers
      
        # Flag that specifies whether client-side authentication is enabled for the
        # target server. Enables two-way TLS.
        # Corresponds to the JSON property `clientAuthEnabled`
        # @return [Boolean]
        attr_accessor :client_auth_enabled
        alias_method :client_auth_enabled?, :client_auth_enabled
      
        # Common name to validate the target server against.
        # Corresponds to the JSON property `commonName`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CommonNameConfig]
        attr_accessor :common_name
      
        # Flag that specifies whether one-way TLS is enabled. Set to `true` to enable
        # one-way TLS.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Flag that enforces TLS settings
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # Flag that specifies whether to ignore TLS certificate validation errors. Set
        # to `true` to ignore errors.
        # Corresponds to the JSON property `ignoreValidationErrors`
        # @return [Boolean]
        attr_accessor :ignore_validation_errors
        alias_method :ignore_validation_errors?, :ignore_validation_errors
      
        # Name of the alias used for client-side authentication in the following format:
        # `organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Reference name and alias pair to use for client-side authentication.
        # Corresponds to the JSON property `keyAliasReference`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyAliasReference]
        attr_accessor :key_alias_reference
      
        # List of TLS protocols that are granted access.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # Name of the keystore or keystore reference containing trusted certificates for
        # the server in the following format: `organizations/`org`/environments/`env`/
        # keystores/`keystore`` or `organizations/`org`/environments/`env`/references/`
        # reference``
        # Corresponds to the JSON property `trustStore`
        # @return [String]
        attr_accessor :trust_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphers = args[:ciphers] if args.key?(:ciphers)
          @client_auth_enabled = args[:client_auth_enabled] if args.key?(:client_auth_enabled)
          @common_name = args[:common_name] if args.key?(:common_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @enforce = args[:enforce] if args.key?(:enforce)
          @ignore_validation_errors = args[:ignore_validation_errors] if args.key?(:ignore_validation_errors)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @key_alias_reference = args[:key_alias_reference] if args.key?(:key_alias_reference)
          @protocols = args[:protocols] if args.key?(:protocols)
          @trust_store = args[:trust_store] if args.key?(:trust_store)
        end
      end
      
      # TraceConfig defines the configurations in an environment of distributed trace.
      class GoogleCloudApigeeV1TraceConfig
        include Google::Apis::Core::Hashable
      
        # Required. Endpoint of the exporter.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Required. Exporter that is used to view the distributed trace captured using
        # OpenCensus. An exporter sends traces to any backend that is capable of
        # consuming them. Recorded spans can be exported by registered exporters.
        # Corresponds to the JSON property `exporter`
        # @return [String]
        attr_accessor :exporter
      
        # TraceSamplingConfig represents the detail settings of distributed tracing.
        # Only the fields that are defined in the distributed trace configuration can be
        # overridden using the distribute trace configuration override APIs.
        # Corresponds to the JSON property `samplingConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig]
        attr_accessor :sampling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @exporter = args[:exporter] if args.key?(:exporter)
          @sampling_config = args[:sampling_config] if args.key?(:sampling_config)
        end
      end
      
      # A representation of a configuration override.
      class GoogleCloudApigeeV1TraceConfigOverride
        include Google::Apis::Core::Hashable
      
        # ID of the API proxy that will have its trace configuration overridden.
        # Corresponds to the JSON property `apiProxy`
        # @return [String]
        attr_accessor :api_proxy
      
        # ID of the trace configuration override specified as a system-generated UUID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # TraceSamplingConfig represents the detail settings of distributed tracing.
        # Only the fields that are defined in the distributed trace configuration can be
        # overridden using the distribute trace configuration override APIs.
        # Corresponds to the JSON property `samplingConfig`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig]
        attr_accessor :sampling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy = args[:api_proxy] if args.key?(:api_proxy)
          @name = args[:name] if args.key?(:name)
          @sampling_config = args[:sampling_config] if args.key?(:sampling_config)
        end
      end
      
      # TraceSamplingConfig represents the detail settings of distributed tracing.
      # Only the fields that are defined in the distributed trace configuration can be
      # overridden using the distribute trace configuration override APIs.
      class GoogleCloudApigeeV1TraceSamplingConfig
        include Google::Apis::Core::Hashable
      
        # Sampler of distributed tracing. OFF is the default value.
        # Corresponds to the JSON property `sampler`
        # @return [String]
        attr_accessor :sampler
      
        # Field sampling rate. This value is only applicable when using the PROBABILITY
        # sampler. The supported values are > 0 and <= 0.5.
        # Corresponds to the JSON property `samplingRate`
        # @return [Float]
        attr_accessor :sampling_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sampler = args[:sampler] if args.key?(:sampler)
          @sampling_rate = args[:sampling_rate] if args.key?(:sampling_rate)
        end
      end
      
      # Request for UpdateAppGroupAppKey
      class GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest
        include Google::Apis::Core::Hashable
      
        # Approve or revoke the consumer key by setting this value to `approve` or `
        # revoke` respectively. The `Content-Type` header, if set, must be set to `
        # application/octet-stream`, with empty body.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The list of API products that will be associated with the credential. This
        # list will be appended to the existing list of associated API Products for this
        # App Key. Duplicates will be ignored.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<String>]
        attr_accessor :api_products
      
        # AppGroupAppKey contains all the information associated with the credentials.
        # Corresponds to the JSON property `appGroupAppKey`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        attr_accessor :app_group_app_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_group_app_key = args[:app_group_app_key] if args.key?(:app_group_app_key)
        end
      end
      
      # Details on why a resource update failed in the runtime.
      class GoogleCloudApigeeV1UpdateError
        include Google::Apis::Core::Hashable
      
        # Status code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # User-friendly error message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The sub resource specific to this error (e.g. a proxy deployed within the
        # EnvironmentConfig). If empty the error refers to the top level resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # A string that uniquely identifies the type of error. This provides a more
        # reliable means to deduplicate errors across revisions and instances.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @resource = args[:resource] if args.key?(:resource)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request for UpdateSecurityIncident.
      class GoogleCloudApigeeV1UpdateSecurityIncidentRequest
        include Google::Apis::Core::Hashable
      
        # Represents an SecurityIncident resource.
        # Corresponds to the JSON property `securityIncident`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident]
        attr_accessor :security_incident
      
        # Required. The list of fields to update. Allowed fields are: LINT.IfChange(
        # allowed_update_fields_comment) - observability LINT.ThenChange()
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @security_incident = args[:security_incident] if args.key?(:security_incident)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1AuditLogConfig>]
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
      class GoogleIamV1AuditLogConfig
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
      class GoogleIamV1Binding
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
        # @return [Google::Apis::ApigeeV1::GoogleTypeExpr]
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
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1AuditConfig>]
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
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1Binding>]
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
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
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
        # @return [Google::Apis::ApigeeV1::GoogleIamV1Policy]
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
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
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
      class GoogleIamV1TestIamPermissionsResponse
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
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleLongrunningOperation>]
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::ApigeeV1::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes what preconditions have failed. For example, if an RPC failed
      # because it required the Terms of Service to be acknowledged, it could list the
      # terms of service violation in the PreconditionFailure message.
      class GoogleRpcPreconditionFailure
        include Google::Apis::Core::Hashable
      
        # Describes all precondition violations.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleRpcPreconditionFailureViolation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # A message type used to describe a single precondition failure.
      class GoogleRpcPreconditionFailureViolation
        include Google::Apis::Core::Hashable
      
        # A description of how the precondition failed. Developers can use this
        # description to understand how to fix the failure. For example: "Terms of
        # service not accepted".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The subject, relative to the type, that failed. For example, "google.com/cloud"
        # relative to the "TOS" type would indicate which terms of service is being
        # referenced.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # The type of PreconditionFailure. We recommend using a service-specific enum
        # type to define the supported precondition violation subjects. For example, "
        # TOS" for "Terms of Service violation".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @subject = args[:subject] if args.key?(:subject)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      class GoogleTypeExpr
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
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class GoogleTypeInterval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
    end
  end
end
