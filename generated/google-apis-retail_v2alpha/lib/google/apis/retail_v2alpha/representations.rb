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
    module RetailV2alpha
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2BigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ExportAnalyticsMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2GcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ModelModelFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2OutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeProductsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2TuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2TuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAcceptTermsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAlertConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAlertConfigAlertPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAttributesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBranch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBranchProductCountStatistic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBranchQualityMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCollectUserEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompletionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompletionDataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCompletionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCreateMerchantCenterAccountLinkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaDoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExperimentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportAnalyticsMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaFulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGenerativeQuestionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGetDefaultBranchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigExample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListBranchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListEnrolledSolutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaListServingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaLocalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterAccountLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterFeedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterLinkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelModelFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaOutputConfigBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaOutputConfigGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPauseModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPinControlMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPinControlMetadataProductPins
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPriceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPriceInfoPriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductAttributeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProductLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaResumeModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleDoNotAssociateAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleForceReturnFacetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleIgnoreAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleOnewaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRulePinAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleRemoveFacetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleReplacementAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRuleTwowaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSearchResponseTileNavigationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetDefaultBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaStringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTransformedUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTuneModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportAnalyticsMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModelModelFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeProductsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaTuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudRetailLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingHttpRequestContext, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingSourceLocation, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingErrorContext, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingImportErrorContext, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingServiceContext, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_item, as: 'catalogItem'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation_name, as: 'operationName'
          property :product, as: 'product'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudRetailLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2BigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2ExportAnalyticsMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2OutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2OutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2ExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2GcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2ImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2UserEventImportSummary, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2UserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :model_features_config, as: 'modelFeaturesConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelModelFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelModelFeaturesConfig::Representation
      
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelServingConfigList, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_products_type, as: 'contextProductsType'
        end
      end
      
      class GoogleCloudRetailV2ModelModelFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequently_bought_together_config, as: 'frequentlyBoughtTogetherConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2OutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2BigQueryOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2BigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2GcsOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2GcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PurgeProductsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2PurgeProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2TuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2TuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaAcceptTermsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaAddControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_mask, as: 'addMask'
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLocalInventory, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLocalInventory::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAlertConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_policies, as: 'alertPolicies', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAlertConfigAlertPolicy, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAlertConfigAlertPolicy::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2alphaAlertConfigAlertPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_group, as: 'alertGroup'
          property :enroll_status, as: 'enrollStatus'
          collection :recipients, as: 'recipients', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
        end
      end
      
      class GoogleCloudRetailV2alphaAttributesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_config_level, as: 'attributeConfigLevel'
          hash :catalog_attributes, as: 'catalogAttributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2alphaAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :age_groups, as: 'ageGroups'
          collection :genders, as: 'genders'
        end
      end
      
      class GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_keys, as: 'attributeKeys'
        end
      end
      
      class GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deleted_catalog_attributes, as: 'deletedCatalogAttributes'
          collection :reset_catalog_attributes, as: 'resetCatalogAttributes'
        end
      end
      
      class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generative_question_configs, as: 'generativeQuestionConfigs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaBigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2alphaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::RetailV2alpha::GoogleTypeDate, decorator: Google::Apis::RetailV2alpha::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2alphaBranch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
          property :last_product_import_time, as: 'lastProductImportTime'
          property :name, as: 'name'
          collection :product_count_stats, as: 'productCountStats', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranchProductCountStatistic, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranchProductCountStatistic::Representation
      
          collection :quality_metrics, as: 'qualityMetrics', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranchQualityMetric, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranchQualityMetric::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaBranchProductCountStatistic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :counts, as: 'counts'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleCloudRetailV2alphaBranchQualityMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qualified_product_count, as: 'qualifiedProductCount'
          property :requirement_key, as: 'requirementKey'
          property :suggested_quality_percent_threshold, as: 'suggestedQualityPercentThreshold'
          property :unqualified_product_count, as: 'unqualifiedProductCount'
          collection :unqualified_sample_products, as: 'unqualifiedSampleProducts', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :merchant_center_linking_config, as: 'merchantCenterLinkingConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterLinkingConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterLinkingConfig::Representation
      
          property :name, as: 'name'
          property :product_level_config, as: 'productLevelConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductLevelConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductLevelConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :exact_searchable_option, as: 'exactSearchableOption'
          property :facet_config, as: 'facetConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfig::Representation
      
          property :in_use, as: 'inUse'
          property :indexable_option, as: 'indexableOption'
          property :key, as: 'key'
          property :recommendations_filtering_option, as: 'recommendationsFilteringOption'
          property :retrievable_option, as: 'retrievableOption'
          property :searchable_option, as: 'searchableOption'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facet_intervals, as: 'facetIntervals', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
          collection :ignored_facet_values, as: 'ignoredFacetValues', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues::Representation
      
          property :merged_facet, as: 'mergedFacet', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet::Representation
      
          collection :merged_facet_values, as: 'mergedFacetValues', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue::Representation
      
          property :rerank_config, as: 'rerankConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merged_facet_key, as: 'mergedFacetKey'
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merged_value, as: 'mergedValue'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facet_values, as: 'facetValues'
          property :rerank_facet, as: 'rerankFacet'
        end
      end
      
      class GoogleCloudRetailV2alphaCollectUserEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ets, :numeric_string => true, as: 'ets'
          property :prebuilt_rule, as: 'prebuiltRule'
          property :raw_json, as: 'rawJson'
          property :uri, as: 'uri'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudRetailV2alphaColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :color_families, as: 'colorFamilies'
          collection :colors, as: 'colors'
        end
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribute_results, as: 'attributeResults', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult::Representation
      
          property :attribution_token, as: 'attributionToken'
          collection :completion_results, as: 'completionResults', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult::Representation
      
          collection :recent_search_results, as: 'recentSearchResults', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions'
        end
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute::Representation
      
          collection :facets, as: 'facets', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacet, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacet::Representation
      
          property :suggestion, as: 'suggestion'
          property :total_product_count, as: 'totalProductCount'
        end
      end
      
      class GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search, as: 'recentSearch'
        end
      end
      
      class GoogleCloudRetailV2alphaCompletionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowlist_input_config, as: 'allowlistInputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig::Representation
      
          property :auto_learning, as: 'autoLearning'
          property :denylist_input_config, as: 'denylistInputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig::Representation
      
          property :last_allowlist_import_operation, as: 'lastAllowlistImportOperation'
          property :last_denylist_import_operation, as: 'lastDenylistImportOperation'
          property :last_suggestions_import_operation, as: 'lastSuggestionsImportOperation'
          property :matching_order, as: 'matchingOrder'
          property :max_suggestions, as: 'maxSuggestions'
          property :min_prefix_length, as: 'minPrefixLength'
          property :name, as: 'name'
          property :suggestions_input_config, as: 'suggestionsInputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCompletionDataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaCompletionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_attribution_token, as: 'completionAttributionToken'
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudRetailV2alphaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConditionTimeRange, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConditionTimeRange::Representation
      
          collection :page_categories, as: 'pageCategories'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConditionQueryTerm, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2alphaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudRetailV2alphaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :display_name, as: 'displayName'
          property :facet_spec, as: 'facetSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpec::Representation
      
          property :name, as: 'name'
          property :rule, as: 'rule', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRule, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRule::Representation
      
          collection :search_solution_use_case, as: 'searchSolutionUseCase'
          collection :solution_types, as: 'solutionTypes'
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog, as: 'catalog'
          property :intent_classification_config, as: 'intentClassificationConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfig::Representation
      
          property :retailer_display_name, as: 'retailerDisplayName'
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :conversation_id, as: 'conversationId'
          property :conversational_filtering_spec, as: 'conversationalFilteringSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec::Representation
      
          collection :page_categories, as: 'pageCategories'
          property :query, as: 'query'
          property :search_params, as: 'searchParams', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversational_filtering_mode, as: 'conversationalFilteringMode'
          property :enable_conversational_filtering, as: 'enableConversationalFiltering'
          property :user_answer, as: 'userAnswer', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpec::Representation
      
          property :canonical_filter, as: 'canonicalFilter'
          property :filter, as: 'filter'
          property :sort_by, as: 'sortBy'
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_answer, as: 'selectedAnswer', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer::Representation
      
          property :text_answer, as: 'textAnswer'
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_id, as: 'conversationId'
          property :conversational_filtering_result, as: 'conversationalFilteringResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult::Representation
      
          collection :refined_search, as: 'refinedSearch', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_filter, as: 'additionalFilter', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter::Representation
      
          property :followup_question, as: 'followupQuestion', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_question, as: 'followupQuestion'
          collection :suggested_answers, as: 'suggestedAnswers', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudRetailV2alphaCreateMerchantCenterAccountLinkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaCreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2alphaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :indexable, as: 'indexable'
          collection :numbers, as: 'numbers'
          property :searchable, as: 'searchable'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudRetailV2alphaDoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :solution, as: 'solution'
        end
      end
      
      class GoogleCloudRetailV2alphaEnrollSolutionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enrolled_solution, as: 'enrolledSolution'
        end
      end
      
      class GoogleCloudRetailV2alphaExperimentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment, as: 'experiment'
          property :serving_config_experiment, as: 'servingConfigExperiment', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment_serving_config, as: 'experimentServingConfig'
          property :original_serving_config, as: 'originalServingConfig'
        end
      end
      
      class GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :output_config, as: 'outputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportAnalyticsMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaExportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :output_config, as: 'outputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :output_config, as: 'outputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaFulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2alphaGcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2alphaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudRetailV2alphaGenerativeQuestionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_in_conversation, as: 'allowedInConversation'
          property :catalog, as: 'catalog'
          collection :example_values, as: 'exampleValues'
          property :facet, as: 'facet'
          property :final_question, as: 'finalQuestion'
          property :frequency, as: 'frequency'
          property :generated_question, as: 'generatedQuestion'
        end
      end
      
      class GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog, as: 'catalog'
          property :feature_enabled, as: 'featureEnabled'
          property :minimum_products, as: 'minimumProducts'
        end
      end
      
      class GoogleCloudRetailV2alphaGetDefaultBranchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :note, as: 'note'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDataInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
        end
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :transformed_user_events_metadata, as: 'transformedUserEventsMetadata', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTransformedUserEventsMetadata, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTransformedUserEventsMetadata::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :reconciliation_mode, as: 'reconciliationMode'
          property :request_id, as: 'requestId'
          property :skip_default_branch_protection, as: 'skipDefaultBranchProtection'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventInputConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventImportSummary, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocklist_keywords, as: 'blocklistKeywords'
          collection :disabled_intent_types, as: 'disabledIntentTypes'
          collection :example, as: 'example', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigExample, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigExample::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource::Representation
      
          property :model_preamble, as: 'modelPreamble'
        end
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigExample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classified_positive, as: 'classifiedPositive'
          property :intent_type, as: 'intentType'
          property :query, as: 'query'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_type, as: 'intentType'
          property :operation, as: 'operation'
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline_force_intents, as: 'inlineForceIntents', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudRetailV2alphaListBranchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :branches, as: 'branches', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranch, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBranch::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2alphaListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaControl, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaControl::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2alphaListEnrolledSolutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrolled_solutions, as: 'enrolledSolutions'
        end
      end
      
      class GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generative_question_configs, as: 'generativeQuestionConfigs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :merchant_center_account_links, as: 'merchantCenterAccountLinks', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterAccountLink, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterAccountLink::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModel, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2alphaListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudRetailV2alphaListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaServingConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaServingConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaLocalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute::Representation
      
          property :availability, as: 'availability'
          collection :fulfillment_types, as: 'fulfillmentTypes'
          property :place_id, as: 'placeId'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfo::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_log_generation_rule, as: 'defaultLogGenerationRule', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule::Representation
      
          property :name, as: 'name'
          collection :service_log_generation_rules, as: 'serviceLogGenerationRules', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_log_sample_rate, as: 'infoLogSampleRate'
          property :logging_level, as: 'loggingLevel'
        end
      end
      
      class GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_generation_rule, as: 'logGenerationRule', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule::Representation
      
          property :service_name, as: 'serviceName'
        end
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterAccountLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          collection :feed_filters, as: 'feedFilters', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter::Representation
      
          property :feed_label, as: 'feedLabel'
          property :id, as: 'id'
          property :language_code, as: 'languageCode'
          property :merchant_center_account_id, :numeric_string => true, as: 'merchantCenterAccountId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :source, as: 'source'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_id, :numeric_string => true, as: 'dataSourceId'
          property :primary_feed_id, :numeric_string => true, as: 'primaryFeedId'
          property :primary_feed_name, as: 'primaryFeedName'
        end
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterFeedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_id, :numeric_string => true, as: 'dataSourceId'
          property :primary_feed_name, as: 'primaryFeedName'
        end
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          collection :destinations, as: 'destinations'
          collection :feeds, as: 'feeds', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterFeedFilter, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterFeedFilter::Representation
      
          property :language_code, as: 'languageCode'
          property :merchant_center_account_id, :numeric_string => true, as: 'merchantCenterAccountId'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudRetailV2alphaMerchantCenterLinkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterLink, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaMerchantCenterLink::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :model_features_config, as: 'modelFeaturesConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelModelFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelModelFeaturesConfig::Representation
      
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :page_optimization_config, as: 'pageOptimizationConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfig::Representation
      
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelServingConfigList, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_products_type, as: 'contextProductsType'
        end
      end
      
      class GoogleCloudRetailV2alphaModelModelFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequently_bought_together_config, as: 'frequentlyBoughtTogetherConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_optimization_event_type, as: 'pageOptimizationEventType'
          collection :panels, as: 'panels', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel::Representation
      
          property :restriction, as: 'restriction'
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serving_config_id, as: 'servingConfigId'
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
          property :default_candidate, as: 'defaultCandidate', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudRetailV2alphaModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2alphaOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfigBigQueryDestination, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfigBigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfigGcsDestination, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaOutputConfigGcsDestination::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaOutputConfigBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id_prefix, as: 'tableIdPrefix'
          property :table_type, as: 'tableType'
        end
      end
      
      class GoogleCloudRetailV2alphaOutputConfigGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQueryOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaPauseModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaPinControlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :all_matched_pins, as: 'allMatchedPins', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadataProductPins, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadataProductPins::Representation
      
          hash :dropped_pins, as: 'droppedPins', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadataProductPins, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadataProductPins::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaPinControlMetadataProductPins
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :product_id, as: 'productId'
        end
      end
      
      class GoogleCloudRetailV2alphaPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2alphaPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponsePredictionResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponsePredictionResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2alphaPredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRetailV2alphaPriceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :original_price, as: 'originalPrice'
          property :price, as: 'price'
          property :price_effective_time, as: 'priceEffectiveTime'
          property :price_expire_time, as: 'priceExpireTime'
          property :price_range, as: 'priceRange', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfoPriceRange, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfoPriceRange::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaPriceInfoPriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_price, as: 'originalPrice', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
          property :price, as: 'price', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute::Representation
      
          property :audience, as: 'audience', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAudience, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaAudience::Representation
      
          property :availability, as: 'availability'
          property :available_quantity, as: 'availableQuantity'
          property :available_time, as: 'availableTime'
          collection :brands, as: 'brands'
          collection :categories, as: 'categories'
          collection :collection_member_ids, as: 'collectionMemberIds'
          property :color_info, as: 'colorInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaColorInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaColorInfo::Representation
      
          collection :conditions, as: 'conditions'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          collection :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaFulfillmentInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaFulfillmentInfo::Representation
      
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          collection :images, as: 'images', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImage, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImage::Representation
      
          property :language_code, as: 'languageCode'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLocalInventory, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaLocalInventory::Representation
      
          collection :materials, as: 'materials'
          property :name, as: 'name'
          collection :patterns, as: 'patterns'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPriceInfo::Representation
      
          property :primary_product_id, as: 'primaryProductId'
          collection :promotions, as: 'promotions', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPromotion, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPromotion::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRating, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRating::Representation
      
          property :retrievable_fields, as: 'retrievableFields'
          collection :sizes, as: 'sizes'
          collection :tags, as: 'tags'
          property :title, as: 'title'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :uri, as: 'uri'
          collection :variants, as: 'variants', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaProductAttributeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2alphaProductAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2alphaProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudRetailV2alphaProductInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaProductInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsSource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsSource::Representation
      
          property :product_inline_source, as: 'productInlineSource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductInlineSource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaProductLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_product_type, as: 'ingestionProductType'
          property :merchant_center_product_id_field, as: 'merchantCenterProductIdField'
        end
      end
      
      class GoogleCloudRetailV2alphaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrolled_solutions, as: 'enrolledSolutions'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2alphaPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :promotion_id, as: 'promotionId'
        end
      end
      
      class GoogleCloudRetailV2alphaPurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          property :tax, as: 'tax'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :rating_count, as: 'ratingCount'
          collection :rating_histogram, as: 'ratingHistogram'
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalogAttribute::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2alphaResumeModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_action, as: 'boostAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleBoostAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleBoostAction::Representation
      
          property :condition, as: 'condition', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCondition, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCondition::Representation
      
          property :do_not_associate_action, as: 'doNotAssociateAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleDoNotAssociateAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleDoNotAssociateAction::Representation
      
          property :filter_action, as: 'filterAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleFilterAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleFilterAction::Representation
      
          property :force_return_facet_action, as: 'forceReturnFacetAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleForceReturnFacetAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleForceReturnFacetAction::Representation
      
          property :ignore_action, as: 'ignoreAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleIgnoreAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleIgnoreAction::Representation
      
          property :oneway_synonyms_action, as: 'onewaySynonymsAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleOnewaySynonymsAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleOnewaySynonymsAction::Representation
      
          property :pin_action, as: 'pinAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRulePinAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRulePinAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleRedirectAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleRedirectAction::Representation
      
          property :remove_facet_action, as: 'removeFacetAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleRemoveFacetAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleRemoveFacetAction::Representation
      
          property :replacement_action, as: 'replacementAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleReplacementAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleReplacementAction::Representation
      
          property :twoway_synonyms_action, as: 'twowaySynonymsAction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleTwowaySynonymsAction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleTwowaySynonymsAction::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaRuleBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :products_filter, as: 'productsFilter'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleDoNotAssociateAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :do_not_associate_terms, as: 'doNotAssociateTerms'
          collection :query_terms, as: 'queryTerms'
          collection :terms, as: 'terms'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleForceReturnFacetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facet_position_adjustments, as: 'facetPositionAdjustments', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_name, as: 'attributeName'
          property :position, as: 'position'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleIgnoreAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ignore_terms, as: 'ignoreTerms'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleOnewaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oneway_terms, as: 'onewayTerms'
          collection :query_terms, as: 'queryTerms'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2alphaRulePinAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :pin_map, as: 'pinMap'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleRemoveFacetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_names, as: 'attributeNames'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleReplacementAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_terms, as: 'queryTerms'
          property :replacement_term, as: 'replacementTerm'
          property :term, as: 'term'
        end
      end
      
      class GoogleCloudRetailV2alphaRuleTwowaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :conversational_search_spec, as: 'conversationalSearchSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec::Representation
      
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec::Representation
      
          property :entity, as: 'entity'
          property :experiment_id, as: 'experimentId'
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec::Representation
      
          property :place_id, as: 'placeId'
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec::Representation
      
          property :region_code, as: 'regionCode'
          property :relevance_threshold, as: 'relevanceThreshold'
          property :search_mode, as: 'searchMode'
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec::Representation
      
          property :tile_navigation_spec, as: 'tileNavigationSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec::Representation
      
          hash :user_attributes, as: 'userAttributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaStringList, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaStringList::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo::Representation
      
          collection :variant_rollup_keys, as: 'variantRollupKeys'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :skip_boost_spec_validation, as: 'skipBoostSpecValidation'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_id, as: 'conversationId'
          property :followup_conversation_requested, as: 'followupConversationRequested'
          property :user_answer, as: 'userAnswer', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_answer, as: 'selectedAnswer', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer::Representation
      
          property :text_answer, as: 'textAnswer'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
          collection :product_attribute_values, as: 'productAttributeValues', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          property :query, as: 'query'
          collection :restricted_values, as: 'restrictedValues'
          property :return_min_max, as: 'returnMinMax'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_tiles, as: 'appliedTiles', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTile, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTile::Representation
      
          property :tile_navigation_requested, as: 'tileNavigationRequested'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :conversational_search_result, as: 'conversationalSearchResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult::Representation
      
          property :corrected_query, as: 'correctedQuery'
          collection :experiment_info, as: 'experimentInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExperimentInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaExperimentInfo::Representation
      
          collection :facets, as: 'facets', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacet, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacet::Representation
      
          collection :invalid_condition_boost_specs, as: 'invalidConditionBoostSpecs', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :pin_control_metadata, as: 'pinControlMetadata', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadata, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPinControlMetadata::Representation
      
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseSearchResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseSearchResult::Representation
      
          property :tile_navigation_result, as: 'tileNavigationResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseTileNavigationResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseTileNavigationResult::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_filter, as: 'additionalFilter', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter::Representation
      
          collection :additional_filters, as: 'additionalFilters', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter::Representation
      
          property :conversation_id, as: 'conversationId'
          property :followup_question, as: 'followupQuestion'
          property :refined_query, as: 'refinedQuery'
          collection :suggested_answers, as: 'suggestedAnswers', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacetFacetValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaInterval::Representation
      
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :matching_variant_count, as: 'matchingVariantCount'
          hash :matching_variant_fields, as: 'matchingVariantFields'
          hash :model_scores, as: 'modelScores', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaDoubleList, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaDoubleList::Representation
      
          collection :personal_labels, as: 'personalLabels'
          property :product, as: 'product', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
          hash :variant_rollup_values, as: 'variantRollupValues'
        end
      end
      
      class GoogleCloudRetailV2alphaSearchResponseTileNavigationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tiles, as: 'tiles', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTile, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaTile::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_control_ids, as: 'boostControlIds'
          property :display_name, as: 'displayName'
          property :diversity_level, as: 'diversityLevel'
          property :diversity_type, as: 'diversityType'
          collection :do_not_associate_control_ids, as: 'doNotAssociateControlIds'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec::Representation
      
          property :enable_category_filter_level, as: 'enableCategoryFilterLevel'
          collection :facet_control_ids, as: 'facetControlIds'
          collection :filter_control_ids, as: 'filterControlIds'
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :ignore_recs_denylist, as: 'ignoreRecsDenylist'
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec::Representation
      
          property :price_reranking_level, as: 'priceRerankingLevel'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          collection :solution_types, as: 'solutionTypes'
          collection :twoway_synonyms_control_ids, as: 'twowaySynonymsControlIds'
        end
      end
      
      class GoogleCloudRetailV2alphaSetDefaultBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          property :force, as: 'force'
          property :note, as: 'note'
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          property :inventory, as: 'inventory', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
      
          property :set_mask, as: 'setMask'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaStringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudRetailV2alphaTile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_attribute_interval, as: 'productAttributeInterval', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeInterval, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeInterval::Representation
      
          property :product_attribute_value, as: 'productAttributeValue', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductAttributeValue::Representation
      
          property :representative_product_id, as: 'representativeProductId'
        end
      end
      
      class GoogleCloudRetailV2alphaTransformedUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_events_count, :numeric_string => true, as: 'sourceEventsCount'
          property :transformed_events_count, :numeric_string => true, as: 'transformedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaTuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2alphaTuneModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaTuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generative_question_config, as: 'generativeQuestionConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGenerativeQuestionConfig::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2alphaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :cart_id, as: 'cartId'
          property :completion_detail, as: 'completionDetail', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDetail, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCompletionDetail::Representation
      
          property :entity, as: 'entity'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          collection :experiment_ids, as: 'experimentIds'
          property :filter, as: 'filter'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_view_id, as: 'pageViewId'
          collection :product_details, as: 'productDetails', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductDetail, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPurchaseTransaction, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPurchaseTransaction::Representation
      
          property :referrer_uri, as: 'referrerUri'
          property :search_query, as: 'searchQuery'
          property :session_id, as: 'sessionId'
          property :uri, as: 'uri'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserInfo::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsSource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaGcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventInlineSource, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2betaExportAnalyticsMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaUserEventImportSummary, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :model_features_config, as: 'modelFeaturesConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelModelFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelModelFeaturesConfig::Representation
      
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelServingConfigList, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_products_type, as: 'contextProductsType'
        end
      end
      
      class GoogleCloudRetailV2betaModelModelFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequently_bought_together_config, as: 'frequentlyBoughtTogetherConfig', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2betaOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaBigQueryOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaGcsOutputResult, decorator: Google::Apis::RetailV2alpha::GoogleCloudRetailV2betaGcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaPurgeProductsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaTuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RetailV2alpha::GoogleLongrunningOperation, decorator: Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RetailV2alpha::GoogleRpcStatus, decorator: Google::Apis::RetailV2alpha::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
