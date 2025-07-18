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
    module CloudschedulerV1beta1
      
      class AppEngineHttpTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineRouting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OidcToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineHttpTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_routing, as: 'appEngineRouting', class: Google::Apis::CloudschedulerV1beta1::AppEngineRouting, decorator: Google::Apis::CloudschedulerV1beta1::AppEngineRouting::Representation
      
          property :body, :base64 => true, as: 'body'
          hash :headers, as: 'headers'
          property :http_method, as: 'httpMethod'
          property :relative_uri, as: 'relativeUri'
        end
      end
      
      class AppEngineRouting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :instance, as: 'instance'
          property :service, as: 'service'
          property :version, as: 'version'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HttpTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, :base64 => true, as: 'body'
          hash :headers, as: 'headers'
          property :http_method, as: 'httpMethod'
          property :oauth_token, as: 'oauthToken', class: Google::Apis::CloudschedulerV1beta1::OAuthToken, decorator: Google::Apis::CloudschedulerV1beta1::OAuthToken::Representation
      
          property :oidc_token, as: 'oidcToken', class: Google::Apis::CloudschedulerV1beta1::OidcToken, decorator: Google::Apis::CloudschedulerV1beta1::OidcToken::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_http_target, as: 'appEngineHttpTarget', class: Google::Apis::CloudschedulerV1beta1::AppEngineHttpTarget, decorator: Google::Apis::CloudschedulerV1beta1::AppEngineHttpTarget::Representation
      
          property :attempt_deadline, as: 'attemptDeadline'
          property :description, as: 'description'
          property :http_target, as: 'httpTarget', class: Google::Apis::CloudschedulerV1beta1::HttpTarget, decorator: Google::Apis::CloudschedulerV1beta1::HttpTarget::Representation
      
          property :last_attempt_time, as: 'lastAttemptTime'
          property :legacy_app_engine_cron, as: 'legacyAppEngineCron'
          property :name, as: 'name'
          property :pubsub_target, as: 'pubsubTarget', class: Google::Apis::CloudschedulerV1beta1::PubsubTarget, decorator: Google::Apis::CloudschedulerV1beta1::PubsubTarget::Representation
      
          property :retry_config, as: 'retryConfig', class: Google::Apis::CloudschedulerV1beta1::RetryConfig, decorator: Google::Apis::CloudschedulerV1beta1::RetryConfig::Representation
      
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :schedule, as: 'schedule'
          property :schedule_time, as: 'scheduleTime'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::CloudschedulerV1beta1::Status, decorator: Google::Apis::CloudschedulerV1beta1::Status::Representation
      
          property :time_zone, as: 'timeZone'
          property :user_update_time, as: 'userUpdateTime'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::CloudschedulerV1beta1::Job, decorator: Google::Apis::CloudschedulerV1beta1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudschedulerV1beta1::Location, decorator: Google::Apis::CloudschedulerV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class OAuthToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class OidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account_email, as: 'serviceAccountEmail'
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
      
      class PauseJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PubsubMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :message_id, as: 'messageId'
          property :ordering_key, as: 'orderingKey'
          property :publish_time, as: 'publishTime'
        end
      end
      
      class PubsubTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :topic_name, as: 'topicName'
        end
      end
      
      class ResumeJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RetryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_backoff_duration, as: 'maxBackoffDuration'
          property :max_doublings, as: 'maxDoublings'
          property :max_retry_duration, as: 'maxRetryDuration'
          property :min_backoff_duration, as: 'minBackoffDuration'
          property :retry_count, as: 'retryCount'
        end
      end
      
      class RunJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_app_engine_cron, as: 'legacyAppEngineCron'
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
    end
  end
end
