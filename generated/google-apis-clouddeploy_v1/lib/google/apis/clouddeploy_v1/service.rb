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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ClouddeployV1
      # Cloud Deploy API
      #
      # 
      #
      # @example
      #    require 'google/apis/clouddeploy_v1'
      #
      #    Clouddeploy = Google::Apis::ClouddeployV1 # Alias the module
      #    service = Clouddeploy::CloudDeployService.new
      #
      # @see https://cloud.google.com/deploy/
      class CloudDeployService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://clouddeploy.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-clouddeploy_v1',
                client_version: Google::Apis::ClouddeployV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Location::Representation
          command.response_class = Google::Apis::ClouddeployV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration for a location.
        # @param [String] name
        #   Required. Name of requested configuration.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Config] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Config]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Config::Representation
          command.response_class = Google::Apis::ClouddeployV1::Config
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new CustomTargetType in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `CustomTargetType` must be
        #   created. The format is `projects/`project_id`/locations/`location_name``.
        # @param [Google::Apis::ClouddeployV1::CustomTargetType] custom_target_type_object
        # @param [String] custom_target_type_id
        #   Required. ID of the `CustomTargetType`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_custom_target_type(parent, custom_target_type_object = nil, custom_target_type_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customTargetTypes', options)
          command.request_representation = Google::Apis::ClouddeployV1::CustomTargetType::Representation
          command.request_object = custom_target_type_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['customTargetTypeId'] = custom_target_type_id unless custom_target_type_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single CustomTargetType.
        # @param [String] name
        #   Required. The name of the `CustomTargetType` to delete. Format must be `
        #   projects/`project_id`/locations/`location_name`/customTargetTypes/`
        #   custom_target_type``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, then deleting an already deleted or non-existing `
        #   CustomTargetType` will succeed.
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated but no actual change is
        #   made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_custom_target_type(name, allow_missing: nil, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single CustomTargetType.
        # @param [String] name
        #   Required. Name of the `CustomTargetType`. Format must be `projects/`project_id`
        #   /locations/`location_name`/customTargetTypes/`custom_target_type``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::CustomTargetType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::CustomTargetType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_custom_target_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::CustomTargetType::Representation
          command.response_class = Google::Apis::ClouddeployV1::CustomTargetType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_custom_target_type_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CustomTargetTypes in a given project and location.
        # @param [String] parent
        #   Required. The parent that owns this collection of custom target types. Format
        #   must be `projects/`project_id`/locations/`location_name``.
        # @param [String] filter
        #   Optional. Filter custom target types to be returned. See https://google.aip.
        #   dev/160 for more details.
        # @param [String] order_by
        #   Optional. Field to sort by. See https://google.aip.dev/132#ordering for more
        #   details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `CustomTargetType` objects to return. The
        #   service may return fewer than this value. If unspecified, at most 50 `
        #   CustomTargetType` objects will be returned. The maximum value is 1000; values
        #   above 1000 will be set to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCustomTargetTypes` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   provided parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListCustomTargetTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListCustomTargetTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_custom_target_types(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customTargetTypes', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListCustomTargetTypesResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListCustomTargetTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single CustomTargetType.
        # @param [String] name
        #   Identifier. Name of the `CustomTargetType`. Format is `projects/`project`/
        #   locations/`location`/customTargetTypes/`customTargetType``. The `
        #   customTargetType` component must match `[a-z]([a-z0-9-]`0,61`[a-z0-9])?`
        # @param [Google::Apis::ClouddeployV1::CustomTargetType] custom_target_type_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, updating a `CustomTargetType` that does not exist
        #   will result in the creation of a new `CustomTargetType`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten by the
        #   update in the `CustomTargetType` resource. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it's in the mask. If the user doesn't provide a mask then
        #   all fields are overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_custom_target_type(name, custom_target_type_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ClouddeployV1::CustomTargetType::Representation
          command.request_object = custom_target_type_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_custom_target_type_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ClouddeployV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DeliveryPipeline in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `DeliveryPipeline` must be
        #   created. The format is `projects/`project_id`/locations/`location_name``.
        # @param [Google::Apis::ClouddeployV1::DeliveryPipeline] delivery_pipeline_object
        # @param [String] delivery_pipeline_id
        #   Required. ID of the `DeliveryPipeline`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_delivery_pipeline(parent, delivery_pipeline_object = nil, delivery_pipeline_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/deliveryPipelines', options)
          command.request_representation = Google::Apis::ClouddeployV1::DeliveryPipeline::Representation
          command.request_object = delivery_pipeline_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['deliveryPipelineId'] = delivery_pipeline_id unless delivery_pipeline_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single DeliveryPipeline.
        # @param [String] name
        #   Required. The name of the `DeliveryPipeline` to delete. The format is `
        #   projects/`project_id`/locations/`location_name`/deliveryPipelines/`
        #   pipeline_name``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, then deleting an already deleted or non-existing `
        #   DeliveryPipeline` will succeed.
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
        # @param [Boolean] force
        #   Optional. If set to true, all child resources under this pipeline will also be
        #   deleted. Otherwise, the request will only work if the pipeline has no child
        #   resources.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request and preview the review, but do not
        #   actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_delivery_pipeline(name, allow_missing: nil, etag: nil, force: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single DeliveryPipeline.
        # @param [String] name
        #   Required. Name of the `DeliveryPipeline`. Format must be `projects/`project_id`
        #   /locations/`location_name`/deliveryPipelines/`pipeline_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::DeliveryPipeline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::DeliveryPipeline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::DeliveryPipeline::Representation
          command.response_class = Google::Apis::ClouddeployV1::DeliveryPipeline
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeliveryPipelines in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of pipelines. Format must be `
        #   projects/`project_id`/locations/`location_name``.
        # @param [String] filter
        #   Filter pipelines to be returned. See https://google.aip.dev/160 for more
        #   details.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   The maximum number of pipelines to return. The service may return fewer than
        #   this value. If unspecified, at most 50 pipelines will be returned. The maximum
        #   value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListDeliveryPipelines` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListDeliveryPipelinesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListDeliveryPipelinesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipelines(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deliveryPipelines', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListDeliveryPipelinesResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListDeliveryPipelinesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single DeliveryPipeline.
        # @param [String] name
        #   Identifier. Name of the `DeliveryPipeline`. Format is `projects/`project`/
        #   locations/`location`/deliveryPipelines/`deliveryPipeline``. The `
        #   deliveryPipeline` component must match `[a-z]([a-z0-9-]`0,61`[a-z0-9])?`
        # @param [Google::Apis::ClouddeployV1::DeliveryPipeline] delivery_pipeline_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, updating a `DeliveryPipeline` that does not exist
        #   will result in the creation of a new `DeliveryPipeline`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten by the
        #   update in the `DeliveryPipeline` resource. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it's in the mask. If the user doesn't provide a mask then
        #   all fields are overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_delivery_pipeline(name, delivery_pipeline_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ClouddeployV1::DeliveryPipeline::Representation
          command.request_object = delivery_pipeline_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `Rollout` to roll back the specified target.
        # @param [String] name
        #   Required. The `DeliveryPipeline` for which the rollback `Rollout` must be
        #   created. The format is `projects/`project_id`/locations/`location_name`/
        #   deliveryPipelines/`pipeline_name``.
        # @param [Google::Apis::ClouddeployV1::RollbackTargetRequest] rollback_target_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::RollbackTargetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::RollbackTargetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_delivery_pipeline_target(name, rollback_target_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rollbackTarget', options)
          command.request_representation = Google::Apis::ClouddeployV1::RollbackTargetRequest::Representation
          command.request_object = rollback_target_request_object
          command.response_representation = Google::Apis::ClouddeployV1::RollbackTargetResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::RollbackTargetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_delivery_pipeline_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ClouddeployV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_delivery_pipeline_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ClouddeployV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ClouddeployV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an AutomationRun. The `state` of the `AutomationRun` after cancelling
        # is `CANCELLED`. `CancelAutomationRun` can be called on AutomationRun in the
        # state `IN_PROGRESS` and `PENDING`; AutomationRun in a different state returns
        # an `FAILED_PRECONDITION` error.
        # @param [String] name
        #   Required. Name of the `AutomationRun`. Format is `projects/`project`/locations/
        #   `location`/deliveryPipelines/`delivery_pipeline`/automationRuns/`
        #   automation_run``.
        # @param [Google::Apis::ClouddeployV1::CancelAutomationRunRequest] cancel_automation_run_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::CancelAutomationRunResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::CancelAutomationRunResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_automation_run(name, cancel_automation_run_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ClouddeployV1::CancelAutomationRunRequest::Representation
          command.request_object = cancel_automation_run_request_object
          command.response_representation = Google::Apis::ClouddeployV1::CancelAutomationRunResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::CancelAutomationRunResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AutomationRun.
        # @param [String] name
        #   Required. Name of the `AutomationRun`. Format must be `projects/`project`/
        #   locations/`location`/deliveryPipelines/`delivery_pipeline`/automationRuns/`
        #   automation_run``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::AutomationRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::AutomationRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_automation_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::AutomationRun::Representation
          command.response_class = Google::Apis::ClouddeployV1::AutomationRun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AutomationRuns in a given project and location.
        # @param [String] parent
        #   Required. The parent `Delivery Pipeline`, which owns this collection of
        #   automationRuns. Format must be `projects/`project`/locations/`location`/
        #   deliveryPipelines/`delivery_pipeline``.
        # @param [String] filter
        #   Filter automationRuns to be returned. All fields can be used in the filter.
        # @param [String] order_by
        #   Field to sort by.
        # @param [Fixnum] page_size
        #   The maximum number of automationRuns to return. The service may return fewer
        #   than this value. If unspecified, at most 50 automationRuns will be returned.
        #   The maximum value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAutomationRuns` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListAutomationRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListAutomationRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipeline_automation_runs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/automationRuns', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListAutomationRunsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListAutomationRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Automation in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `Automation` must be created. The
        #   format is `projects/`project_id`/locations/`location_name`/deliveryPipelines/`
        #   pipeline_name``.
        # @param [Google::Apis::ClouddeployV1::Automation] automation_object
        # @param [String] automation_id
        #   Required. ID of the `Automation`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_delivery_pipeline_automation(parent, automation_object = nil, automation_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/automations', options)
          command.request_representation = Google::Apis::ClouddeployV1::Automation::Representation
          command.request_object = automation_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['automationId'] = automation_id unless automation_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Automation resource.
        # @param [String] name
        #   Required. The name of the `Automation` to delete. The format is `projects/`
        #   project_id`/locations/`location_name`/deliveryPipelines/`pipeline_name`/
        #   automations/`automation_name``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, then deleting an already deleted or non-existing `
        #   Automation` will succeed.
        # @param [String] etag
        #   Optional. The weak etag of the request. This checksum is computed by the
        #   server based on the value of other fields, and may be sent on update and
        #   delete requests to ensure the client has an up-to-date value before proceeding.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request and verify whether the resource exists,
        #   but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_delivery_pipeline_automation(name, allow_missing: nil, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Automation.
        # @param [String] name
        #   Required. Name of the `Automation`. Format must be `projects/`project_id`/
        #   locations/`location_name`/deliveryPipelines/`pipeline_name`/automations/`
        #   automation_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Automation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Automation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_automation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Automation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Automation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Automations in a given project and location.
        # @param [String] parent
        #   Required. The parent `Delivery Pipeline`, which owns this collection of
        #   automations. Format must be `projects/`project_id`/locations/`location_name`/
        #   deliveryPipelines/`pipeline_name``.
        # @param [String] filter
        #   Filter automations to be returned. All fields can be used in the filter.
        # @param [String] order_by
        #   Field to sort by.
        # @param [Fixnum] page_size
        #   The maximum number of automations to return. The service may return fewer than
        #   this value. If unspecified, at most 50 automations will be returned. The
        #   maximum value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAutomations` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other provided parameters
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListAutomationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListAutomationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipeline_automations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/automations', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListAutomationsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListAutomationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Automation resource.
        # @param [String] name
        #   Output only. Name of the `Automation`. Format is `projects/`project`/locations/
        #   `location`/deliveryPipelines/`delivery_pipeline`/automations/`automation``.
        # @param [Google::Apis::ClouddeployV1::Automation] automation_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, updating a `Automation` that does not exist will
        #   result in the creation of a new `Automation`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten by the
        #   update in the `Automation` resource. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it's in the mask. If the user doesn't provide a mask then all
        #   fields are overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_delivery_pipeline_automation(name, automation_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ClouddeployV1::Automation::Representation
          command.request_object = automation_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Abandons a Release in the Delivery Pipeline.
        # @param [String] name
        #   Required. Name of the Release. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release``.
        # @param [Google::Apis::ClouddeployV1::AbandonReleaseRequest] abandon_release_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::AbandonReleaseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::AbandonReleaseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def abandon_release(name, abandon_release_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:abandon', options)
          command.request_representation = Google::Apis::ClouddeployV1::AbandonReleaseRequest::Representation
          command.request_object = abandon_release_request_object
          command.response_representation = Google::Apis::ClouddeployV1::AbandonReleaseResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::AbandonReleaseResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Release in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `Release` is created. The format
        #   is `projects/`project_id`/locations/`location_name`/deliveryPipelines/`
        #   pipeline_name``.
        # @param [Google::Apis::ClouddeployV1::Release] release_object
        # @param [Array<String>, String] override_deploy_policy
        #   Optional. Deploy policies to override. Format is `projects/`project`/locations/
        #   `location`/deployPolicies/`deployPolicy``.
        # @param [String] release_id
        #   Required. ID of the `Release`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_delivery_pipeline_release(parent, release_object = nil, override_deploy_policy: nil, release_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/releases', options)
          command.request_representation = Google::Apis::ClouddeployV1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['overrideDeployPolicy'] = override_deploy_policy unless override_deploy_policy.nil?
          command.query['releaseId'] = release_id unless release_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Release.
        # @param [String] name
        #   Required. Name of the `Release`. Format must be `projects/`project_id`/
        #   locations/`location_name`/deliveryPipelines/`pipeline_name`/releases/`
        #   release_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_release(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Release::Representation
          command.response_class = Google::Apis::ClouddeployV1::Release
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Releases in a given project and location.
        # @param [String] parent
        #   Required. The `DeliveryPipeline` which owns this collection of `Release`
        #   objects.
        # @param [String] filter
        #   Optional. Filter releases to be returned. See https://google.aip.dev/160 for
        #   more details.
        # @param [String] order_by
        #   Optional. Field to sort by. See https://google.aip.dev/132#ordering for more
        #   details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `Release` objects to return. The service may
        #   return fewer than this value. If unspecified, at most 50 `Release` objects
        #   will be returned. The maximum value is 1000; values above 1000 will be set to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReleases` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipeline_releases(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/releases', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Advances a Rollout in a given project and location.
        # @param [String] name
        #   Required. Name of the Rollout. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout``.
        # @param [Google::Apis::ClouddeployV1::AdvanceRolloutRequest] advance_rollout_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::AdvanceRolloutResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::AdvanceRolloutResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def advance_rollout(name, advance_rollout_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:advance', options)
          command.request_representation = Google::Apis::ClouddeployV1::AdvanceRolloutRequest::Representation
          command.request_object = advance_rollout_request_object
          command.response_representation = Google::Apis::ClouddeployV1::AdvanceRolloutResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::AdvanceRolloutResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves a Rollout.
        # @param [String] name
        #   Required. Name of the Rollout. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout``.
        # @param [Google::Apis::ClouddeployV1::ApproveRolloutRequest] approve_rollout_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ApproveRolloutResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ApproveRolloutResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_rollout(name, approve_rollout_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approve', options)
          command.request_representation = Google::Apis::ClouddeployV1::ApproveRolloutRequest::Representation
          command.request_object = approve_rollout_request_object
          command.response_representation = Google::Apis::ClouddeployV1::ApproveRolloutResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ApproveRolloutResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a Rollout in a given project and location.
        # @param [String] name
        #   Required. Name of the Rollout. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout``.
        # @param [Google::Apis::ClouddeployV1::CancelRolloutRequest] cancel_rollout_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::CancelRolloutResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::CancelRolloutResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_rollout(name, cancel_rollout_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ClouddeployV1::CancelRolloutRequest::Representation
          command.request_object = cancel_rollout_request_object
          command.response_representation = Google::Apis::ClouddeployV1::CancelRolloutResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::CancelRolloutResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Rollout in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `Rollout` must be created. The
        #   format is `projects/`project_id`/locations/`location_name`/deliveryPipelines/`
        #   pipeline_name`/releases/`release_name``.
        # @param [Google::Apis::ClouddeployV1::Rollout] rollout_object
        # @param [Array<String>, String] override_deploy_policy
        #   Optional. Deploy policies to override. Format is `projects/`project`/locations/
        #   `location`/deployPolicies/`deployPolicy``.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] rollout_id
        #   Required. ID of the `Rollout`.
        # @param [String] starting_phase_id
        #   Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will
        #   start at the first phase.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_delivery_pipeline_release_rollout(parent, rollout_object = nil, override_deploy_policy: nil, request_id: nil, rollout_id: nil, starting_phase_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/rollouts', options)
          command.request_representation = Google::Apis::ClouddeployV1::Rollout::Representation
          command.request_object = rollout_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['overrideDeployPolicy'] = override_deploy_policy unless override_deploy_policy.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['rolloutId'] = rollout_id unless rollout_id.nil?
          command.query['startingPhaseId'] = starting_phase_id unless starting_phase_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Rollout.
        # @param [String] name
        #   Required. Name of the `Rollout`. Format must be `projects/`project_id`/
        #   locations/`location_name`/deliveryPipelines/`pipeline_name`/releases/`
        #   release_name`/rollouts/`rollout_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Rollout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Rollout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_release_rollout(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Rollout::Representation
          command.response_class = Google::Apis::ClouddeployV1::Rollout
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Ignores the specified Job in a Rollout.
        # @param [String] rollout
        #   Required. Name of the Rollout. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout``.
        # @param [Google::Apis::ClouddeployV1::IgnoreJobRequest] ignore_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::IgnoreJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::IgnoreJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ignore_rollout_job(rollout, ignore_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+rollout}:ignoreJob', options)
          command.request_representation = Google::Apis::ClouddeployV1::IgnoreJobRequest::Representation
          command.request_object = ignore_job_request_object
          command.response_representation = Google::Apis::ClouddeployV1::IgnoreJobResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::IgnoreJobResponse
          command.params['rollout'] = rollout unless rollout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Rollouts in a given project and location.
        # @param [String] parent
        #   Required. The `Release` which owns this collection of `Rollout` objects.
        # @param [String] filter
        #   Optional. Filter rollouts to be returned. See https://google.aip.dev/160 for
        #   more details.
        # @param [String] order_by
        #   Optional. Field to sort by. See https://google.aip.dev/132#ordering for more
        #   details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `Rollout` objects to return. The service may
        #   return fewer than this value. If unspecified, at most 50 `Rollout` objects
        #   will be returned. The maximum value is 1000; values above 1000 will be set to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListRollouts` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListRolloutsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListRolloutsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipeline_release_rollouts(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/rollouts', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListRolloutsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListRolloutsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retries the specified Job in a Rollout.
        # @param [String] rollout
        #   Required. Name of the Rollout. Format is `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout``.
        # @param [Google::Apis::ClouddeployV1::RetryJobRequest] retry_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::RetryJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::RetryJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retry_rollout_job(rollout, retry_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+rollout}:retryJob', options)
          command.request_representation = Google::Apis::ClouddeployV1::RetryJobRequest::Representation
          command.request_object = retry_job_request_object
          command.response_representation = Google::Apis::ClouddeployV1::RetryJobResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::RetryJobResponse
          command.params['rollout'] = rollout unless rollout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single JobRun.
        # @param [String] name
        #   Required. Name of the `JobRun`. Format must be `projects/`project_id`/
        #   locations/`location_name`/deliveryPipelines/`pipeline_name`/releases/`
        #   release_name`/rollouts/`rollout_name`/jobRuns/`job_run_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::JobRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::JobRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_delivery_pipeline_release_rollout_job_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::JobRun::Representation
          command.response_class = Google::Apis::ClouddeployV1::JobRun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists JobRuns in a given project and location.
        # @param [String] parent
        #   Required. The `Rollout` which owns this collection of `JobRun` objects.
        # @param [String] filter
        #   Optional. Filter results to be returned. See https://google.aip.dev/160 for
        #   more details.
        # @param [String] order_by
        #   Optional. Field to sort by. See https://google.aip.dev/132#ordering for more
        #   details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `JobRun` objects to return. The service may
        #   return fewer than this value. If unspecified, at most 50 `JobRun` objects will
        #   be returned. The maximum value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListJobRuns` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListJobRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListJobRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_delivery_pipeline_release_rollout_job_runs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/jobRuns', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListJobRunsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListJobRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Terminates a Job Run in a given project and location.
        # @param [String] name
        #   Required. Name of the `JobRun`. Format must be `projects/`project`/locations/`
        #   location`/deliveryPipelines/`deliveryPipeline`/releases/`release`/rollouts/`
        #   rollout`/jobRuns/`jobRun``.
        # @param [Google::Apis::ClouddeployV1::TerminateJobRunRequest] terminate_job_run_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::TerminateJobRunResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::TerminateJobRunResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def terminate_job_run(name, terminate_job_run_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:terminate', options)
          command.request_representation = Google::Apis::ClouddeployV1::TerminateJobRunRequest::Representation
          command.request_object = terminate_job_run_request_object
          command.response_representation = Google::Apis::ClouddeployV1::TerminateJobRunResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::TerminateJobRunResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DeployPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `DeployPolicy` must be created.
        #   The format is `projects/`project_id`/locations/`location_name``.
        # @param [Google::Apis::ClouddeployV1::DeployPolicy] deploy_policy_object
        # @param [String] deploy_policy_id
        #   Required. ID of the `DeployPolicy`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_deploy_policy(parent, deploy_policy_object = nil, deploy_policy_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/deployPolicies', options)
          command.request_representation = Google::Apis::ClouddeployV1::DeployPolicy::Representation
          command.request_object = deploy_policy_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['deployPolicyId'] = deploy_policy_id unless deploy_policy_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single DeployPolicy.
        # @param [String] name
        #   Required. The name of the `DeployPolicy` to delete. The format is `projects/`
        #   project_id`/locations/`location_name`/deployPolicies/`deploy_policy_name``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, then deleting an already deleted or non-existing `
        #   DeployPolicy` will succeed.
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request and preview the review, but do not
        #   actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_deploy_policy(name, allow_missing: nil, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single DeployPolicy.
        # @param [String] name
        #   Required. Name of the `DeployPolicy`. Format must be `projects/`project_id`/
        #   locations/`location_name`/deployPolicies/`deploy_policy_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::DeployPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::DeployPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_deploy_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::DeployPolicy::Representation
          command.response_class = Google::Apis::ClouddeployV1::DeployPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_deploy_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DeployPolicies in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of deploy policies. Format
        #   must be `projects/`project_id`/locations/`location_name``.
        # @param [String] filter
        #   Filter deploy policies to be returned. See https://google.aip.dev/160 for more
        #   details. All fields can be used in the filter.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   The maximum number of deploy policies to return. The service may return fewer
        #   than this value. If unspecified, at most 50 deploy policies will be returned.
        #   The maximum value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListDeployPolicies` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListDeployPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListDeployPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_deploy_policies(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployPolicies', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListDeployPoliciesResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListDeployPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single DeployPolicy.
        # @param [String] name
        #   Output only. Name of the `DeployPolicy`. Format is `projects/`project`/
        #   locations/`location`/deployPolicies/`deployPolicy``. The `deployPolicy`
        #   component must match `[a-z]([a-z0-9-]`0,61`[a-z0-9])?`
        # @param [Google::Apis::ClouddeployV1::DeployPolicy] deploy_policy_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, updating a `DeployPolicy` that does not exist will
        #   result in the creation of a new `DeployPolicy`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten by the
        #   update in the `DeployPolicy` resource. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it's in the mask. If the user doesn't provide a mask then all
        #   fields are overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_deploy_policy(name, deploy_policy_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ClouddeployV1::DeployPolicy::Representation
          command.request_object = deploy_policy_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_deploy_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ClouddeployV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::ClouddeployV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ClouddeployV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::ClouddeployV1::Empty::Representation
          command.response_class = Google::Apis::ClouddeployV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Empty::Representation
          command.response_class = Google::Apis::ClouddeployV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Target in a given project and location.
        # @param [String] parent
        #   Required. The parent collection in which the `Target` must be created. The
        #   format is `projects/`project_id`/locations/`location_name``.
        # @param [Google::Apis::ClouddeployV1::Target] target_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] target_id
        #   Required. ID of the `Target`.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_target(parent, target_object = nil, request_id: nil, target_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/targets', options)
          command.request_representation = Google::Apis::ClouddeployV1::Target::Representation
          command.request_object = target_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['targetId'] = target_id unless target_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Target.
        # @param [String] name
        #   Required. The name of the `Target` to delete. The format is `projects/`
        #   project_id`/locations/`location_name`/targets/`target_name``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, then deleting an already deleted or non-existing `
        #   Target` will succeed.
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request and preview the review, but do not
        #   actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_target(name, allow_missing: nil, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Target.
        # @param [String] name
        #   Required. Name of the `Target`. Format must be `projects/`project_id`/
        #   locations/`location_name`/targets/`target_name``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Target] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Target]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_target(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ClouddeployV1::Target::Representation
          command.response_class = Google::Apis::ClouddeployV1::Target
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_target_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Targets in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of targets. Format must be `
        #   projects/`project_id`/locations/`location_name``.
        # @param [String] filter
        #   Optional. Filter targets to be returned. See https://google.aip.dev/160 for
        #   more details.
        # @param [String] order_by
        #   Optional. Field to sort by. See https://google.aip.dev/132#ordering for more
        #   details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `Target` objects to return. The service may
        #   return fewer than this value. If unspecified, at most 50 `Target` objects will
        #   be returned. The maximum value is 1000; values above 1000 will be set to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListTargets` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other provided
        #   parameters match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::ListTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::ListTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_targets(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/targets', options)
          command.response_representation = Google::Apis::ClouddeployV1::ListTargetsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::ListTargetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Target.
        # @param [String] name
        #   Identifier. Name of the `Target`. Format is `projects/`project`/locations/`
        #   location`/targets/`target``. The `target` component must match `[a-z]([a-z0-9-]
        #   `0,61`[a-z0-9])?`
        # @param [Google::Apis::ClouddeployV1::Target] target_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, updating a `Target` that does not exist will result
        #   in the creation of a new `Target`.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server knows to ignore the request if
        #   it has already been completed. The server guarantees that for at least 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server can check if original operation
        #   with the same request ID was received, and if so, will ignore the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten by the
        #   update in the `Target` resource. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it's in the mask. If the user doesn't provide a mask then all fields are
        #   overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set to true, the request is validated and the user is provided
        #   with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_target(name, target_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ClouddeployV1::Target::Representation
          command.request_object = target_object
          command.response_representation = Google::Apis::ClouddeployV1::Operation::Representation
          command.response_class = Google::Apis::ClouddeployV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ClouddeployV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ClouddeployV1::Policy::Representation
          command.response_class = Google::Apis::ClouddeployV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ClouddeployV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouddeployV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouddeployV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_target_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ClouddeployV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ClouddeployV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ClouddeployV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
