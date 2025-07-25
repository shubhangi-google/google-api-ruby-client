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
    module DisplayvideoV2
      # Display & Video 360 API
      #
      # Display & Video 360 API allows users to automate complex Display & Video 360
      #  workflows, such as creating insertion orders and setting targeting options for
      #  individual line items.
      #
      # @example
      #    require 'google/apis/displayvideo_v2'
      #
      #    Displayvideo = Google::Apis::DisplayvideoV2 # Alias the module
      #    service = Displayvideo::DisplayVideoService.new
      #
      # @see https://developers.google.com/display-video/
      class DisplayVideoService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://displayvideo.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-displayvideo_v2',
                client_version: Google::Apis::DisplayvideoV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Audits an advertiser. Returns the counts of used entities per resource type
        # under the advertiser provided. Used entities count towards their respective
        # resource limit. See https://support.google.com/displayvideo/answer/6071450.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to audit.
        # @param [String] read_mask
        #   Optional. The specific fields to return. If no mask is specified, all fields
        #   in the response proto will be filled. Valid values are: * usedLineItemsCount *
        #   usedInsertionOrdersCount * usedCampaignsCount * channelsCount *
        #   negativelyTargetedChannelsCount * negativeKeywordListsCount *
        #   adGroupCriteriaCount * campaignCriteriaCount
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AuditAdvertiserResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AuditAdvertiserResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def audit_advertiser(advertiser_id, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}:audit', options)
          command.response_representation = Google::Apis::DisplayvideoV2::AuditAdvertiserResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AuditAdvertiserResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new advertiser. Returns the newly created advertiser if successful. *
        # *This method regularly experiences high latency.** We recommend [increasing
        # your default timeout](/display-video/api/guides/best-practices/timeouts#
        # client_library_timeout) to avoid errors.
        # @param [Google::Apis::DisplayvideoV2::Advertiser] advertiser_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Advertiser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Advertiser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser(advertiser_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Advertiser::Representation
          command.request_object = advertiser_object
          command.response_representation = Google::Apis::DisplayvideoV2::Advertiser::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Advertiser
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an advertiser. Deleting an advertiser will delete all of its child
        # resources, for example, campaigns, insertion orders and line items. A deleted
        # advertiser cannot be recovered.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser we need to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser(advertiser_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Edits targeting options under a single advertiser. The operation will delete
        # the assigned targeting options provided in
        # BulkEditAdvertiserAssignedTargetingOptionsRequest.delete_requests and then
        # create the assigned targeting options provided in
        # BulkEditAdvertiserAssignedTargetingOptionsRequest.create_requests .
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser.
        # @param [Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsRequest] bulk_edit_advertiser_assigned_targeting_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def edit_advertiser_assigned_targeting_options(advertiser_id, bulk_edit_advertiser_assigned_targeting_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}:editAssignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsRequest::Representation
          command.request_object = bulk_edit_advertiser_assigned_targeting_options_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditAdvertiserAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an advertiser.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Advertiser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Advertiser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser(advertiser_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Advertiser::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Advertiser
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists advertisers that are accessible to the current user. The order is
        # defined by the order_by parameter. A single partner_id is required. Cross-
        # partner listing is not supported.
        # @param [String] filter
        #   Allows filtering by advertiser fields. Supported syntax: * Filter expressions
        #   are made up of one or more restrictions. * Restrictions can be combined by `
        #   AND` or `OR` logical operators. * A restriction has the form of ``field` `
        #   operator` `value``. * The `updateTime` field must use the `GREATER THAN OR
        #   EQUAL TO (>=)` or `LESS THAN OR EQUAL TO (<=)` operators. * All other fields
        #   must use the `EQUALS (=)` operator. Supported fields: * `advertiserId` * `
        #   displayName` * `entityStatus` * `updateTime` (input in ISO 8601 format, or `
        #   YYYY-MM-DDTHH:MM:SSZ`) Examples: * All active advertisers under a partner: `
        #   entityStatus="ENTITY_STATUS_ACTIVE"` * All advertisers with an update time
        #   less than or equal to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime<="
        #   2020-11-04T18:54:47Z"` * All advertisers with an update time greater than or
        #   equal to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime>="2020-11-
        #   04T18:54:47Z"` The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `advertiserId` (
        #   default) * `displayName` * `entityStatus` * `updateTime` The default sorting
        #   order is ascending. To specify descending order for a field, a suffix "desc"
        #   should be added to the field name. For example, `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListAdvertisers` method. If not specified, the first page of results will be
        #   returned.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner that the fetched advertisers should all belong
        #   to. The system only supports listing advertisers for one partner at a time.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListAdvertisersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListAdvertisersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertisers(filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListAdvertisersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListAdvertisersResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists assigned targeting options of an advertiser across targeting types.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line item belongs to.
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the `OR` logical operator. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=) operator`.
        #   Supported fields: * `targetingType` Examples: * targetingType with value
        #   TARGETING_TYPE_CHANNEL `targetingType="TARGETING_TYPE_CHANNEL"` The length of
        #   this field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `targetingType` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. Example: `
        #   targetingType desc`.
        # @param [Fixnum] page_size
        #   Requested page size. The size must be an integer between `1` and `5000`. If
        #   unspecified, the default is '5000'. Returns error code `INVALID_ARGUMENT` if
        #   an invalid value is specified.
        # @param [String] page_token
        #   A token that lets the client fetch the next page of results. Typically, this
        #   is the value of next_page_token returned from the previous call to `
        #   BulkListAdvertiserAssignedTargetingOptions` method. If not specified, the
        #   first page of results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkListAdvertiserAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkListAdvertiserAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_assigned_targeting_options(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}:listAssignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::BulkListAdvertiserAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkListAdvertiserAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing advertiser. Returns the updated advertiser if successful.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::Advertiser] advertiser_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Advertiser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Advertiser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser(advertiser_id, advertiser_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Advertiser::Representation
          command.request_object = advertiser_object
          command.response_representation = Google::Apis::DisplayvideoV2::Advertiser::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Advertiser
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an asset. Returns the ID of the newly uploaded asset if successful.
        # The asset file size should be no more than 10 MB for images, 200 MB for ZIP
        # files, and 1 GB for videos. Must be used within the [multipart media upload
        # process](/display-video/api/guides/how-tos/upload#multipart). Examples using
        # provided client libraries can be found in our [Creating Creatives guide](/
        # display-video/api/guides/creating-creatives/overview#upload_an_asset).
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this asset belongs to.
        # @param [Google::Apis::DisplayvideoV2::CreateAssetRequest] create_asset_request_object
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
        # @yieldparam result [Google::Apis::DisplayvideoV2::CreateAssetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CreateAssetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_advertiser_asset(advertiser_id, create_asset_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/assets', options)
          else
            command = make_upload_command(:post, 'v2/advertisers/{+advertiserId}/assets', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DisplayvideoV2::CreateAssetRequest::Representation
          command.request_object = create_asset_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::CreateAssetResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CreateAssetResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new campaign. Returns the newly created campaign if successful.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the campaign belongs to.
        # @param [Google::Apis::DisplayvideoV2::Campaign] campaign_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Campaign] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Campaign]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_campaign(advertiser_id, campaign_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/campaigns', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Campaign::Representation
          command.request_object = campaign_object
          command.response_representation = Google::Apis::DisplayvideoV2::Campaign::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Campaign
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a campaign. A deleted campaign cannot be recovered. The
        # campaign should be archived first, i.e. set entity_status to `
        # ENTITY_STATUS_ARCHIVED`, to be able to delete it. **This method regularly
        # experiences high latency.** We recommend [increasing your default timeout](/
        # display-video/api/guides/best-practices/timeouts#client_library_timeout) to
        # avoid errors.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser this campaign belongs to.
        # @param [Fixnum] campaign_id
        #   The ID of the campaign we need to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_campaign(advertiser_id, campaign_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/campaigns/{+campaignId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['campaignId'] = campaign_id unless campaign_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a campaign.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this campaign belongs to.
        # @param [Fixnum] campaign_id
        #   Required. The ID of the campaign to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Campaign] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Campaign]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_campaign(advertiser_id, campaign_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/campaigns/{+campaignId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Campaign::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Campaign
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['campaignId'] = campaign_id unless campaign_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists campaigns in an advertiser. The order is defined by the order_by
        # parameter. If a filter by entity_status is not specified, campaigns with `
        # ENTITY_STATUS_ARCHIVED` will not be included in the results.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser to list campaigns for.
        # @param [String] filter
        #   Allows filtering by campaign fields. Supported syntax: * Filter expressions
        #   are made up of one or more restrictions. * Restrictions can be combined by `
        #   AND` or `OR` logical operators. A sequence of restrictions implicitly uses `
        #   AND`. * A restriction has the form of ``field` `operator` `value``. * The `
        #   updateTime` field must use the `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN
        #   OR EQUAL TO (<=)` operators. * All other fields must use the `EQUALS (=)`
        #   operator. Supported fields: * `campaignId` * `displayName` * `entityStatus` * `
        #   updateTime` (input in ISO 8601 format, or `YYYY-MM-DDTHH:MM:SSZ`) Examples: *
        #   All `ENTITY_STATUS_ACTIVE` or `ENTITY_STATUS_PAUSED` campaigns under an
        #   advertiser: `(entityStatus="ENTITY_STATUS_ACTIVE" OR entityStatus="
        #   ENTITY_STATUS_PAUSED")` * All campaigns with an update time less than or equal
        #   to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime<="2020-11-04T18:54:
        #   47Z"` * All campaigns with an update time greater than or equal to 2020-11-
        #   04T18:54:47Z (format of ISO 8601): `updateTime>="2020-11-04T18:54:47Z"` The
        #   length of this field should be no more than 500 characters. Reference our [
        #   filter `LIST` requests](/display-video/api/guides/how-tos/filters) guide for
        #   more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `entityStatus` * `updateTime` The default sorting order is
        #   ascending. To specify descending order for a field, a suffix "desc" should be
        #   added to the field name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCampaigns` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCampaignsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCampaignsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_campaigns(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/campaigns', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCampaignsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCampaignsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing campaign. Returns the updated campaign if successful.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the campaign belongs to.
        # @param [Fixnum] campaign_id
        #   Output only. The unique ID of the campaign. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::Campaign] campaign_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Campaign] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Campaign]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_campaign(advertiser_id, campaign_id, campaign_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/campaigns/{+campaignId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Campaign::Representation
          command.request_object = campaign_object
          command.response_representation = Google::Apis::DisplayvideoV2::Campaign::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Campaign
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['campaignId'] = campaign_id unless campaign_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new channel. Returns the newly created channel if successful.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the created channel.
        # @param [Google::Apis::DisplayvideoV2::Channel] channel_object
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the created channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_channel(advertiser_id, channel_object = nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/channels', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a channel for a partner or advertiser.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the fetched channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the channel to fetch.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the fetched channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_channel(advertiser_id, channel_id, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/channels/{+channelId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists channels for a partner or advertiser.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the channels.
        # @param [String] filter
        #   Allows filtering by channel fields. Supported syntax: * Filter expressions for
        #   channel can only contain at most one restriction. * A restriction has the form
        #   of ``field` `operator` `value``. * All fields must use the `HAS (:)` operator.
        #   Supported fields: * `displayName` Examples: * All channels for which the
        #   display name contains "google": `displayName : "google"`. The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `channelId` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix " desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListChannels` method. If not specified, the first page of results will be
        #   returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the channels.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_channels(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/channels', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListChannelsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListChannelsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a channel. Returns the updated channel if successful.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the created channel.
        # @param [Fixnum] channel_id
        #   Output only. The unique ID of the channel. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::Channel] channel_object
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the created channel.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_channel(advertiser_id, channel_id, channel_object = nil, partner_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/channels/{channelId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits sites under a single channel. The operation will delete the sites
        # provided in BulkEditSitesRequest.deleted_sites and then create the sites
        # provided in BulkEditSitesRequest.created_sites.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the sites belong.
        # @param [Google::Apis::DisplayvideoV2::BulkEditSitesRequest] bulk_edit_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_advertiser_channel_site_edit(advertiser_id, channel_id, bulk_edit_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/channels/{+channelId}/sites:bulkEdit', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditSitesRequest::Representation
          command.request_object = bulk_edit_sites_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditSitesResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a site in a channel.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel in which the site will be created.
        # @param [Google::Apis::DisplayvideoV2::Site] site_object
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_channel_site(advertiser_id, channel_id, site_object = nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/channels/{+channelId}/sites', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Site::Representation
          command.request_object = site_object
          command.response_representation = Google::Apis::DisplayvideoV2::Site::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Site
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a site from a channel.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the site belongs.
        # @param [String] url_or_app_id
        #   Required. The URL or app ID of the site to delete.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_channel_site(advertiser_id, channel_id, url_or_app_id, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{advertiserId}/channels/{+channelId}/sites/{+urlOrAppId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.params['urlOrAppId'] = url_or_app_id unless url_or_app_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sites in a channel.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the requested sites belong.
        # @param [String] filter
        #   Allows filtering by site fields. Supported syntax: * Filter expressions for
        #   site retrieval can only contain at most one restriction. * A restriction has
        #   the form of ``field` `operator` `value``. * All fields must use the `HAS (:)`
        #   operator. Supported fields: * `urlOrAppId` Examples: * All sites for which the
        #   URL or app ID contains "google": `urlOrAppId : "google"` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `urlOrAppId` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix " desc" should be added to the field name. Example: `
        #   urlOrAppId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `10000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListSites` method. If not specified, the first page of results will be
        #   returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_channel_sites(advertiser_id, channel_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/channels/{+channelId}/sites', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListSitesResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces all of the sites under a single channel. The operation will replace
        # the sites under a channel with the sites provided in ReplaceSitesRequest.
        # new_sites. **This method regularly experiences high latency.** We recommend [
        # increasing your default timeout](/display-video/api/guides/best-practices/
        # timeouts#client_library_timeout) to avoid errors.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel whose sites will be replaced.
        # @param [Google::Apis::DisplayvideoV2::ReplaceSitesRequest] replace_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ReplaceSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ReplaceSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_advertiser_channel_site(advertiser_id, channel_id, replace_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/channels/{+channelId}/sites:replace', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ReplaceSitesRequest::Representation
          command.request_object = replace_sites_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::ReplaceSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ReplaceSitesResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new creative. Returns the newly created creative if successful. A ["
        # Standard" user role](//support.google.com/displayvideo/answer/2723011) or
        # greater for the parent advertiser or partner is required to make this request.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the creative belongs to.
        # @param [Google::Apis::DisplayvideoV2::Creative] creative_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_creative(advertiser_id, creative_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/creatives', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::DisplayvideoV2::Creative::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Creative
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a creative. Returns error code `NOT_FOUND` if the creative does not
        # exist. The creative should be archived first, i.e. set entity_status to `
        # ENTITY_STATUS_ARCHIVED`, before it can be deleted. A ["Standard" user role](//
        # support.google.com/displayvideo/answer/2723011) or greater for the parent
        # advertiser or partner is required to make this request.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser this creative belongs to.
        # @param [Fixnum] creative_id
        #   The ID of the creative to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_creative(advertiser_id, creative_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/creatives/{+creativeId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a creative.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this creative belongs to.
        # @param [Fixnum] creative_id
        #   Required. The ID of the creative to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_creative(advertiser_id, creative_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/creatives/{+creativeId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Creative::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Creative
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists creatives in an advertiser. The order is defined by the order_by
        # parameter. If a filter by entity_status is not specified, creatives with `
        # ENTITY_STATUS_ARCHIVED` will not be included in the results.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to list creatives for.
        # @param [String] filter
        #   Allows filtering by creative fields. Supported syntax: * Filter expressions
        #   are made up of one or more restrictions. * Restrictions can be combined by `
        #   AND` or `OR` logical operators. A sequence of restrictions implicitly uses `
        #   AND`. * A restriction has the form of ``field` `operator` `value``. * The `
        #   lineItemIds` field must use the `HAS (:)` operator. * The `updateTime` field
        #   must use the `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN OR EQUAL TO (<=)`
        #   operators. * All other fields must use the `EQUALS (=)` operator. * For `
        #   entityStatus`, `minDuration`, `maxDuration`, `updateTime`, and `dynamic`
        #   fields, there may be at most one restriction. Supported Fields: * `
        #   approvalStatus` * `creativeId` * `creativeType` * `dimensions` (input in the
        #   form of ``width`x`height``) * `dynamic` * `entityStatus` * `
        #   exchangeReviewStatus` (input in the form of ``exchange`-`reviewStatus``) * `
        #   lineItemIds` * `maxDuration` (input in the form of ``duration`s`. Only seconds
        #   are supported) * `minDuration` (input in the form of ``duration`s`. Only
        #   seconds are supported) * `updateTime` (input in ISO 8601 format, or `YYYY-MM-
        #   DDTHH:MM:SSZ`) Notes: * For `updateTime`, a creative resource's field value
        #   reflects the last time that a creative has been updated, which includes
        #   updates made by the system (e.g. creative review updates). Examples: * All
        #   native creatives: `creativeType="CREATIVE_TYPE_NATIVE"` * All active creatives
        #   with 300x400 or 50x100 dimensions: `entityStatus="ENTITY_STATUS_ACTIVE" AND (
        #   dimensions="300x400" OR dimensions="50x100")` * All dynamic creatives that are
        #   approved by AdX or AppNexus, with a minimum duration of 5 seconds and 200ms: `
        #   dynamic="true" AND minDuration="5.2s" AND (exchangeReviewStatus="
        #   EXCHANGE_GOOGLE_AD_MANAGER-REVIEW_STATUS_APPROVED" OR exchangeReviewStatus="
        #   EXCHANGE_APPNEXUS-REVIEW_STATUS_APPROVED")` * All video creatives that are
        #   associated with line item ID 1 or 2: `creativeType="CREATIVE_TYPE_VIDEO" AND (
        #   lineItemIds:1 OR lineItemIds:2)` * Find creatives by multiple creative IDs: `
        #   creativeId=1 OR creativeId=2` * All creatives with an update time greater than
        #   or equal to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime>="2020-11-
        #   04T18:54:47Z"` The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `creativeId` (
        #   default) * `createTime` * `mediaDuration` * `dimensions` (sorts by width first,
        #   then by height) The default sorting order is ascending. To specify descending
        #   order for a field, a suffix "desc" should be added to the field name. Example:
        #   `createTime desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCreatives` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_creatives(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/creatives', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCreativesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCreativesResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing creative. Returns the updated creative if successful. A ["
        # Standard" user role](//support.google.com/displayvideo/answer/2723011) or
        # greater for the parent advertiser or partner is required to make this request.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the creative belongs to.
        # @param [Fixnum] creative_id
        #   Output only. The unique ID of the creative. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::Creative] creative_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_creative(advertiser_id, creative_id, creative_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/creatives/{+creativeId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::DisplayvideoV2::Creative::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Creative
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new insertion order. Returns the newly created insertion order if
        # successful.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the insertion order belongs to.
        # @param [Google::Apis::DisplayvideoV2::InsertionOrder] insertion_order_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InsertionOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InsertionOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_insertion_order(advertiser_id, insertion_order_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/insertionOrders', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InsertionOrder::Representation
          command.request_object = insertion_order_object
          command.response_representation = Google::Apis::DisplayvideoV2::InsertionOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InsertionOrder
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an insertion order. Returns error code `NOT_FOUND` if the insertion
        # order does not exist. The insertion order should be archived first, i.e. set
        # entity_status to `ENTITY_STATUS_ARCHIVED`, to be able to delete it.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser this insertion order belongs to.
        # @param [Fixnum] insertion_order_id
        #   The ID of the insertion order to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_insertion_order(advertiser_id, insertion_order_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['insertionOrderId'] = insertion_order_id unless insertion_order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an insertion order. Returns error code `NOT_FOUND` if the insertion order
        # does not exist.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this insertion order belongs to.
        # @param [Fixnum] insertion_order_id
        #   Required. The ID of the insertion order to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InsertionOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InsertionOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_insertion_order(advertiser_id, insertion_order_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::InsertionOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InsertionOrder
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['insertionOrderId'] = insertion_order_id unless insertion_order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists insertion orders in an advertiser. The order is defined by the order_by
        # parameter. If a filter by entity_status is not specified, insertion orders
        # with `ENTITY_STATUS_ARCHIVED` will not be included in the results.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to list insertion orders for.
        # @param [String] filter
        #   Allows filtering by insertion order fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `AND` or `OR` logical operators. A sequence of restrictions
        #   implicitly uses `AND`. * A restriction has the form of ``field` `operator` `
        #   value``. * The `updateTime` field must use the `GREATER THAN OR EQUAL TO (>=)`
        #   or `LESS THAN OR EQUAL TO (<=)` operators. * All other fields must use the `
        #   EQUALS (=)` operator. Supported fields: * `campaignId` * `displayName` * `
        #   entityStatus` * `updateTime` (input in ISO 8601 format, or `YYYY-MM-DDTHH:MM:
        #   SSZ`) Examples: * All insertion orders under a campaign: `campaignId="1234"` *
        #   All `ENTITY_STATUS_ACTIVE` or `ENTITY_STATUS_PAUSED` insertion orders under an
        #   advertiser: `(entityStatus="ENTITY_STATUS_ACTIVE" OR entityStatus="
        #   ENTITY_STATUS_PAUSED")` * All insertion orders with an update time less than
        #   or equal to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime<="2020-11-
        #   04T18:54:47Z"` * All insertion orders with an update time greater than or
        #   equal to 2020-11-04T18:54:47Z (format of ISO 8601): `updateTime>="2020-11-
        #   04T18:54:47Z"` The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * "displayName" (
        #   default) * "entityStatus" * "updateTime" The default sorting order is
        #   ascending. To specify descending order for a field, a suffix "desc" should be
        #   added to the field name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `100`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListInsertionOrders` method. If not specified, the first page of results will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListInsertionOrdersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListInsertionOrdersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_insertion_orders(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/insertionOrders', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListInsertionOrdersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListInsertionOrdersResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing insertion order. Returns the updated insertion order if
        # successful.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the insertion order belongs to.
        # @param [Fixnum] insertion_order_id
        #   Output only. The unique ID of the insertion order. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::InsertionOrder] insertion_order_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InsertionOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InsertionOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_insertion_order(advertiser_id, insertion_order_id, insertion_order_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InsertionOrder::Representation
          command.request_object = insertion_order_object
          command.response_representation = Google::Apis::DisplayvideoV2::InsertionOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InsertionOrder
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['insertionOrderId'] = insertion_order_id unless insertion_order_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists invoices posted for an advertiser in a given month. Invoices generated
        # by billing profiles with a "Partner" invoice level are not retrievable through
        # this method.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to list invoices for.
        # @param [String] issue_month
        #   The month to list the invoices for. If not set, the request will retrieve
        #   invoices for the previous month. Must be in the format YYYYMM.
        # @param [String] loi_sapin_invoice_type
        #   Select type of invoice to retrieve for Loi Sapin advertisers. Only applicable
        #   to Loi Sapin advertisers. Will be ignored otherwise.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListInvoices` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListInvoicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListInvoicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_invoices(advertiser_id, issue_month: nil, loi_sapin_invoice_type: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/invoices', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListInvoicesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListInvoicesResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['issueMonth'] = issue_month unless issue_month.nil?
          command.query['loiSapinInvoiceType'] = loi_sapin_invoice_type unless loi_sapin_invoice_type.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the invoice currency used by an advertiser in a given month.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to lookup currency for.
        # @param [String] invoice_month
        #   Month for which the currency is needed. If not set, the request will return
        #   existing currency settings for the advertiser. Must be in the format YYYYMM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LookupInvoiceCurrencyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LookupInvoiceCurrencyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_advertiser_invoice_invoice_currency(advertiser_id, invoice_month: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/invoices:lookupInvoiceCurrency', options)
          command.response_representation = Google::Apis::DisplayvideoV2::LookupInvoiceCurrencyResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LookupInvoiceCurrencyResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['invoiceMonth'] = invoice_month unless invoice_month.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits targeting options under multiple line items. The operation will
        # delete the assigned targeting options provided in
        # BulkEditAssignedTargetingOptionsRequest.delete_requests and then create the
        # assigned targeting options provided in BulkEditAssignedTargetingOptionsRequest.
        # create_requests. Requests to this endpoint cannot be made concurrently with
        # the following requests updating the same line item: * lineItems.bulkUpdate *
        # lineItems.patch * assignedTargetingOptions.create * assignedTargetingOptions.
        # delete YouTube & Partners line items cannot be created or updated using the
        # API.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line items belong to.
        # @param [Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsRequest] bulk_edit_assigned_targeting_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_line_item_edit_assigned_targeting_options(advertiser_id, bulk_edit_assigned_targeting_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems:bulkEditAssignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsRequest::Representation
          command.request_object = bulk_edit_assigned_targeting_options_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists assigned targeting options for multiple line items across targeting
        # types.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line items belongs to.
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the logical operator `OR` on the same field. * A restriction
        #   has the form of ``field` `operator` `value``. * All fields must use the `
        #   EQUALS (=)` operator. Supported fields: * `targetingType` * `inheritance`
        #   Examples: * `AssignedTargetingOption` resources of targeting type `
        #   TARGETING_TYPE_PROXIMITY_LOCATION_LIST` or `TARGETING_TYPE_CHANNEL`: `
        #   targetingType="TARGETING_TYPE_PROXIMITY_LOCATION_LIST" OR targetingType="
        #   TARGETING_TYPE_CHANNEL"` * `AssignedTargetingOption` resources with
        #   inheritance status of `NOT_INHERITED` or `INHERITED_FROM_PARTNER`: `
        #   inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
        #   length of this field should be no more than 500 characters. Reference our [
        #   filter `LIST` requests](/display-video/api/guides/how-tos/filters) guide for
        #   more information.
        # @param [Array<Fixnum>, Fixnum] line_item_ids
        #   Required. The IDs of the line items to list assigned targeting options for.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `lineItemId` (
        #   default) * `assignedTargetingOption.targetingType` The default sorting order
        #   is ascending. To specify descending order for a field, a suffix "desc" should
        #   be added to the field name. Example: `targetingType desc`.
        # @param [Fixnum] page_size
        #   Requested page size. The size must be an integer between `1` and `5000`. If
        #   unspecified, the default is `5000`. Returns error code `INVALID_ARGUMENT` if
        #   an invalid value is specified.
        # @param [String] page_token
        #   A token that lets the client fetch the next page of results. Typically, this
        #   is the value of next_page_token returned from the previous call to the `
        #   BulkListAssignedTargetingOptions` method. If not specified, the first page of
        #   results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkListAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkListAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_advertiser_line_item_list_assigned_targeting_options(advertiser_id, filter: nil, line_item_ids: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/lineItems:bulkListAssignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::BulkListAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkListAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['lineItemIds'] = line_item_ids unless line_item_ids.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates multiple line items. Requests to this endpoint cannot be made
        # concurrently with the following requests updating the same line item: *
        # BulkEditAssignedTargetingOptions * UpdateLineItem * assignedTargetingOptions.
        # create * assignedTargetingOptions.delete YouTube & Partners line items cannot
        # be created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this line item belongs to.
        # @param [Google::Apis::DisplayvideoV2::BulkUpdateLineItemsRequest] bulk_update_line_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkUpdateLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkUpdateLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_update_line_items(advertiser_id, bulk_update_line_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems:bulkUpdate', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkUpdateLineItemsRequest::Representation
          command.request_object = bulk_update_line_items_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkUpdateLineItemsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkUpdateLineItemsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new line item. Returns the newly created line item if successful.
        # YouTube & Partners line items cannot be created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the line item belongs to.
        # @param [Google::Apis::DisplayvideoV2::LineItem] line_item_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_line_item(advertiser_id, line_item_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems', options)
          command.request_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.request_object = line_item_object
          command.response_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LineItem
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a line item. Returns error code `NOT_FOUND` if the line item does not
        # exist. The line item should be archived first, i.e. set entity_status to `
        # ENTITY_STATUS_ARCHIVED`, to be able to delete it. YouTube & Partners line
        # items cannot be created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser this line item belongs to.
        # @param [Fixnum] line_item_id
        #   The ID of the line item to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_line_item(advertiser_id, line_item_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Duplicates a line item. Returns the ID of the created line item if successful.
        # YouTube & Partners line items cannot be created or updated using the API. **
        # This method regularly experiences high latency.** We recommend [increasing
        # your default timeout](/display-video/api/guides/best-practices/timeouts#
        # client_library_timeout) to avoid errors.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item to duplicate.
        # @param [Google::Apis::DisplayvideoV2::DuplicateLineItemRequest] duplicate_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::DuplicateLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::DuplicateLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def duplicate_line_item(advertiser_id, line_item_id, duplicate_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}:duplicate', options)
          command.request_representation = Google::Apis::DisplayvideoV2::DuplicateLineItemRequest::Representation
          command.request_object = duplicate_line_item_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::DuplicateLineItemResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::DuplicateLineItemResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new line item with settings (including targeting) inherited from the
        # insertion order and an `ENTITY_STATUS_DRAFT` entity_status. Returns the newly
        # created line item if successful. There are default values based on the three
        # fields: * The insertion order's insertion_order_type * The insertion order's
        # automation_type * The given line_item_type YouTube & Partners line items
        # cannot be created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this line item belongs to.
        # @param [Google::Apis::DisplayvideoV2::GenerateDefaultLineItemRequest] generate_default_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_default_line_item(advertiser_id, generate_default_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems:generateDefault', options)
          command.request_representation = Google::Apis::DisplayvideoV2::GenerateDefaultLineItemRequest::Representation
          command.request_object = generate_default_line_item_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LineItem
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a line item.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_line_item(advertiser_id, line_item_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LineItem
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists line items in an advertiser. The order is defined by the order_by
        # parameter. If a filter by entity_status is not specified, line items with `
        # ENTITY_STATUS_ARCHIVED` will not be included in the results.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser to list line items for.
        # @param [String] filter
        #   Allows filtering by line item fields. Supported syntax: * Filter expressions
        #   are made up of one or more restrictions. * Restrictions can be combined by `
        #   AND` or `OR` logical operators. A sequence of restrictions implicitly uses `
        #   AND`. * A restriction has the form of ``field` `operator` `value``. * The `
        #   updateTime` field must use the `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN
        #   OR EQUAL TO (<=)` operators. * All other fields must use the `EQUALS (=)`
        #   operator. Supported fields: * `campaignId` * `displayName` * `entityStatus` * `
        #   insertionOrderId` * `lineItemId` * `lineItemType` * `updateTime` (input in ISO
        #   8601 format, or `YYYY-MM-DDTHH:MM:SSZ`) Examples: * All line items under an
        #   insertion order: `insertionOrderId="1234"` * All `ENTITY_STATUS_ACTIVE` or `
        #   ENTITY_STATUS_PAUSED` and `LINE_ITEM_TYPE_DISPLAY_DEFAULT` line items under an
        #   advertiser: `(entityStatus="ENTITY_STATUS_ACTIVE" OR entityStatus="
        #   ENTITY_STATUS_PAUSED") AND lineItemType="LINE_ITEM_TYPE_DISPLAY_DEFAULT"` *
        #   All line items with an update time less than or equal to 2020-11-04T18:54:47Z (
        #   format of ISO 8601): `updateTime<="2020-11-04T18:54:47Z"` * All line items
        #   with an update time greater than or equal to 2020-11-04T18:54:47Z (format of
        #   ISO 8601): `updateTime>="2020-11-04T18:54:47Z"` The length of this field
        #   should be no more than 500 characters. Reference our [filter `LIST` requests](/
        #   display-video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `entityStatus` * `updateTime` The default sorting order is
        #   ascending. To specify descending order for a field, a suffix "desc" should be
        #   added to the field name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListLineItems` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_line_items(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/lineItems', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListLineItemsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListLineItemsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing line item. Returns the updated line item if successful.
        # Requests to this endpoint cannot be made concurrently with the following
        # requests updating the same line item: * BulkEditAssignedTargetingOptions *
        # BulkUpdateLineItems * assignedTargetingOptions.create *
        # assignedTargetingOptions.delete YouTube & Partners line items cannot be
        # created or updated using the API. **This method regularly experiences high
        # latency.** We recommend [increasing your default timeout](/display-video/api/
        # guides/best-practices/timeouts#client_library_timeout) to avoid errors.
        # @param [Fixnum] advertiser_id
        #   Output only. The unique ID of the advertiser the line item belongs to.
        # @param [Fixnum] line_item_id
        #   Output only. The unique ID of the line item. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::LineItem] line_item_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_line_item(advertiser_id, line_item_id, line_item_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.request_object = line_item_object
          command.response_representation = Google::Apis::DisplayvideoV2::LineItem::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LineItem
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assigns a targeting option to a line item. Returns the assigned targeting
        # option if successful. Requests to this endpoint cannot be made concurrently
        # with the following requests updating the same line item: * lineItems.
        # bulkEditAssignedTargetingOptions * lineItems.bulkUpdate * lineItems.patch *
        # DeleteLineItemAssignedTargetingOption YouTube & Partners line items cannot be
        # created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item the assigned targeting option will belong to.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        #   * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        #   TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        #   TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        #   TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        #   * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        #   TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        #   TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        #   TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        #   TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        #   `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_VIEWABILITY`
        # @param [Google::Apis::DisplayvideoV2::AssignedTargetingOption] assigned_targeting_option_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_line_item_targeting_type_assigned_targeting_option(advertiser_id, line_item_id, targeting_type, assigned_targeting_option_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.request_object = assigned_targeting_option_object
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an assigned targeting option from a line item. Requests to this
        # endpoint cannot be made concurrently with the following requests updating the
        # same line item: * lineItems.bulkEditAssignedTargetingOptions * lineItems.
        # bulkUpdate * lineItems.patch * CreateLineItemAssignedTargetingOption YouTube &
        # Partners line items cannot be created or updated using the API.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item the assigned targeting option belongs to.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        #   * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        #   TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        #   TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        #   TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        #   * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        #   TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        #   TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        #   TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        #   TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        #   `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_VIEWABILITY`
        # @param [String] assigned_targeting_option_id
        #   Required. The ID of the assigned targeting option to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_line_item_targeting_type_assigned_targeting_option(advertiser_id, line_item_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single targeting option assigned to a line item.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item the assigned targeting option belongs to.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        #   * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        #   TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        #   TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        #   TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        #   * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        #   TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        #   TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        #   TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        #   TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        #   `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_INVENTORY_MODE` * `
        #   TARGETING_TYPE_YOUTUBE_CHANNEL` (only for `
        #   LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE` line items) * `
        #   TARGETING_TYPE_YOUTUBE_VIDEO` (only for `
        #   LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE` line items)
        # @param [String] assigned_targeting_option_id
        #   Required. An identifier unique to the targeting type in this line item that
        #   identifies the assigned targeting option being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_line_item_targeting_type_assigned_targeting_option(advertiser_id, line_item_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the targeting options assigned to a line item.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line item belongs to.
        # @param [Fixnum] line_item_id
        #   Required. The ID of the line item to list assigned targeting options for.
        # @param [String] targeting_type
        #   Required. Identifies the type of assigned targeting options to list. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        #   * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        #   TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        #   TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        #   TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        #   * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        #   TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        #   TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        #   TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        #   TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        #   `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_INVENTORY_MODE` * `
        #   TARGETING_TYPE_YOUTUBE_CHANNEL` (only for `
        #   LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE` line items) * `
        #   TARGETING_TYPE_YOUTUBE_VIDEO` (only for `
        #   LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE` line items)
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the logical operator `OR`. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedTargetingOptionId` * `inheritance` Examples: * `
        #   AssignedTargetingOption` resources with ID 1 or 2: `assignedTargetingOptionId="
        #   1" OR assignedTargetingOptionId="2"` * `AssignedTargetingOption` resources
        #   with inheritance status of `NOT_INHERITED` or `INHERITED_FROM_PARTNER`: `
        #   inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
        #   length of this field should be no more than 500 characters. Reference our [
        #   filter `LIST` requests](/display-video/api/guides/how-tos/filters) guide for
        #   more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `
        #   assignedTargetingOptionId` (default) The default sorting order is ascending.
        #   To specify descending order for a field, a suffix "desc" should be added to
        #   the field name. Example: `assignedTargetingOptionId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `5000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListLineItemAssignedTargetingOptions` method. If not specified, the first page
        #   of results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListLineItemAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListLineItemAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_line_item_targeting_type_assigned_targeting_options(advertiser_id, line_item_id, targeting_type, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListLineItemAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListLineItemAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['lineItemId'] = line_item_id unless line_item_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new location list. Returns the newly created location list if
        # successful.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location list belongs.
        # @param [Google::Apis::DisplayvideoV2::LocationList] location_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LocationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LocationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_location_list(advertiser_id, location_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/locationLists', options)
          command.request_representation = Google::Apis::DisplayvideoV2::LocationList::Representation
          command.request_object = location_list_object
          command.response_representation = Google::Apis::DisplayvideoV2::LocationList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LocationList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a location list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the fetched location list
        #   belongs.
        # @param [Fixnum] location_list_id
        #   Required. The ID of the location list to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LocationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LocationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_location_list(advertiser_id, location_list_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/locationLists/{+locationListId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::LocationList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LocationList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists location lists based on a given advertiser id.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the fetched location lists
        #   belong.
        # @param [String] filter
        #   Allows filtering by location list fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `AND` or `OR` logical operators. A sequence of restrictions
        #   implicitly uses `AND`. * A restriction has the form of ``field` `operator` `
        #   value``. * All fields must use the `EQUALS (=)` operator. Supported fields: * `
        #   locationType` Examples: * All regional location list: `locationType="
        #   TARGETING_LOCATION_TYPE_REGIONAL"` * All proximity location list: `
        #   locationType="TARGETING_LOCATION_TYPE_PROXIMITY"` The length of this field
        #   should be no more than 500 characters. Reference our [filter `LIST` requests](/
        #   display-video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `locationListId` (
        #   default) * `displayName` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. Defaults to `100` if not
        #   set. Returns error code `INVALID_ARGUMENT` if an invalid value is specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListLocationLists` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListLocationListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListLocationListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_location_lists(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/locationLists', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListLocationListsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListLocationListsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a location list. Returns the updated location list if successful.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location lists belongs.
        # @param [Fixnum] location_list_id
        #   Output only. The unique ID of the location list. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::LocationList] location_list_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::LocationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::LocationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_location_list(advertiser_id, location_list_id, location_list_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/locationLists/{locationListId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::LocationList::Representation
          command.request_object = location_list_object
          command.response_representation = Google::Apis::DisplayvideoV2::LocationList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::LocationList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits multiple assignments between locations and a single location list.
        # The operation will delete the assigned locations provided in
        # deletedAssignedLocations and then create the assigned locations provided in
        # createdAssignedLocations.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location list belongs.
        # @param [Fixnum] location_list_id
        #   Required. The ID of the location list to which these assignments are assigned.
        # @param [Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsRequest] bulk_edit_assigned_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_edit_assigned_locations(advertiser_id, location_list_id, bulk_edit_assigned_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/locationLists/{+locationListId}/assignedLocations:bulkEdit', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsRequest::Representation
          command.request_object = bulk_edit_assigned_locations_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditAssignedLocationsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an assignment between a location and a location list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location list belongs.
        # @param [Fixnum] location_list_id
        #   Required. The ID of the location list for which the assignment will be created.
        # @param [Google::Apis::DisplayvideoV2::AssignedLocation] assigned_location_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_location_list_assigned_location(advertiser_id, location_list_id, assigned_location_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations', options)
          command.request_representation = Google::Apis::DisplayvideoV2::AssignedLocation::Representation
          command.request_object = assigned_location_object
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedLocation::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedLocation
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the assignment between a location and a location list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location list belongs.
        # @param [Fixnum] location_list_id
        #   Required. The ID of the location list to which this assignment is assigned.
        # @param [Fixnum] assigned_location_id
        #   Required. The ID of the assigned location to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_location_list_assigned_location(advertiser_id, location_list_id, assigned_location_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations/{+assignedLocationId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.params['assignedLocationId'] = assigned_location_id unless assigned_location_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists locations assigned to a location list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the location list belongs.
        # @param [Fixnum] location_list_id
        #   Required. The ID of the location list to which these assignments are assigned.
        # @param [String] filter
        #   Allows filtering by location list assignment fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the `OR` logical operator. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedLocationId` The length of this field should be no
        #   more than 500 characters. Reference our [filter `LIST` requests](/display-
        #   video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `assignedLocationId`
        #   (default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix " desc" should be added to the field name. Example: `
        #   assignedLocationId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListAssignedLocations` method. If not specified, the first page of results
        #   will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListAssignedLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListAssignedLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_location_list_assigned_locations(advertiser_id, location_list_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListAssignedLocationsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListAssignedLocationsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['locationListId'] = location_list_id unless location_list_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates a manual trigger. Each activation of the manual trigger must be at
        # least 5 minutes apart, otherwise an error will be returned. **Warning:** Line
        # Items using manual triggers no longer serve in Display & Video 360. This
        # method will sunset on August 1, 2023. Read our [feature deprecation
        # announcement](/display-video/api/deprecations#features.manual_triggers) for
        # more information.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser that the manual trigger belongs.
        # @param [Fixnum] trigger_id
        #   Required. The ID of the manual trigger to activate.
        # @param [Google::Apis::DisplayvideoV2::ActivateManualTriggerRequest] activate_manual_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ManualTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ManualTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_manual_trigger(advertiser_id, trigger_id, activate_manual_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/manualTriggers/{+triggerId}:activate', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ActivateManualTriggerRequest::Representation
          command.request_object = activate_manual_trigger_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ManualTrigger
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new manual trigger. Returns the newly created manual trigger if
        # successful. **Warning:** Line Items using manual triggers no longer serve in
        # Display & Video 360. This method will sunset on August 1, 2023. Read our [
        # feature deprecation announcement](/display-video/api/deprecations#features.
        # manual_triggers) for more information.
        # @param [Fixnum] advertiser_id
        #   Required. Immutable. The unique ID of the advertiser that the manual trigger
        #   belongs to.
        # @param [Google::Apis::DisplayvideoV2::ManualTrigger] manual_trigger_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ManualTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ManualTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_manual_trigger(advertiser_id, manual_trigger_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/manualTriggers', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.request_object = manual_trigger_object
          command.response_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ManualTrigger
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deactivates a manual trigger. **Warning:** Line Items using manual triggers no
        # longer serve in Display & Video 360. This method will sunset on August 1, 2023.
        # Read our [feature deprecation announcement](/display-video/api/deprecations#
        # features.manual_triggers) for more information.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser that the manual trigger belongs.
        # @param [Fixnum] trigger_id
        #   Required. The ID of the manual trigger to deactivate.
        # @param [Google::Apis::DisplayvideoV2::DeactivateManualTriggerRequest] deactivate_manual_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ManualTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ManualTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deactivate_manual_trigger(advertiser_id, trigger_id, deactivate_manual_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/manualTriggers/{+triggerId}:deactivate', options)
          command.request_representation = Google::Apis::DisplayvideoV2::DeactivateManualTriggerRequest::Representation
          command.request_object = deactivate_manual_trigger_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ManualTrigger
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a manual trigger. **Warning:** Line Items using manual triggers no longer
        # serve in Display & Video 360. This method will sunset on August 1, 2023. Read
        # our [feature deprecation announcement](/display-video/api/deprecations#
        # features.manual_triggers) for more information.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this manual trigger belongs to.
        # @param [Fixnum] trigger_id
        #   Required. The ID of the manual trigger to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ManualTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ManualTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_manual_trigger(advertiser_id, trigger_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/manualTriggers/{+triggerId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ManualTrigger
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists manual triggers that are accessible to the current user for a given
        # advertiser ID. The order is defined by the order_by parameter. A single
        # advertiser_id is required. **Warning:** Line Items using manual triggers no
        # longer serve in Display & Video 360. This method will sunset on August 1, 2023.
        # Read our [feature deprecation announcement](/display-video/api/deprecations#
        # features.manual_triggers) for more information.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser that the fetched manual triggers belong to.
        # @param [String] filter
        #   Allows filtering by manual trigger fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `AND` or `OR` logical operators. A sequence of restrictions
        #   implicitly uses `AND`. * A restriction has the form of ``field` `operator` `
        #   value``. * All fields must use the `EQUALS (=)` operator. Supported fields: * `
        #   displayName` * `state` Examples: * All active manual triggers under an
        #   advertiser: `state="ACTIVE"` The length of this field should be no more than
        #   500 characters. Reference our [filter `LIST` requests](/display-video/api/
        #   guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `state` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. For example, `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListManualTriggers` method. If not specified, the first page of results will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListManualTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListManualTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_manual_triggers(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/manualTriggers', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListManualTriggersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListManualTriggersResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a manual trigger. Returns the updated manual trigger if successful. **
        # Warning:** Line Items using manual triggers no longer serve in Display & Video
        # 360. This method will sunset on August 1, 2023. Read our [feature deprecation
        # announcement](/display-video/api/deprecations#features.manual_triggers) for
        # more information.
        # @param [Fixnum] advertiser_id
        #   Required. Immutable. The unique ID of the advertiser that the manual trigger
        #   belongs to.
        # @param [Fixnum] trigger_id
        #   Output only. The unique ID of the manual trigger.
        # @param [Google::Apis::DisplayvideoV2::ManualTrigger] manual_trigger_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ManualTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ManualTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_manual_trigger(advertiser_id, trigger_id, manual_trigger_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/manualTriggers/{+triggerId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.request_object = manual_trigger_object
          command.response_representation = Google::Apis::DisplayvideoV2::ManualTrigger::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ManualTrigger
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new negative keyword list. Returns the newly created negative
        # keyword list if successful.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the negative keyword list
        #   will belong.
        # @param [Google::Apis::DisplayvideoV2::NegativeKeywordList] negative_keyword_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::NegativeKeywordList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::NegativeKeywordList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_negative_keyword_list(advertiser_id, negative_keyword_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/negativeKeywordLists', options)
          command.request_representation = Google::Apis::DisplayvideoV2::NegativeKeywordList::Representation
          command.request_object = negative_keyword_list_object
          command.response_representation = Google::Apis::DisplayvideoV2::NegativeKeywordList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::NegativeKeywordList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a negative keyword list given an advertiser ID and a negative keyword
        # list ID.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the negative keyword list
        #   belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the negative keyword list to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_negative_keyword_list(advertiser_id, negative_keyword_list_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a negative keyword list given an advertiser ID and a negative keyword
        # list ID.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the fetched negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the negative keyword list to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::NegativeKeywordList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::NegativeKeywordList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_negative_keyword_list(advertiser_id, negative_keyword_list_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::NegativeKeywordList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::NegativeKeywordList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists negative keyword lists based on a given advertiser id.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the fetched negative keyword
        #   lists belong.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. Defaults to `100` if not
        #   set. Returns error code `INVALID_ARGUMENT` if an invalid value is specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListNegativeKeywordLists` method. If not specified, the first page of results
        #   will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListNegativeKeywordListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListNegativeKeywordListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_negative_keyword_lists(advertiser_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/negativeKeywordLists', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListNegativeKeywordListsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListNegativeKeywordListsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a negative keyword list. Returns the updated negative keyword list if
        # successful.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the negative keyword list
        #   belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Output only. The unique ID of the negative keyword list. Assigned by the
        #   system.
        # @param [Google::Apis::DisplayvideoV2::NegativeKeywordList] negative_keyword_list_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::NegativeKeywordList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::NegativeKeywordList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_advertiser_negative_keyword_list(advertiser_id, negative_keyword_list_id, negative_keyword_list_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/advertisers/{+advertiserId}/negativeKeywordLists/{negativeKeywordListId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::NegativeKeywordList::Representation
          command.request_object = negative_keyword_list_object
          command.response_representation = Google::Apis::DisplayvideoV2::NegativeKeywordList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::NegativeKeywordList
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits negative keywords in a single negative keyword list. The operation
        # will delete the negative keywords provided in BulkEditNegativeKeywordsRequest.
        # deleted_negative_keywords and then create the negative keywords provided in
        # BulkEditNegativeKeywordsRequest.created_negative_keywords. This operation is
        # guaranteed to be atomic and will never result in a partial success or partial
        # failure.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the parent negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the parent negative keyword list to which the negative
        #   keywords belong.
        # @param [Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsRequest] bulk_edit_negative_keywords_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_edit_negative_keywords(advertiser_id, negative_keyword_list_id, bulk_edit_negative_keywords_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:bulkEdit', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsRequest::Representation
          command.request_object = bulk_edit_negative_keywords_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditNegativeKeywordsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a negative keyword in a negative keyword list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the parent negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the parent negative keyword list in which the negative
        #   keyword will be created.
        # @param [Google::Apis::DisplayvideoV2::NegativeKeyword] negative_keyword_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::NegativeKeyword] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::NegativeKeyword]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_negative_keyword_list_negative_keyword(advertiser_id, negative_keyword_list_id, negative_keyword_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords', options)
          command.request_representation = Google::Apis::DisplayvideoV2::NegativeKeyword::Representation
          command.request_object = negative_keyword_object
          command.response_representation = Google::Apis::DisplayvideoV2::NegativeKeyword::Representation
          command.response_class = Google::Apis::DisplayvideoV2::NegativeKeyword
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a negative keyword from a negative keyword list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the parent negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the parent negative keyword list to which the negative
        #   keyword belongs.
        # @param [String] keyword_value
        #   Required. The keyword value of the negative keyword to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_negative_keyword_list_negative_keyword(advertiser_id, negative_keyword_list_id, keyword_value, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords/{+keywordValue}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.params['keywordValue'] = keyword_value unless keyword_value.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists negative keywords in a negative keyword list.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the parent negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the parent negative keyword list to which the requested
        #   negative keywords belong.
        # @param [String] filter
        #   Allows filtering by negative keyword fields. Supported syntax: * Filter
        #   expressions for negative keywords can only contain at most one restriction. *
        #   A restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `HAS (:)` operator. Supported fields: * `keywordValue` Examples: * All
        #   negative keywords for which the keyword value contains "google": `keywordValue
        #   : "google"` The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `keywordValue` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix " desc" should be added to the field name. Example: `
        #   keywordValue desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `1000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListNegativeKeywords` method. If not specified, the first page of results will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListNegativeKeywordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListNegativeKeywordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_negative_keyword_list_negative_keywords(advertiser_id, negative_keyword_list_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListNegativeKeywordsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListNegativeKeywordsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces all negative keywords in a single negative keyword list. The
        # operation will replace the keywords in a negative keyword list with keywords
        # provided in ReplaceNegativeKeywordsRequest.new_negative_keywords.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the DV360 advertiser to which the parent negative keyword
        #   list belongs.
        # @param [Fixnum] negative_keyword_list_id
        #   Required. The ID of the parent negative keyword list to which the negative
        #   keywords belong.
        # @param [Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsRequest] replace_negative_keywords_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_negative_keywords(advertiser_id, negative_keyword_list_id, replace_negative_keywords_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:replace', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsRequest::Representation
          command.request_object = replace_negative_keywords_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ReplaceNegativeKeywordsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['negativeKeywordListId'] = negative_keyword_list_id unless negative_keyword_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assigns a targeting option to an advertiser. Returns the assigned targeting
        # option if successful.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_INVENTORY_MODE`
        # @param [Google::Apis::DisplayvideoV2::AssignedTargetingOption] assigned_targeting_option_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_advertiser_targeting_type_assigned_targeting_option(advertiser_id, targeting_type, assigned_targeting_option_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.request_object = assigned_targeting_option_object
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an assigned targeting option from an advertiser.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_INVENTORY_MODE`
        # @param [String] assigned_targeting_option_id
        #   Required. The ID of the assigned targeting option to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_advertiser_targeting_type_assigned_targeting_option(advertiser_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single targeting option assigned to an advertiser.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_YOUTUBE_VIDEO` *
        #   `TARGETING_TYPE_YOUTUBE_CHANNEL` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_CONTENT_THEME_EXCLUSION`
        # @param [String] assigned_targeting_option_id
        #   Required. An identifier unique to the targeting type in this advertiser that
        #   identifies the assigned targeting option being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_targeting_type_assigned_targeting_option(advertiser_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the targeting options assigned to an advertiser.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser.
        # @param [String] targeting_type
        #   Required. Identifies the type of assigned targeting options to list. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_YOUTUBE_VIDEO` *
        #   `TARGETING_TYPE_YOUTUBE_CHANNEL` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_CONTENT_THEME_EXCLUSION`
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the `OR` logical operator. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedTargetingOptionId` Examples: * `
        #   AssignedTargetingOption` with ID 123456: `assignedTargetingOptionId="123456"`
        #   The length of this field should be no more than 500 characters. Reference our [
        #   filter `LIST` requests](/display-video/api/guides/how-tos/filters) guide for
        #   more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `
        #   assignedTargetingOptionId` (default) The default sorting order is ascending.
        #   To specify descending order for a field, a suffix "desc" should be added to
        #   the field name. Example: `assignedTargetingOptionId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `5000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListAdvertiserAssignedTargetingOptions` method. If not specified, the first
        #   page of results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListAdvertiserAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListAdvertiserAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_targeting_type_assigned_targeting_options(advertiser_id, targeting_type, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListAdvertiserAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListAdvertiserAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a YouTube ad group ad.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this ad group ad belongs to.
        # @param [Fixnum] youtube_ad_group_ad_id
        #   Required. The ID of the ad group ad to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::YoutubeAdGroupAd] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::YoutubeAdGroupAd]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_youtube_ad_group_ad(advertiser_id, youtube_ad_group_ad_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroupAds/{+youtubeAdGroupAdId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::YoutubeAdGroupAd::Representation
          command.response_class = Google::Apis::DisplayvideoV2::YoutubeAdGroupAd
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['youtubeAdGroupAdId'] = youtube_ad_group_ad_id unless youtube_ad_group_ad_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists YouTube ad group ads.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the ad groups belongs to.
        # @param [String] filter
        #   Allows filtering by custom YouTube ad group ad fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by `AND` and `OR`. A sequence of restrictions implicitly uses `AND`
        #   . * A restriction has the form of ``field` `operator` `value``. * All fields
        #   must use the `EQUALS (=)` operator. Supported fields: * `adGroupId` * `
        #   displayName` * `entityStatus` * `adGroupAdId` Examples: * All ad group ads
        #   under an ad group: `adGroupId="1234"` * All ad group ads under an ad group
        #   with an entityStatus of `ENTITY_STATUS_ACTIVE` or `ENTITY_STATUS_PAUSED`: `(
        #   entityStatus="ENTITY_STATUS_ACTIVE" OR entityStatus="ENTITY_STATUS_PAUSED")
        #   AND adGroupId="12345"` The length of this field should be no more than 500
        #   characters. Reference our [filter `LIST` requests](/display-video/api/guides/
        #   how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `entityStatus` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `100`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListYoutubeAdGroupAds` method. If not specified, the first page of results
        #   will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_youtube_ad_group_ads(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroupAds', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAdsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAdsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists assigned targeting options for multiple YouTube ad groups across
        # targeting types. Inherited assigned targeting options are not included.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the line items belongs to.
        # @param [String] filter
        #   Optional. Allows filtering by assigned targeting option fields. Supported
        #   syntax: * Filter expressions are made up of one or more restrictions. *
        #   Restrictions can be combined by the logical operator `OR`. * A restriction has
        #   the form of ``field` `operator` `value``. * All fields must use the `EQUALS (=)
        #   ` operator. Supported fields: * `targetingType` Examples: * `
        #   AssignedTargetingOption` resources of targeting type `
        #   TARGETING_TYPE_YOUTUBE_VIDEO` or `TARGETING_TYPE_YOUTUBE_CHANNEL`: `
        #   targetingType="TARGETING_TYPE_YOUTUBE_VIDEO" OR targetingType="
        #   TARGETING_TYPE_YOUTUBE_CHANNEL"` The length of this field should be no more
        #   than 500 characters. Reference our [filter `LIST` requests](/display-video/api/
        #   guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Optional. Field by which to sort the list. Acceptable values are: * `adGroupId`
        #   (default) * `assignedTargetingOption.targetingType` The default sorting order
        #   is ascending. To specify descending order for a field, a suffix "desc" should
        #   be added to the field name. Example: `targetingType desc`.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The size must be an integer between `1` and `
        #   5000`. If unspecified, the default is `5000`. Returns error code `
        #   INVALID_ARGUMENT` if an invalid value is specified.
        # @param [String] page_token
        #   Optional. A token that lets the client fetch the next page of results.
        #   Typically, this is the value of next_page_token returned from the previous
        #   call to the `BulkListAdGroupAssignedTargetingOptions` method. If not specified,
        #   the first page of results will be returned.
        # @param [Array<Fixnum>, Fixnum] youtube_ad_group_ids
        #   Required. The IDs of the youtube ad groups to list assigned targeting options
        #   for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkListAdGroupAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkListAdGroupAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_advertiser_youtube_ad_group_list_ad_group_assigned_targeting_options(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, youtube_ad_group_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroups:bulkListAdGroupAssignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::BulkListAdGroupAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkListAdGroupAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['youtubeAdGroupIds'] = youtube_ad_group_ids unless youtube_ad_group_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a YouTube ad group.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser this ad group belongs to.
        # @param [Fixnum] youtube_ad_group_id
        #   Required. The ID of the ad group to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::YoutubeAdGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::YoutubeAdGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_youtube_ad_group(advertiser_id, youtube_ad_group_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroups/{+youtubeAdGroupId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::YoutubeAdGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::YoutubeAdGroup
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['youtubeAdGroupId'] = youtube_ad_group_id unless youtube_ad_group_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists YouTube ad groups.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the ad groups belongs to.
        # @param [String] filter
        #   Allows filtering by custom YouTube ad group fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `AND` and `OR`. A sequence of restrictions implicitly uses `AND`. *
        #   A restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `EQUALS (=)` operator. Supported properties: * `adGroupId` * `
        #   displayName` * `entityStatus` * `lineItemId` * `adGroupFormat` Examples: * All
        #   ad groups under an line item: `lineItemId="1234"` * All `ENTITY_STATUS_ACTIVE`
        #   or `ENTITY_STATUS_PAUSED` `YOUTUBE_AND_PARTNERS_AD_GROUP_FORMAT_IN_STREAM` ad
        #   groups under an advertiser: `(entityStatus="ENTITY_STATUS_ACTIVE" OR
        #   entityStatus="ENTITY_STATUS_PAUSED") AND adGroupFormat="
        #   YOUTUBE_AND_PARTNERS_AD_GROUP_FORMAT_IN_STREAM"` The length of this field
        #   should be no more than 500 characters. Reference our [filter `LIST` requests](/
        #   display-video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `entityStatus` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListYoutubeAdGroups` method. If not specified, the first page of results will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_youtube_ad_groups(advertiser_id, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroups', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single targeting option assigned to a YouTube ad group. Inherited
        # assigned targeting options are not included.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the ad group belongs to.
        # @param [Fixnum] youtube_ad_group_id
        #   Required. The ID of the ad group the assigned targeting option belongs to.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_CATEGORY` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_HOUSEHOLD_INCOME` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_SESSION_POSITION` * `
        #   TARGETING_TYPE_URL` * `TARGETING_TYPE_YOUTUBE_CHANNEL` * `
        #   TARGETING_TYPE_YOUTUBE_VIDEO`
        # @param [String] assigned_targeting_option_id
        #   Required. An identifier unique to the targeting type in this line item that
        #   identifies the assigned targeting option being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser_youtube_ad_group_targeting_type_assigned_targeting_option(advertiser_id, youtube_ad_group_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroups/{+youtubeAdGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['youtubeAdGroupId'] = youtube_ad_group_id unless youtube_ad_group_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the targeting options assigned to a YouTube ad group. Inherited assigned
        # targeting options are not included.
        # @param [Fixnum] advertiser_id
        #   Required. The ID of the advertiser the ad group belongs to.
        # @param [Fixnum] youtube_ad_group_id
        #   Required. The ID of the ad group to list assigned targeting options for.
        # @param [String] targeting_type
        #   Required. Identifies the type of assigned targeting options to list. Supported
        #   targeting types include: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` *
        #   `TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        #   TARGETING_TYPE_CATEGORY` * `TARGETING_TYPE_GENDER` * `
        #   TARGETING_TYPE_HOUSEHOLD_INCOME` * `TARGETING_TYPE_KEYWORD` * `
        #   TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_SESSION_POSITION` * `
        #   TARGETING_TYPE_URL` * `TARGETING_TYPE_YOUTUBE_CHANNEL` * `
        #   TARGETING_TYPE_YOUTUBE_VIDEO`
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the logical operator `OR`. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedTargetingOptionId` Examples: * `
        #   AssignedTargetingOption` resources with ID 1 or 2: `assignedTargetingOptionId="
        #   1" OR assignedTargetingOptionId="2"` The length of this field should be no
        #   more than 500 characters. Reference our [filter `LIST` requests](/display-
        #   video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `
        #   assignedTargetingOptionId` (default) The default sorting order is ascending.
        #   To specify descending order for a field, a suffix "desc" should be added to
        #   the field name. Example: `assignedTargetingOptionId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `5000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListYoutubeAdGroupAssignedTargetingOptions` method. If not specified, the
        #   first page of results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertiser_youtube_ad_group_targeting_type_assigned_targeting_options(advertiser_id, youtube_ad_group_id, targeting_type, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/advertisers/{+advertiserId}/youtubeAdGroups/{+youtubeAdGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListYoutubeAdGroupAssignedTargetingOptionsResponse
          command.params['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.params['youtubeAdGroupId'] = youtube_ad_group_id unless youtube_ad_group_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a combined audience.
        # @param [Fixnum] combined_audience_id
        #   Required. The ID of the combined audience to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the fetched combined audience.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the fetched combined audience.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CombinedAudience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CombinedAudience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_combined_audience(combined_audience_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/combinedAudiences/{+combinedAudienceId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::CombinedAudience::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CombinedAudience
          command.params['combinedAudienceId'] = combined_audience_id unless combined_audience_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists combined audiences. The order is defined by the order_by parameter.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the fetched combined audiences.
        # @param [String] filter
        #   Allows filtering by combined audience fields. Supported syntax: * Filter
        #   expressions for combined audiences can only contain at most one restriction. *
        #   A restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `HAS (:)` operator. Supported fields: * `displayName` Examples: * All
        #   combined audiences for which the display name contains "Google": `displayName :
        #   "Google"`. The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `combinedAudienceId`
        #   (default) * `displayName` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCombinedAudiences` method. If not specified, the first page of results
        #   will be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the fetched combined audiences.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCombinedAudiencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCombinedAudiencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_combined_audiences(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/combinedAudiences', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCombinedAudiencesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCombinedAudiencesResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new custom bidding algorithm. Returns the newly created custom
        # bidding algorithm if successful.
        # @param [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm] custom_bidding_algorithm_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_custom_bidding_algorithm(custom_bidding_algorithm_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/customBiddingAlgorithms', options)
          command.request_representation = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm::Representation
          command.request_object = custom_bidding_algorithm_object
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a custom bidding algorithm.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Required. The ID of the custom bidding algorithm to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the DV360 partner that has access to the custom bidding algorithm.
        # @param [Fixnum] partner_id
        #   The ID of the DV360 partner that has access to the custom bidding algorithm.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_custom_bidding_algorithm(custom_bidding_algorithm_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists custom bidding algorithms that are accessible to the current user and
        # can be used in bidding stratgies. The order is defined by the order_by
        # parameter.
        # @param [Fixnum] advertiser_id
        #   The ID of the DV360 advertiser that has access to the custom bidding algorithm.
        # @param [String] filter
        #   Allows filtering by custom bidding algorithm fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by `AND`. A sequence of restrictions implicitly uses `AND`. * A
        #   restriction has the form of ``field` `operator` `value``. * The `
        #   customBiddingAlgorithmType` field must use the `EQUALS (=)` operator. * The `
        #   displayName` field must use the `HAS (:)` operator. Supported fields: * `
        #   customBiddingAlgorithmType` * `displayName` Examples: * All custom bidding
        #   algorithms for which the display name contains "politics": `displayName:"
        #   politics"`. * All custom bidding algorithms for which the type is "
        #   SCRIPT_BASED": `customBiddingAlgorithmType=SCRIPT_BASED` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. Example: `
        #   displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCustomBiddingAlgorithms` method. If not specified, the first page of
        #   results will be returned.
        # @param [Fixnum] partner_id
        #   The ID of the DV360 partner that has access to the custom bidding algorithm.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCustomBiddingAlgorithmsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCustomBiddingAlgorithmsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_custom_bidding_algorithms(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customBiddingAlgorithms', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCustomBiddingAlgorithmsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCustomBiddingAlgorithmsResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing custom bidding algorithm. Returns the updated custom
        # bidding algorithm if successful. Requests updating a custom bidding algorithm
        # assigned to a line item will return an error.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Output only. The unique ID of the custom bidding algorithm. Assigned by the
        #   system.
        # @param [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm] custom_bidding_algorithm_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_custom_bidding_algorithm(custom_bidding_algorithm_id, custom_bidding_algorithm_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm::Representation
          command.request_object = custom_bidding_algorithm_object
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingAlgorithm
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom bidding script reference object for a script file. The
        # resulting reference object provides a resource path to which the script file
        # should be uploaded. This reference object should be included in when creating
        # a new custom bidding script object.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Required. The ID of the custom bidding algorithm owns the script.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent custom bidding algorithm.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent custom bidding algorithm. Only this
        #   partner will have write access to this custom bidding script.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingScriptRef] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingScriptRef]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_custom_bidding_algorithm_script(custom_bidding_algorithm_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}:uploadScript', options)
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingScriptRef::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingScriptRef
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new custom bidding script. Returns the newly created script if
        # successful. Requests creating a custom bidding script under an algorithm
        # assigned to a line item will return an error.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Required. The ID of the custom bidding algorithm that owns the script.
        # @param [Google::Apis::DisplayvideoV2::CustomBiddingScript] custom_bidding_script_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent custom bidding algorithm.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent custom bidding algorithm. Only this
        #   partner will have write access to this custom bidding script.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingScript] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingScript]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_custom_bidding_algorithm_script(custom_bidding_algorithm_id, custom_bidding_script_object = nil, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts', options)
          command.request_representation = Google::Apis::DisplayvideoV2::CustomBiddingScript::Representation
          command.request_object = custom_bidding_script_object
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingScript::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingScript
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a custom bidding script.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Required. The ID of the custom bidding algorithm owns the script.
        # @param [Fixnum] custom_bidding_script_id
        #   Required. The ID of the custom bidding script to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent custom bidding algorithm.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent custom bidding algorithm. Only this
        #   partner will have write access to this custom bidding script.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomBiddingScript] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomBiddingScript]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_custom_bidding_algorithm_script(custom_bidding_algorithm_id, custom_bidding_script_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts/{+customBiddingScriptId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::CustomBiddingScript::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomBiddingScript
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.params['customBiddingScriptId'] = custom_bidding_script_id unless custom_bidding_script_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists custom bidding scripts that belong to the given algorithm. The order is
        # defined by the order_by parameter.
        # @param [Fixnum] custom_bidding_algorithm_id
        #   Required. The ID of the custom bidding algorithm owns the script.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent custom bidding algorithm.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `createTime desc` (
        #   default) The default sorting order is descending. To specify ascending order
        #   for a field, the suffix "desc" should be removed. Example: `createTime`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCustomBiddingScripts` method. If not specified, the first page of results
        #   will be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent custom bidding algorithm. Only this
        #   partner will have write access to this custom bidding script.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCustomBiddingScriptsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCustomBiddingScriptsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_custom_bidding_algorithm_scripts(custom_bidding_algorithm_id, advertiser_id: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCustomBiddingScriptsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCustomBiddingScriptsResponse
          command.params['customBiddingAlgorithmId'] = custom_bidding_algorithm_id unless custom_bidding_algorithm_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a custom list.
        # @param [Fixnum] custom_list_id
        #   Required. The ID of the custom list to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the DV360 advertiser that has access to the fetched custom lists.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::CustomList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::CustomList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_custom_list(custom_list_id, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customLists/{+customListId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::CustomList::Representation
          command.response_class = Google::Apis::DisplayvideoV2::CustomList
          command.params['customListId'] = custom_list_id unless custom_list_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists custom lists. The order is defined by the order_by parameter.
        # @param [Fixnum] advertiser_id
        #   The ID of the DV360 advertiser that has access to the fetched custom lists.
        # @param [String] filter
        #   Allows filtering by custom list fields. Supported syntax: * Filter expressions
        #   for custom lists can only contain at most one restriction. * A restriction has
        #   the form of ``field` `operator` `value``. * All fields must use the `HAS (:)`
        #   operator. Supported fields: * `displayName` Examples: * All custom lists for
        #   which the display name contains "Google": `displayName:"Google"`. The length
        #   of this field should be no more than 500 characters. Reference our [filter `
        #   LIST` requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `customListId` (
        #   default) * `displayName` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListCustomLists` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListCustomListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListCustomListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_custom_lists(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/customLists', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListCustomListsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListCustomListsResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Floodlight group.
        # @param [Fixnum] floodlight_group_id
        #   Required. The ID of the Floodlight group to fetch.
        # @param [Fixnum] partner_id
        #   Required. The partner context by which the Floodlight group is being accessed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::FloodlightGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::FloodlightGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_floodlight_group(floodlight_group_id, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/floodlightGroups/{+floodlightGroupId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::FloodlightGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::FloodlightGroup
          command.params['floodlightGroupId'] = floodlight_group_id unless floodlight_group_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Floodlight group. Returns the updated Floodlight group if
        # successful.
        # @param [Fixnum] floodlight_group_id
        #   Output only. The unique ID of the Floodlight group. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::FloodlightGroup] floodlight_group_object
        # @param [Fixnum] partner_id
        #   Required. The partner context by which the Floodlight group is being accessed.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::FloodlightGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::FloodlightGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_floodlight_group(floodlight_group_id, floodlight_group_object = nil, partner_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/floodlightGroups/{floodlightGroupId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::FloodlightGroup::Representation
          command.request_object = floodlight_group_object
          command.response_representation = Google::Apis::DisplayvideoV2::FloodlightGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::FloodlightGroup
          command.params['floodlightGroupId'] = floodlight_group_id unless floodlight_group_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Floodlight activity.
        # @param [Fixnum] floodlight_group_id
        #   Required. The ID of the parent Floodlight group to which the requested
        #   Floodlight activity belongs.
        # @param [Fixnum] floodlight_activity_id
        #   Required. The ID of the Floodlight activity to fetch.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner through which the Floodlight activity is being
        #   accessed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::FloodlightActivity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::FloodlightActivity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_floodlight_group_floodlight_activity(floodlight_group_id, floodlight_activity_id, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/floodlightGroups/{+floodlightGroupId}/floodlightActivities/{+floodlightActivityId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::FloodlightActivity::Representation
          command.response_class = Google::Apis::DisplayvideoV2::FloodlightActivity
          command.params['floodlightGroupId'] = floodlight_group_id unless floodlight_group_id.nil?
          command.params['floodlightActivityId'] = floodlight_activity_id unless floodlight_activity_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Floodlight activities in a Floodlight group.
        # @param [Fixnum] floodlight_group_id
        #   Required. The ID of the parent Floodlight group to which the requested
        #   Floodlight activities belong.
        # @param [String] order_by
        #   Optional. Field by which to sort the list. Acceptable values are: * `
        #   displayName` (default) * `floodlightActivityId` The default sorting order is
        #   ascending. To specify descending order for a field, a suffix "desc" should be
        #   added to the field name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Must be between `1` and `100`. If unspecified
        #   will default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid
        #   value is specified.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   Typically, this is the value of next_page_token returned from the previous
        #   call to `ListFloodlightActivities` method. If not specified, the first page of
        #   results will be returned.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner through which the Floodlight activities are
        #   being accessed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListFloodlightActivitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListFloodlightActivitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_floodlight_group_floodlight_activities(floodlight_group_id, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/floodlightGroups/{+floodlightGroupId}/floodlightActivities', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListFloodlightActivitiesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListFloodlightActivitiesResponse
          command.params['floodlightGroupId'] = floodlight_group_id unless floodlight_group_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Google audience.
        # @param [Fixnum] google_audience_id
        #   Required. The ID of the Google audience to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the fetched Google audience.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the fetched Google audience.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::GoogleAudience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GoogleAudience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_google_audience(google_audience_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/googleAudiences/{+googleAudienceId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::GoogleAudience::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GoogleAudience
          command.params['googleAudienceId'] = google_audience_id unless google_audience_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Google audiences. The order is defined by the order_by parameter.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the fetched Google audiences.
        # @param [String] filter
        #   Allows filtering by Google audience fields. Supported syntax: * Filter
        #   expressions for Google audiences can only contain at most one restriction. * A
        #   restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `HAS (:)` operator. Supported fields: * `displayName` Examples: * All
        #   Google audiences for which the display name contains "Google": `displayName:"
        #   Google"`. The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `googleAudienceId` (
        #   default) * `displayName` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix "desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListGoogleAudiences` method. If not specified, the first page of results will
        #   be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the fetched Google audiences.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListGoogleAudiencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListGoogleAudiencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_google_audiences(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/googleAudiences', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListGoogleAudiencesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListGoogleAudiencesResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new guaranteed order. Returns the newly created guaranteed order if
        # successful.
        # @param [Google::Apis::DisplayvideoV2::GuaranteedOrder] guaranteed_order_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that the request is being made within.
        # @param [Fixnum] partner_id
        #   The ID of the partner that the request is being made within.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::GuaranteedOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GuaranteedOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_guaranteed_order(guaranteed_order_object = nil, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/guaranteedOrders', options)
          command.request_representation = Google::Apis::DisplayvideoV2::GuaranteedOrder::Representation
          command.request_object = guaranteed_order_object
          command.response_representation = Google::Apis::DisplayvideoV2::GuaranteedOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GuaranteedOrder
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Edits read advertisers of a guaranteed order.
        # @param [String] guaranteed_order_id
        #   Required. The ID of the guaranteed order to edit. The ID is of the format ``
        #   exchange`-`legacy_guaranteed_order_id``
        # @param [Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsRequest] edit_guaranteed_order_read_accessors_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def edit_guaranteed_order_read_accessors(guaranteed_order_id, edit_guaranteed_order_read_accessors_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/guaranteedOrders/{+guaranteedOrderId}:editGuaranteedOrderReadAccessors', options)
          command.request_representation = Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsRequest::Representation
          command.request_object = edit_guaranteed_order_read_accessors_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::EditGuaranteedOrderReadAccessorsResponse
          command.params['guaranteedOrderId'] = guaranteed_order_id unless guaranteed_order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a guaranteed order.
        # @param [String] guaranteed_order_id
        #   Required. The ID of the guaranteed order to fetch. The ID is of the format ``
        #   exchange`-`legacy_guaranteed_order_id``
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the guaranteed order.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the guaranteed order.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::GuaranteedOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GuaranteedOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_guaranteed_order(guaranteed_order_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/guaranteedOrders/{+guaranteedOrderId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::GuaranteedOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GuaranteedOrder
          command.params['guaranteedOrderId'] = guaranteed_order_id unless guaranteed_order_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists guaranteed orders that are accessible to the current user. The order is
        # defined by the order_by parameter. If a filter by entity_status is not
        # specified, guaranteed orders with entity status `ENTITY_STATUS_ARCHIVED` will
        # not be included in the results.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the guaranteed order.
        # @param [String] filter
        #   Allows filtering by guaranteed order fields. * Filter expressions are made up
        #   of one or more restrictions. * Restrictions can be combined by `AND` or `OR`
        #   logical operators. A sequence of restrictions implicitly uses `AND`. * A
        #   restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `EQUALS (=)` operator. Supported fields: * `guaranteed_order_id` * `
        #   exchange` * `display_name` * `status.entityStatus` Examples: * All active
        #   guaranteed orders: `status.entityStatus="ENTITY_STATUS_ACTIVE"` * Guaranteed
        #   orders belonging to Google Ad Manager or Rubicon exchanges: `exchange="
        #   EXCHANGE_GOOGLE_AD_MANAGER" OR exchange="EXCHANGE_RUBICON"` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. For example, `
        #   displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListGuaranteedOrders` method. If not specified, the first page of results will
        #   be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the guaranteed order.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListGuaranteedOrdersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListGuaranteedOrdersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_guaranteed_orders(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/guaranteedOrders', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListGuaranteedOrdersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListGuaranteedOrdersResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing guaranteed order. Returns the updated guaranteed order if
        # successful.
        # @param [String] guaranteed_order_id
        #   Output only. The unique identifier of the guaranteed order. The guaranteed
        #   order IDs have the format ``exchange`-`legacy_guaranteed_order_id``.
        # @param [Google::Apis::DisplayvideoV2::GuaranteedOrder] guaranteed_order_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that the request is being made within.
        # @param [Fixnum] partner_id
        #   The ID of the partner that the request is being made within.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::GuaranteedOrder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GuaranteedOrder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_guaranteed_order(guaranteed_order_id, guaranteed_order_object = nil, advertiser_id: nil, partner_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/guaranteedOrders/{+guaranteedOrderId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::GuaranteedOrder::Representation
          command.request_object = guaranteed_order_object
          command.response_representation = Google::Apis::DisplayvideoV2::GuaranteedOrder::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GuaranteedOrder
          command.params['guaranteedOrderId'] = guaranteed_order_id unless guaranteed_order_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new inventory source group. Returns the newly created inventory
        # source group if successful.
        # @param [Google::Apis::DisplayvideoV2::InventorySourceGroup] inventory_source_group_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the inventory source group. The parent
        #   partner will not have access to this group.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the inventory source group. Only this partner
        #   will have write access to this group. Only advertisers to which this group is
        #   explicitly shared will have read access to this group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySourceGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySourceGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inventory_source_group(inventory_source_group_object = nil, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/inventorySourceGroups', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InventorySourceGroup::Representation
          command.request_object = inventory_source_group_object
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySourceGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySourceGroup
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an inventory source group.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to delete.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the inventory source group. The parent
        #   partner does not have access to this group.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the inventory source group. Only this partner
        #   has write access to this group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inventory_source_group(inventory_source_group_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/inventorySourceGroups/{+inventorySourceGroupId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an inventory source group.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the inventory source group. If an
        #   inventory source group is partner-owned, only advertisers to which the group
        #   is explicitly shared can access the group.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the inventory source group. A partner
        #   cannot access an advertiser-owned inventory source group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySourceGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySourceGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inventory_source_group(inventory_source_group_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/inventorySourceGroups/{+inventorySourceGroupId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySourceGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySourceGroup
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists inventory source groups that are accessible to the current user. The
        # order is defined by the order_by parameter.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the inventory source group. If an
        #   inventory source group is partner-owned, only advertisers to which the group
        #   is explicitly shared can access the group.
        # @param [String] filter
        #   Allows filtering by inventory source group fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by the logical operator `OR`. * A restriction has the form of ``field`
        #   `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `inventorySourceGroupId` The length of this field should
        #   be no more than 500 characters. Reference our [filter `LIST` requests](/
        #   display-video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `inventorySourceGroupId` The default sorting order is ascending. To
        #   specify descending order for a field, a suffix "desc" should be added to the
        #   field name. For example, `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListInventorySources` method. If not specified, the first page of results will
        #   be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the inventory source group. A partner
        #   cannot access advertiser-owned inventory source groups.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListInventorySourceGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListInventorySourceGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inventory_source_groups(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/inventorySourceGroups', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListInventorySourceGroupsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListInventorySourceGroupsResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an inventory source group. Returns the updated inventory source group
        # if successful.
        # @param [Fixnum] inventory_source_group_id
        #   Output only. The unique ID of the inventory source group. Assigned by the
        #   system.
        # @param [Google::Apis::DisplayvideoV2::InventorySourceGroup] inventory_source_group_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the inventory source group. The parent
        #   partner does not have access to this group.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the inventory source group. Only this partner
        #   has write access to this group.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySourceGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySourceGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inventory_source_group(inventory_source_group_id, inventory_source_group_object = nil, advertiser_id: nil, partner_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/inventorySourceGroups/{inventorySourceGroupId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InventorySourceGroup::Representation
          command.request_object = inventory_source_group_object
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySourceGroup::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySourceGroup
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits multiple assignments between inventory sources and a single
        # inventory source group. The operation will delete the assigned inventory
        # sources provided in BulkEditAssignedInventorySourcesRequest.
        # deleted_assigned_inventory_sources and then create the assigned inventory
        # sources provided in BulkEditAssignedInventorySourcesRequest.
        # created_assigned_inventory_sources.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to which the assignments are
        #   assigned.
        # @param [Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesRequest] bulk_edit_assigned_inventory_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_edit_assigned_inventory_sources(inventory_source_group_id, bulk_edit_assigned_inventory_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources:bulkEdit', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesRequest::Representation
          command.request_object = bulk_edit_assigned_inventory_sources_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditAssignedInventorySourcesResponse
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an assignment between an inventory source and an inventory source
        # group.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to which the assignment will be
        #   assigned.
        # @param [Google::Apis::DisplayvideoV2::AssignedInventorySource] assigned_inventory_source_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent inventory source group. The
        #   parent partner will not have access to this assigned inventory source.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent inventory source group. Only this
        #   partner will have write access to this assigned inventory source.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedInventorySource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedInventorySource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inventory_source_group_assigned_inventory_source(inventory_source_group_id, assigned_inventory_source_object = nil, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources', options)
          command.request_representation = Google::Apis::DisplayvideoV2::AssignedInventorySource::Representation
          command.request_object = assigned_inventory_source_object
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedInventorySource::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedInventorySource
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the assignment between an inventory source and an inventory source
        # group.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to which this assignment is
        #   assigned.
        # @param [Fixnum] assigned_inventory_source_id
        #   Required. The ID of the assigned inventory source to delete.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent inventory source group. The
        #   parent partner does not have access to this assigned inventory source.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent inventory source group. Only this
        #   partner has write access to this assigned inventory source.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inventory_source_group_assigned_inventory_source(inventory_source_group_id, assigned_inventory_source_id, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources/{+assignedInventorySourceId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.params['assignedInventorySourceId'] = assigned_inventory_source_id unless assigned_inventory_source_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists inventory sources assigned to an inventory source group.
        # @param [Fixnum] inventory_source_group_id
        #   Required. The ID of the inventory source group to which these assignments are
        #   assigned.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the assignment. If the parent
        #   inventory source group is partner-owned, only advertisers to which the parent
        #   group is explicitly shared can access the assigned inventory source.
        # @param [String] filter
        #   Allows filtering by assigned inventory source fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the `OR` logical operator. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedInventorySourceId` The length of this field
        #   should be no more than 500 characters. Reference our [filter `LIST` requests](/
        #   display-video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `
        #   assignedInventorySourceId` (default) The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be added to
        #   the field name. Example: `assignedInventorySourceId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `100`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListAssignedInventorySources` method. If not specified, the first page of
        #   results will be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the assignment. If the parent
        #   inventory source group is advertiser-owned, the assignment cannot be accessed
        #   via a partner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListAssignedInventorySourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListAssignedInventorySourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inventory_source_group_assigned_inventory_sources(inventory_source_group_id, advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListAssignedInventorySourcesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListAssignedInventorySourcesResponse
          command.params['inventorySourceGroupId'] = inventory_source_group_id unless inventory_source_group_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new inventory source. Returns the newly created inventory source if
        # successful.
        # @param [Google::Apis::DisplayvideoV2::InventorySource] inventory_source_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that the request is being made within.
        # @param [Fixnum] partner_id
        #   The ID of the partner that the request is being made within.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inventory_source(inventory_source_object = nil, advertiser_id: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/inventorySources', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InventorySource::Representation
          command.request_object = inventory_source_object
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySource::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySource
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Edits read/write accessors of an inventory source. Returns the updated
        # read_write_accessors for the inventory source.
        # @param [Fixnum] inventory_source_id
        #   Required. The ID of inventory source to update.
        # @param [Google::Apis::DisplayvideoV2::EditInventorySourceReadWriteAccessorsRequest] edit_inventory_source_read_write_accessors_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySourceAccessors] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySourceAccessors]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def edit_inventory_source_read_write_accessors(inventory_source_id, edit_inventory_source_read_write_accessors_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/inventorySources/{+inventorySourceId}:editInventorySourceReadWriteAccessors', options)
          command.request_representation = Google::Apis::DisplayvideoV2::EditInventorySourceReadWriteAccessorsRequest::Representation
          command.request_object = edit_inventory_source_read_write_accessors_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySourceAccessors::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySourceAccessors
          command.params['inventorySourceId'] = inventory_source_id unless inventory_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an inventory source.
        # @param [Fixnum] inventory_source_id
        #   Required. The ID of the inventory source to fetch.
        # @param [Fixnum] partner_id
        #   Required. The ID of the DV360 partner to which the fetched inventory source is
        #   permissioned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inventory_source(inventory_source_id, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/inventorySources/{+inventorySourceId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySource::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySource
          command.params['inventorySourceId'] = inventory_source_id unless inventory_source_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists inventory sources that are accessible to the current user. The order is
        # defined by the order_by parameter. If a filter by entity_status is not
        # specified, inventory sources with entity status `ENTITY_STATUS_ARCHIVED` will
        # not be included in the results.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that has access to the inventory source.
        # @param [String] filter
        #   Allows filtering by inventory source fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `AND` or `OR` logical operators. A sequence of restrictions
        #   implicitly uses `AND`. * A restriction has the form of ``field` `operator` `
        #   value``. * All fields must use the `EQUALS (=)` operator. Supported fields: * `
        #   status.entityStatus` * `commitment` * `deliveryMethod` * `rateDetails.rateType`
        #   * `exchange` Examples: * All active inventory sources: `status.entityStatus="
        #   ENTITY_STATUS_ACTIVE"` * Inventory sources belonging to Google Ad Manager or
        #   Rubicon exchanges: `exchange="EXCHANGE_GOOGLE_AD_MANAGER" OR exchange="
        #   EXCHANGE_RUBICON"` The length of this field should be no more than 500
        #   characters. Reference our [filter `LIST` requests](/display-video/api/guides/
        #   how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. For example, `
        #   displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListInventorySources` method. If not specified, the first page of results will
        #   be returned.
        # @param [Fixnum] partner_id
        #   The ID of the partner that has access to the inventory source.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListInventorySourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListInventorySourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inventory_sources(advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, partner_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/inventorySources', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListInventorySourcesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListInventorySourcesResponse
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing inventory source. Returns the updated inventory source if
        # successful.
        # @param [Fixnum] inventory_source_id
        #   Output only. The unique ID of the inventory source. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::InventorySource] inventory_source_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that the request is being made within.
        # @param [Fixnum] partner_id
        #   The ID of the partner that the request is being made within.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::InventorySource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::InventorySource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inventory_source(inventory_source_id, inventory_source_object = nil, advertiser_id: nil, partner_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/inventorySources/{+inventorySourceId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::InventorySource::Representation
          command.request_object = inventory_source_object
          command.response_representation = Google::Apis::DisplayvideoV2::InventorySource::Representation
          command.response_class = Google::Apis::DisplayvideoV2::InventorySource
          command.params['inventorySourceId'] = inventory_source_id unless inventory_source_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['partnerId'] = partner_id unless partner_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads media. Download is supported on the URI `/download/`resource_name=**`
        # ?alt=media.` **Note**: Download requests will not be successful without
        # including `alt=media` query string.
        # @param [String] resource_name
        #   Name of the media that is being downloaded. See ReadRequest.resource_name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::GoogleBytestreamMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GoogleBytestreamMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'download/{+resourceName}', options)
          else
            command = make_download_command(:get, 'download/{+resourceName}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DisplayvideoV2::GoogleBytestreamMedia::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GoogleBytestreamMedia
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads media. Upload is supported on the URI `/upload/media/`resource_name=**`
        # ?upload_type=media.` **Note**: Upload requests will not be successful without
        # including `upload_type=media` query string.
        # @param [String] resource_name
        #   Name of the media that is being downloaded. See ReadRequest.resource_name.
        # @param [Google::Apis::DisplayvideoV2::GoogleBytestreamMedia] google_bytestream_media_object
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
        # @yieldparam result [Google::Apis::DisplayvideoV2::GoogleBytestreamMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::GoogleBytestreamMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(resource_name, google_bytestream_media_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'media/{+resourceName}', options)
          else
            command = make_upload_command(:post, 'media/{+resourceName}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DisplayvideoV2::GoogleBytestreamMedia::Representation
          command.request_object = google_bytestream_media_object
          command.response_representation = Google::Apis::DisplayvideoV2::GoogleBytestreamMedia::Representation
          command.response_class = Google::Apis::DisplayvideoV2::GoogleBytestreamMedia
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Edits targeting options under a single partner. The operation will delete the
        # assigned targeting options provided in
        # BulkEditPartnerAssignedTargetingOptionsRequest.deleteRequests and then create
        # the assigned targeting options provided in
        # BulkEditPartnerAssignedTargetingOptionsRequest.createRequests .
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner.
        # @param [Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsRequest] bulk_edit_partner_assigned_targeting_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def edit_partner_assigned_targeting_options(partner_id, bulk_edit_partner_assigned_targeting_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{+partnerId}:editAssignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsRequest::Representation
          command.request_object = bulk_edit_partner_assigned_targeting_options_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditPartnerAssignedTargetingOptionsResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a partner.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Partner] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Partner]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner(partner_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Partner::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Partner
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists partners that are accessible to the current user. The order is defined
        # by the order_by parameter.
        # @param [String] filter
        #   Allows filtering by partner fields. Supported syntax: * Filter expressions are
        #   made up of one or more restrictions. * Restrictions can be combined by `AND`
        #   or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. *
        #   A restriction has the form of ``field` `operator` `value``. * All fields must
        #   use the `EQUALS (=)` operator. Supported fields: * `entityStatus` Examples: *
        #   All active partners: `entityStatus="ENTITY_STATUS_ACTIVE"` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` The
        #   default sorting order is ascending. To specify descending order for a field, a
        #   suffix "desc" should be added to the field name. For example, `displayName
        #   desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListPartners` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListPartnersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListPartnersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partners(filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListPartnersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListPartnersResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new channel. Returns the newly created channel if successful.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the created channel.
        # @param [Google::Apis::DisplayvideoV2::Channel] channel_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the created channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_partner_channel(partner_id, channel_object = nil, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{+partnerId}/channels', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a channel for a partner or advertiser.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the fetched channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the channel to fetch.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the fetched channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner_channel(partner_id, channel_id, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}/channels/{+channelId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists channels for a partner or advertiser.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the channels.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the channels.
        # @param [String] filter
        #   Allows filtering by channel fields. Supported syntax: * Filter expressions for
        #   channel can only contain at most one restriction. * A restriction has the form
        #   of ``field` `operator` `value``. * All fields must use the `HAS (:)` operator.
        #   Supported fields: * `displayName` Examples: * All channels for which the
        #   display name contains "google": `displayName : "google"`. The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) * `channelId` The default sorting order is ascending. To specify
        #   descending order for a field, a suffix " desc" should be added to the field
        #   name. Example: `displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListChannels` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_channels(partner_id, advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}/channels', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListChannelsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListChannelsResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a channel. Returns the updated channel if successful.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the created channel.
        # @param [Fixnum] channel_id
        #   Output only. The unique ID of the channel. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::Channel] channel_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the created channel.
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_partner_channel(partner_id, channel_id, channel_object = nil, advertiser_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/partners/{+partnerId}/channels/{channelId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DisplayvideoV2::Channel::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Channel
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits sites under a single channel. The operation will delete the sites
        # provided in BulkEditSitesRequest.deleted_sites and then create the sites
        # provided in BulkEditSitesRequest.created_sites.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the sites belong.
        # @param [Google::Apis::DisplayvideoV2::BulkEditSitesRequest] bulk_edit_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_partner_channel_site_edit(partner_id, channel_id, bulk_edit_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{partnerId}/channels/{+channelId}/sites:bulkEdit', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditSitesRequest::Representation
          command.request_object = bulk_edit_sites_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditSitesResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a site in a channel.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel in which the site will be created.
        # @param [Google::Apis::DisplayvideoV2::Site] site_object
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_partner_channel_site(partner_id, channel_id, site_object = nil, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{partnerId}/channels/{+channelId}/sites', options)
          command.request_representation = Google::Apis::DisplayvideoV2::Site::Representation
          command.request_object = site_object
          command.response_representation = Google::Apis::DisplayvideoV2::Site::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Site
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a site from a channel.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the site belongs.
        # @param [String] url_or_app_id
        #   Required. The URL or app ID of the site to delete.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_partner_channel_site(partner_id, channel_id, url_or_app_id, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/partners/{partnerId}/channels/{+channelId}/sites/{+urlOrAppId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.params['urlOrAppId'] = url_or_app_id unless url_or_app_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sites in a channel.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel to which the requested sites belong.
        # @param [Fixnum] advertiser_id
        #   The ID of the advertiser that owns the parent channel.
        # @param [String] filter
        #   Allows filtering by site fields. Supported syntax: * Filter expressions for
        #   site retrieval can only contain at most one restriction. * A restriction has
        #   the form of ``field` `operator` `value``. * All fields must use the `HAS (:)`
        #   operator. Supported fields: * `urlOrAppId` Examples: * All sites for which the
        #   URL or app ID contains "google": `urlOrAppId : "google"` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `urlOrAppId` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix " desc" should be added to the field name. Example: `
        #   urlOrAppId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `10000`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListSites` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_channel_sites(partner_id, channel_id, advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}/channels/{+channelId}/sites', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListSitesResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces all of the sites under a single channel. The operation will replace
        # the sites under a channel with the sites provided in ReplaceSitesRequest.
        # new_sites. **This method regularly experiences high latency.** We recommend [
        # increasing your default timeout](/display-video/api/guides/best-practices/
        # timeouts#client_library_timeout) to avoid errors.
        # @param [Fixnum] partner_id
        #   The ID of the partner that owns the parent channel.
        # @param [Fixnum] channel_id
        #   Required. The ID of the parent channel whose sites will be replaced.
        # @param [Google::Apis::DisplayvideoV2::ReplaceSitesRequest] replace_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ReplaceSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ReplaceSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_partner_channel_site(partner_id, channel_id, replace_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{partnerId}/channels/{+channelId}/sites:replace', options)
          command.request_representation = Google::Apis::DisplayvideoV2::ReplaceSitesRequest::Representation
          command.request_object = replace_sites_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::ReplaceSitesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ReplaceSitesResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assigns a targeting option to a partner. Returns the assigned targeting option
        # if successful.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL`
        # @param [Google::Apis::DisplayvideoV2::AssignedTargetingOption] assigned_targeting_option_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_partner_targeting_type_assigned_targeting_option(partner_id, targeting_type, assigned_targeting_option_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.request_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.request_object = assigned_targeting_option_object
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an assigned targeting option from a partner.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL`
        # @param [String] assigned_targeting_option_id
        #   Required. The ID of the assigned targeting option to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_partner_targeting_type_assigned_targeting_option(partner_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single targeting option assigned to a partner.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner.
        # @param [String] targeting_type
        #   Required. Identifies the type of this assigned targeting option. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL`
        # @param [String] assigned_targeting_option_id
        #   Required. An identifier unique to the targeting type in this partner that
        #   identifies the assigned targeting option being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::AssignedTargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::AssignedTargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner_targeting_type_assigned_targeting_option(partner_id, targeting_type, assigned_targeting_option_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::AssignedTargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::AssignedTargetingOption
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['assignedTargetingOptionId'] = assigned_targeting_option_id unless assigned_targeting_option_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the targeting options assigned to a partner.
        # @param [Fixnum] partner_id
        #   Required. The ID of the partner.
        # @param [String] targeting_type
        #   Required. Identifies the type of assigned targeting options to list. Supported
        #   targeting types: * `TARGETING_TYPE_CHANNEL`
        # @param [String] filter
        #   Allows filtering by assigned targeting option fields. Supported syntax: *
        #   Filter expressions are made up of one or more restrictions. * Restrictions can
        #   be combined by the logical operator `OR`. * A restriction has the form of ``
        #   field` `operator` `value``. * All fields must use the `EQUALS (=)` operator.
        #   Supported fields: * `assignedTargetingOptionId` Examples: * `
        #   AssignedTargetingOption` resource with ID 123456: `assignedTargetingOptionId="
        #   123456"` The length of this field should be no more than 500 characters.
        #   Reference our [filter `LIST` requests](/display-video/api/guides/how-tos/
        #   filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `
        #   assignedTargetingOptionId` (default) The default sorting order is ascending.
        #   To specify descending order for a field, a suffix "desc" should be added to
        #   the field name. Example: `assignedTargetingOptionId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListPartnerAssignedTargetingOptions` method. If not specified, the first page
        #   of results will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListPartnerAssignedTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListPartnerAssignedTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_targeting_type_assigned_targeting_options(partner_id, targeting_type, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListPartnerAssignedTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListPartnerAssignedTargetingOptionsResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an SDF Download Task. Returns an Operation. An SDF Download Task is a
        # long-running, asynchronous operation. The metadata type of this operation is
        # SdfDownloadTaskMetadata. If the request is successful, the response type of
        # the operation is SdfDownloadTask. The response will not include the download
        # files, which must be retrieved with media.download. The state of operation can
        # be retrieved with `sdfdownloadtasks.operations.get`. Any errors can be found
        # in the error.message. Note that error.details is expected to be empty.
        # @param [Google::Apis::DisplayvideoV2::CreateSdfDownloadTaskRequest] create_sdf_download_task_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_sdfdownloadtask_sdf_download_task(create_sdf_download_task_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/sdfdownloadtasks', options)
          command.request_representation = Google::Apis::DisplayvideoV2::CreateSdfDownloadTaskRequest::Representation
          command.request_object = create_sdf_download_task_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::Operation::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of an asynchronous SDF download task operation. Clients
        # should poll this method at intervals of 30 seconds.
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
        # @yieldparam result [Google::Apis::DisplayvideoV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sdfdownloadtask_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Operation::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single targeting option.
        # @param [String] targeting_type
        #   Required. The type of targeting option to retrieve. Accepted values are: * `
        #   TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AGE_RANGE` * `
        #   TARGETING_TYPE_GENDER` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_PARENTAL_STATUS` * `
        #   TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_CARRIER_AND_ISP` * `
        #   TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` * `
        #   TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` * `
        #   TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_GEO_REGION` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_EXCHANGE` * `
        #   TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_OMID`
        # @param [String] targeting_option_id
        #   Required. The ID of the of targeting option to retrieve.
        # @param [Fixnum] advertiser_id
        #   Required. The Advertiser this request is being made in the context of.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::TargetingOption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::TargetingOption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_targeting_type_targeting_option(targeting_type, targeting_option_id, advertiser_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/targetingTypes/{+targetingType}/targetingOptions/{+targetingOptionId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::TargetingOption::Representation
          command.response_class = Google::Apis::DisplayvideoV2::TargetingOption
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.params['targetingOptionId'] = targeting_option_id unless targeting_option_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists targeting options of a given type.
        # @param [String] targeting_type
        #   Required. The type of targeting option to be listed. Accepted values are: * `
        #   TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AGE_RANGE` * `
        #   TARGETING_TYPE_GENDER` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        #   TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_PARENTAL_STATUS` * `
        #   TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        #   TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `TARGETING_TYPE_DEVICE_TYPE` * `
        #   TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        #   TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_CARRIER_AND_ISP` * `
        #   TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` * `
        #   TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_CATEGORY` * `
        #   TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` * `
        #   TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_GEO_REGION` * `
        #   TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `
        #   TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_EXCHANGE` * `
        #   TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        #   TARGETING_TYPE_OMID`
        # @param [Fixnum] advertiser_id
        #   Required. The Advertiser this request is being made in the context of.
        # @param [String] filter
        #   Allows filtering by targeting option fields. Supported syntax: * Filter
        #   expressions are made up of one or more restrictions. * Restrictions can be
        #   combined by `OR` logical operators. * A restriction has the form of ``field` `
        #   operator` `value``. * All fields must use the `EQUALS (=)` operator. Supported
        #   fields: * `carrierAndIspDetails.type` * `geoRegionDetails.geoRegionType` * `
        #   targetingOptionId` Examples: * All `GEO REGION` targeting options that belong
        #   to sub type `GEO_REGION_TYPE_COUNTRY` or `GEO_REGION_TYPE_STATE`: `
        #   geoRegionDetails.geoRegionType="GEO_REGION_TYPE_COUNTRY" OR geoRegionDetails.
        #   geoRegionType="GEO_REGION_TYPE_STATE"` * All `CARRIER AND ISP` targeting
        #   options that belong to sub type `CARRIER_AND_ISP_TYPE_CARRIER`: `
        #   carrierAndIspDetails.type="CARRIER_AND_ISP_TYPE_CARRIER"` The length of this
        #   field should be no more than 500 characters. Reference our [filter `LIST`
        #   requests](/display-video/api/guides/how-tos/filters) guide for more
        #   information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `targetingOptionId` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. Example: `
        #   targetingOptionId desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        #   specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListTargetingOptions` method. If not specified, the first page of results will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_targeting_type_targeting_options(targeting_type, advertiser_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/targetingTypes/{+targetingType}/targetingOptions', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListTargetingOptionsResponse
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for targeting options of a given type based on the given search terms.
        # @param [String] targeting_type
        #   Required. The type of targeting options to retrieve. Accepted values are: * `
        #   TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_POI` * `
        #   TARGETING_TYPE_BUSINESS_CHAIN`
        # @param [Google::Apis::DisplayvideoV2::SearchTargetingOptionsRequest] search_targeting_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::SearchTargetingOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::SearchTargetingOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_targeting_options(targeting_type, search_targeting_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/targetingTypes/{+targetingType}/targetingOptions:search', options)
          command.request_representation = Google::Apis::DisplayvideoV2::SearchTargetingOptionsRequest::Representation
          command.request_object = search_targeting_options_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::SearchTargetingOptionsResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::SearchTargetingOptionsResponse
          command.params['targetingType'] = targeting_type unless targeting_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk edits user roles for a user. The operation will delete the assigned user
        # roles provided in BulkEditAssignedUserRolesRequest.deletedAssignedUserRoles
        # and then assign the user roles provided in BulkEditAssignedUserRolesRequest.
        # createdAssignedUserRoles. This method has unique authentication requirements.
        # Read the prerequisites in our [Managing Users guide](/display-video/api/guides/
        # users/overview#prerequisites) before using this method. The "Try this method"
        # feature does not work for this method.
        # @param [Fixnum] user_id
        #   Required. The ID of the user to which the assigned user roles belong.
        # @param [Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesRequest] bulk_edit_assigned_user_roles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_edit_assigned_user_roles(user_id, bulk_edit_assigned_user_roles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/users/{+userId}:bulkEditAssignedUserRoles', options)
          command.request_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesRequest::Representation
          command.request_object = bulk_edit_assigned_user_roles_request_object
          command.response_representation = Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::BulkEditAssignedUserRolesResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new user. Returns the newly created user if successful. This method
        # has unique authentication requirements. Read the prerequisites in our [
        # Managing Users guide](/display-video/api/guides/users/overview#prerequisites)
        # before using this method. The "Try this method" feature does not work for this
        # method.
        # @param [Google::Apis::DisplayvideoV2::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user(user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/users', options)
          command.request_representation = Google::Apis::DisplayvideoV2::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::DisplayvideoV2::User::Representation
          command.response_class = Google::Apis::DisplayvideoV2::User
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user. This method has unique authentication requirements. Read the
        # prerequisites in our [Managing Users guide](/display-video/api/guides/users/
        # overview#prerequisites) before using this method. The "Try this method"
        # feature does not work for this method.
        # @param [Fixnum] user_id
        #   Required. The ID of the user to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/users/{+userId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::Empty::Representation
          command.response_class = Google::Apis::DisplayvideoV2::Empty
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user. This method has unique authentication requirements. Read the
        # prerequisites in our [Managing Users guide](/display-video/api/guides/users/
        # overview#prerequisites) before using this method. The "Try this method"
        # feature does not work for this method.
        # @param [Fixnum] user_id
        #   Required. The ID of the user to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/users/{+userId}', options)
          command.response_representation = Google::Apis::DisplayvideoV2::User::Representation
          command.response_class = Google::Apis::DisplayvideoV2::User
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists users that are accessible to the current user. If two users have user
        # roles on the same partner or advertiser, they can access each other. This
        # method has unique authentication requirements. Read the prerequisites in our [
        # Managing Users guide](/display-video/api/guides/users/overview#prerequisites)
        # before using this method. The "Try this method" feature does not work for this
        # method.
        # @param [String] filter
        #   Allows filtering by user fields. Supported syntax: * Filter expressions are
        #   made up of one or more restrictions. * Restrictions can be combined by the
        #   logical operator `AND`. * A restriction has the form of ``field` `operator` `
        #   value``. * The `displayName` and `email` fields must use the `HAS (:)`
        #   operator. * The `lastLoginTime` field must use either the `LESS THAN OR EQUAL
        #   TO (<=)` or `GREATER THAN OR EQUAL TO (>=)` operator. * All other fields must
        #   use the `EQUALS (=)` operator. Supported fields: * `assignedUserRole.
        #   advertiserId` * `assignedUserRole.entityType`: This is synthetic field of `
        #   AssignedUserRole` used for filtering. Identifies the type of entity to which
        #   the user role is assigned. Valid values are `Partner` and `Advertiser`. * `
        #   assignedUserRole.parentPartnerId`: This is a synthetic field of `
        #   AssignedUserRole` used for filtering. Identifies the parent partner of the
        #   entity to which the user role is assigned. * `assignedUserRole.partnerId` * `
        #   assignedUserRole.userRole` * `displayName` * `email` * `lastLoginTime` (input
        #   in ISO 8601 format, or `YYYY-MM-DDTHH:MM:SSZ`) Examples: * The user with `
        #   displayName` containing "foo": `displayName:"foo"` * The user with `email`
        #   containing "bar": `email:"bar"` * All users with standard user roles: `
        #   assignedUserRole.userRole="STANDARD"` * All users with user roles for partner
        #   123: `assignedUserRole.partnerId="123"` * All users with user roles for
        #   advertiser 123: `assignedUserRole.advertiserId="123"` * All users with partner
        #   level user roles: `entityType="PARTNER"` * All users with user roles for
        #   partner 123 and advertisers under partner 123: `parentPartnerId="123"` * All
        #   users that last logged in on or after 2023-01-01T00:00:00Z (format of ISO 8601)
        #   : `lastLoginTime>="2023-01-01T00:00:00Z"` The length of this field should be
        #   no more than 500 characters. Reference our [filter `LIST` requests](/display-
        #   video/api/guides/how-tos/filters) guide for more information.
        # @param [String] order_by
        #   Field by which to sort the list. Acceptable values are: * `displayName` (
        #   default) The default sorting order is ascending. To specify descending order
        #   for a field, a suffix "desc" should be added to the field name. For example, `
        #   displayName desc`.
        # @param [Fixnum] page_size
        #   Requested page size. Must be between `1` and `200`. If unspecified will
        #   default to `100`.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of next_page_token returned from the previous call to `
        #   ListUsers` method. If not specified, the first page of results will be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/users', options)
          command.response_representation = Google::Apis::DisplayvideoV2::ListUsersResponse::Representation
          command.response_class = Google::Apis::DisplayvideoV2::ListUsersResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing user. Returns the updated user if successful. This method
        # has unique authentication requirements. Read the prerequisites in our [
        # Managing Users guide](/display-video/api/guides/users/overview#prerequisites)
        # before using this method. The "Try this method" feature does not work for this
        # method.
        # @param [Fixnum] user_id
        #   Output only. The unique ID of the user. Assigned by the system.
        # @param [Google::Apis::DisplayvideoV2::User] user_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user(user_id, user_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/users/{+userId}', options)
          command.request_representation = Google::Apis::DisplayvideoV2::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::DisplayvideoV2::User::Representation
          command.response_class = Google::Apis::DisplayvideoV2::User
          command.params['userId'] = user_id unless user_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
