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
    module DialogflowV3beta1
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v3beta1'
      #
      #    Dialogflow = Google::Apis::DialogflowV3beta1 # Alias the module
      #    service = Dialogflow::DialogflowService.new
      #
      # @see https://cloud.google.com/dialogflow/
      class DialogflowService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://dialogflow.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-dialogflow_v3beta1',
                client_version: Google::Apis::DialogflowV3beta1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent in the specified location. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The location to create a agent for. Format: `projects//locations/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] google_cloud_dialogflow_cx_v3beta1_agent_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent(parent, google_cloud_dialogflow_cx_v3beta1_agent_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/agents', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent.
        # @param [String] name
        #   Required. The name of the agent to delete. Format: `projects//locations//
        #   agents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a binary file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportAgentResponse
        # @param [String] name
        #   Required. The name of the agent to export. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequest] google_cloud_dialogflow_cx_v3beta1_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent.
        # @param [String] name
        #   Required. The name of the agent. Format: `projects//locations//agents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the generative settings for the agent.
        # @param [String] name
        #   Required. Format: `projects//locations//agents//generativeSettings`.
        # @param [String] language_code
        #   Required. Language code of the generative settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generative_settings(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest agent validation result. Agent validation is performed when
        # ValidateAgent is called.
        # @param [String] name
        #   Required. The agent name. Format: `projects//locations//agents//
        #   validationResult`.
        # @param [String] language_code
        #   If not specified, the agent's default language is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all agents in the specified location.
        # @param [String] parent
        #   Required. The location to list all agents for. Format: `projects//locations/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/agents', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the agent. Required for the Agents.UpdateAgent method.
        #   Agents.CreateAgent populates the name automatically. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] google_cloud_dialogflow_cx_v3beta1_agent_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a binary file. Replaces the current agent
        # with a new one. Note that all existing resources in agent (e.g. intents,
        # entity types, flows) will be removed. This method is a [long-running operation]
        # (https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message]
        # (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty) Note: You should always train a flow prior to sending it queries. See
        # the [training documentation](https://cloud.google.com/dialogflow/cx/docs/
        # concept/training).
        # @param [String] name
        #   Required. The name of the agent to restore into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequest] google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the generative settings for the agent.
        # @param [String] name
        #   Format: `projects//locations//agents//generativeSettings`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] google_cloud_dialogflow_cx_v3beta1_generative_settings_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated. If the mask is not
        #   present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_agent_generative_settings(name, google_cloud_dialogflow_cx_v3beta1_generative_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generative_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates the specified agent and creates or updates validation results. The
        # agent in draft version is validated. Please call this API after the training
        # is completed to get the complete validation results.
        # @param [String] name
        #   Required. The agent to validate. Format: `projects//locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateAgentRequest] google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Changelog.
        # @param [String] name
        #   Required. The name of the changelog to get. Format: `projects//locations//
        #   agents//changelogs/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_changelog(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of Changelogs.
        # @param [String] parent
        #   Required. The agent containing the changelogs. Format: `projects//locations//
        #   agents/`.
        # @param [String] filter
        #   The filter string. Supports filter by user_email, resource, type and
        #   create_time. Some examples: 1. By user email: user_email = "someone@google.com"
        #   2. By resource name: resource = "projects/123/locations/global/agents/456/
        #   flows/789" 3. By resource display name: display_name = "my agent" 4. By action:
        #   action = "Create" 5. By type: type = "flows" 6. By create time. Currently
        #   predicates on `create_time` and `create_time_epoch_seconds` are supported:
        #   create_time_epoch_seconds > 1551790877 AND create_time <= 2017-01-15T01:30:15.
        #   01Z 7. Combination of above filters: resource = "projects/123/locations/global/
        #   agents/456/flows/789" AND user_email = "someone@google.com" AND create_time <=
        #   2017-01-15T01:30:15.01Z
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_changelogs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/changelogs', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified conversation.
        # @param [String] name
        #   Required. The name of the conversation. Format: `projects//locations//agents//
        #   conversations/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified conversation.
        # @param [String] name
        #   Required. The name of the conversation. Format: `projects//locations//agents//
        #   conversations/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversations.
        # @param [String] parent
        #   Required. The agent to list all conversations for. Format: `projects//
        #   locations//agents/`.
        # @param [String] filter
        #   Optional. The filter string. Supports filter by create_time, metrics.
        #   has_end_interaction, metrics.has_live_agent_handoff, intents.display_name,
        #   pages.display_name and flows.display_name. Timestamps expect an RFC-3339
        #   formatted string (e.g. 2012-04-21T11:30:00-04:00). UTC offsets are supported.
        #   Some examples: 1. By create time: create_time > "2022-04-21T11:30:00-04:00" 2.
        #   By intent display name: intents.display_name : "billing" 3. By end interaction
        #   signal: metrics.has_end_interaction = true
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a entity type for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type. Note: You should always train a flow prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//locations//
        #   agents//entityTypes/`.
        # @param [Boolean] force
        #   This field has no effect for entity type not being used. For entity types that
        #   are used by intents or pages: * If `force` is set to false, an error will be
        #   returned with message indicating the referencing resources. * If `force` is
        #   set to true, Dialogflow will remove the entity type, as well as any references
        #   to the entity type (i.e. Page parameter of the entity type will be changed to '
        #   @sys.any' and intent parameter of the entity type will be removed).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_entity_type(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the selected entity types.
        # @param [String] parent
        #   Required. The name of the parent agent to export entity types. Format: `
        #   projects//locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest] google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type. Format: `projects//locations//agents//
        #   entityTypes/`.
        # @param [String] language_code
        #   The language to retrieve the entity type for. The following fields are
        #   language dependent: * `EntityType.entities.value` * `EntityType.entities.
        #   synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's
        #   default language is used. [Many languages](https://cloud.google.com/dialogflow/
        #   cx/docs/reference/language) are supported. Note: languages must be enabled in
        #   the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified entitytypes into the agent.
        # @param [String] parent
        #   Required. The agent to import the entity types into. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest] google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all entity types in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all entity types for. Format: `projects//locations/
        #   /agents/`.
        # @param [String] language_code
        #   The language to list entity types for. The following fields are language
        #   dependent: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `
        #   EntityType.excluded_phrases.value` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type. Note: You should always train a flow prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the entity type. Required for EntityTypes.
        #   UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_entity_type(name, google_cloud_dialogflow_cx_v3beta1_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Environment in the specified Agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # Environment
        # @param [String] parent
        #   Required. The Agent to create an Environment for. Format: `projects//locations/
        #   /agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] google_cloud_dialogflow_cx_v3beta1_environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment(parent, google_cloud_dialogflow_cx_v3beta1_environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Environment.
        # @param [String] name
        #   Required. The name of the Environment to delete. Format: `projects//locations//
        #   agents//environments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a flow to the specified Environment. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: DeployFlowMetadata - `response`: DeployFlowResponse
        # @param [String] environment
        #   Required. The environment to deploy the flow to. Format: `projects//locations//
        #   agents//environments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeployFlowRequest] google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_agent_environment_flow(environment, google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+environment}:deployFlow', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeployFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Environment.
        # @param [String] name
        #   Required. The name of the Environment. Format: `projects//locations//agents//
        #   environments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all environments in the specified Agent.
        # @param [String] parent
        #   Required. The Agent to list all environments for. Format: `projects//locations/
        #   /agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the history of the specified Environment.
        # @param [String] name
        #   Required. Resource name of the environment to look up the history for. Format:
        #   `projects//locations//agents//environments/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_agent_environment_environment_history(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}:lookupEnvironmentHistory', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Environment. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: Environment
        # @param [String] name
        #   The name of the environment. Format: `projects//locations//agents//
        #   environments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] google_cloud_dialogflow_cx_v3beta1_environment_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment(name, google_cloud_dialogflow_cx_v3beta1_environment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a continuous test under the specified Environment. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: RunContinuousTestMetadata - `response`:
        # RunContinuousTestResponse
        # @param [String] environment
        #   Required. Format: `projects//locations//agents//environments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest] google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_agent_environment_continuous_test(environment, google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+environment}:runContinuousTest', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of continuous test results for a given environment.
        # @param [String] parent
        #   Required. The environment to list results for. Format: `projects//locations//
        #   agents//environments/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_continuous_test_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/continuousTestResults', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Deployment.
        # @param [String] name
        #   Required. The name of the Deployment. Format: `projects//locations//agents//
        #   environments//deployments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all deployments in the specified Environment.
        # @param [String] parent
        #   Required. The Environment to list all environments for. Format: `projects//
        #   locations//agents//environments/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_deployments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Experiment in the specified Environment.
        # @param [String] parent
        #   Required. The Agent to create an Environment for. Format: `projects//locations/
        #   /agents//environments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] google_cloud_dialogflow_cx_v3beta1_experiment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_experiment(parent, google_cloud_dialogflow_cx_v3beta1_experiment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/experiments', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_experiment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Experiment.
        # @param [String] name
        #   Required. The name of the Environment to delete. Format: `projects//locations//
        #   agents//environments//experiments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Experiment.
        # @param [String] name
        #   Required. The name of the Environment. Format: `projects//locations//agents//
        #   environments//experiments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all experiments in the specified Environment.
        # @param [String] parent
        #   Required. The Environment to list all environments for. Format: `projects//
        #   locations//agents//environments/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_experiments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/experiments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Experiment.
        # @param [String] name
        #   The name of the experiment. Format: projects//locations//agents//environments//
        #   experiments/.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] google_cloud_dialogflow_cx_v3beta1_experiment_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_experiment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_experiment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts the specified Experiment. This rpc only changes the state of experiment
        # from PENDING to RUNNING.
        # @param [String] name
        #   Required. Resource name of the experiment to start. Format: `projects//
        #   locations//agents//environments//experiments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StartExperimentRequest] google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:start', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StartExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops the specified Experiment. This rpc only changes the state of experiment
        # from RUNNING to DONE.
        # @param [String] name
        #   Required. Resource name of the experiment to stop. Format: `projects//
        #   locations//agents//environments//experiments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StopExperimentRequest] google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:stop', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StopExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause session entity
        # types to be updated, which in turn might affect results of future queries.
        # Note: Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fulfills a matched intent returned by MatchIntent. Must be called after
        # MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is
        # undefined.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest] google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns preliminary intent match results, doesn't change the session status.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest] google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result through server-side streaming. Server-side streaming allows
        # Dialogflow to send [partial responses](https://cloud.google.com/dialogflow/cx/
        # docs/concept/fulfillment#partial-response) earlier in a single request.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def server_project_location_agent_environment_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_session_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type to delete. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//locations//
        #   agents//sessions//entityTypes/` or `projects//locations//agents//environments//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of the session entity type. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_session_entity_type(name, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a flow in the specified agent. Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to create a flow for. Format: `projects//locations//agents/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `
        #   Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified,
        #   the agent's default language is used. [Many languages](https://cloud.google.
        #   com/dialogflow/cx/docs/reference/language) are supported. Note: languages must
        #   be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3beta1_flow_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/flows', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_flow_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specified flow.
        # @param [String] name
        #   Required. The name of the flow to delete. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [Boolean] force
        #   This field has no effect for flows with no incoming transitions. For flows
        #   with incoming transitions: * If `force` is set to false, an error will be
        #   returned with message indicating the incoming transitions. * If `force` is set
        #   to true, Dialogflow will remove the flow, as well as any transitions to the
        #   flow (i.e. Target flow in event handlers or Target flow in transition routes
        #   that point to this flow will be cleared).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified flow to a binary file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportFlowResponse Note that resources (e.g. intents, entities, webhooks) that
        # the flow references will also be exported.
        # @param [String] name
        #   Required. The name of the flow to export. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportFlowRequest] google_cloud_dialogflow_cx_v3beta1_export_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_export_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified flow.
        # @param [String] name
        #   Required. The name of the flow to get. Format: `projects//locations//agents//
        #   flows/`.
        # @param [String] language_code
        #   The language to retrieve the flow for. The following fields are language
        #   dependent: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.
        #   event_handlers.trigger_fulfillment.conditional_cases` * `Flow.
        #   transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest flow validation result. Flow validation is performed when
        # ValidateFlow is called.
        # @param [String] name
        #   Required. The flow name. Format: `projects//locations//agents//flows//
        #   validationResult`.
        # @param [String] language_code
        #   If not specified, the agent's default language is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified flow to the specified agent from a binary file. This
        # method is a [long-running operation](https://cloud.google.com/dialogflow/cx/
        # docs/how/long-running-operation). The returned `Operation` type has the
        # following method-specific fields: - `metadata`: An empty [Struct message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # struct) - `response`: ImportFlowResponse Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to import the flow into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportFlowRequest] google_cloud_dialogflow_cx_v3beta1_import_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3beta1_import_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/flows:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all flows in the specified agent.
        # @param [String] parent
        #   Required. The agent containing the flows. Format: `projects//locations//agents/
        #   `.
        # @param [String] language_code
        #   The language to list flows for. The following fields are language dependent: *
        #   `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.
        #   trigger_fulfillment.conditional_cases` * `Flow.transition_routes.
        #   trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.
        #   conditional_cases` If not specified, the agent's default language is used. [
        #   Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flows(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/flows', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified flow. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the flow. Format: `projects//locations//agents//flows/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `
        #   Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified,
        #   the agent's default language is used. [Many languages](https://cloud.google.
        #   com/dialogflow/cx/docs/reference/language) are supported. Note: languages must
        #   be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_flow_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_flow_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified flow. Note that only the flow in 'draft' environment is
        # trained. This method is a [long-running operation](https://cloud.google.com/
        # dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type
        # has the following method-specific fields: - `metadata`: An empty [Struct
        # message](https://developers.google.com/protocol-buffers/docs/reference/google.
        # protobuf#struct) - `response`: An [Empty message](https://developers.google.
        # com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should
        # always train a flow prior to sending it queries. See the [training
        # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The flow to train. Format: `projects//locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TrainFlowRequest] google_cloud_dialogflow_cx_v3beta1_train_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_train_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:train', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TrainFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_train_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates the specified flow and creates or updates validation results. Please
        # call this API after the training is completed to get the complete validation
        # results.
        # @param [String] name
        #   Required. The flow to validate. Format: `projects//locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateFlowRequest] google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a page in the specified flow.
        # @param [String] parent
        #   Required. The flow to create a page for. Format: `projects//locations//agents//
        #   flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.
        #   trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_page(parent, google_cloud_dialogflow_cx_v3beta1_page_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/pages', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_page_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified page.
        # @param [String] name
        #   Required. The name of the page to delete. Format: `projects//locations//agents/
        #   /Flows//pages/`.
        # @param [Boolean] force
        #   This field has no effect for pages with no incoming transitions. For pages
        #   with incoming transitions: * If `force` is set to false, an error will be
        #   returned with message indicating the incoming transitions. * If `force` is set
        #   to true, Dialogflow will remove the page, as well as any transitions to the
        #   page (i.e. Target page in event handlers or Target page in transition routes
        #   that point to this page will be cleared).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_page(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified page.
        # @param [String] name
        #   Required. The name of the page. Format: `projects//locations//agents//flows//
        #   pages/`.
        # @param [String] language_code
        #   The language to retrieve the page for. The following fields are language
        #   dependent: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.
        #   conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `
        #   Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.
        #   parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.
        #   parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.
        #   form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.
        #   parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_page(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all pages in the specified flow.
        # @param [String] parent
        #   Required. The flow to list all pages for. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [String] language_code
        #   The language to list pages for. The following fields are language dependent: *
        #   `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases`
        #   * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.
        #   trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_pages(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/pages', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified page.
        # @param [String] name
        #   The unique identifier of the page. Required for the Pages.UpdatePage method.
        #   Pages.CreatePage populates the name automatically. Format: `projects//
        #   locations//agents//flows//pages/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.
        #   trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_page(name, google_cloud_dialogflow_cx_v3beta1_page_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_page_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an TransitionRouteGroup in the specified flow. Note: You should always
        # train a flow prior to sending it queries. See the [training documentation](
        # https://cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The flow to create an TransitionRouteGroup for. Format: `projects//
        #   locations//agents//flows/` or `projects//locations//agents/` for agent-level
        #   groups.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_transition_route_group(parent, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup to delete. Format: `projects//
        #   locations//agents//flows//transitionRouteGroups/` or `projects//locations//
        #   agents//transitionRouteGroups/`.
        # @param [Boolean] force
        #   This field has no effect for transition route group that no page is using. If
        #   the transition route group is referenced by any page: * If `force` is set to
        #   false, an error will be returned with message indicating pages that reference
        #   the transition route group. * If `force` is set to true, Dialogflow will
        #   remove the transition route group, as well as any reference to it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified TransitionRouteGroup.
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup. Format: `projects//locations//
        #   agents//flows//transitionRouteGroups/` or `projects//locations//agents//
        #   transitionRouteGroups/`.
        # @param [String] language_code
        #   The language to retrieve the transition route group for. The following fields
        #   are language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all transition route groups in the specified flow.
        # @param [String] parent
        #   Required. The flow to list all transition route groups for. Format: `projects//
        #   locations//agents//flows/` or `projects//locations//agents/.
        # @param [String] language_code
        #   The language to list transition route groups for. The following fields are
        #   language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the transition route group. TransitionRouteGroups.
        #   CreateTransitionRouteGroup populates the name automatically. Format: `projects/
        #   /locations//agents//flows//transitionRouteGroups/` or `projects//locations//
        #   agents//transitionRouteGroups/` for agent-level groups.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_transition_route_group(name, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Compares the specified base version with target version.
        # @param [String] base_version
        #   Required. Name of the base flow version to compare with the target version.
        #   Use version ID `0` to indicate the draft version of the specified flow. Format:
        #   `projects//locations//agents//flows//versions/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsRequest] google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compare_project_location_agent_flow_version_versions(base_version, google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+baseVersion}:compareVersions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
          command.params['baseVersion'] = base_version unless base_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Version in the specified Flow. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: CreateVersionOperationMetadata - `response`: Version
        # @param [String] parent
        #   Required. The Flow to create an Version for. Format: `projects//locations//
        #   agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] google_cloud_dialogflow_cx_v3beta1_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_version(parent, google_cloud_dialogflow_cx_v3beta1_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Version.
        # @param [String] name
        #   Required. The name of the Version to delete. Format: `projects//locations//
        #   agents//flows//versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Version.
        # @param [String] name
        #   Required. The name of the Version. Format: `projects//locations//agents//flows/
        #   /versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all versions in the specified Flow.
        # @param [String] parent
        #   Required. The Flow to list all versions for. Format: `projects//locations//
        #   agents//flows/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Loads resources in the specified version to the draft flow. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The Version to be loaded to draft flow. Format: `projects//locations/
        #   /agents//flows//versions/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LoadVersionRequest] google_cloud_dialogflow_cx_v3beta1_load_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def load_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3beta1_load_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:load', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LoadVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_load_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Version.
        # @param [String] name
        #   Format: projects//locations//agents//flows//versions/. Version ID is a self-
        #   increasing number generated by Dialogflow upon version creation.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] google_cloud_dialogflow_cx_v3beta1_version_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. Currently only `
        #   description` and `display_name` can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3beta1_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a generator in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a generator for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] google_cloud_dialogflow_cx_v3beta1_generator_object
        # @param [String] language_code
        #   The language to create generators for the following fields: * `Generator.
        #   prompt_text.text` If not specified, the agent's default language is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_generator(parent, google_cloud_dialogflow_cx_v3beta1_generator_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/generators', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified generators.
        # @param [String] name
        #   Required. The name of the generator to delete. Format: `projects//locations//
        #   agents//generators/`.
        # @param [Boolean] force
        #   This field has no effect for generators not being used. For generators that
        #   are used by pages/flows/transition route groups: * If `force` is set to false,
        #   an error will be returned with message indicating the referenced resources. *
        #   If `force` is set to true, Dialogflow will remove the generator, as well as
        #   any references to the generator (i.e. Generator) in fulfillments.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_generator(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified generator.
        # @param [String] name
        #   Required. The name of the generator. Format: `projects//locations//agents//
        #   generators/`.
        # @param [String] language_code
        #   The language to list generators for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generator(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all generators in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all generators for. Format: `projects//locations//
        #   agents/`.
        # @param [String] language_code
        #   The language to list generators for.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_generators(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/generators', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the specified generator.
        # @param [String] name
        #   The unique identifier of the generator. Must be set for the Generators.
        #   UpdateGenerator method. Generators.CreateGenerate populates the name
        #   automatically. Format: `projects//locations//agents//generators/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] google_cloud_dialogflow_cx_v3beta1_generator_object
        # @param [String] language_code
        #   The language to list generators for.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_generator(name, google_cloud_dialogflow_cx_v3beta1_generator_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent. Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to create an intent for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_intent_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The name of the intent to delete. Format: `projects//locations//
        #   agents//intents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the selected intents. This method is a [long-running operation](https:/
        # /cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned
        # `Operation` type has the following method-specific fields: - `metadata`:
        # ExportIntentsMetadata - `response`: ExportIntentsResponse
        # @param [String] parent
        #   Required. The name of the parent agent to export intents. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportIntentsRequest] google_cloud_dialogflow_cx_v3beta1_export_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_export_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified intent.
        # @param [String] name
        #   Required. The name of the intent. Format: `projects//locations//agents//
        #   intents/`.
        # @param [String] language_code
        #   The language to retrieve the intent for. The following fields are language
        #   dependent: * `Intent.training_phrases.parts.text` If not specified, the agent'
        #   s default language is used. [Many languages](https://cloud.google.com/
        #   dialogflow/cx/docs/reference/language) are supported. Note: languages must be
        #   enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_intent(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified intents into the agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: ImportIntentsMetadata - `response`:
        # ImportIntentsResponse
        # @param [String] parent
        #   Required. The agent to import the intents into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsRequest] google_cloud_dialogflow_cx_v3beta1_import_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_import_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents for. Format: `projects//locations//
        #   agents/`.
        # @param [String] intent_view
        #   The resource view to apply to the returned intent.
        # @param [String] language_code
        #   The language to list intents for. The following fields are language dependent:
        #   * `Intent.training_phrases.parts.text` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the intent. Required for the Intents.UpdateIntent
        #   method. Intents.CreateIntent populates the name automatically. Format: `
        #   projects//locations//agents//intents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_intent(name, google_cloud_dialogflow_cx_v3beta1_intent_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a playbook in a specified agent.
        # @param [String] parent
        #   Required. The agent to create a playbook for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] google_cloud_dialogflow_cx_v3beta1_playbook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3beta1_playbook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/playbooks', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specified playbook.
        # @param [String] name
        #   Required. The name of the playbook to delete. Format: `projects//locations//
        #   agents//playbooks/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified playbook to a binary file. Note that resources (e.g.
        # examples, tools) that the playbook references will also be exported.
        # @param [String] name
        #   Required. The name of the playbook to export. Format: `projects//locations//
        #   agents//playbooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest] google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Playbook.
        # @param [String] name
        #   Required. The name of the playbook. Format: `projects//locations//agents//
        #   playbooks/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified playbook to the specified agent from a binary file.
        # @param [String] parent
        #   Required. The agent to import the playbook into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest] google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/playbooks:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of playbooks in the specified agent.
        # @param [String] parent
        #   Required. The agent to list playbooks from. Format: `projects//locations//
        #   agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/playbooks', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Playbook.
        # @param [String] name
        #   The unique identifier of the playbook. Format: `projects//locations//agents//
        #   playbooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] google_cloud_dialogflow_cx_v3beta1_playbook_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3beta1_playbook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an example in the specified playbook.
        # @param [String] parent
        #   Required. The playbook to create an example for. Format: `projects//locations//
        #   agents//playbooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] google_cloud_dialogflow_cx_v3beta1_example_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_example(parent, google_cloud_dialogflow_cx_v3beta1_example_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/examples', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_example_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified example.
        # @param [String] name
        #   Required. The name of the example to delete. Format: `projects//locations//
        #   agents//playbooks//examples/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified example.
        # @param [String] name
        #   Required. The name of the example. Format: `projects//locations//agents//
        #   playbooks//examples/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of examples in the specified playbook.
        # @param [String] parent
        #   Required. The playbook to list the examples from. Format: `projects//locations/
        #   /agents//playbooks/`.
        # @param [String] language_code
        #   Optional. The language to list examples for. If not specified, list all
        #   examples under the playbook. Note: languages must be enabled in the agent
        #   before they can be used.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_examples(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/examples', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the specified example.
        # @param [String] name
        #   The unique identifier of the playbook example. Format: `projects//locations//
        #   agents//playbooks//examples/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] google_cloud_dialogflow_cx_v3beta1_example_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated. If the mask is not
        #   present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook_example(name, google_cloud_dialogflow_cx_v3beta1_example_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_example_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a version for the specified Playbook.
        # @param [String] parent
        #   Required. The playbook to create a version for. Format: `projects//locations//
        #   agents//playbooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] google_cloud_dialogflow_cx_v3beta1_playbook_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_version(parent, google_cloud_dialogflow_cx_v3beta1_playbook_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified version of the Playbook.
        # @param [String] name
        #   Required. The name of the playbook version to delete. Format: `projects//
        #   locations//agents//playbooks//versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified version of the Playbook.
        # @param [String] name
        #   Required. The name of the playbook version. Format: `projects//locations//
        #   agents//playbooks//versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists versions for the specified Playbook.
        # @param [String] parent
        #   Required. The playbook to list versions for. Format: `projects//locations//
        #   agents//playbooks/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified version of the Playbook and stores it as the current
        # playbook draft, returning the playbook with resources updated.
        # @param [String] name
        #   Required. The name of the playbook version. Format: `projects//locations//
        #   agents//playbooks//versions/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest] google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_playbook_version(name, google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause session entity
        # types to be updated, which in turn might affect results of future queries.
        # Note: Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fulfills a matched intent returned by MatchIntent. Must be called after
        # MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is
        # undefined.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest] google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns preliminary intent match results, doesn't change the session status.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest] google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result through server-side streaming. Server-side streaming allows
        # Dialogflow to send [partial responses](https://cloud.google.com/dialogflow/cx/
        # docs/concept/fulfillment#partial-response) earlier in a single request.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def server_project_location_agent_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the feedback received from the user for a single turn of the bot
        # response.
        # @param [String] session
        #   Required. The name of the session the feedback was sent to.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest] google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_project_location_agent_session_answer_feedback(session, google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:submitAnswerFeedback', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type to delete. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//locations//
        #   agents//sessions//entityTypes/` or `projects//locations//agents//environments//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of the session entity type. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_entity_type(name, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch deletes test cases.
        # @param [String] parent
        #   Required. The agent to delete test cases from. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_test_case_delete(parent, google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a batch run of test cases. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: BatchRunTestCasesMetadata - `response`: BatchRunTestCasesResponse
        # @param [String] parent
        #   Required. Agent name. Format: `projects//locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_test_case_run(parent, google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:batchRun', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the test coverage for an agent.
        # @param [String] agent
        #   Required. The agent to calculate coverage for. Format: `projects//locations//
        #   agents/`.
        # @param [String] type
        #   Required. The type of coverage requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_agent_test_case_coverage(agent, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+agent}/testCases:calculateCoverage', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
          command.params['agent'] = agent unless agent.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a test case for the given agent.
        # @param [String] parent
        #   Required. The agent to create the test case for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] google_cloud_dialogflow_cx_v3beta1_test_case_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_test_case_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_test_case_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the test cases under the agent to a Cloud Storage bucket or a local
        # file. Filter can be applied to export a subset of test cases. This method is a
        # [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: ExportTestCasesMetadata - `response`:
        # ExportTestCasesResponse
        # @param [String] parent
        #   Required. The agent where to export test cases from. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a test case.
        # @param [String] name
        #   Required. The name of the testcase. Format: `projects//locations//agents//
        #   testCases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the test cases from a Cloud Storage bucket or a local file. It always
        # creates new test cases and won't overwrite any existing ones. The provided ID
        # in the imported test case is neglected. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: ImportTestCasesMetadata - `response`:
        # ImportTestCasesResponse
        # @param [String] parent
        #   Required. The agent to import test cases to. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of test cases for a given agent.
        # @param [String] parent
        #   Required. The agent to list all pages for. Format: `projects//locations//
        #   agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20. Note
        #   that when TestCaseView = FULL, the maximum page size allowed is 20. When
        #   TestCaseView = BASIC, the maximum page size allowed is 500.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] view
        #   Specifies whether response should include all fields or just the metadata.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_cases(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/testCases', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified test case.
        # @param [String] name
        #   The unique identifier of the test case. TestCases.CreateTestCase will populate
        #   the name automatically. Otherwise use format: `projects//locations//agents//
        #   testCases/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] google_cloud_dialogflow_cx_v3beta1_test_case_object
        # @param [String] update_mask
        #   Required. The mask to specify which fields should be updated. The `
        #   creationTime` and `lastTestResult` cannot be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3beta1_test_case_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_test_case_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a test case run. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # RunTestCaseMetadata - `response`: RunTestCaseResponse
        # @param [String] name
        #   Required. Format of test case name to run: `projects//locations//agents//
        #   testCases/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunTestCaseRequest] google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:run', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunTestCaseRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a test case result.
        # @param [String] name
        #   Required. The name of the testcase. Format: `projects//locations//agents//
        #   testCases//results/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the list of run results for the given test case. A maximum of 100
        # results are kept for each test case.
        # @param [String] parent
        #   Required. The test case to list results for. Format: `projects//locations//
        #   agents//testCases/`. Specify a `-` as a wildcard for TestCase ID to list
        #   results across multiple test cases.
        # @param [String] filter
        #   The filter expression used to filter test case results. See [API Filtering](
        #   https://aip.dev/160). The expression is case insensitive. Only 'AND' is
        #   supported for logical operators. The supported syntax is listed below in
        #   detail: [AND ] ... [AND latest] The supported fields and operators are: field
        #   operator `environment` `=`, `IN` (Use value `draft` for draft environment) `
        #   test_time` `>`, `<` `latest` only returns the latest test result in all
        #   results for each test case. Examples: * "environment=draft AND latest" matches
        #   the latest test result for each test case in the draft environment. * "
        #   environment IN (e1,e2)" matches any test case results with an environment
        #   resource name of either "e1" or "e2". * "test_time > 1602540713" matches any
        #   test case results with test time later than a unix timestamp in seconds
        #   1602540713.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_case_results(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/results', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Tool in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a Tool for. Format: `projects//locations//agents/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] google_cloud_dialogflow_cx_v3beta1_tool_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool(parent, google_cloud_dialogflow_cx_v3beta1_tool_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/tools', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specified Tool.
        # @param [String] name
        #   Required. The name of the Tool to be deleted. Format: `projects//locations//
        #   agents//tools/`.
        # @param [Boolean] force
        #   This field has no effect for Tools not being used. For Tools that are used: *
        #   If `force` is set to false, an error will be returned with message indicating
        #   the referenced resources. * If `force` is set to true, Dialogflow will remove
        #   the tool, as well as any references to the tool.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_tool(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the selected tools.
        # @param [String] parent
        #   Required. The agent to export tools from. Format: `projects//locations//agents/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportToolsRequest] google_cloud_dialogflow_cx_v3beta1_export_tools_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_tool(parent, google_cloud_dialogflow_cx_v3beta1_export_tools_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/tools:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportToolsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_tools_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Tool.
        # @param [String] name
        #   Required. The name of the Tool. Format: `projects//locations//agents//tools/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of Tools in the specified agent.
        # @param [String] parent
        #   Required. The agent to list the Tools from. Format: `projects//locations//
        #   agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tools(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/tools', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the specified Tool.
        # @param [String] name
        #   The unique identifier of the Tool. Format: `projects//locations//agents//tools/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] google_cloud_dialogflow_cx_v3beta1_tool_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_tool(name, google_cloud_dialogflow_cx_v3beta1_tool_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a version for the specified Tool.
        # @param [String] parent
        #   Required. The tool to create a version for. Format: `projects//locations//
        #   agents//tools/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] google_cloud_dialogflow_cx_v3beta1_tool_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool_version(parent, google_cloud_dialogflow_cx_v3beta1_tool_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified version of the Tool.
        # @param [String] name
        #   Required. The name of the tool version to delete. Format: `projects//locations/
        #   /agents//tools//versions/`.
        # @param [Boolean] force
        #   Optional. This field has no effect for Tools not being used. For Tools that
        #   are used: * If `force` is set to false, an error will be returned with message
        #   indicating the referenced resources. * If `force` is set to true, Dialogflow
        #   will remove the tool, as well as any references to the tool.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_tool_version(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified version of the Tool.
        # @param [String] name
        #   Required. The name of the tool version. Format: `projects//locations//agents//
        #   tools//versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List versions of the specified Tool.
        # @param [String] parent
        #   Required. The parent of the tool versions. Format: `projects//locations//
        #   agents//tools/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tool_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified version of the Tool and stores it as the current tool
        # draft, returning the tool with resources updated.
        # @param [String] name
        #   Required. The name of the tool version. Format: `projects//locations//agents//
        #   tools//versions/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest] google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_tool_version(name, google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an TransitionRouteGroup in the specified flow. Note: You should always
        # train a flow prior to sending it queries. See the [training documentation](
        # https://cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The flow to create an TransitionRouteGroup for. Format: `projects//
        #   locations//agents//flows/` or `projects//locations//agents/` for agent-level
        #   groups.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_transition_route_group(parent, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup to delete. Format: `projects//
        #   locations//agents//flows//transitionRouteGroups/` or `projects//locations//
        #   agents//transitionRouteGroups/`.
        # @param [Boolean] force
        #   This field has no effect for transition route group that no page is using. If
        #   the transition route group is referenced by any page: * If `force` is set to
        #   false, an error will be returned with message indicating pages that reference
        #   the transition route group. * If `force` is set to true, Dialogflow will
        #   remove the transition route group, as well as any reference to it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified TransitionRouteGroup.
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup. Format: `projects//locations//
        #   agents//flows//transitionRouteGroups/` or `projects//locations//agents//
        #   transitionRouteGroups/`.
        # @param [String] language_code
        #   The language to retrieve the transition route group for. The following fields
        #   are language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all transition route groups in the specified flow.
        # @param [String] parent
        #   Required. The flow to list all transition route groups for. Format: `projects//
        #   locations//agents//flows/` or `projects//locations//agents/.
        # @param [String] language_code
        #   The language to list transition route groups for. The following fields are
        #   language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the transition route group. TransitionRouteGroups.
        #   CreateTransitionRouteGroup populates the name automatically. Format: `projects/
        #   /locations//agents//flows//transitionRouteGroups/` or `projects//locations//
        #   agents//transitionRouteGroups/` for agent-level groups.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_transition_route_group(name, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a webhook in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a webhook for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] google_cloud_dialogflow_cx_v3beta1_webhook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_webhook(parent, google_cloud_dialogflow_cx_v3beta1_webhook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/webhooks', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_webhook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified webhook.
        # @param [String] name
        #   Required. The name of the webhook to delete. Format: `projects//locations//
        #   agents//webhooks/`.
        # @param [Boolean] force
        #   This field has no effect for webhook not being used. For webhooks that are
        #   used by pages/flows/transition route groups: * If `force` is set to false, an
        #   error will be returned with message indicating the referenced resources. * If `
        #   force` is set to true, Dialogflow will remove the webhook, as well as any
        #   references to the webhook (i.e. Webhook and tagin fulfillments that point to
        #   this webhook will be removed).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_webhook(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified webhook.
        # @param [String] name
        #   Required. The name of the webhook. Format: `projects//locations//agents//
        #   webhooks/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_webhook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all webhooks in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all webhooks for. Format: `projects//locations//
        #   agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_webhooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/webhooks', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified webhook.
        # @param [String] name
        #   The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook
        #   method. Webhooks.CreateWebhook populates the name automatically. Format: `
        #   projects//locations//agents//webhooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] google_cloud_dialogflow_cx_v3beta1_webhook_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_webhook(name, google_cloud_dialogflow_cx_v3beta1_webhook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_webhook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create security settings in the specified location.
        # @param [String] parent
        #   Required. The location to create an SecuritySettings for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] google_cloud_dialogflow_cx_v3beta1_security_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_security_setting(parent, google_cloud_dialogflow_cx_v3beta1_security_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/securitySettings', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified SecuritySettings.
        # @param [String] name
        #   Required. The name of the SecuritySettings to delete. Format: `projects//
        #   locations//securitySettings/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified SecuritySettings. The returned settings may be stale
        # by up to 1 minute.
        # @param [String] name
        #   Required. Resource name of the settings. Format: `projects//locations//
        #   securitySettings/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all security settings in the specified location.
        # @param [String] parent
        #   Required. The location to list all security settings for. Format: `projects//
        #   locations/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_security_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/securitySettings', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified SecuritySettings.
        # @param [String] name
        #   Resource name of the settings. Required for the SecuritySettingsService.
        #   UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings
        #   populates the name automatically. Format: `projects//locations//
        #   securitySettings/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] google_cloud_dialogflow_cx_v3beta1_security_settings_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. If the mask is not
        #   present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_security_setting(name, google_cloud_dialogflow_cx_v3beta1_security_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
