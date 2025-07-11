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
    module CloudtraceV1
      # Cloud Trace API
      #
      # Sends application trace data to Cloud Trace for viewing. Trace data is
      #  collected for all App Engine applications by default. Trace data from other
      #  applications can be provided using this API. This library is used to interact
      #  with the Cloud Trace API directly. If you are looking to instrument your
      #  application for Cloud Trace, we recommend using OpenTelemetry.
      #
      # @example
      #    require 'google/apis/cloudtrace_v1'
      #
      #    Cloudtrace = Google::Apis::CloudtraceV1 # Alias the module
      #    service = Cloudtrace::CloudTraceService.new
      #
      # @see https://cloud.google.com/trace
      class CloudTraceService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://cloudtrace.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-cloudtrace_v1',
                client_version: Google::Apis::CloudtraceV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Sends trace spans to Cloud Trace. Spans cannot be updated. If the trace ID and
        # span ID already exist, an additional copy of the span will be stored.
        # @param [String] project_id
        #   Required. ID of the Cloud project where the trace data is stored.
        # @param [Google::Apis::CloudtraceV1::Traces] traces_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_traces(project_id, traces_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/projects/{projectId}/traces', options)
          command.request_representation = Google::Apis::CloudtraceV1::Traces::Representation
          command.request_object = traces_object
          command.response_representation = Google::Apis::CloudtraceV1::Empty::Representation
          command.response_class = Google::Apis::CloudtraceV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single trace by its ID.
        # @param [String] project_id
        #   Required. ID of the Cloud project where the trace data is stored.
        # @param [String] trace_id
        #   Required. ID of the trace to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::Trace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::Trace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_trace(project_id, trace_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/traces/{traceId}', options)
          command.response_representation = Google::Apis::CloudtraceV1::Trace::Representation
          command.response_class = Google::Apis::CloudtraceV1::Trace
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['traceId'] = trace_id unless trace_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of traces that match the specified filter conditions.
        # @param [String] project_id
        #   Required. ID of the Cloud project where the trace data is stored.
        # @param [String] end_time
        #   End of the time interval (inclusive) during which the trace data was collected
        #   from the application.
        # @param [String] filter
        #   Optional. A filter against properties of the trace. See [filter syntax
        #   documentation](https://cloud.google.com/trace/docs/trace-filters) for details.
        # @param [String] order_by
        #   Optional. Field used to sort the returned traces. Can be one of the following:
        #   * `trace_id` * `name` (`name` field of root span in the trace) * `duration` (
        #   difference between `end_time` and `start_time` fields of the root span) * `
        #   start` (`start_time` field of the root span) Descending order can be specified
        #   by appending `desc` to the sort field (for example, `name desc`). Only one
        #   sort field is permitted.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of traces to return. If not specified or <= 0, the
        #   implementation selects a reasonable value. The implementation may return fewer
        #   traces than the requested page size.
        # @param [String] page_token
        #   Token identifying the page of results to return. If provided, use the value of
        #   the `next_page_token` field from a previous request.
        # @param [String] start_time
        #   Start of the time interval (inclusive) during which the trace data was
        #   collected from the application.
        # @param [String] view
        #   Optional. Type of data returned for traces in the list. Default is `MINIMAL`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::ListTracesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::ListTracesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_traces(project_id, end_time: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, start_time: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/traces', options)
          command.response_representation = Google::Apis::CloudtraceV1::ListTracesResponse::Representation
          command.response_class = Google::Apis::CloudtraceV1::ListTracesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['view'] = view unless view.nil?
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
