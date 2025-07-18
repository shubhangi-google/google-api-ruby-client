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
    module RetailV2beta
      # Vertex AI Search for commerce API
      #
      # Vertex AI Search for commerce API is made up of Retail Search, Browse and
      #  Recommendations. These discovery AI solutions help you implement personalized
      #  search, browse and recommendations, based on machine learning models, across
      #  your websites and mobile applications.
      #
      # @example
      #    require 'google/apis/retail_v2beta'
      #
      #    Retail = Google::Apis::RetailV2beta # Alias the module
      #    service = Retail::CloudRetailService.new
      #
      # @see https://cloud.google.com/recommendations
      class CloudRetailService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://retail.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-retail_v2beta',
                client_version: Google::Apis::RetailV2beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Get the AlertConfig of the requested project.
        # @param [String] name
        #   Required. Full AlertConfig resource name. Format: projects/`project_number`/
        #   alertConfig
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_alert_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the alert config of the requested project.
        # @param [String] name
        #   Required. Immutable. The name of the AlertConfig singleton resource. Format:
        #   projects/*/alertConfig
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig] google_cloud_retail_v2beta_alert_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided AlertConfig to update. If not set, all
        #   supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_alert_config(name, google_cloud_retail_v2beta_alert_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig::Representation
          command.request_object = google_cloud_retail_v2beta_alert_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified prefix with keyword suggestions. This feature is only
        # available for users who have Retail Search enabled. Enable Retail Search on
        # Cloud Console before using this feature.
        # @param [String] catalog
        #   Required. Catalog for which the completion is performed. Full resource name of
        #   catalog, such as `projects/*/locations/global/catalogs/default_catalog`.
        # @param [String] dataset
        #   Determines which dataset to use for fetching completion. "user-data" will use
        #   the dataset imported through CompletionService.ImportCompletionData. `cloud-
        #   retail` will use the dataset generated by Cloud Retail based on user events.
        #   If left empty, completions will be fetched from the `user-data` dataset.
        #   Current supported values: * user-data * cloud-retail: This option requires
        #   enabling auto-learning function first. See [guidelines](https://cloud.google.
        #   com/retail/docs/completion-overview#generated-completion-dataset).
        # @param [String] device_type
        #   The device type context for completion suggestions. We recommend that you
        #   leave this field empty. It can apply different suggestions on different device
        #   types, e.g. `DESKTOP`, `MOBILE`. If it is empty, the suggestions are across
        #   all device types. Supported formats: * `UNKNOWN_DEVICE_TYPE` * `DESKTOP` * `
        #   MOBILE` * A customized string starts with `OTHER_`, e.g. `OTHER_IPHONE`.
        # @param [Boolean] enable_attribute_suggestions
        #   If true, attribute suggestions are enabled and provided in the response. This
        #   field is only available for the `cloud-retail` dataset.
        # @param [String] entity
        #   The entity for customers who run multiple entities, domains, sites, or regions,
        #   for example, `Google US`, `Google Ads`, `Waymo`, `google.com`, `youtube.com`,
        #   etc. If this is set, it must be an exact match with UserEvent.entity to get
        #   per-entity autocomplete results. This field will be applied to `
        #   completion_results` only. It has no effect on the `attribute_results`. Also,
        #   this entity should be limited to 256 characters, if too long, it will be
        #   truncated to 256 characters in both generation and serving time, and may lead
        #   to mis-match. To ensure it works, please set the entity with string within 256
        #   characters.
        # @param [Array<String>, String] language_codes
        #   Note that this field applies for `user-data` dataset only. For requests with `
        #   cloud-retail` dataset, setting this field has no effect. The language filters
        #   applied to the output suggestions. If set, it should contain the language of
        #   the query. If not set, suggestions are returned without considering language
        #   restrictions. This is the BCP-47 language code, such as "en-US" or "sr-Latn".
        #   For more information, see [Tags for Identifying Languages](https://tools.ietf.
        #   org/html/bcp47). The maximum number of language codes is 3.
        # @param [Fixnum] max_suggestions
        #   Completion max suggestions. If left unset or set to 0, then will fallback to
        #   the configured value CompletionConfig.max_suggestions. The maximum allowed max
        #   suggestions is 20. If it is set higher, it will be capped by 20.
        # @param [String] query
        #   Required. The query used to generate suggestions. The maximum number of
        #   allowed characters is 255.
        # @param [String] visitor_id
        #   Recommended field. A unique identifier for tracking visitors. For example,
        #   this could be implemented with an HTTP cookie, which should be able to
        #   uniquely identify a visitor on a single device. This unique identifier should
        #   not change if the visitor logs in or out of the website. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_catalog_query(catalog, dataset: nil, device_type: nil, enable_attribute_suggestions: nil, entity: nil, language_codes: nil, max_suggestions: nil, query: nil, visitor_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+catalog}:completeQuery', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponse
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['dataset'] = dataset unless dataset.nil?
          command.query['deviceType'] = device_type unless device_type.nil?
          command.query['enableAttributeSuggestions'] = enable_attribute_suggestions unless enable_attribute_suggestions.nil?
          command.query['entity'] = entity unless entity.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['maxSuggestions'] = max_suggestions unless max_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['visitorId'] = visitor_id unless visitor_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports analytics metrics. `Operation.response` is of type `
        # ExportAnalyticsMetricsResponse`. `Operation.metadata` is of type `
        # ExportMetadata`.
        # @param [String] catalog
        #   Required. Full resource name of the parent catalog. Expected format: `projects/
        #   */locations/*/catalogs/*`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportAnalyticsMetricsRequest] google_cloud_retail_v2beta_export_analytics_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_catalog_analytics_metrics(catalog, google_cloud_retail_v2beta_export_analytics_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+catalog}:exportAnalyticsMetrics', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportAnalyticsMetricsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_export_analytics_metrics_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an AttributesConfig.
        # @param [String] name
        #   Required. Full AttributesConfig resource name. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/attributesConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_attributes_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a CompletionConfig.
        # @param [String] name
        #   Required. Full CompletionConfig resource name. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/completionConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_completion_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the conversational search customization config for a given catalog.
        # @param [String] name
        #   Required. Resource name of the parent catalog. Format: projects/`project`/
        #   locations/`location`/catalogs/`catalog`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_conversational_search_customization_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}/conversationalSearchCustomizationConfig', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get which branch is currently default branch set by CatalogService.
        # SetDefaultBranch method under a specified parent catalog.
        # @param [String] catalog
        #   The parent catalog resource name, such as `projects/*/locations/global/
        #   catalogs/default_catalog`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGetDefaultBranchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGetDefaultBranchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_default_branch(catalog, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+catalog}:getDefaultBranch', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGetDefaultBranchResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGetDefaultBranchResponse
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manages overal generative question feature state -- enables toggling feature
        # on and off.
        # @param [String] catalog
        #   Required. Resource name of the parent catalog. Format: projects/`project`/
        #   locations/`location`/catalogs/`catalog`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_generative_question_feature(catalog, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+catalog}/generativeQuestionFeature', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Catalogs associated with the project.
        # @param [String] parent
        #   Required. The account resource name with an associated location. If the caller
        #   does not have permission to list Catalogs under this location, regardless of
        #   whether or not this location exists, a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Catalogs to return. If unspecified, defaults to 50. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListCatalogsResponse.next_page_token, received from a previous
        #   CatalogService.ListCatalogs call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to CatalogService.ListCatalogs
        #   must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListCatalogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListCatalogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalogs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/catalogs', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListCatalogsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListCatalogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Catalogs.
        # @param [String] name
        #   Required. Immutable. The fully qualified resource name of the catalog.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog] google_cloud_retail_v2beta_catalog_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Catalog to update. If an unsupported or
        #   unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog(name, google_cloud_retail_v2beta_catalog_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog::Representation
          command.request_object = google_cloud_retail_v2beta_catalog_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set a specified branch id as default branch. API methods such as SearchService.
        # Search, ProductService.GetProduct, ProductService.ListProducts will treat
        # requests using "default_branch" to the actual branch id set as default. For
        # example, if `projects/*/locations/*/catalogs/*/branches/1` is set as default,
        # setting SearchRequest.branch to `projects/*/locations/*/catalogs/*/branches/
        # default_branch` is equivalent to setting SearchRequest.branch to `projects/*/
        # locations/*/catalogs/*/branches/1`. Using multiple branches can be useful when
        # developers would like to have a staging branch to test and verify for future
        # usage. When it becomes ready, developers switch on the staging branch using
        # this API while keeping using `projects/*/locations/*/catalogs/*/branches/
        # default_branch` as SearchRequest.branch to route the traffic to this staging
        # branch. CAUTION: If you have live predict/search traffic, switching the
        # default branch could potentially cause outages if the ID space of the new
        # branch is very different from the old one. More specifically: *
        # PredictionService will only return product IDs from branch `newBranch`. *
        # SearchService will only return product IDs from branch `newBranch` (if branch
        # is not explicitly set). * UserEventService will only join events with products
        # from branch `newBranch`.
        # @param [String] catalog
        #   Full resource name of the catalog, such as `projects/*/locations/global/
        #   catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSetDefaultBranchRequest] google_cloud_retail_v2beta_set_default_branch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_catalog_default_branch(catalog, google_cloud_retail_v2beta_set_default_branch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+catalog}:setDefaultBranch', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSetDefaultBranchRequest::Representation
          command.request_object = google_cloud_retail_v2beta_set_default_branch_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleProtobufEmpty
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the AttributesConfig. The catalog attributes in the request will be
        # updated in the catalog, or inserted if they do not exist. Existing catalog
        # attributes not included in the request will remain unchanged. Attributes that
        # are assigned to products, but do not exist at the catalog level, are always
        # included in the response. The product attribute is assigned default values for
        # missing catalog attribute fields, e.g., searchable and dynamic facetable
        # options.
        # @param [String] name
        #   Required. Immutable. The fully qualified resource name of the attribute config.
        #   Format: `projects/*/locations/*/catalogs/*/attributesConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] google_cloud_retail_v2beta_attributes_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided AttributesConfig to update. The
        #   following is the only supported field: * AttributesConfig.catalog_attributes
        #   If not set, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_catalog_attributes_config(name, google_cloud_retail_v2beta_attributes_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.request_object = google_cloud_retail_v2beta_attributes_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the CompletionConfigs.
        # @param [String] name
        #   Required. Immutable. Fully qualified name `projects/*/locations/*/catalogs/*/
        #   completionConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig] google_cloud_retail_v2beta_completion_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided CompletionConfig to update. The
        #   following are the only supported fields: * CompletionConfig.matching_order *
        #   CompletionConfig.max_suggestions * CompletionConfig.min_prefix_length *
        #   CompletionConfig.auto_learning If not set, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_catalog_completion_config(name, google_cloud_retail_v2beta_completion_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig::Representation
          command.request_object = google_cloud_retail_v2beta_completion_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the conversational search customization config for a given catalog.
        # @param [String] catalog
        #   Required. Resource name of the catalog. Format: projects/`project`/locations/`
        #   location`/catalogs/`catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig] google_cloud_retail_v2beta_conversational_search_customization_config_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided
        #   ConversationalSearchCustomizationConfig to update. If not set or empty, all
        #   supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_catalog_conversational_search_customization_config(catalog, google_cloud_retail_v2beta_conversational_search_customization_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+catalog}/conversationalSearchCustomizationConfig', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig::Representation
          command.request_object = google_cloud_retail_v2beta_conversational_search_customization_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConversationalSearchCustomizationConfig
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows management of individual questions.
        # @param [String] catalog
        #   Required. Resource name of the catalog. Format: projects/`project`/locations/`
        #   location`/catalogs/`catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig] google_cloud_retail_v2beta_generative_question_config_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided GenerativeQuestionConfig to
        #   update. The following are NOT supported: * GenerativeQuestionConfig.frequency
        #   If not set or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_catalog_generative_question(catalog, google_cloud_retail_v2beta_generative_question_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+catalog}/generativeQuestion', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig::Representation
          command.request_object = google_cloud_retail_v2beta_generative_question_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manages overal generative question feature state -- enables toggling feature
        # on and off.
        # @param [String] catalog
        #   Required. Resource name of the affected catalog. Format: projects/`project`/
        #   locations/`location`/catalogs/`catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig] google_cloud_retail_v2beta_generative_questions_feature_config_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided
        #   GenerativeQuestionsFeatureConfig to update. If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_catalog_generative_question_feature(catalog, google_cloud_retail_v2beta_generative_questions_feature_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+catalog}/generativeQuestionFeature', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig::Representation
          command.request_object = google_cloud_retail_v2beta_generative_questions_feature_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig
          command.params['catalog'] = catalog unless catalog.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds the specified CatalogAttribute to the AttributesConfig. If the
        # CatalogAttribute to add already exists, an ALREADY_EXISTS error is returned.
        # @param [String] attributes_config
        #   Required. Full AttributesConfig resource name. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/attributesConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddCatalogAttributeRequest] google_cloud_retail_v2beta_add_catalog_attribute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_catalog_attributes_config_catalog_attribute(attributes_config, google_cloud_retail_v2beta_add_catalog_attribute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+attributesConfig}:addCatalogAttribute', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddCatalogAttributeRequest::Representation
          command.request_object = google_cloud_retail_v2beta_add_catalog_attribute_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig
          command.params['attributesConfig'] = attributes_config unless attributes_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes all specified CatalogAttributes from the AttributesConfig.
        # @param [String] attributes_config
        #   Required. The attributes config resource shared by all catalog attributes
        #   being deleted. Format: `projects/`project_number`/locations/`location_id`/
        #   catalogs/`catalog_id`/attributesConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest] google_cloud_retail_v2beta_batch_remove_catalog_attributes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_catalog_attributes_config_remove_catalog_attributes(attributes_config, google_cloud_retail_v2beta_batch_remove_catalog_attributes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+attributesConfig}:batchRemoveCatalogAttributes', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest::Representation
          command.request_object = google_cloud_retail_v2beta_batch_remove_catalog_attributes_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse
          command.params['attributesConfig'] = attributes_config unless attributes_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified CatalogAttribute from the AttributesConfig. If the
        # CatalogAttribute to remove does not exist, a NOT_FOUND error is returned.
        # @param [String] attributes_config
        #   Required. Full AttributesConfig resource name. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/attributesConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveCatalogAttributeRequest] google_cloud_retail_v2beta_remove_catalog_attribute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_catalog_attributes_config_catalog_attribute(attributes_config, google_cloud_retail_v2beta_remove_catalog_attribute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+attributesConfig}:removeCatalogAttribute', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveCatalogAttributeRequest::Representation
          command.request_object = google_cloud_retail_v2beta_remove_catalog_attribute_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig
          command.params['attributesConfig'] = attributes_config unless attributes_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces the specified CatalogAttribute in the AttributesConfig by updating
        # the catalog attribute with the same CatalogAttribute.key. If the
        # CatalogAttribute to replace does not exist, a NOT_FOUND error is returned.
        # @param [String] attributes_config
        #   Required. Full AttributesConfig resource name. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/attributesConfig`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaReplaceCatalogAttributeRequest] google_cloud_retail_v2beta_replace_catalog_attribute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_project_location_catalog_attributes_config_catalog_attribute(attributes_config, google_cloud_retail_v2beta_replace_catalog_attribute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+attributesConfig}:replaceCatalogAttribute', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaReplaceCatalogAttributeRequest::Representation
          command.request_object = google_cloud_retail_v2beta_replace_catalog_attribute_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAttributesConfig
          command.params['attributesConfig'] = attributes_config unless attributes_config.nil?
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # We recommend that you use the ProductService.AddLocalInventories method
        # instead of the ProductService.AddFulfillmentPlaces method. ProductService.
        # AddLocalInventories achieves the same results but provides more fine-grained
        # control over ingesting local inventory data. Incrementally adds place IDs to
        # Product.fulfillment_info.place_ids. This process is asynchronous and does not
        # require the Product to exist before updating fulfillment information. If the
        # request is valid, the update will be enqueued and processed downstream. As a
        # consequence, when a response is returned, the added place IDs are not
        # immediately manifested in the Product queried by ProductService.GetProduct or
        # ProductService.ListProducts. The returned Operations will be obsolete after 1
        # day, and GetOperation API will return NOT_FOUND afterwards. If conflicting
        # updates are issued, the Operations associated with the stale updates will not
        # be marked as done until being obsolete.
        # @param [String] product
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddFulfillmentPlacesRequest] google_cloud_retail_v2beta_add_fulfillment_places_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_catalog_branch_product_fulfillment_places(product, google_cloud_retail_v2beta_add_fulfillment_places_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+product}:addFulfillmentPlaces', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddFulfillmentPlacesRequest::Representation
          command.request_object = google_cloud_retail_v2beta_add_fulfillment_places_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['product'] = product unless product.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates local inventory information for a Product at a list of places, while
        # respecting the last update timestamps of each inventory field. This process is
        # asynchronous and does not require the Product to exist before updating
        # inventory information. If the request is valid, the update will be enqueued
        # and processed downstream. As a consequence, when a response is returned,
        # updates are not immediately manifested in the Product queried by
        # ProductService.GetProduct or ProductService.ListProducts. Local inventory
        # information can only be modified using this method. ProductService.
        # CreateProduct and ProductService.UpdateProduct has no effect on local
        # inventories. The returned Operations will be obsolete after 1 day, and
        # GetOperation API will return NOT_FOUND afterwards. If conflicting updates are
        # issued, the Operations associated with the stale updates will not be marked as
        # done until being obsolete.
        # @param [String] product
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddLocalInventoriesRequest] google_cloud_retail_v2beta_add_local_inventories_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_catalog_branch_product_local_inventories(product, google_cloud_retail_v2beta_add_local_inventories_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+product}:addLocalInventories', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddLocalInventoriesRequest::Representation
          command.request_object = google_cloud_retail_v2beta_add_local_inventories_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['product'] = product unless product.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Product.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/default_branch`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct] google_cloud_retail_v2beta_product_object
        # @param [String] product_id
        #   Required. The ID to use for the Product, which will become the final component
        #   of the Product.name. If the caller does not have permission to create the
        #   Product, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. This field must be unique among all Products with the same parent.
        #   Otherwise, an ALREADY_EXISTS error is returned. This field must be a UTF-8
        #   encoded string with a length limit of 128 characters. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_branch_product(parent, google_cloud_retail_v2beta_product_object = nil, product_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/products', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
          command.request_object = google_cloud_retail_v2beta_product_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct
          command.params['parent'] = parent unless parent.nil?
          command.query['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Product.
        # @param [String] name
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to delete the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   Product to delete does not exist, a NOT_FOUND error is returned. The Product
        #   to delete can neither be a Product.Type.COLLECTION Product member nor a
        #   Product.Type.PRIMARY Product with more than one variants. Otherwise, an
        #   INVALID_ARGUMENT error is returned. All inventory information for the named
        #   Product will be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_branch_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports multiple Products.
        # @param [String] parent
        #   Required. Resource name of a Branch, and `default_branch` for branch_id
        #   component is supported. For example `projects/1234/locations/global/catalogs/
        #   default_catalog/branches/default_branch`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportProductsRequest] google_cloud_retail_v2beta_export_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_catalog_branch_product(parent, google_cloud_retail_v2beta_export_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/products:export', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportProductsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_export_products_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Product.
        # @param [String] name
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested Product does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_branch_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Products. Request processing may be synchronous. Non-
        # existing items are created. Note that it is possible for a subset of the
        # Products to be successfully updated.
        # @param [String] parent
        #   Required. `projects/1234/locations/global/catalogs/default_catalog/branches/
        #   default_branch` If no updateMask is specified, requires products.create
        #   permission. If updateMask is specified, requires products.update permission.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportProductsRequest] google_cloud_retail_v2beta_import_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_branch_product(parent, google_cloud_retail_v2beta_import_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/products:import', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportProductsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_import_products_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Products.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/0`. Use `default_branch` as the
        #   branch ID, to list products under the default branch. If the caller does not
        #   have permission to list Products under this branch, regardless of whether or
        #   not this branch exists, a PERMISSION_DENIED error is returned.
        # @param [String] filter
        #   A filter to apply on the list results. Supported features: * List all the
        #   products under the parent branch if filter is unset. * List Product.Type.
        #   VARIANT Products sharing the same Product.Type.PRIMARY Product. For example: `
        #   primary_product_id = "some_product_id"` * List Products bundled in a Product.
        #   Type.COLLECTION Product. For example: `collection_product_id = "
        #   some_product_id"` * List Products with a partibular type. For example: `type =
        #   "PRIMARY"` `type = "VARIANT"` `type = "COLLECTION"` If the field is
        #   unrecognizable, an INVALID_ARGUMENT error is returned. If the specified
        #   Product.Type.PRIMARY Product or Product.Type.COLLECTION Product does not exist,
        #   a NOT_FOUND error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Products to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token ListProductsResponse.next_page_token, received from a previous
        #   ProductService.ListProducts call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to ProductService.ListProducts
        #   must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] read_mask
        #   The fields of Product to return in the responses. If not set or empty, the
        #   following fields are returned: * Product.name * Product.id * Product.title *
        #   Product.uri * Product.images * Product.price_info * Product.brands If "*" is
        #   provided, all fields are returned. Product.name is always returned no matter
        #   what mask is set. If an unsupported or unknown field is provided, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_branch_products(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/products', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListProductsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListProductsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Product.
        # @param [String] name
        #   Immutable. Full resource name of the product, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct] google_cloud_retail_v2beta_product_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Product is not found, a new Product will be created.
        #   In this situation, `update_mask` is ignored.
        # @param [String] update_mask
        #   Indicates which fields in the provided Product to update. The immutable and
        #   output only fields are NOT supported. If not set, all supported fields (the
        #   fields that are neither immutable nor output only) are updated. If an
        #   unsupported or unknown field is provided, an INVALID_ARGUMENT error is
        #   returned. The attribute key can be updated by setting the mask path as "
        #   attributes.$`key_name`". If a key name is present in the mask but not in the
        #   patching product from the request, this key will be deleted after the update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_branch_product(name, google_cloud_retail_v2beta_product_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
          command.request_object = google_cloud_retail_v2beta_product_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Products under a branch. This process is
        # asynchronous. If the request is valid, the removal will be enqueued and
        # processed offline. Depending on the number of Products, this operation could
        # take hours to complete. Before the operation completes, some Products may
        # still be returned by ProductService.GetProduct or ProductService.ListProducts.
        # Depending on the number of Products, this operation could take hours to
        # complete. To get a sample of Products that would be deleted, set
        # PurgeProductsRequest.force to false.
        # @param [String] parent
        #   Required. The resource name of the branch under which the products are created.
        #   The format is `projects/$`projectId`/locations/global/catalogs/$`catalogId`/
        #   branches/$`branchId``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurgeProductsRequest] google_cloud_retail_v2beta_purge_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_catalog_branch_product(parent, google_cloud_retail_v2beta_purge_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/products:purge', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurgeProductsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_purge_products_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # We recommend that you use the ProductService.RemoveLocalInventories method
        # instead of the ProductService.RemoveFulfillmentPlaces method. ProductService.
        # RemoveLocalInventories achieves the same results but provides more fine-
        # grained control over ingesting local inventory data. Incrementally removes
        # place IDs from a Product.fulfillment_info.place_ids. This process is
        # asynchronous and does not require the Product to exist before updating
        # fulfillment information. If the request is valid, the update will be enqueued
        # and processed downstream. As a consequence, when a response is returned, the
        # removed place IDs are not immediately manifested in the Product queried by
        # ProductService.GetProduct or ProductService.ListProducts. The returned
        # Operations will be obsolete after 1 day, and GetOperation API will return
        # NOT_FOUND afterwards. If conflicting updates are issued, the Operations
        # associated with the stale updates will not be marked as done until being
        # obsolete.
        # @param [String] product
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest] google_cloud_retail_v2beta_remove_fulfillment_places_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_catalog_branch_product_fulfillment_places(product, google_cloud_retail_v2beta_remove_fulfillment_places_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+product}:removeFulfillmentPlaces', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest::Representation
          command.request_object = google_cloud_retail_v2beta_remove_fulfillment_places_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['product'] = product unless product.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove local inventory information for a Product at a list of places at a
        # removal timestamp. This process is asynchronous. If the request is valid, the
        # removal will be enqueued and processed downstream. As a consequence, when a
        # response is returned, removals are not immediately manifested in the Product
        # queried by ProductService.GetProduct or ProductService.ListProducts. Local
        # inventory information can only be removed using this method. ProductService.
        # CreateProduct and ProductService.UpdateProduct has no effect on local
        # inventories. The returned Operations will be obsolete after 1 day, and
        # GetOperation API will return NOT_FOUND afterwards. If conflicting updates are
        # issued, the Operations associated with the stale updates will not be marked as
        # done until being obsolete.
        # @param [String] product
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveLocalInventoriesRequest] google_cloud_retail_v2beta_remove_local_inventories_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_catalog_branch_product_local_inventories(product, google_cloud_retail_v2beta_remove_local_inventories_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+product}:removeLocalInventories', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveLocalInventoriesRequest::Representation
          command.request_object = google_cloud_retail_v2beta_remove_local_inventories_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['product'] = product unless product.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates inventory information for a Product while respecting the last update
        # timestamps of each inventory field. This process is asynchronous and does not
        # require the Product to exist before updating fulfillment information. If the
        # request is valid, the update is enqueued and processed downstream. As a
        # consequence, when a response is returned, updates are not immediately
        # manifested in the Product queried by ProductService.GetProduct or
        # ProductService.ListProducts. When inventory is updated with ProductService.
        # CreateProduct and ProductService.UpdateProduct, the specified inventory field
        # value(s) overwrite any existing value(s) while ignoring the last update time
        # for this field. Furthermore, the last update times for the specified inventory
        # fields are overwritten by the times of the ProductService.CreateProduct or
        # ProductService.UpdateProduct request. If no inventory fields are set in
        # CreateProductRequest.product, then any pre-existing inventory information for
        # this product is used. If no inventory fields are set in SetInventoryRequest.
        # set_mask, then any existing inventory information is preserved. Pre-existing
        # inventory information can only be updated with ProductService.SetInventory,
        # ProductService.AddFulfillmentPlaces, and ProductService.
        # RemoveFulfillmentPlaces. The returned Operations is obsolete after one day,
        # and the GetOperation API returns `NOT_FOUND` afterwards. If conflicting
        # updates are issued, the Operations associated with the stale updates are not
        # marked as done until they are obsolete.
        # @param [String] name
        #   Immutable. Full resource name of the product, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSetInventoryRequest] google_cloud_retail_v2beta_set_inventory_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_catalog_branch_product_inventory(name, google_cloud_retail_v2beta_set_inventory_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:setInventory', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSetInventoryRequest::Representation
          command.request_object = google_cloud_retail_v2beta_set_inventory_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of processed completion dataset. Request processing is
        # asynchronous. Partial updating is not supported. The operation is successfully
        # finished only after the imported suggestions are indexed successfully and
        # ready for serving. The process takes hours. This feature is only available for
        # users who have Retail Search enabled. Enable Retail Search on Cloud Console
        # before using this feature.
        # @param [String] parent
        #   Required. The catalog which the suggestions dataset belongs to. Format: `
        #   projects/1234/locations/global/catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportCompletionDataRequest] google_cloud_retail_v2beta_import_completion_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_completion_datum(parent, google_cloud_retail_v2beta_import_completion_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/completionData:import', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportCompletionDataRequest::Representation
          command.request_object = google_cloud_retail_v2beta_import_completion_data_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. If the Control to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent catalog. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl] google_cloud_retail_v2beta_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value should be 4-63 characters, and
        #   valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_control(parent, google_cloud_retail_v2beta_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/controls', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
          command.request_object = google_cloud_retail_v2beta_control_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/controls/`
        #   control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/controls/`
        #   control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent Catalog.
        # @param [String] parent
        #   Required. The catalog resource name. Format: `projects/`project_number`/
        #   locations/`location_id`/catalogs/`catalog_id``
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. * List controls
        #   that are used in a single ServingConfig: 'serving_config = "
        #   boosted_home_page_cvr"'
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/controls', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListControlsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control cannot be set to a different oneof field, if so an
        # INVALID_ARGUMENT is returned. If the Control to update does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/
        #   controls/*`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl] google_cloud_retail_v2beta_control_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Control to update. The following are
        #   NOT supported: * Control.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_control(name, google_cloud_retail_v2beta_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
          command.request_object = google_cloud_retail_v2beta_control_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows management of multiple questions.
        # @param [String] parent
        #   Optional. Resource name of the parent catalog. Format: projects/`project`/
        #   locations/`location`/catalogs/`catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest] google_cloud_retail_v2beta_batch_update_generative_question_configs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_catalog_generative_question_update(parent, google_cloud_retail_v2beta_batch_update_generative_question_configs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/generativeQuestion:batchUpdate', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_batch_update_generative_question_configs_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all questions for a given catalog.
        # @param [String] parent
        #   Required. Resource name of the parent catalog. Format: projects/`project`/
        #   locations/`location`/catalogs/`catalog`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_generative_questions(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/generativeQuestions', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new model.
        # @param [String] parent
        #   Required. The parent resource under which to create the model. Format: `
        #   projects/`project_number`/locations/`location_id`/catalogs/`catalog_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] google_cloud_retail_v2beta_model_object
        # @param [Boolean] dry_run
        #   Optional. Whether to run a dry run to validate the request (without actually
        #   creating the model).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_model(parent, google_cloud_retail_v2beta_model_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/models', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.request_object = google_cloud_retail_v2beta_model_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing model.
        # @param [String] name
        #   Required. The resource name of the Model to delete. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        #   `
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a model.
        # @param [String] name
        #   Required. The resource name of the Model to get. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog`/models/`model_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the models linked to this event store.
        # @param [String] parent
        #   Required. The parent for which to list models. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListModels` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_models(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/models', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListModelsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update of model metadata. Only fields that currently can be updated are: `
        # filtering_option` and `periodic_tuning_state`. If other values are provided,
        # this API method ignores them.
        # @param [String] name
        #   Required. The fully qualified resource name of the model. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        #   ` catalog_id has char limit of 50. recommendation_model_id has char limit of
        #   40.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] google_cloud_retail_v2beta_model_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided 'model' to update. If not set,
        #   by default updates all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_model(name, google_cloud_retail_v2beta_model_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.request_object = google_cloud_retail_v2beta_model_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses the training of an existing model.
        # @param [String] name
        #   Required. The name of the model to pause. Format: `projects/`project_number`/
        #   locations/`location_id`/catalogs/`catalog_id`/models/`model_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPauseModelRequest] google_cloud_retail_v2beta_pause_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_project_location_catalog_model(name, google_cloud_retail_v2beta_pause_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:pause', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPauseModelRequest::Representation
          command.request_object = google_cloud_retail_v2beta_pause_model_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes the training of an existing model.
        # @param [String] name
        #   Required. The name of the model to resume. Format: `projects/`project_number`/
        #   locations/`location_id`/catalogs/`catalog_id`/models/`model_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaResumeModelRequest] google_cloud_retail_v2beta_resume_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_project_location_catalog_model(name, google_cloud_retail_v2beta_resume_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:resume', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaResumeModelRequest::Representation
          command.request_object = google_cloud_retail_v2beta_resume_model_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tunes an existing model.
        # @param [String] name
        #   Required. The resource name of the model to tune. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        #   `
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaTuneModelRequest] google_cloud_retail_v2beta_tune_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def tune_project_location_catalog_model(name, google_cloud_retail_v2beta_tune_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:tune', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaTuneModelRequest::Representation
          command.request_object = google_cloud_retail_v2beta_tune_model_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}/operations', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation prediction.
        # @param [String] placement
        #   Required. Full resource name of the format: ``placement=projects/*/locations/
        #   global/catalogs/default_catalog/servingConfigs/*`` or ``placement=projects/*/
        #   locations/global/catalogs/default_catalog/placements/*``. We recommend using
        #   the `servingConfigs` resource. `placements` is a legacy resource. The ID of
        #   the Recommendations AI serving config or placement. Before you can request
        #   predictions from your model, you must create at least one serving config or
        #   placement for it. For more information, see [Manage serving configs] (https://
        #   cloud.google.com/retail/docs/manage-configs). The full list of available
        #   serving configs can be seen at https://console.cloud.google.com/ai/retail/
        #   catalogs/default_catalog/configs
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictRequest] google_cloud_retail_v2beta_predict_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_project_location_catalog_placement(placement, google_cloud_retail_v2beta_predict_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+placement}:predict', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictRequest::Representation
          command.request_object = google_cloud_retail_v2beta_predict_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse
          command.params['placement'] = placement unless placement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. This feature is only available for users who have Retail
        # Search enabled. Enable Retail Search on Cloud Console before using this
        # feature.
        # @param [String] placement
        #   Required. The resource name of the Retail Search serving config, such as `
        #   projects/*/locations/global/catalogs/default_catalog/servingConfigs/
        #   default_serving_config` or the name of the legacy placement resource, such as `
        #   projects/*/locations/global/catalogs/default_catalog/placements/default_search`
        #   . This field is used to identify the serving config name and the set of models
        #   that are used to make the search.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequest] google_cloud_retail_v2beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_catalog_placements(placement, google_cloud_retail_v2beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+placement}:search', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequest::Representation
          command.request_object = google_cloud_retail_v2beta_search_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse
          command.params['placement'] = placement unless placement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a Control on the specified ServingConfig. The control is added in the
        # last position of the list of controls it belongs to (e.g. if it's a facet spec
        # control it will be applied in the last position of servingConfig.facetSpecIds)
        # Returns a ALREADY_EXISTS error if the control has already been applied.
        # Returns a FAILED_PRECONDITION error if the addition could exceed maximum
        # number of control allowed for that type of control.
        # @param [String] serving_config
        #   Required. The source ServingConfig resource name . Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddControlRequest] google_cloud_retail_v2beta_add_control_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_catalog_serving_config_control(serving_config, google_cloud_retail_v2beta_add_control_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+servingConfig}:addControl', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAddControlRequest::Representation
          command.request_object = google_cloud_retail_v2beta_add_control_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ServingConfig. A maximum of 100 ServingConfigs are allowed in a
        # Catalog, otherwise a FAILED_PRECONDITION error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent. Format: `projects/`project_number`/
        #   locations/`location_id`/catalogs/`catalog_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] google_cloud_retail_v2beta_serving_config_object
        # @param [String] serving_config_id
        #   Required. The ID to use for the ServingConfig, which will become the final
        #   component of the ServingConfig's resource name. This value should be 4-63
        #   characters, and valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_serving_config(parent, google_cloud_retail_v2beta_serving_config_object = nil, serving_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/servingConfigs', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.request_object = google_cloud_retail_v2beta_serving_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['servingConfigId'] = serving_config_id unless serving_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ServingConfig. Returns a NotFound error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to delete. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/servingConfigs/`
        #   serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/servingConfigs/`
        #   serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this catalog.
        # @param [String] parent
        #   Required. The catalog resource name. Format: `projects/`project_number`/
        #   locations/`location_id`/catalogs/`catalog_id``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/
        #   servingConfig/*`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] google_cloud_retail_v2beta_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_serving_config(name, google_cloud_retail_v2beta_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.request_object = google_cloud_retail_v2beta_serving_config_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation prediction.
        # @param [String] placement
        #   Required. Full resource name of the format: ``placement=projects/*/locations/
        #   global/catalogs/default_catalog/servingConfigs/*`` or ``placement=projects/*/
        #   locations/global/catalogs/default_catalog/placements/*``. We recommend using
        #   the `servingConfigs` resource. `placements` is a legacy resource. The ID of
        #   the Recommendations AI serving config or placement. Before you can request
        #   predictions from your model, you must create at least one serving config or
        #   placement for it. For more information, see [Manage serving configs] (https://
        #   cloud.google.com/retail/docs/manage-configs). The full list of available
        #   serving configs can be seen at https://console.cloud.google.com/ai/retail/
        #   catalogs/default_catalog/configs
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictRequest] google_cloud_retail_v2beta_predict_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_project_location_catalog_serving_config(placement, google_cloud_retail_v2beta_predict_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+placement}:predict', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictRequest::Representation
          command.request_object = google_cloud_retail_v2beta_predict_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponse
          command.params['placement'] = placement unless placement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a Control on the specified ServingConfig. The control is removed from
        # the ServingConfig. Returns a NOT_FOUND error if the Control is not enabled for
        # the ServingConfig.
        # @param [String] serving_config
        #   Required. The source ServingConfig resource name . Format: `projects/`
        #   project_number`/locations/`location_id`/catalogs/`catalog_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveControlRequest] google_cloud_retail_v2beta_remove_control_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_catalog_serving_config_control(serving_config, google_cloud_retail_v2beta_remove_control_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+servingConfig}:removeControl', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRemoveControlRequest::Representation
          command.request_object = google_cloud_retail_v2beta_remove_control_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. This feature is only available for users who have Retail
        # Search enabled. Enable Retail Search on Cloud Console before using this
        # feature.
        # @param [String] placement
        #   Required. The resource name of the Retail Search serving config, such as `
        #   projects/*/locations/global/catalogs/default_catalog/servingConfigs/
        #   default_serving_config` or the name of the legacy placement resource, such as `
        #   projects/*/locations/global/catalogs/default_catalog/placements/default_search`
        #   . This field is used to identify the serving config name and the set of models
        #   that are used to make the search.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequest] google_cloud_retail_v2beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_catalog_serving_configs(placement, google_cloud_retail_v2beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+placement}:search', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequest::Representation
          command.request_object = google_cloud_retail_v2beta_search_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponse
          command.params['placement'] = placement unless placement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. For larger user event payload
        # over 16 KB, the POST method should be used instead, otherwise a 400 Bad
        # Request error is returned. This method is used only by the Retail API
        # JavaScript pixel and Google Tag Manager. Users should not call this method
        # directly.
        # @param [String] parent
        #   Required. The parent catalog name, such as `projects/1234/locations/global/
        #   catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCollectUserEventRequest] google_cloud_retail_v2beta_collect_user_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_collect_user_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:collect', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCollectUserEventRequest::Representation
          command.request_object = google_cloud_retail_v2beta_collect_user_event_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports user events. `Operation.response` is of type `ExportResponse`. `
        # Operation.metadata` is of type `ExportMetadata`.
        # @param [String] parent
        #   Required. Resource name of a Catalog. For example `projects/1234/locations/
        #   global/catalogs/default_catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportUserEventsRequest] google_cloud_retail_v2beta_export_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_export_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:export', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_export_user_events_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of User events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. `Operation.response` is of type `ImportResponse`. Note that it is
        # possible for a subset of the items to be successfully inserted. `Operation.
        # metadata` is of type `ImportMetadata`.
        # @param [String] parent
        #   Required. `projects/1234/locations/global/catalogs/default_catalog`
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportUserEventsRequest] google_cloud_retail_v2beta_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_import_user_events_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/$`projectId`/locations/global/catalogs/$`catalogId``
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurgeUserEventsRequest] google_cloud_retail_v2beta_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_purge_user_events_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a user-event rejoin operation with latest product catalog. Events are
        # not annotated with detailed product information for products that are missing
        # from the catalog when the user event is ingested. These events are stored as
        # unjoined events with limited usage on training and serving. You can use this
        # method to start a join operation on specified events with the latest version
        # of product catalog. You can also use this method to correct events joined with
        # the wrong product catalog. A rejoin operation can take hours or days to
        # complete.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/1234/locations/
        #   global/catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRejoinUserEventsRequest] google_cloud_retail_v2beta_rejoin_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rejoin_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_rejoin_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:rejoin', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRejoinUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2beta_rejoin_user_events_request_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/1234/locations/
        #   global/catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent] google_cloud_retail_v2beta_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event will be written asynchronously after validation,
        #   and the API will respond without waiting for the write. Therefore, silent
        #   failures can occur even if the API returns success. In case of silent failures,
        #   error messages can be found in Stackdriver logs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_catalog_user_event(parent, google_cloud_retail_v2beta_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
          command.request_object = google_cloud_retail_v2beta_user_event_object
          command.response_representation = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}/operations', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}/operations', options)
          command.response_representation = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RetailV2beta::GoogleLongrunningListOperationsResponse
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
