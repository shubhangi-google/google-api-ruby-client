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
    module BigqueryV2
      # BigQuery API
      #
      # A data platform for customers to create, manage, share and query data.
      #
      # @example
      #    require 'google/apis/bigquery_v2'
      #
      #    Bigquery = Google::Apis::BigqueryV2 # Alias the module
      #    service = Bigquery::BigqueryService.new
      #
      # @see https://cloud.google.com/bigquery/
      class BigqueryService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://bigquery.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, 'bigquery/v2/',
                client_name: 'google-apis-bigquery_v2',
                client_version: Google::Apis::BigqueryV2::GEM_VERSION)
          @batch_path = 'batch/bigquery/v2'
        end
        
        # Deletes the dataset specified by the datasetId value. Before you can delete a
        # dataset, you must delete all its tables, either manually or by specifying
        # deleteContents. Immediately after deletion, you can create another dataset
        # with the same name.
        # @param [String] project_id
        #   Required. Project ID of the dataset being deleted
        # @param [String] dataset_id
        #   Required. Dataset ID of dataset being deleted
        # @param [Boolean] delete_contents
        #   If True, delete all the tables in the dataset. If False and the dataset
        #   contains tables, the request will fail. Default is False
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_dataset(project_id, dataset_id, delete_contents: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/datasets/{+datasetId}', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['deleteContents'] = delete_contents unless delete_contents.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the dataset specified by datasetID.
        # @param [String] project_id
        #   Required. Project ID of the requested dataset
        # @param [String] dataset_id
        #   Required. Dataset ID of the requested dataset
        # @param [Fixnum] access_policy_version
        #   Optional. The version of the access policy schema to fetch. Valid values are 0,
        #   1, and 3. Requests specifying an invalid value will be rejected. Requests for
        #   conditional access policy binding in datasets must specify version 3. Dataset
        #   with no conditional role bindings in access policy may specify any valid value
        #   or leave the field unset. This field will be mapped to [IAM Policy version] (
        #   https://cloud.google.com/iam/docs/policies#versions) and will be used to fetch
        #   policy from IAM. If unset or if 0 or 1 value is used for dataset with
        #   conditional bindings, access entry with condition will have role string
        #   appended by 'withcond' string followed by a hash value. For example : ` "
        #   access": [ ` "role": "roles/bigquery.
        #   dataViewer_with_conditionalbinding_7a34awqsda", "userByEmail": "user@example.
        #   com", ` ] ` Please refer https://cloud.google.com/iam/docs/troubleshooting-
        #   withcond for more details.
        # @param [String] dataset_view
        #   Optional. Specifies the view that determines which dataset information is
        #   returned. By default, metadata and ACL information are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_dataset(project_id, dataset_id, access_policy_version: nil, dataset_view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}', options)
          command.response_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['accessPolicyVersion'] = access_policy_version unless access_policy_version.nil?
          command.query['datasetView'] = dataset_view unless dataset_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new empty dataset.
        # @param [String] project_id
        #   Required. Project ID of the new dataset
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_object
        # @param [Fixnum] access_policy_version
        #   Optional. The version of the provided access policy schema. Valid values are 0,
        #   1, and 3. Requests specifying an invalid value will be rejected. This version
        #   refers to the schema version of the access policy and not the version of
        #   access policy. This field's value can be equal or more than the access policy
        #   schema provided in the request. For example, * Requests with conditional
        #   access policy binding in datasets must specify version 3. * But dataset with
        #   no conditional role bindings in access policy may specify any valid value or
        #   leave the field unset. If unset or if 0 or 1 value is used for dataset with
        #   conditional bindings, request will be rejected. This field will be mapped to
        #   IAM Policy version (https://cloud.google.com/iam/docs/policies#versions) and
        #   will be used to set policy in IAM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_dataset(project_id, dataset_object = nil, access_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets', options)
          command.request_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['accessPolicyVersion'] = access_policy_version unless access_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all datasets in the specified project to which the user has been granted
        # the READER dataset role.
        # @param [String] project_id
        #   Required. Project ID of the datasets to be listed
        # @param [Boolean] all
        #   Whether to list all datasets, including hidden ones
        # @param [String] filter
        #   An expression for filtering the results of the request by label. The syntax is
        #   `labels.[:]`. Multiple filters can be AND-ed together by connecting with a
        #   space. Example: `labels.department:receiving labels.active`. See [Filtering
        #   datasets using labels](https://cloud.google.com/bigquery/docs/filtering-labels#
        #   filtering_datasets_using_labels) for details.
        # @param [Fixnum] max_results
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::DatasetList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::DatasetList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datasets(project_id, all: nil, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets', options)
          command.response_representation = Google::Apis::BigqueryV2::DatasetList::Representation
          command.response_class = Google::Apis::BigqueryV2::DatasetList
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['all'] = all unless all.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information in an existing dataset. The update method replaces the
        # entire dataset resource, whereas the patch method only replaces fields that
        # are provided in the submitted dataset resource. This method supports RFC5789
        # patch semantics.
        # @param [String] project_id
        #   Required. Project ID of the dataset being updated
        # @param [String] dataset_id
        #   Required. Dataset ID of the dataset being updated
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_object
        # @param [Fixnum] access_policy_version
        #   Optional. The version of the provided access policy schema. Valid values are 0,
        #   1, and 3. Requests specifying an invalid value will be rejected. This version
        #   refers to the schema version of the access policy and not the version of
        #   access policy. This field's value can be equal or more than the access policy
        #   schema provided in the request. For example, * Operations updating conditional
        #   access policy binding in datasets must specify version 3. Some of the
        #   operations are : - Adding a new access policy entry with condition. - Removing
        #   an access policy entry with condition. - Updating an access policy entry with
        #   condition. * But dataset with no conditional role bindings in access policy
        #   may specify any valid value or leave the field unset. If unset or if 0 or 1
        #   value is used for dataset with conditional bindings, request will be rejected.
        #   This field will be mapped to IAM Policy version (https://cloud.google.com/iam/
        #   docs/policies#versions) and will be used to set policy in IAM.
        # @param [String] update_mode
        #   Optional. Specifies the fields of dataset that update/patch operation is
        #   targeting By default, both metadata and ACL fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_dataset(project_id, dataset_id, dataset_object = nil, access_policy_version: nil, update_mode: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'projects/{+projectId}/datasets/{+datasetId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['accessPolicyVersion'] = access_policy_version unless access_policy_version.nil?
          command.query['updateMode'] = update_mode unless update_mode.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a dataset which is within time travel window based on datasetId. If
        # a time is specified, the dataset version deleted at that time is undeleted,
        # else the last live version is undeleted.
        # @param [String] project_id
        #   Required. Project ID of the dataset to be undeleted
        # @param [String] dataset_id
        #   Required. Dataset ID of dataset being deleted
        # @param [Google::Apis::BigqueryV2::UndeleteDatasetRequest] undelete_dataset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_dataset(project_id, dataset_id, undelete_dataset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}:undelete', options)
          command.request_representation = Google::Apis::BigqueryV2::UndeleteDatasetRequest::Representation
          command.request_object = undelete_dataset_request_object
          command.response_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information in an existing dataset. The update method replaces the
        # entire dataset resource, whereas the patch method only replaces fields that
        # are provided in the submitted dataset resource.
        # @param [String] project_id
        #   Required. Project ID of the dataset being updated
        # @param [String] dataset_id
        #   Required. Dataset ID of the dataset being updated
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_object
        # @param [Fixnum] access_policy_version
        #   Optional. The version of the provided access policy schema. Valid values are 0,
        #   1, and 3. Requests specifying an invalid value will be rejected. This version
        #   refers to the schema version of the access policy and not the version of
        #   access policy. This field's value can be equal or more than the access policy
        #   schema provided in the request. For example, * Operations updating conditional
        #   access policy binding in datasets must specify version 3. Some of the
        #   operations are : - Adding a new access policy entry with condition. - Removing
        #   an access policy entry with condition. - Updating an access policy entry with
        #   condition. * But dataset with no conditional role bindings in access policy
        #   may specify any valid value or leave the field unset. If unset or if 0 or 1
        #   value is used for dataset with conditional bindings, request will be rejected.
        #   This field will be mapped to IAM Policy version (https://cloud.google.com/iam/
        #   docs/policies#versions) and will be used to set policy in IAM.
        # @param [String] update_mode
        #   Optional. Specifies the fields of dataset that update/patch operation is
        #   targeting By default, both metadata and ACL fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_dataset(project_id, dataset_id, dataset_object = nil, access_policy_version: nil, update_mode: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'projects/{+projectId}/datasets/{+datasetId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::BigqueryV2::Dataset::Representation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['accessPolicyVersion'] = access_policy_version unless access_policy_version.nil?
          command.query['updateMode'] = update_mode unless update_mode.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests that a job be cancelled. This call will return immediately, and the
        # client will need to poll for the job status to see if the cancel completed
        # successfully. Cancelled jobs may still incur costs.
        # @param [String] project_id
        #   Required. Project ID of the job to cancel
        # @param [String] job_id
        #   Required. Job ID of the job to cancel
        # @param [String] location
        #   The geographic location of the job. You must [specify the location](https://
        #   cloud.google.com/bigquery/docs/locations#specify_locations) to run the job for
        #   the following scenarios: * If the location to run a job is not in the `us` or
        #   the `eu` multi-regional location * If the job's location is in a single region
        #   (for example, `us-central1`)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::CancelJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::CancelJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_job(project_id, job_id, location: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/jobs/{+jobId}/cancel', options)
          command.response_representation = Google::Apis::BigqueryV2::CancelJobResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::CancelJobResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the deletion of the metadata of a job. This call returns when the job'
        # s metadata is deleted.
        # @param [String] project_id
        #   Required. Project ID of the job for which metadata is to be deleted.
        # @param [String] job_id
        #   Required. Job ID of the job for which metadata is to be deleted. If this is a
        #   parent job which has child jobs, the metadata from all child jobs will be
        #   deleted as well. Direct deletion of the metadata of child jobs is not allowed.
        # @param [String] location
        #   The geographic location of the job. Required. For more information, see how to
        #   [specify locations](https://cloud.google.com/bigquery/docs/locations#
        #   specify_locations).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_job(project_id, job_id, location: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/jobs/{+jobId}/delete', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a specific job. Job information is available for a
        # six month period after creation. Requires that you're the person who ran the
        # job, or have the Is Owner project role.
        # @param [String] project_id
        #   Required. Project ID of the requested job.
        # @param [String] job_id
        #   Required. Job ID of the requested job.
        # @param [String] location
        #   The geographic location of the job. You must specify the location to run the
        #   job for the following scenarios: * If the location to run a job is not in the `
        #   us` or the `eu` multi-regional location * If the job's location is in a single
        #   region (for example, `us-central1`) For more information, see how to [specify
        #   locations](https://cloud.google.com/bigquery/docs/locations#specify_locations).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job(project_id, job_id, location: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/jobs/{+jobId}', options)
          command.response_representation = Google::Apis::BigqueryV2::Job::Representation
          command.response_class = Google::Apis::BigqueryV2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RPC to get the results of a query job.
        # @param [String] project_id
        #   Required. Project ID of the query job.
        # @param [String] job_id
        #   Required. Job ID of the query job.
        # @param [Boolean] format_options_use_int64_timestamp
        #   Optional. Output timestamp as usec int64. Default is false.
        # @param [String] location
        #   The geographic location of the job. You must specify the location to run the
        #   job for the following scenarios: * If the location to run a job is not in the `
        #   us` or the `eu` multi-regional location * If the job's location is in a single
        #   region (for example, `us-central1`) For more information, see how to [specify
        #   locations](https://cloud.google.com/bigquery/docs/locations#specify_locations).
        # @param [Fixnum] max_results
        #   Maximum number of results to read.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results.
        # @param [Fixnum] start_index
        #   Zero-based index of the starting row.
        # @param [Fixnum] timeout_ms
        #   Optional: Specifies the maximum amount of time, in milliseconds, that the
        #   client is willing to wait for the query to complete. By default, this limit is
        #   10 seconds (10,000 milliseconds). If the query is complete, the jobComplete
        #   field in the response is true. If the query has not yet completed, jobComplete
        #   is false. You can request a longer timeout period in the timeoutMs field.
        #   However, the call is not guaranteed to wait for the specified timeout; it
        #   typically returns after around 200 seconds (200,000 milliseconds), even if the
        #   query is not complete. If jobComplete is false, you can continue to wait for
        #   the query to complete by calling the getQueryResults method until the
        #   jobComplete field in the getQueryResults response is true.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::GetQueryResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::GetQueryResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job_query_results(project_id, job_id, format_options_use_int64_timestamp: nil, location: nil, max_results: nil, page_token: nil, start_index: nil, timeout_ms: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/queries/{+jobId}', options)
          command.response_representation = Google::Apis::BigqueryV2::GetQueryResultsResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::GetQueryResultsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['formatOptions.useInt64Timestamp'] = format_options_use_int64_timestamp unless format_options_use_int64_timestamp.nil?
          command.query['location'] = location unless location.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['timeoutMs'] = timeout_ms unless timeout_ms.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a new asynchronous job. This API has two different kinds of endpoint
        # URIs, as this method supports a variety of use cases. * The *Metadata* URI is
        # used for most interactions, as it accepts the job configuration directly. *
        # The *Upload* URI is ONLY for the case when you're sending both a load job
        # configuration and a data stream together. In this case, the Upload URI accepts
        # the job configuration and the data as two distinct multipart MIME parts.
        # @param [String] project_id
        #   Project ID of project that will be billed for the job.
        # @param [Google::Apis::BigqueryV2::Job] job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_job(project_id, job_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'projects/{+projectId}/jobs', options)
          else
            command = make_upload_command(:post, 'projects/{+projectId}/jobs', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::BigqueryV2::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::BigqueryV2::Job::Representation
          command.response_class = Google::Apis::BigqueryV2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all jobs that you started in the specified project. Job information is
        # available for a six month period after creation. The job list is sorted in
        # reverse chronological order, by job creation time. Requires the Can View
        # project role, or the Is Owner project role if you set the allUsers property.
        # @param [String] project_id
        #   Project ID of the jobs to list.
        # @param [Boolean] all_users
        #   Whether to display jobs owned by all users in the project. Default False.
        # @param [Fixnum] max_creation_time
        #   Max value for job creation time, in milliseconds since the POSIX epoch. If set,
        #   only jobs created before or at this timestamp are returned.
        # @param [Fixnum] max_results
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [Fixnum] min_creation_time
        #   Min value for job creation time, in milliseconds since the POSIX epoch. If set,
        #   only jobs created after or at this timestamp are returned.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results.
        # @param [String] parent_job_id
        #   If set, show only child jobs of the specified parent. Otherwise, show all top-
        #   level jobs.
        # @param [String] projection
        #   Restrict information returned to a set of selected fields
        # @param [Array<String>, String] state_filter
        #   Filter for job state
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::JobList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::JobList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_jobs(project_id, all_users: nil, max_creation_time: nil, max_results: nil, min_creation_time: nil, page_token: nil, parent_job_id: nil, projection: nil, state_filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/jobs', options)
          command.response_representation = Google::Apis::BigqueryV2::JobList::Representation
          command.response_class = Google::Apis::BigqueryV2::JobList
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['allUsers'] = all_users unless all_users.nil?
          command.query['maxCreationTime'] = max_creation_time unless max_creation_time.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['minCreationTime'] = min_creation_time unless min_creation_time.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parentJobId'] = parent_job_id unless parent_job_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['stateFilter'] = state_filter unless state_filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a BigQuery SQL query synchronously and returns query results if the query
        # completes within a specified timeout.
        # @param [String] project_id
        #   Required. Project ID of the query request.
        # @param [Google::Apis::BigqueryV2::QueryRequest] query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::QueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::QueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_job(project_id, query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/queries', options)
          command.request_representation = Google::Apis::BigqueryV2::QueryRequest::Representation
          command.request_object = query_request_object
          command.response_representation = Google::Apis::BigqueryV2::QueryResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::QueryResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the model specified by modelId from the dataset.
        # @param [String] project_id
        #   Required. Project ID of the model to delete.
        # @param [String] dataset_id
        #   Required. Dataset ID of the model to delete.
        # @param [String] model_id
        #   Required. Model ID of the model to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_model(project_id, dataset_id, model_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['modelId'] = model_id unless model_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified model resource by model ID.
        # @param [String] project_id
        #   Required. Project ID of the requested model.
        # @param [String] dataset_id
        #   Required. Dataset ID of the requested model.
        # @param [String] model_id
        #   Required. Model ID of the requested model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Model] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Model]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_model(project_id, dataset_id, model_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}', options)
          command.response_representation = Google::Apis::BigqueryV2::Model::Representation
          command.response_class = Google::Apis::BigqueryV2::Model
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['modelId'] = model_id unless model_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all models in the specified dataset. Requires the READER dataset role.
        # After retrieving the list of models, you can get information about a
        # particular model by calling the models.get method.
        # @param [String] project_id
        #   Required. Project ID of the models to list.
        # @param [String] dataset_id
        #   Required. Dataset ID of the models to list.
        # @param [Fixnum] max_results
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [String] page_token
        #   Page token, returned by a previous call to request the next page of results
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::ListModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::ListModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_models(project_id, dataset_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/models', options)
          command.response_representation = Google::Apis::BigqueryV2::ListModelsResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::ListModelsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch specific fields in the specified model.
        # @param [String] project_id
        #   Required. Project ID of the model to patch.
        # @param [String] dataset_id
        #   Required. Dataset ID of the model to patch.
        # @param [String] model_id
        #   Required. Model ID of the model to patch.
        # @param [Google::Apis::BigqueryV2::Model] model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Model] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Model]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_model(project_id, dataset_id, model_id, model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Model::Representation
          command.request_object = model_object
          command.response_representation = Google::Apis::BigqueryV2::Model::Representation
          command.response_class = Google::Apis::BigqueryV2::Model
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['modelId'] = model_id unless model_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RPC to get the service account for a project used for interactions with Google
        # Cloud KMS
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::GetServiceAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::GetServiceAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service_account(project_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/serviceAccount', options)
          command.response_representation = Google::Apis::BigqueryV2::GetServiceAccountResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::GetServiceAccountResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RPC to list projects to which the user has been granted any project role.
        # Users of this method are encouraged to consider the [Resource Manager](https://
        # cloud.google.com/resource-manager/docs/) API, which provides the underlying
        # data for this method and has more capabilities.
        # @param [Fixnum] max_results
        #   `maxResults` unset returns all results, up to 50 per page. Additionally, the
        #   number of projects in a page may be fewer than `maxResults` because projects
        #   are retrieved and then filtered to only projects with the BigQuery API enabled.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results.
        #   If not present, no further pages are present.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::ProjectList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::ProjectList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects', options)
          command.response_representation = Google::Apis::BigqueryV2::ProjectList::Representation
          command.response_class = Google::Apis::BigqueryV2::ProjectList
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the routine specified by routineId from the dataset.
        # @param [String] project_id
        #   Required. Project ID of the routine to delete
        # @param [String] dataset_id
        #   Required. Dataset ID of the routine to delete
        # @param [String] routine_id
        #   Required. Routine ID of the routine to delete
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_routine(project_id, dataset_id, routine_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['routineId'] = routine_id unless routine_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified routine resource by routine ID.
        # @param [String] project_id
        #   Required. Project ID of the requested routine
        # @param [String] dataset_id
        #   Required. Dataset ID of the requested routine
        # @param [String] routine_id
        #   Required. Routine ID of the requested routine
        # @param [String] read_mask
        #   If set, only the Routine fields in the field mask are returned in the response.
        #   If unset, all Routine fields are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Routine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Routine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_routine(project_id, dataset_id, routine_id, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}', options)
          command.response_representation = Google::Apis::BigqueryV2::Routine::Representation
          command.response_class = Google::Apis::BigqueryV2::Routine
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['routineId'] = routine_id unless routine_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
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
        # @param [Google::Apis::BigqueryV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_routine_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigqueryV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigqueryV2::Policy::Representation
          command.response_class = Google::Apis::BigqueryV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new routine in the dataset.
        # @param [String] project_id
        #   Required. Project ID of the new routine
        # @param [String] dataset_id
        #   Required. Dataset ID of the new routine
        # @param [Google::Apis::BigqueryV2::Routine] routine_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Routine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Routine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_routine(project_id, dataset_id, routine_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}/routines', options)
          command.request_representation = Google::Apis::BigqueryV2::Routine::Representation
          command.request_object = routine_object
          command.response_representation = Google::Apis::BigqueryV2::Routine::Representation
          command.response_class = Google::Apis::BigqueryV2::Routine
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all routines in the specified dataset. Requires the READER dataset role.
        # @param [String] project_id
        #   Required. Project ID of the routines to list
        # @param [String] dataset_id
        #   Required. Dataset ID of the routines to list
        # @param [String] filter
        #   If set, then only the Routines matching this filter are returned. The
        #   supported format is `routineType:`RoutineType``, where ``RoutineType`` is a
        #   RoutineType enum. For example: `routineType:SCALAR_FUNCTION`.
        # @param [Fixnum] max_results
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
        # @param [String] read_mask
        #   If set, then only the Routine fields in the field mask, as well as project_id,
        #   dataset_id and routine_id, are returned in the response. If unset, then the
        #   following Routine fields are returned: etag, project_id, dataset_id,
        #   routine_id, routine_type, creation_time, last_modified_time, and language.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::ListRoutinesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::ListRoutinesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_routines(project_id, dataset_id, filter: nil, max_results: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/routines', options)
          command.response_representation = Google::Apis::BigqueryV2::ListRoutinesResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::ListRoutinesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
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
        # @param [Google::Apis::BigqueryV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_routine_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigqueryV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigqueryV2::Policy::Representation
          command.response_class = Google::Apis::BigqueryV2::Policy
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
        # @param [Google::Apis::BigqueryV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_routine_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigqueryV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigqueryV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information in an existing routine. The update method replaces the
        # entire Routine resource.
        # @param [String] project_id
        #   Required. Project ID of the routine to update
        # @param [String] dataset_id
        #   Required. Dataset ID of the routine to update
        # @param [String] routine_id
        #   Required. Routine ID of the routine to update
        # @param [Google::Apis::BigqueryV2::Routine] routine_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Routine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Routine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_routine(project_id, dataset_id, routine_id, routine_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Routine::Representation
          command.request_object = routine_object
          command.response_representation = Google::Apis::BigqueryV2::Routine::Representation
          command.response_class = Google::Apis::BigqueryV2::Routine
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['routineId'] = routine_id unless routine_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes provided row access policies.
        # @param [String] project_id
        #   Required. Project ID of the table to delete the row access policies.
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to delete the row access policies.
        # @param [String] table_id
        #   Required. Table ID of the table to delete the row access policies.
        # @param [Google::Apis::BigqueryV2::BatchDeleteRowAccessPoliciesRequest] batch_delete_row_access_policies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_row_access_policy_delete_row_access_policies(project_id, dataset_id, table_id, batch_delete_row_access_policies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies:batchDelete', options)
          command.request_representation = Google::Apis::BigqueryV2::BatchDeleteRowAccessPoliciesRequest::Representation
          command.request_object = batch_delete_row_access_policies_request_object
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a row access policy.
        # @param [String] project_id
        #   Required. Project ID of the table to delete the row access policy.
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to delete the row access policy.
        # @param [String] table_id
        #   Required. Table ID of the table to delete the row access policy.
        # @param [String] policy_id
        #   Required. Policy ID of the row access policy.
        # @param [Boolean] force
        #   If set to true, it deletes the row access policy even if it's the last row
        #   access policy on the table and the deletion will widen the access rather
        #   narrowing it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_row_access_policy(project_id, dataset_id, table_id, policy_id, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.params['policyId'] = policy_id unless policy_id.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified row access policy by policy ID.
        # @param [String] project_id
        #   Required. Project ID of the table to get the row access policy.
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to get the row access policy.
        # @param [String] table_id
        #   Required. Table ID of the table to get the row access policy.
        # @param [String] policy_id
        #   Required. Policy ID of the row access policy.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::RowAccessPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::RowAccessPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_row_access_policy(project_id, dataset_id, table_id, policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}', options)
          command.response_representation = Google::Apis::BigqueryV2::RowAccessPolicy::Representation
          command.response_class = Google::Apis::BigqueryV2::RowAccessPolicy
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.params['policyId'] = policy_id unless policy_id.nil?
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
        # @param [Google::Apis::BigqueryV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_row_access_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigqueryV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigqueryV2::Policy::Representation
          command.response_class = Google::Apis::BigqueryV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a row access policy.
        # @param [String] project_id
        #   Required. Project ID of the table to get the row access policy.
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to get the row access policy.
        # @param [String] table_id
        #   Required. Table ID of the table to get the row access policy.
        # @param [Google::Apis::BigqueryV2::RowAccessPolicy] row_access_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::RowAccessPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::RowAccessPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_row_access_policy(project_id, dataset_id, table_id, row_access_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies', options)
          command.request_representation = Google::Apis::BigqueryV2::RowAccessPolicy::Representation
          command.request_object = row_access_policy_object
          command.response_representation = Google::Apis::BigqueryV2::RowAccessPolicy::Representation
          command.response_class = Google::Apis::BigqueryV2::RowAccessPolicy
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all row access policies on the specified table.
        # @param [String] project_id
        #   Required. Project ID of the row access policies to list.
        # @param [String] dataset_id
        #   Required. Dataset ID of row access policies to list.
        # @param [String] table_id
        #   Required. Table ID of the table to list row access policies.
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::ListRowAccessPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::ListRowAccessPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_row_access_policies(project_id, dataset_id, table_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies', options)
          command.response_representation = Google::Apis::BigqueryV2::ListRowAccessPoliciesResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::ListRowAccessPoliciesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @param [Google::Apis::BigqueryV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_row_access_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigqueryV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigqueryV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a row access policy.
        # @param [String] project_id
        #   Required. Project ID of the table to get the row access policy.
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to get the row access policy.
        # @param [String] table_id
        #   Required. Table ID of the table to get the row access policy.
        # @param [String] policy_id
        #   Required. Policy ID of the row access policy.
        # @param [Google::Apis::BigqueryV2::RowAccessPolicy] row_access_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::RowAccessPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::RowAccessPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_row_access_policy(project_id, dataset_id, table_id, policy_id, row_access_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}', options)
          command.request_representation = Google::Apis::BigqueryV2::RowAccessPolicy::Representation
          command.request_object = row_access_policy_object
          command.response_representation = Google::Apis::BigqueryV2::RowAccessPolicy::Representation
          command.response_class = Google::Apis::BigqueryV2::RowAccessPolicy
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.params['policyId'] = policy_id unless policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Streams data into BigQuery one record at a time without needing to run a load
        # job.
        # @param [String] project_id
        #   Required. Project ID of the destination.
        # @param [String] dataset_id
        #   Required. Dataset ID of the destination.
        # @param [String] table_id
        #   Required. Table ID of the destination.
        # @param [Google::Apis::BigqueryV2::InsertAllTableDataRequest] insert_all_table_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::InsertAllTableDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::InsertAllTableDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_all_table_data(project_id, dataset_id, table_id, insert_all_table_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/insertAll', options)
          command.request_representation = Google::Apis::BigqueryV2::InsertAllTableDataRequest::Representation
          command.request_object = insert_all_table_data_request_object
          command.response_representation = Google::Apis::BigqueryV2::InsertAllTableDataResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::InsertAllTableDataResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the content of a table in rows.
        # @param [String] project_id
        #   Required. Project id of the table to list.
        # @param [String] dataset_id
        #   Required. Dataset id of the table to list.
        # @param [String] table_id
        #   Required. Table id of the table to list.
        # @param [Boolean] format_options_use_int64_timestamp
        #   Optional. Output timestamp as usec int64. Default is false.
        # @param [Fixnum] max_results
        #   Row limit of the table.
        # @param [String] page_token
        #   To retrieve the next page of table data, set this field to the string provided
        #   in the pageToken field of the response body from your previous call to
        #   tabledata.list.
        # @param [String] selected_fields
        #   Subset of fields to return, supports select into sub fields. Example:
        #   selected_fields = "a,e.d.f";
        # @param [Fixnum] start_index
        #   Start row index of the table.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::TableDataList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TableDataList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_data(project_id, dataset_id, table_id, format_options_use_int64_timestamp: nil, max_results: nil, page_token: nil, selected_fields: nil, start_index: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/data', options)
          command.response_representation = Google::Apis::BigqueryV2::TableDataList::Representation
          command.response_class = Google::Apis::BigqueryV2::TableDataList
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['formatOptions.useInt64Timestamp'] = format_options_use_int64_timestamp unless format_options_use_int64_timestamp.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['selectedFields'] = selected_fields unless selected_fields.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the table specified by tableId from the dataset. If the table contains
        # data, all the data will be deleted.
        # @param [String] project_id
        #   Required. Project ID of the table to delete
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to delete
        # @param [String] table_id
        #   Required. Table ID of the table to delete
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_table(project_id, dataset_id, table_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}', options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified table resource by table ID. This method does not return the
        # data in the table, it only returns the table resource, which describes the
        # structure of this table.
        # @param [String] project_id
        #   Required. Project ID of the requested table
        # @param [String] dataset_id
        #   Required. Dataset ID of the requested table
        # @param [String] table_id
        #   Required. Table ID of the requested table
        # @param [String] selected_fields
        #   List of table schema fields to return (comma-separated). If unspecified, all
        #   fields are returned. A fieldMask cannot be used here because the fields will
        #   automatically be converted from camelCase to snake_case and the conversion
        #   will fail if there are underscores. Since these are fields in BigQuery table
        #   schemas, underscores are allowed.
        # @param [String] view
        #   Optional. Specifies the view that determines which table information is
        #   returned. By default, basic table information and storage statistics (
        #   STORAGE_STATS) are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table(project_id, dataset_id, table_id, selected_fields: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}', options)
          command.response_representation = Google::Apis::BigqueryV2::Table::Representation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['selectedFields'] = selected_fields unless selected_fields.nil?
          command.query['view'] = view unless view.nil?
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
        # @param [Google::Apis::BigqueryV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigqueryV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigqueryV2::Policy::Representation
          command.response_class = Google::Apis::BigqueryV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new, empty table in the dataset.
        # @param [String] project_id
        #   Required. Project ID of the new table
        # @param [String] dataset_id
        #   Required. Dataset ID of the new table
        # @param [Google::Apis::BigqueryV2::Table] table_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_table(project_id, dataset_id, table_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'projects/{+projectId}/datasets/{+datasetId}/tables', options)
          command.request_representation = Google::Apis::BigqueryV2::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BigqueryV2::Table::Representation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all tables in the specified dataset. Requires the READER dataset role.
        # @param [String] project_id
        #   Required. Project ID of the tables to list
        # @param [String] dataset_id
        #   Required. Dataset ID of the tables to list
        # @param [Fixnum] max_results
        #   The maximum number of results to return in a single response page. Leverage
        #   the page tokens to iterate through the entire collection.
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::TableList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TableList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tables(project_id, dataset_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'projects/{+projectId}/datasets/{+datasetId}/tables', options)
          command.response_representation = Google::Apis::BigqueryV2::TableList::Representation
          command.response_class = Google::Apis::BigqueryV2::TableList
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information in an existing table. The update method replaces the
        # entire table resource, whereas the patch method only replaces fields that are
        # provided in the submitted table resource. This method supports RFC5789 patch
        # semantics.
        # @param [String] project_id
        #   Required. Project ID of the table to update
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to update
        # @param [String] table_id
        #   Required. Table ID of the table to update
        # @param [Google::Apis::BigqueryV2::Table] table_object
        # @param [Boolean] autodetect_schema
        #   Optional.  When true will autodetect schema, else will keep original schema
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_table(project_id, dataset_id, table_id, table_object = nil, autodetect_schema: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BigqueryV2::Table::Representation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['autodetect_schema'] = autodetect_schema unless autodetect_schema.nil?
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
        # @param [Google::Apis::BigqueryV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_table_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigqueryV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigqueryV2::Policy::Representation
          command.response_class = Google::Apis::BigqueryV2::Policy
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
        # @param [Google::Apis::BigqueryV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_table_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigqueryV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigqueryV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigqueryV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information in an existing table. The update method replaces the
        # entire Table resource, whereas the patch method only replaces fields that are
        # provided in the submitted Table resource.
        # @param [String] project_id
        #   Required. Project ID of the table to update
        # @param [String] dataset_id
        #   Required. Dataset ID of the table to update
        # @param [String] table_id
        #   Required. Table ID of the table to update
        # @param [Google::Apis::BigqueryV2::Table] table_object
        # @param [Boolean] autodetect_schema
        #   Optional.  When true will autodetect schema, else will keep original schema
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_table(project_id, dataset_id, table_id, table_object = nil, autodetect_schema: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}', options)
          command.request_representation = Google::Apis::BigqueryV2::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BigqueryV2::Table::Representation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['autodetect_schema'] = autodetect_schema unless autodetect_schema.nil?
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
