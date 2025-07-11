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
    module AndroidmanagementV1
      # Android Management API
      #
      # The Android Management API provides remote enterprise management of Android
      #  devices and apps.
      #
      # @example
      #    require 'google/apis/androidmanagement_v1'
      #
      #    Androidmanagement = Google::Apis::AndroidmanagementV1 # Alias the module
      #    service = Androidmanagement::AndroidManagementService.new
      #
      # @see https://developers.google.com/android/management
      class AndroidManagementService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://androidmanagement.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-androidmanagement_v1',
                client_version: Google::Apis::AndroidmanagementV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates an enterprise. This is the last step in the enterprise signup flow.
        # See also: SigninDetail
        # @param [Google::Apis::AndroidmanagementV1::Enterprise] enterprise_object
        # @param [Boolean] agreement_accepted
        #   Whether the enterprise admin has seen and agreed to the managed Google Play
        #   Agreement (https://www.android.com/enterprise/terms/). Do not set this field
        #   for any customer-managed enterprise (https://developers.google.com/android/
        #   management/create-enterprise#customer-managed_enterprises). Set this to field
        #   to true for all EMM-managed enterprises (https://developers.google.com/android/
        #   management/create-enterprise#emm-managed_enterprises).
        # @param [String] enterprise_token
        #   The enterprise token appended to the callback URL. Set this when creating a
        #   customer-managed enterprise (https://developers.google.com/android/management/
        #   create-enterprise#customer-managed_enterprises) and not when creating a
        #   deprecated EMM-managed enterprise (https://developers.google.com/android/
        #   management/create-enterprise#emm-managed_enterprises).
        # @param [String] project_id
        #   The ID of the Google Cloud Platform project which will own the enterprise.
        # @param [String] signup_url_name
        #   The name of the SignupUrl used to sign up for the enterprise. Set this when
        #   creating a customer-managed enterprise (https://developers.google.com/android/
        #   management/create-enterprise#customer-managed_enterprises) and not when
        #   creating a deprecated EMM-managed enterprise (https://developers.google.com/
        #   android/management/create-enterprise#emm-managed_enterprises).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_enterprise(enterprise_object = nil, agreement_accepted: nil, enterprise_token: nil, project_id: nil, signup_url_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/enterprises', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::Enterprise::Representation
          command.request_object = enterprise_object
          command.response_representation = Google::Apis::AndroidmanagementV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Enterprise
          command.query['agreementAccepted'] = agreement_accepted unless agreement_accepted.nil?
          command.query['enterpriseToken'] = enterprise_token unless enterprise_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['signupUrlName'] = signup_url_name unless signup_url_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes an enterprise and all accounts and data associated with it.
        # Warning: this will result in a cascaded deletion of all AM API devices
        # associated with the deleted enterprise. Only available for EMM-managed
        # enterprises.
        # @param [String] name
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_enterprise(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an enterprise upgrade URL to upgrade an existing managed Google Play
        # Accounts enterprise to a managed Google domain. See the guide (https://
        # developers.google.com/android/management/upgrade-an-enterprise) for more
        # details.
        # @param [String] name
        #   Required. The name of the enterprise to be upgraded in the form enterprises/`
        #   enterpriseId`.
        # @param [Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlRequest] generate_enterprise_upgrade_url_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_enterprise_upgrade_url(name, generate_enterprise_upgrade_url_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:generateEnterpriseUpgradeUrl', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlRequest::Representation
          command.request_object = generate_enterprise_upgrade_url_request_object
          command.response_representation = Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::GenerateEnterpriseUpgradeUrlResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an enterprise.
        # @param [String] name
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Enterprise
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EMM-managed enterprises. Only BASIC fields are returned.
        # @param [Fixnum] page_size
        #   The requested page size. The actual page size may be fixed to a min or max
        #   value.
        # @param [String] page_token
        #   A token identifying a page of results returned by the server.
        # @param [String] project_id
        #   Required. The Cloud project ID of the EMM managing the enterprises.
        # @param [String] view
        #   Specifies which Enterprise fields to return. This method only supports BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListEnterprisesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListEnterprisesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprises(page_size: nil, page_token: nil, project_id: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/enterprises', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListEnterprisesResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListEnterprisesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an enterprise. See also: SigninDetail
        # @param [String] name
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Google::Apis::AndroidmanagementV1::Enterprise] enterprise_object
        # @param [String] update_mask
        #   The field mask indicating the fields to update. If not set, all modifiable
        #   fields will be modified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_enterprise(name, enterprise_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::Enterprise::Representation
          command.request_object = enterprise_object
          command.response_representation = Google::Apis::AndroidmanagementV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Enterprise
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets info about an application.
        # @param [String] name
        #   The name of the application in the form enterprises/`enterpriseId`/
        #   applications/`package_name`.
        # @param [String] language_code
        #   The preferred language for localized application info, as a BCP47 tag (e.g. "
        #   en-US", "de"). If not specified the default language of the application will
        #   be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Application] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Application]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_application(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Application::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Application
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a device. This operation attempts to wipe the device but this is not
        # guaranteed to succeed if the device is offline for an extended period. Deleted
        # devices do not show up in enterprises.devices.list calls and a 404 is returned
        # from enterprises.devices.get.
        # @param [String] name
        #   The name of the device in the form enterprises/`enterpriseId`/devices/`
        #   deviceId`.
        # @param [Array<String>, String] wipe_data_flags
        #   Optional flags that control the device wiping behavior.
        # @param [String] wipe_reason_message
        #   Optional. A short message displayed to the user before wiping the work profile
        #   on personal devices. This has no effect on company owned devices. The maximum
        #   message length is 200 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_enterprise_device(name, wipe_data_flags: nil, wipe_reason_message: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['wipeDataFlags'] = wipe_data_flags unless wipe_data_flags.nil?
          command.query['wipeReasonMessage'] = wipe_reason_message unless wipe_reason_message.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a device. Deleted devices will respond with a 404 error.
        # @param [String] name
        #   The name of the device in the form enterprises/`enterpriseId`/devices/`
        #   deviceId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Device::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Device
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Issues a command to a device. The Operation resource returned contains a
        # Command in its metadata field. Use the get operation method to get the status
        # of the command.
        # @param [String] name
        #   The name of the device in the form enterprises/`enterpriseId`/devices/`
        #   deviceId`.
        # @param [Google::Apis::AndroidmanagementV1::Command] command_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def issue_enterprise_device_command(name, command_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:issueCommand', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::Command::Representation
          command.request_object = command_object
          command.response_representation = Google::Apis::AndroidmanagementV1::Operation::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices for a given enterprise. Deleted devices are not returned in the
        # response.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Fixnum] page_size
        #   The requested page size. The actual page size may be fixed to a min or max
        #   value.
        # @param [String] page_token
        #   A token identifying a page of results returned by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_devices(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/devices', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListDevicesResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device.
        # @param [String] name
        #   The name of the device in the form enterprises/`enterpriseId`/devices/`
        #   deviceId`.
        # @param [Google::Apis::AndroidmanagementV1::Device] device_object
        # @param [String] update_mask
        #   The field mask indicating the fields to update. If not set, all modifiable
        #   fields will be modified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_enterprise_device(name, device_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::Device::Representation
          command.request_object = device_object
          command.response_representation = Google::Apis::AndroidmanagementV1::Device::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Device
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_enterprise_device_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
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
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_device_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Operation::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_device_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an enrollment token for a given enterprise. It's up to the caller's
        # responsibility to manage the lifecycle of newly created tokens and deleting
        # them when they're not intended to be used anymore.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Google::Apis::AndroidmanagementV1::EnrollmentToken] enrollment_token_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::EnrollmentToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::EnrollmentToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_enterprise_enrollment_token(parent, enrollment_token_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/enrollmentTokens', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::EnrollmentToken::Representation
          command.request_object = enrollment_token_object
          command.response_representation = Google::Apis::AndroidmanagementV1::EnrollmentToken::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::EnrollmentToken
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an enrollment token. This operation invalidates the token, preventing
        # its future use.
        # @param [String] name
        #   The name of the enrollment token in the form enterprises/`enterpriseId`/
        #   enrollmentTokens/`enrollmentTokenId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_enterprise_enrollment_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an active, unexpired enrollment token. A partial view of the enrollment
        # token is returned. Only the following fields are populated: name,
        # expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant
        # to help manage active enrollment tokens lifecycle. For security reasons, it's
        # recommended to delete active enrollment tokens as soon as they're not intended
        # to be used anymore.
        # @param [String] name
        #   Required. The name of the enrollment token in the form enterprises/`
        #   enterpriseId`/enrollmentTokens/`enrollmentTokenId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::EnrollmentToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::EnrollmentToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_enrollment_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::EnrollmentToken::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::EnrollmentToken
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists active, unexpired enrollment tokens for a given enterprise. The list
        # items contain only a partial view of EnrollmentToken object. Only the
        # following fields are populated: name, expirationTimestamp, allowPersonalUsage,
        # value, qrCode. This method is meant to help manage active enrollment tokens
        # lifecycle. For security reasons, it's recommended to delete active enrollment
        # tokens as soon as they're not intended to be used anymore.
        # @param [String] parent
        #   Required. The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Fixnum] page_size
        #   The requested page size. The service may return fewer than this value. If
        #   unspecified, at most 10 items will be returned. The maximum value is 100;
        #   values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A token identifying a page of results returned by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListEnrollmentTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListEnrollmentTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_enrollment_tokens(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/enrollmentTokens', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListEnrollmentTokensResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListEnrollmentTokensResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a migration token, to migrate an existing device from being managed by
        # the EMM's Device Policy Controller (DPC) to being managed by the Android
        # Management API. See the guide (https://developers.google.com/android/
        # management/dpc-migration) for more details.
        # @param [String] parent
        #   Required. The enterprise in which this migration token is created. This must
        #   be the same enterprise which already manages the device in the Play EMM API.
        #   Format: enterprises/`enterprise`
        # @param [Google::Apis::AndroidmanagementV1::MigrationToken] migration_token_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::MigrationToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::MigrationToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_enterprise_migration_token(parent, migration_token_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/migrationTokens', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::MigrationToken::Representation
          command.request_object = migration_token_object
          command.response_representation = Google::Apis::AndroidmanagementV1::MigrationToken::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::MigrationToken
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a migration token.
        # @param [String] name
        #   Required. The name of the migration token to retrieve. Format: enterprises/`
        #   enterprise`/migrationTokens/`migration_token`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::MigrationToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::MigrationToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_migration_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::MigrationToken::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::MigrationToken
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists migration tokens.
        # @param [String] parent
        #   Required. The enterprise which the migration tokens belong to. Format:
        #   enterprises/`enterprise`
        # @param [Fixnum] page_size
        #   The maximum number of migration tokens to return. Fewer migration tokens may
        #   be returned. If unspecified, at most 100 migration tokens will be returned.
        #   The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous ListMigrationTokens call. Provide this
        #   to retrieve the subsequent page.When paginating, all other parameters provided
        #   to ListMigrationTokens must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListMigrationTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListMigrationTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_migration_tokens(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/migrationTokens', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListMigrationTokensResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListMigrationTokensResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy. This operation is only permitted if no devices are currently
        # referencing the policy.
        # @param [String] name
        #   The name of the policy in the form enterprises/`enterpriseId`/policies/`
        #   policyId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_enterprise_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy.
        # @param [String] name
        #   The name of the policy in the form enterprises/`enterpriseId`/policies/`
        #   policyId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Policy::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists policies for a given enterprise.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Fixnum] page_size
        #   The requested page size. The actual page size may be fixed to a min or max
        #   value.
        # @param [String] page_token
        #   A token identifying a page of results returned by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/policies', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListPoliciesResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates applications in a policy.
        # @param [String] name
        #   Required. The name of the Policy containing the ApplicationPolicy objects to
        #   be updated, in the form enterprises/`enterpriseId`/policies/`policyId`.
        # @param [Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsRequest] modify_policy_applications_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_policy_applications(name, modify_policy_applications_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:modifyPolicyApplications', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsRequest::Representation
          command.request_object = modify_policy_applications_request_object
          command.response_representation = Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ModifyPolicyApplicationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates a policy.
        # @param [String] name
        #   The name of the policy in the form enterprises/`enterpriseId`/policies/`
        #   policyId`.
        # @param [Google::Apis::AndroidmanagementV1::Policy] policy_object
        # @param [String] update_mask
        #   The field mask indicating the fields to update. If not set, all modifiable
        #   fields will be modified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_enterprise_policy(name, policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::Policy::Representation
          command.request_object = policy_object
          command.response_representation = Google::Apis::AndroidmanagementV1::Policy::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Policy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes applications in a policy.
        # @param [String] name
        #   Required. The name of the policy containing the ApplicationPolicy objects to
        #   be removed, in the form enterprises/`enterpriseId`/policies/`policyId`.
        # @param [Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsRequest] remove_policy_applications_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_policy_applications(name, remove_policy_applications_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:removePolicyApplications', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsRequest::Representation
          command.request_object = remove_policy_applications_request_object
          command.response_representation = Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::RemovePolicyApplicationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a web app.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Google::Apis::AndroidmanagementV1::WebApp] web_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::WebApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::WebApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_enterprise_web_app(parent, web_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/webApps', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::WebApp::Representation
          command.request_object = web_app_object
          command.response_representation = Google::Apis::AndroidmanagementV1::WebApp::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::WebApp
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a web app.
        # @param [String] name
        #   The name of the web app in the form enterprises/`enterpriseId`/webApps/`
        #   packageName`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_enterprise_web_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::Empty::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a web app.
        # @param [String] name
        #   The name of the web app in the form enterprises/`enterpriseId`/webApps/`
        #   packageName`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::WebApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::WebApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_web_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::WebApp::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::WebApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists web apps for a given enterprise.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Fixnum] page_size
        #   The requested page size. This is a hint and the actual page size in the
        #   response may be different.
        # @param [String] page_token
        #   A token identifying a page of results returned by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ListWebAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ListWebAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_web_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/webApps', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ListWebAppsResponse::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ListWebAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a web app.
        # @param [String] name
        #   The name of the web app in the form enterprises/`enterpriseId`/webApps/`
        #   packageName`.
        # @param [Google::Apis::AndroidmanagementV1::WebApp] web_app_object
        # @param [String] update_mask
        #   The field mask indicating the fields to update. If not set, all modifiable
        #   fields will be modified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::WebApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::WebApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_enterprise_web_app(name, web_app_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::WebApp::Representation
          command.request_object = web_app_object
          command.response_representation = Google::Apis::AndroidmanagementV1::WebApp::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::WebApp
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a web token to access an embeddable managed Google Play web UI for a
        # given enterprise.
        # @param [String] parent
        #   The name of the enterprise in the form enterprises/`enterpriseId`.
        # @param [Google::Apis::AndroidmanagementV1::WebToken] web_token_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::WebToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::WebToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_enterprise_web_token(parent, web_token_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/webTokens', options)
          command.request_representation = Google::Apis::AndroidmanagementV1::WebToken::Representation
          command.request_object = web_token_object
          command.response_representation = Google::Apis::AndroidmanagementV1::WebToken::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::WebToken
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the device provisioning information by the identifier provided in the sign-
        # in url.
        # @param [String] name
        #   Required. The identifier that Android Device Policy passes to the 3P sign-in
        #   page in the form of provisioningInfo/`provisioning_info`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::ProvisioningInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::ProvisioningInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_provisioning_info(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::ProvisioningInfo::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::ProvisioningInfo
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an enterprise signup URL.
        # @param [String] admin_email
        #   Optional. Email address used to prefill the admin field of the enterprise
        #   signup form. This value is a hint only and can be altered by the user. If
        #   allowedDomains is non-empty then this must belong to one of the allowedDomains.
        # @param [Array<String>, String] allowed_domains
        #   Optional. A list of domains that are permitted for the admin email. The IT
        #   admin cannot enter an email address with a domain name that is not in this
        #   list. Subdomains of domains in this list are not allowed but can be allowed by
        #   adding a second entry which has *. prefixed to the domain name (e.g. *.example.
        #   com). If the field is not present or is an empty list then the IT admin is
        #   free to use any valid domain name. Personal email domains are always allowed,
        #   but will result in the creation of a managed Google Play Accounts enterprise.
        # @param [String] callback_url
        #   The callback URL that the admin will be redirected to after successfully
        #   creating an enterprise. Before redirecting there the system will add a query
        #   parameter to this URL named enterpriseToken which will contain an opaque token
        #   to be used for the create enterprise request. The URL will be parsed then
        #   reformatted in order to add the enterpriseToken parameter, so there may be
        #   some minor formatting changes.
        # @param [String] project_id
        #   The ID of the Google Cloud Platform project which will own the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidmanagementV1::SignupUrl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidmanagementV1::SignupUrl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_signup_url(admin_email: nil, allowed_domains: nil, callback_url: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/signupUrls', options)
          command.response_representation = Google::Apis::AndroidmanagementV1::SignupUrl::Representation
          command.response_class = Google::Apis::AndroidmanagementV1::SignupUrl
          command.query['adminEmail'] = admin_email unless admin_email.nil?
          command.query['allowedDomains'] = allowed_domains unless allowed_domains.nil?
          command.query['callbackUrl'] = callback_url unless callback_url.nil?
          command.query['projectId'] = project_id unless project_id.nil?
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
