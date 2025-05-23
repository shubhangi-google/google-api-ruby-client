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
    module FirebasestorageV1beta
      # Cloud Storage for Firebase API
      #
      # The Cloud Storage for Firebase API enables programmatic management of Cloud
      #  Storage buckets for use in Firebase projects
      #
      # @example
      #    require 'google/apis/firebasestorage_v1beta'
      #
      #    Firebasestorage = Google::Apis::FirebasestorageV1beta # Alias the module
      #    service = Firebasestorage::FirebasestorageService.new
      #
      # @see https://firebase.google.com/docs/storage
      class FirebasestorageService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firebasestorage.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-firebasestorage_v1beta',
                client_version: Google::Apis::FirebasestorageV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Unlinks and deletes the default bucket.
        # @param [String] name
        #   Required. The name of the default bucket to delete, `projects/`
        #   project_id_or_number`/defaultBucket`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_default_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebasestorageV1beta::Empty::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the default bucket.
        # @param [String] name
        #   Required. The name of the default bucket to retrieve, `projects/`
        #   project_id_or_number`/defaultBucket`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::DefaultBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::DefaultBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_default_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebasestorageV1beta::DefaultBucket::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::DefaultBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Links a Google Cloud Storage bucket to a Firebase project.
        # @param [String] bucket
        #   Required. Resource name of the bucket, mirrors the ID of the underlying Google
        #   Cloud Storage bucket, `projects/`project_id_or_number`/buckets/`bucket_id``.
        # @param [Google::Apis::FirebasestorageV1beta::AddFirebaseRequest] add_firebase_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::Bucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::Bucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_bucket_firebase(bucket, add_firebase_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+bucket}:addFirebase', options)
          command.request_representation = Google::Apis::FirebasestorageV1beta::AddFirebaseRequest::Representation
          command.request_object = add_firebase_request_object
          command.response_representation = Google::Apis::FirebasestorageV1beta::Bucket::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::Bucket
          command.params['bucket'] = bucket unless bucket.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single linked storage bucket.
        # @param [String] name
        #   Required. Resource name of the bucket, mirrors the ID of the underlying Google
        #   Cloud Storage bucket, `projects/`project_id_or_number`/buckets/`bucket_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::Bucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::Bucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebasestorageV1beta::Bucket::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::Bucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the linked storage buckets for a project.
        # @param [String] parent
        #   Required. Resource name of the parent Firebase project, `projects/`
        #   project_id_or_number``.
        # @param [Fixnum] page_size
        #   The maximum number of buckets to return. If not set, the server will use a
        #   reasonable default.
        # @param [String] page_token
        #   A page token, received from a previous `ListBuckets` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListBuckets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/buckets', options)
          command.response_representation = Google::Apis::FirebasestorageV1beta::ListBucketsResponse::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unlinks a linked Google Cloud Storage bucket from a Firebase project.
        # @param [String] bucket
        #   Required. Resource name of the bucket, mirrors the ID of the underlying Google
        #   Cloud Storage bucket, `projects/`project_id_or_number`/buckets/`bucket_id``.
        # @param [Google::Apis::FirebasestorageV1beta::RemoveFirebaseRequest] remove_firebase_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_bucket_firebase(bucket, remove_firebase_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+bucket}:removeFirebase', options)
          command.request_representation = Google::Apis::FirebasestorageV1beta::RemoveFirebaseRequest::Representation
          command.request_object = remove_firebase_request_object
          command.response_representation = Google::Apis::FirebasestorageV1beta::Empty::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::Empty
          command.params['bucket'] = bucket unless bucket.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Spark tier-eligible Cloud Storage bucket and links it to your
        # Firebase project. If the default bucket already exists, this method will re-
        # link it to your Firebase project. See https://firebase.google.com/pricing for
        # pricing details.
        # @param [String] parent
        #   Required. The parent resource where the default bucket will be created, `
        #   projects/`project_id_or_number``.
        # @param [Google::Apis::FirebasestorageV1beta::DefaultBucket] default_bucket_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasestorageV1beta::DefaultBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasestorageV1beta::DefaultBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_default_bucket(parent, default_bucket_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/defaultBucket', options)
          command.request_representation = Google::Apis::FirebasestorageV1beta::DefaultBucket::Representation
          command.request_object = default_bucket_object
          command.response_representation = Google::Apis::FirebasestorageV1beta::DefaultBucket::Representation
          command.response_class = Google::Apis::FirebasestorageV1beta::DefaultBucket
          command.params['parent'] = parent unless parent.nil?
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
