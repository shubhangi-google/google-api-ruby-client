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
    module NetworkservicesV1
      # Network Services API
      #
      # 
      #
      # @example
      #    require 'google/apis/networkservices_v1'
      #
      #    Networkservices = Google::Apis::NetworkservicesV1 # Alias the module
      #    service = Networkservices::NetworkServicesService.new
      #
      # @see https://cloud.google.com/networking
      class NetworkServicesService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://networkservices.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-networkservices_v1',
                client_version: Google::Apis::NetworkservicesV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Location::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Location
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `AuthzExtension` resource in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `AuthzExtension` resource. Must be in the
        #   format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworkservicesV1::AuthzExtension] authz_extension_object
        # @param [String] authz_extension_id
        #   Required. User-provided ID of the `AuthzExtension` resource to be created.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authz_extension(parent, authz_extension_object = nil, authz_extension_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/authzExtensions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::AuthzExtension::Representation
          command.request_object = authz_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['authzExtensionId'] = authz_extension_id unless authz_extension_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `AuthzExtension` resource.
        # @param [String] name
        #   Required. The name of the `AuthzExtension` resource to delete. Must be in the
        #   format `projects/`project`/locations/`location`/authzExtensions/`
        #   authz_extension``.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authz_extension(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of the specified `AuthzExtension` resource.
        # @param [String] name
        #   Required. A name of the `AuthzExtension` resource to get. Must be in the
        #   format `projects/`project`/locations/`location`/authzExtensions/`
        #   authz_extension``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::AuthzExtension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::AuthzExtension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authz_extension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::AuthzExtension::Representation
          command.response_class = Google::Apis::NetworkservicesV1::AuthzExtension
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `AuthzExtension` resources in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the `AuthzExtension` resources
        #   are listed. These values are specified in the following format: `projects/`
        #   project`/locations/`location``.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint about how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server might return fewer items than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results that the server returns.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListAuthzExtensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListAuthzExtensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authz_extensions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authzExtensions', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListAuthzExtensionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListAuthzExtensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of the specified `AuthzExtension` resource.
        # @param [String] name
        #   Required. Identifier. Name of the `AuthzExtension` resource in the following
        #   format: `projects/`project`/locations/`location`/authzExtensions/`
        #   authz_extension``.
        # @param [Google::Apis::NetworkservicesV1::AuthzExtension] authz_extension_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Used to specify the fields to be overwritten in the `AuthzExtension`
        #   resource by the update. The fields specified in the `update_mask` are relative
        #   to the resource, not the full request. A field is overwritten if it is in the
        #   mask. If the user does not specify a mask, then all fields are overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authz_extension(name, authz_extension_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::AuthzExtension::Representation
          command.request_object = authz_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_edge_cache_keyset_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
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
        # @param [Google::Apis::NetworkservicesV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_edge_cache_keyset_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworkservicesV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
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
        # @param [Google::Apis::NetworkservicesV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_edge_cache_keyset_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_edge_cache_origin_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
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
        # @param [Google::Apis::NetworkservicesV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_edge_cache_origin_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworkservicesV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
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
        # @param [Google::Apis::NetworkservicesV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_edge_cache_origin_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_edge_cache_service_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
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
        # @param [Google::Apis::NetworkservicesV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_edge_cache_service_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworkservicesV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::Policy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Policy
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
        # @param [Google::Apis::NetworkservicesV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_edge_cache_service_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new EndpointPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the EndpointPolicy. Must be in the format `
        #   projects/*/locations/global`.
        # @param [Google::Apis::NetworkservicesV1::EndpointPolicy] endpoint_policy_object
        # @param [String] endpoint_policy_id
        #   Required. Short name of the EndpointPolicy resource to be created. E.g. "
        #   CustomECS".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_endpoint_policy(parent, endpoint_policy_object = nil, endpoint_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/endpointPolicies', options)
          command.request_representation = Google::Apis::NetworkservicesV1::EndpointPolicy::Representation
          command.request_object = endpoint_policy_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['endpointPolicyId'] = endpoint_policy_id unless endpoint_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single EndpointPolicy.
        # @param [String] name
        #   Required. A name of the EndpointPolicy to delete. Must be in the format `
        #   projects/*/locations/global/endpointPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_endpoint_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single EndpointPolicy.
        # @param [String] name
        #   Required. A name of the EndpointPolicy to get. Must be in the format `projects/
        #   */locations/global/endpointPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::EndpointPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::EndpointPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_endpoint_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::EndpointPolicy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::EndpointPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EndpointPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the EndpointPolicies should be
        #   listed, specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of EndpointPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListEndpointPoliciesResponse` Indicates that
        #   this is a continuation of a prior `ListEndpointPolicies` call, and that the
        #   system should return the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListEndpointPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListEndpointPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_endpoint_policies(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/endpointPolicies', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListEndpointPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListEndpointPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single EndpointPolicy.
        # @param [String] name
        #   Identifier. Name of the EndpointPolicy resource. It matches pattern `projects/`
        #   project`/locations/global/endpointPolicies/`endpoint_policy``.
        # @param [Google::Apis::NetworkservicesV1::EndpointPolicy] endpoint_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   EndpointPolicy resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_endpoint_policy(name, endpoint_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::EndpointPolicy::Representation
          command.request_object = endpoint_policy_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Gateway in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the Gateway. Must be in the format `projects/*
        #   /locations/*`.
        # @param [Google::Apis::NetworkservicesV1::Gateway] gateway_object
        # @param [String] gateway_id
        #   Required. Short name of the Gateway resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_gateway(parent, gateway_object = nil, gateway_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/gateways', options)
          command.request_representation = Google::Apis::NetworkservicesV1::Gateway::Representation
          command.request_object = gateway_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gatewayId'] = gateway_id unless gateway_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Gateway.
        # @param [String] name
        #   Required. A name of the Gateway to delete. Must be in the format `projects/*/
        #   locations/*/gateways/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Gateway.
        # @param [String] name
        #   Required. A name of the Gateway to get. Must be in the format `projects/*/
        #   locations/*/gateways/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Gateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Gateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Gateway::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Gateway
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Gateways in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the Gateways should be listed,
        #   specified in the format `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Maximum number of Gateways to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListGatewaysResponse` Indicates that this is a
        #   continuation of a prior `ListGateways` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListGatewaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListGatewaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gateways(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/gateways', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListGatewaysResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListGatewaysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Gateway.
        # @param [String] name
        #   Identifier. Name of the Gateway resource. It matches pattern `projects/*/
        #   locations/*/gateways/`.
        # @param [Google::Apis::NetworkservicesV1::Gateway] gateway_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   Gateway resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_gateway(name, gateway_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::Gateway::Representation
          command.request_object = gateway_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a single RouteView of a Gateway.
        # @param [String] name
        #   Required. Name of the GatewayRouteView resource. Formats: projects/`
        #   project_number`/locations/`location`/gateways/`gateway`/routeViews/`route_view`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::GatewayRouteView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::GatewayRouteView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway_route_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::GatewayRouteView::Representation
          command.response_class = Google::Apis::NetworkservicesV1::GatewayRouteView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists RouteViews
        # @param [String] parent
        #   Required. The Gateway to which a Route is associated. Formats: projects/`
        #   project_number`/locations/`location`/gateways/`gateway`
        # @param [Fixnum] page_size
        #   Maximum number of GatewayRouteViews to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListGatewayRouteViewsResponse` Indicates that
        #   this is a continuation of a prior `ListGatewayRouteViews` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListGatewayRouteViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListGatewayRouteViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gateway_route_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/routeViews', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListGatewayRouteViewsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListGatewayRouteViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new GrpcRoute in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the GrpcRoute. Must be in the format `
        #   projects/*/locations/global`.
        # @param [Google::Apis::NetworkservicesV1::GrpcRoute] grpc_route_object
        # @param [String] grpc_route_id
        #   Required. Short name of the GrpcRoute resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_grpc_route(parent, grpc_route_object = nil, grpc_route_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/grpcRoutes', options)
          command.request_representation = Google::Apis::NetworkservicesV1::GrpcRoute::Representation
          command.request_object = grpc_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['grpcRouteId'] = grpc_route_id unless grpc_route_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single GrpcRoute.
        # @param [String] name
        #   Required. A name of the GrpcRoute to delete. Must be in the format `projects/*/
        #   locations/global/grpcRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_grpc_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single GrpcRoute.
        # @param [String] name
        #   Required. A name of the GrpcRoute to get. Must be in the format `projects/*/
        #   locations/global/grpcRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::GrpcRoute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::GrpcRoute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_grpc_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::GrpcRoute::Representation
          command.response_class = Google::Apis::NetworkservicesV1::GrpcRoute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GrpcRoutes in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the GrpcRoutes should be listed,
        #   specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of GrpcRoutes to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListGrpcRoutesResponse` Indicates that this is
        #   a continuation of a prior `ListGrpcRoutes` call, and that the system should
        #   return the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListGrpcRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListGrpcRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_grpc_routes(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/grpcRoutes', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListGrpcRoutesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListGrpcRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single GrpcRoute.
        # @param [String] name
        #   Identifier. Name of the GrpcRoute resource. It matches pattern `projects/*/
        #   locations/global/grpcRoutes/`
        # @param [Google::Apis::NetworkservicesV1::GrpcRoute] grpc_route_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   GrpcRoute resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_grpc_route(name, grpc_route_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::GrpcRoute::Representation
          command.request_object = grpc_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new HttpRoute in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the HttpRoute. Must be in the format `
        #   projects/*/locations/global`.
        # @param [Google::Apis::NetworkservicesV1::HttpRoute] http_route_object
        # @param [String] http_route_id
        #   Required. Short name of the HttpRoute resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_http_route(parent, http_route_object = nil, http_route_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/httpRoutes', options)
          command.request_representation = Google::Apis::NetworkservicesV1::HttpRoute::Representation
          command.request_object = http_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['httpRouteId'] = http_route_id unless http_route_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single HttpRoute.
        # @param [String] name
        #   Required. A name of the HttpRoute to delete. Must be in the format `projects/*/
        #   locations/global/httpRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_http_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single HttpRoute.
        # @param [String] name
        #   Required. A name of the HttpRoute to get. Must be in the format `projects/*/
        #   locations/global/httpRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::HttpRoute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::HttpRoute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_http_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::HttpRoute::Representation
          command.response_class = Google::Apis::NetworkservicesV1::HttpRoute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists HttpRoute in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the HttpRoutes should be listed,
        #   specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of HttpRoutes to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListHttpRoutesResponse` Indicates that this is
        #   a continuation of a prior `ListHttpRoutes` call, and that the system should
        #   return the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListHttpRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListHttpRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_http_routes(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/httpRoutes', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListHttpRoutesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListHttpRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single HttpRoute.
        # @param [String] name
        #   Identifier. Name of the HttpRoute resource. It matches pattern `projects/*/
        #   locations/global/httpRoutes/http_route_name>`.
        # @param [Google::Apis::NetworkservicesV1::HttpRoute] http_route_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   HttpRoute resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_http_route(name, http_route_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::HttpRoute::Representation
          command.request_object = http_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `LbRouteExtension` resource in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `LbRouteExtension` resource. Must be in
        #   the format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworkservicesV1::LbRouteExtension] lb_route_extension_object
        # @param [String] lb_route_extension_id
        #   Required. User-provided ID of the `LbRouteExtension` resource to be created.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lb_route_extension(parent, lb_route_extension_object = nil, lb_route_extension_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/lbRouteExtensions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::LbRouteExtension::Representation
          command.request_object = lb_route_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['lbRouteExtensionId'] = lb_route_extension_id unless lb_route_extension_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `LbRouteExtension` resource.
        # @param [String] name
        #   Required. The name of the `LbRouteExtension` resource to delete. Must be in
        #   the format `projects/`project`/locations/`location`/lbRouteExtensions/`
        #   lb_route_extension``.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lb_route_extension(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of the specified `LbRouteExtension` resource.
        # @param [String] name
        #   Required. A name of the `LbRouteExtension` resource to get. Must be in the
        #   format `projects/`project`/locations/`location`/lbRouteExtensions/`
        #   lb_route_extension``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::LbRouteExtension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::LbRouteExtension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lb_route_extension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::LbRouteExtension::Representation
          command.response_class = Google::Apis::NetworkservicesV1::LbRouteExtension
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `LbRouteExtension` resources in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the `LbRouteExtension` resources
        #   are listed. These values are specified in the following format: `projects/`
        #   project`/locations/`location``.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint about how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server might return fewer items than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results that the server returns.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListLbRouteExtensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListLbRouteExtensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lb_route_extensions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/lbRouteExtensions', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListLbRouteExtensionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListLbRouteExtensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of the specified `LbRouteExtension` resource.
        # @param [String] name
        #   Required. Identifier. Name of the `LbRouteExtension` resource in the following
        #   format: `projects/`project`/locations/`location`/lbRouteExtensions/`
        #   lb_route_extension``.
        # @param [Google::Apis::NetworkservicesV1::LbRouteExtension] lb_route_extension_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. Used to specify the fields to be overwritten in the `
        #   LbRouteExtension` resource by the update. The fields specified in the `
        #   update_mask` are relative to the resource, not the full request. A field is
        #   overwritten if it is in the mask. If the user does not specify a mask, then
        #   all fields are overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lb_route_extension(name, lb_route_extension_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::LbRouteExtension::Representation
          command.request_object = lb_route_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `LbTrafficExtension` resource in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `LbTrafficExtension` resource. Must be in
        #   the format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworkservicesV1::LbTrafficExtension] lb_traffic_extension_object
        # @param [String] lb_traffic_extension_id
        #   Required. User-provided ID of the `LbTrafficExtension` resource to be created.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lb_traffic_extension(parent, lb_traffic_extension_object = nil, lb_traffic_extension_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/lbTrafficExtensions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::LbTrafficExtension::Representation
          command.request_object = lb_traffic_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['lbTrafficExtensionId'] = lb_traffic_extension_id unless lb_traffic_extension_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `LbTrafficExtension` resource.
        # @param [String] name
        #   Required. The name of the `LbTrafficExtension` resource to delete. Must be in
        #   the format `projects/`project`/locations/`location`/lbTrafficExtensions/`
        #   lb_traffic_extension``.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes after the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lb_traffic_extension(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of the specified `LbTrafficExtension` resource.
        # @param [String] name
        #   Required. A name of the `LbTrafficExtension` resource to get. Must be in the
        #   format `projects/`project`/locations/`location`/lbTrafficExtensions/`
        #   lb_traffic_extension``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::LbTrafficExtension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::LbTrafficExtension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lb_traffic_extension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::LbTrafficExtension::Representation
          command.response_class = Google::Apis::NetworkservicesV1::LbTrafficExtension
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `LbTrafficExtension` resources in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the `LbTrafficExtension`
        #   resources are listed. These values are specified in the following format: `
        #   projects/`project`/locations/`location``.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint about how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server might return fewer items than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results that the server returns.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListLbTrafficExtensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListLbTrafficExtensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lb_traffic_extensions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/lbTrafficExtensions', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListLbTrafficExtensionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListLbTrafficExtensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of the specified `LbTrafficExtension` resource.
        # @param [String] name
        #   Required. Identifier. Name of the `LbTrafficExtension` resource in the
        #   following format: `projects/`project`/locations/`location`/lbTrafficExtensions/
        #   `lb_traffic_extension``.
        # @param [Google::Apis::NetworkservicesV1::LbTrafficExtension] lb_traffic_extension_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for 60
        #   minutes since the first request. For example, consider a situation where you
        #   make an initial request and the request times out. If you make the request
        #   again with the same request ID, the server ignores the second request This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. Used to specify the fields to be overwritten in the `
        #   LbTrafficExtension` resource by the update. The fields specified in the `
        #   update_mask` are relative to the resource, not the full request. A field is
        #   overwritten if it is in the mask. If the user does not specify a mask, then
        #   all fields are overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lb_traffic_extension(name, lb_traffic_extension_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::LbTrafficExtension::Representation
          command.request_object = lb_traffic_extension_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Mesh in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the Mesh. Must be in the format `projects/*/
        #   locations/global`.
        # @param [Google::Apis::NetworkservicesV1::Mesh] mesh_object
        # @param [String] mesh_id
        #   Required. Short name of the Mesh resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_mesh(parent, mesh_object = nil, mesh_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/meshes', options)
          command.request_representation = Google::Apis::NetworkservicesV1::Mesh::Representation
          command.request_object = mesh_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['meshId'] = mesh_id unless mesh_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Mesh.
        # @param [String] name
        #   Required. A name of the Mesh to delete. Must be in the format `projects/*/
        #   locations/global/meshes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_mesh(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Mesh.
        # @param [String] name
        #   Required. A name of the Mesh to get. Must be in the format `projects/*/
        #   locations/global/meshes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Mesh] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Mesh]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mesh(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Mesh::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Mesh
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Meshes in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the Meshes should be listed,
        #   specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of Meshes to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListMeshesResponse` Indicates that this is a
        #   continuation of a prior `ListMeshes` call, and that the system should return
        #   the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListMeshesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListMeshesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_meshes(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/meshes', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListMeshesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListMeshesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Mesh.
        # @param [String] name
        #   Identifier. Name of the Mesh resource. It matches pattern `projects/*/
        #   locations/global/meshes/`.
        # @param [Google::Apis::NetworkservicesV1::Mesh] mesh_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   Mesh resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_mesh(name, mesh_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::Mesh::Representation
          command.request_object = mesh_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a single RouteView of a Mesh.
        # @param [String] name
        #   Required. Name of the MeshRouteView resource. Format: projects/`project_number`
        #   /locations/`location`/meshes/`mesh`/routeViews/`route_view`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::MeshRouteView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::MeshRouteView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mesh_route_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::MeshRouteView::Representation
          command.response_class = Google::Apis::NetworkservicesV1::MeshRouteView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists RouteViews
        # @param [String] parent
        #   Required. The Mesh to which a Route is associated. Format: projects/`
        #   project_number`/locations/`location`/meshes/`mesh`
        # @param [Fixnum] page_size
        #   Maximum number of MeshRouteViews to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListMeshRouteViewsResponse` Indicates that
        #   this is a continuation of a prior `ListMeshRouteViews` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListMeshRouteViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListMeshRouteViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_mesh_route_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/routeViews', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListMeshRouteViewsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListMeshRouteViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @param [Google::Apis::NetworkservicesV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::NetworkservicesV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::NetworkservicesV1::Empty::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Empty
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Empty::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Empty
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
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
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ServiceBinding in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the ServiceBinding. Must be in the format `
        #   projects/*/locations/*`.
        # @param [Google::Apis::NetworkservicesV1::ServiceBinding] service_binding_object
        # @param [String] service_binding_id
        #   Required. Short name of the ServiceBinding resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service_binding(parent, service_binding_object = nil, service_binding_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/serviceBindings', options)
          command.request_representation = Google::Apis::NetworkservicesV1::ServiceBinding::Representation
          command.request_object = service_binding_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceBindingId'] = service_binding_id unless service_binding_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ServiceBinding.
        # @param [String] name
        #   Required. A name of the ServiceBinding to delete. Must be in the format `
        #   projects/*/locations/*/serviceBindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ServiceBinding.
        # @param [String] name
        #   Required. A name of the ServiceBinding to get. Must be in the format `projects/
        #   */locations/*/serviceBindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ServiceBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ServiceBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ServiceBinding::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ServiceBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ServiceBinding in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the ServiceBindings should be
        #   listed, specified in the format `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Maximum number of ServiceBindings to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListServiceBindingsResponse` Indicates that
        #   this is a continuation of a prior `ListRouters` call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListServiceBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListServiceBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_service_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/serviceBindings', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListServiceBindingsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListServiceBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ServiceBinding.
        # @param [String] name
        #   Identifier. Name of the ServiceBinding resource. It matches pattern `projects/*
        #   /locations/*/serviceBindings/`.
        # @param [Google::Apis::NetworkservicesV1::ServiceBinding] service_binding_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   ServiceBinding resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_service_binding(name, service_binding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::ServiceBinding::Representation
          command.request_object = service_binding_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ServiceLbPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the ServiceLbPolicy. Must be in the format `
        #   projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworkservicesV1::ServiceLbPolicy] service_lb_policy_object
        # @param [String] service_lb_policy_id
        #   Required. Short name of the ServiceLbPolicy resource to be created. E.g. for
        #   resource name `projects/`project`/locations/`location`/serviceLbPolicies/`
        #   service_lb_policy_name``. the id is value of `service_lb_policy_name`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service_lb_policy(parent, service_lb_policy_object = nil, service_lb_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/serviceLbPolicies', options)
          command.request_representation = Google::Apis::NetworkservicesV1::ServiceLbPolicy::Representation
          command.request_object = service_lb_policy_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceLbPolicyId'] = service_lb_policy_id unless service_lb_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ServiceLbPolicy.
        # @param [String] name
        #   Required. A name of the ServiceLbPolicy to delete. Must be in the format `
        #   projects/`project`/locations/`location`/serviceLbPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service_lb_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ServiceLbPolicy.
        # @param [String] name
        #   Required. A name of the ServiceLbPolicy to get. Must be in the format `
        #   projects/`project`/locations/`location`/serviceLbPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ServiceLbPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ServiceLbPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_lb_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ServiceLbPolicy::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ServiceLbPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ServiceLbPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the ServiceLbPolicies should be
        #   listed, specified in the format `projects/`project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of ServiceLbPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListServiceLbPoliciesResponse` Indicates that
        #   this is a continuation of a prior `ListRouters` call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListServiceLbPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListServiceLbPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_service_lb_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/serviceLbPolicies', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListServiceLbPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListServiceLbPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ServiceLbPolicy.
        # @param [String] name
        #   Identifier. Name of the ServiceLbPolicy resource. It matches pattern `projects/
        #   `project`/locations/`location`/serviceLbPolicies/`service_lb_policy_name``.
        # @param [Google::Apis::NetworkservicesV1::ServiceLbPolicy] service_lb_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   ServiceLbPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_service_lb_policy(name, service_lb_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::ServiceLbPolicy::Representation
          command.request_object = service_lb_policy_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new TcpRoute in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the TcpRoute. Must be in the format `projects/
        #   */locations/global`.
        # @param [Google::Apis::NetworkservicesV1::TcpRoute] tcp_route_object
        # @param [String] tcp_route_id
        #   Required. Short name of the TcpRoute resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tcp_route(parent, tcp_route_object = nil, tcp_route_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tcpRoutes', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TcpRoute::Representation
          command.request_object = tcp_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['tcpRouteId'] = tcp_route_id unless tcp_route_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single TcpRoute.
        # @param [String] name
        #   Required. A name of the TcpRoute to delete. Must be in the format `projects/*/
        #   locations/global/tcpRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tcp_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single TcpRoute.
        # @param [String] name
        #   Required. A name of the TcpRoute to get. Must be in the format `projects/*/
        #   locations/global/tcpRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::TcpRoute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::TcpRoute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tcp_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::TcpRoute::Representation
          command.response_class = Google::Apis::NetworkservicesV1::TcpRoute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TcpRoute in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the TcpRoutes should be listed,
        #   specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of TcpRoutes to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListTcpRoutesResponse` Indicates that this is
        #   a continuation of a prior `ListTcpRoutes` call, and that the system should
        #   return the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListTcpRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListTcpRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_tcp_routes(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tcpRoutes', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListTcpRoutesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListTcpRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single TcpRoute.
        # @param [String] name
        #   Identifier. Name of the TcpRoute resource. It matches pattern `projects/*/
        #   locations/global/tcpRoutes/tcp_route_name>`.
        # @param [Google::Apis::NetworkservicesV1::TcpRoute] tcp_route_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   TcpRoute resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tcp_route(name, tcp_route_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TcpRoute::Representation
          command.request_object = tcp_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new TlsRoute in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the TlsRoute. Must be in the format `projects/
        #   */locations/global`.
        # @param [Google::Apis::NetworkservicesV1::TlsRoute] tls_route_object
        # @param [String] tls_route_id
        #   Required. Short name of the TlsRoute resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tls_route(parent, tls_route_object = nil, tls_route_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tlsRoutes', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TlsRoute::Representation
          command.request_object = tls_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['tlsRouteId'] = tls_route_id unless tls_route_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single TlsRoute.
        # @param [String] name
        #   Required. A name of the TlsRoute to delete. Must be in the format `projects/*/
        #   locations/global/tlsRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tls_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single TlsRoute.
        # @param [String] name
        #   Required. A name of the TlsRoute to get. Must be in the format `projects/*/
        #   locations/global/tlsRoutes/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::TlsRoute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::TlsRoute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tls_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::TlsRoute::Representation
          command.response_class = Google::Apis::NetworkservicesV1::TlsRoute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TlsRoute in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the TlsRoutes should be listed,
        #   specified in the format `projects/*/locations/global`.
        # @param [Fixnum] page_size
        #   Maximum number of TlsRoutes to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListTlsRoutesResponse` Indicates that this is
        #   a continuation of a prior `ListTlsRoutes` call, and that the system should
        #   return the next page of data.
        # @param [Boolean] return_partial_success
        #   Optional. If true, allow partial responses for multi-regional Aggregated List
        #   requests. Otherwise if one of the locations is down or unreachable, the
        #   Aggregated List request will fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListTlsRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListTlsRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_tls_routes(parent, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tlsRoutes', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListTlsRoutesResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListTlsRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single TlsRoute.
        # @param [String] name
        #   Identifier. Name of the TlsRoute resource. It matches pattern `projects/*/
        #   locations/global/tlsRoutes/tls_route_name>`.
        # @param [Google::Apis::NetworkservicesV1::TlsRoute] tls_route_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   TlsRoute resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tls_route(name, tls_route_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::TlsRoute::Representation
          command.request_object = tls_route_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `WasmPlugin` resource in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `WasmPlugin` resource. Must be in the
        #   format `projects/`project`/locations/global`.
        # @param [Google::Apis::NetworkservicesV1::WasmPlugin] wasm_plugin_object
        # @param [String] wasm_plugin_id
        #   Required. User-provided ID of the `WasmPlugin` resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_wasm_plugin(parent, wasm_plugin_object = nil, wasm_plugin_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/wasmPlugins', options)
          command.request_representation = Google::Apis::NetworkservicesV1::WasmPlugin::Representation
          command.request_object = wasm_plugin_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['wasmPluginId'] = wasm_plugin_id unless wasm_plugin_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `WasmPlugin` resource.
        # @param [String] name
        #   Required. A name of the `WasmPlugin` resource to delete. Must be in the format
        #   `projects/`project`/locations/global/wasmPlugins/`wasm_plugin``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_wasm_plugin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of the specified `WasmPlugin` resource.
        # @param [String] name
        #   Required. A name of the `WasmPlugin` resource to get. Must be in the format `
        #   projects/`project`/locations/global/wasmPlugins/`wasm_plugin``.
        # @param [String] view
        #   Determines how much data must be returned in the response. See [AIP-157](https:
        #   //google.aip.dev/157).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::WasmPlugin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::WasmPlugin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_wasm_plugin(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::WasmPlugin::Representation
          command.response_class = Google::Apis::NetworkservicesV1::WasmPlugin
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `WasmPlugin` resources in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the `WasmPlugin` resources are
        #   listed, specified in the following format: `projects/`project`/locations/
        #   global`.
        # @param [Fixnum] page_size
        #   Maximum number of `WasmPlugin` resources to return per call. If not specified,
        #   at most 50 `WasmPlugin` resources are returned. The maximum value is 1000;
        #   values above 1000 are coerced to 1000.
        # @param [String] page_token
        #   The value returned by the last `ListWasmPluginsResponse` call. Indicates that
        #   this is a continuation of a prior `ListWasmPlugins` call, and that the next
        #   page of data is to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListWasmPluginsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListWasmPluginsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_wasm_plugins(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/wasmPlugins', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListWasmPluginsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListWasmPluginsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of the specified `WasmPlugin` resource.
        # @param [String] name
        #   Identifier. Name of the `WasmPlugin` resource in the following format: `
        #   projects/`project`/locations/`location`/wasmPlugins/`wasm_plugin``.
        # @param [Google::Apis::NetworkservicesV1::WasmPlugin] wasm_plugin_object
        # @param [String] update_mask
        #   Optional. Used to specify the fields to be overwritten in the `WasmPlugin`
        #   resource by the update. The fields specified in the `update_mask` field are
        #   relative to the resource, not the full request. An omitted `update_mask` field
        #   is treated as an implied `update_mask` field equivalent to all fields that are
        #   populated (that have a non-empty value). The `update_mask` field supports a
        #   special value `*`, which means that each field in the given `WasmPlugin`
        #   resource (including the empty ones) replaces the current value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_wasm_plugin(name, wasm_plugin_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NetworkservicesV1::WasmPlugin::Representation
          command.request_object = wasm_plugin_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `WasmPluginVersion` resource in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `WasmPluginVersion` resource. Must be in
        #   the format `projects/`project`/locations/global/wasmPlugins/`wasm_plugin``.
        # @param [Google::Apis::NetworkservicesV1::WasmPluginVersion] wasm_plugin_version_object
        # @param [String] wasm_plugin_version_id
        #   Required. User-provided ID of the `WasmPluginVersion` resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_wasm_plugin_version(parent, wasm_plugin_version_object = nil, wasm_plugin_version_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/versions', options)
          command.request_representation = Google::Apis::NetworkservicesV1::WasmPluginVersion::Representation
          command.request_object = wasm_plugin_version_object
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['wasmPluginVersionId'] = wasm_plugin_version_id unless wasm_plugin_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `WasmPluginVersion` resource.
        # @param [String] name
        #   Required. A name of the `WasmPluginVersion` resource to delete. Must be in the
        #   format `projects/`project`/locations/global/wasmPlugins/`wasm_plugin`/versions/
        #   `wasm_plugin_version``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_wasm_plugin_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::Operation::Representation
          command.response_class = Google::Apis::NetworkservicesV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of the specified `WasmPluginVersion` resource.
        # @param [String] name
        #   Required. A name of the `WasmPluginVersion` resource to get. Must be in the
        #   format `projects/`project`/locations/global/wasmPlugins/`wasm_plugin`/versions/
        #   `wasm_plugin_version``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::WasmPluginVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::WasmPluginVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_wasm_plugin_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NetworkservicesV1::WasmPluginVersion::Representation
          command.response_class = Google::Apis::NetworkservicesV1::WasmPluginVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `WasmPluginVersion` resources in a given project and location.
        # @param [String] parent
        #   Required. The `WasmPlugin` resource whose `WasmPluginVersion`s are listed,
        #   specified in the following format: `projects/`project`/locations/global/
        #   wasmPlugins/`wasm_plugin``.
        # @param [Fixnum] page_size
        #   Maximum number of `WasmPluginVersion` resources to return per call. If not
        #   specified, at most 50 `WasmPluginVersion` resources are returned. The maximum
        #   value is 1000; values above 1000 are coerced to 1000.
        # @param [String] page_token
        #   The value returned by the last `ListWasmPluginVersionsResponse` call.
        #   Indicates that this is a continuation of a prior `ListWasmPluginVersions` call,
        #   and that the next page of data is to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworkservicesV1::ListWasmPluginVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworkservicesV1::ListWasmPluginVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_wasm_plugin_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::NetworkservicesV1::ListWasmPluginVersionsResponse::Representation
          command.response_class = Google::Apis::NetworkservicesV1::ListWasmPluginVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
