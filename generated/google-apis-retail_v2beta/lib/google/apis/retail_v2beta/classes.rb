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
    module RetailV2beta
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # A description of the context in which an error occurred.
      class GoogleCloudRetailLoggingErrorContext
        include Google::Apis::Core::Hashable
      
        # HTTP request data that is related to a reported error.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext]
        attr_accessor :http_request
      
        # Indicates a location in the source code of the service for which errors are
        # reported.
        # Corresponds to the JSON property `reportLocation`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation]
        attr_accessor :report_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_request = args[:http_request] if args.key?(:http_request)
          @report_location = args[:report_location] if args.key?(:report_location)
        end
      end
      
      # An error log which is reported to the Error Reporting system. This proto a
      # superset of google.devtools.clouderrorreporting.v1beta1.ReportedErrorEvent.
      class GoogleCloudRetailLoggingErrorLog
        include Google::Apis::Core::Hashable
      
        # A description of the context in which an error occurred.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext]
        attr_accessor :context
      
        # The error payload that is populated on LRO import APIs, including "google.
        # cloud.retail.v2.ProductService.ImportProducts" and "google.cloud.retail.v2.
        # EventService.ImportUserEvents".
        # Corresponds to the JSON property `importPayload`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext]
        attr_accessor :import_payload
      
        # A message describing the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The API request payload, represented as a protocol buffer. Most API request
        # types are supported. For example: "type.googleapis.com/google.cloud.retail.v2.
        # ProductService.CreateProductRequest" "type.googleapis.com/google.cloud.retail.
        # v2.UserEventService.WriteUserEventRequest"
        # Corresponds to the JSON property `requestPayload`
        # @return [Hash<String,Object>]
        attr_accessor :request_payload
      
        # The API response payload, represented as a protocol buffer. This is used to
        # log some "soft errors", where the response is valid but we consider there are
        # some quality issues like unjoined events. The following API responses are
        # supported and no PII is included: "google.cloud.retail.v2.PredictionService.
        # Predict" "google.cloud.retail.v2.UserEventService.WriteUserEvent" "google.
        # cloud.retail.v2.UserEventService.CollectUserEvent"
        # Corresponds to the JSON property `responsePayload`
        # @return [Hash<String,Object>]
        attr_accessor :response_payload
      
        # Describes a running service that sends errors.
        # Corresponds to the JSON property `serviceContext`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext]
        attr_accessor :service_context
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RetailV2beta::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @import_payload = args[:import_payload] if args.key?(:import_payload)
          @message = args[:message] if args.key?(:message)
          @request_payload = args[:request_payload] if args.key?(:request_payload)
          @response_payload = args[:response_payload] if args.key?(:response_payload)
          @service_context = args[:service_context] if args.key?(:service_context)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # HTTP request data that is related to a reported error.
      class GoogleCloudRetailLoggingHttpRequestContext
        include Google::Apis::Core::Hashable
      
        # The HTTP response status code for the request.
        # Corresponds to the JSON property `responseStatusCode`
        # @return [Fixnum]
        attr_accessor :response_status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_status_code = args[:response_status_code] if args.key?(:response_status_code)
        end
      end
      
      # The error payload that is populated on LRO import APIs, including "google.
      # cloud.retail.v2.ProductService.ImportProducts" and "google.cloud.retail.v2.
      # EventService.ImportUserEvents".
      class GoogleCloudRetailLoggingImportErrorContext
        include Google::Apis::Core::Hashable
      
        # The detailed content which caused the error on importing a catalog item.
        # Corresponds to the JSON property `catalogItem`
        # @return [String]
        attr_accessor :catalog_item
      
        # Cloud Storage file path of the import source. Can be set for batch operation
        # error.
        # Corresponds to the JSON property `gcsPath`
        # @return [String]
        attr_accessor :gcs_path
      
        # Line number of the content in file. Should be empty for permission or batch
        # operation error.
        # Corresponds to the JSON property `lineNumber`
        # @return [String]
        attr_accessor :line_number
      
        # The operation resource name of the LRO.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # The detailed content which caused the error on importing a product.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # The detailed content which caused the error on importing a user event.
        # Corresponds to the JSON property `userEvent`
        # @return [String]
        attr_accessor :user_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_item = args[:catalog_item] if args.key?(:catalog_item)
          @gcs_path = args[:gcs_path] if args.key?(:gcs_path)
          @line_number = args[:line_number] if args.key?(:line_number)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @product = args[:product] if args.key?(:product)
          @user_event = args[:user_event] if args.key?(:user_event)
        end
      end
      
      # Describes a running service that sends errors.
      class GoogleCloudRetailLoggingServiceContext
        include Google::Apis::Core::Hashable
      
        # An identifier of the service. For example, "retail.googleapis.com".
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Indicates a location in the source code of the service for which errors are
      # reported.
      class GoogleCloudRetailLoggingSourceLocation
        include Google::Apis::Core::Hashable
      
        # Human-readable name of a function or method. For example, "google.cloud.retail.
        # v2.UserEventService.ImportUserEvents".
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddFulfillmentPlaces method.
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the ProductService.AddFulfillmentPlaces
      # method.
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the AddLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddLocalInventories method.
      class GoogleCloudRetailV2AddLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the ProductService.AddLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # AddLocalInventories method.
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A BigQuery output result.
      class GoogleCloudRetailV2BigQueryOutputResult
        include Google::Apis::Core::Hashable
      
        # The ID of a BigQuery Dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The ID of a BigQuery Table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Metadata associated with a create operation.
      class GoogleCloudRetailV2CreateModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this create applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Response of the ExportAnalyticsMetricsRequest. If the long running operation
      # was successful, then this message is returned by the google.longrunning.
      # Operations.response field if the operation was successful.
      class GoogleCloudRetailV2ExportAnalyticsMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2OutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Configuration of destination for Export related errors.
      class GoogleCloudRetailV2ExportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Export errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Export operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2ExportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Gcs output result.
      class GoogleCloudRetailV2GcsOutputResult
        include Google::Apis::Core::Hashable
      
        # The uri of Gcs output
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2ImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2ImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage prefix for import errors. This must be an empty, existing
        # Cloud Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2ImportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification is sent to specified Pub/Sub topic. The
        # message data is JSON string of a Operation. Format of the Pub/Sub topic is `
        # projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Deprecated. This field is never set.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2ImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2ImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # Metadata that describes the training and serving parameters of a Model. A
      # Model can be associated with a ServingConfig and then queried through the
      # Predict API.
      class GoogleCloudRetailV2Model
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp the Recommendation Model was created at.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The state of data requirements for this model: `DATA_OK` and `
        # DATA_ERROR`. Recommendation model cannot be trained if the data is in `
        # DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if
        # serving state is `ACTIVE`: models were trained successfully before, but cannot
        # be refreshed because model no longer has sufficient data for training.
        # Corresponds to the JSON property `dataState`
        # @return [String]
        attr_accessor :data_state
      
        # Required. The display name of the model. Should be human readable, used to
        # display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8
        # encoded string with limit of 1024 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by
        # attributes is enabled for the model.
        # Corresponds to the JSON property `filteringOption`
        # @return [String]
        attr_accessor :filtering_option
      
        # Output only. The timestamp when the latest successful tune finished.
        # Corresponds to the JSON property `lastTuneTime`
        # @return [String]
        attr_accessor :last_tune_time
      
        # Additional model features config.
        # Corresponds to the JSON property `modelFeaturesConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ModelModelFeaturesConfig]
        attr_accessor :model_features_config
      
        # Required. The fully qualified resource name of the model. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # ` catalog_id has char limit of 50. recommendation_model_id has char limit of
        # 40.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The optimization objective e.g. `cvr`. Currently supported values: `
        # ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on
        # model type. Default depends on type of recommendation: `recommended-for-you` =>
        # `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `
        # revenue_per_order` This field together with optimization_objective describe
        # model metadata to use to control model training and serving. See https://cloud.
        # google.com/retail/docs/models for more details on what the model metadata
        # control and which combination of parameters are valid. For invalid
        # combinations of parameters (e.g. type = `frequently-bought-together` and
        # optimization_objective = `ctr`), you receive an error 400 if you try to create/
        # update a recommendation with this set of knobs.
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # Optional. The state of periodic tuning. The period we use is 3 months - to do
        # a one-off tune earlier use the `TuneModel` method. Default value is `
        # PERIODIC_TUNING_ENABLED`.
        # Corresponds to the JSON property `periodicTuningState`
        # @return [String]
        attr_accessor :periodic_tuning_state
      
        # Output only. The list of valid serving configs associated with the
        # PageOptimizationConfig.
        # Corresponds to the JSON property `servingConfigLists`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2ModelServingConfigList>]
        attr_accessor :serving_config_lists
      
        # Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
        # Corresponds to the JSON property `servingState`
        # @return [String]
        attr_accessor :serving_state
      
        # Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`)
        # . Since part of the cost of running the service is frequency of training -
        # this can be used to determine when to train model in order to control cost. If
        # not specified: the default value for `CreateModel` method is `TRAINING`. The
        # default value for `UpdateModel` method is to keep the state the same as before.
        # Corresponds to the JSON property `trainingState`
        # @return [String]
        attr_accessor :training_state
      
        # Output only. The tune operation associated with the model. Can be used to
        # determine if there is an ongoing tune for this recommendation. Empty field
        # implies no tune is goig on.
        # Corresponds to the JSON property `tuningOperation`
        # @return [String]
        attr_accessor :tuning_operation
      
        # Required. The type of model e.g. `home-page`. Currently supported values: `
        # recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `
        # page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `
        # recently-viewed`(readonly value). This field together with
        # optimization_objective describe model metadata to use to control model
        # training and serving. See https://cloud.google.com/retail/docs/models for more
        # details on what the model metadata control and which combination of parameters
        # are valid. For invalid combinations of parameters (e.g. type = `frequently-
        # bought-together` and optimization_objective = `ctr`), you receive an error 400
        # if you try to create/update a recommendation with this set of knobs.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Timestamp the Recommendation Model was last updated. E.g. if a
        # Recommendation Model was paused - this would be the time the pause was
        # initiated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_state = args[:data_state] if args.key?(:data_state)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filtering_option = args[:filtering_option] if args.key?(:filtering_option)
          @last_tune_time = args[:last_tune_time] if args.key?(:last_tune_time)
          @model_features_config = args[:model_features_config] if args.key?(:model_features_config)
          @name = args[:name] if args.key?(:name)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @periodic_tuning_state = args[:periodic_tuning_state] if args.key?(:periodic_tuning_state)
          @serving_config_lists = args[:serving_config_lists] if args.key?(:serving_config_lists)
          @serving_state = args[:serving_state] if args.key?(:serving_state)
          @training_state = args[:training_state] if args.key?(:training_state)
          @tuning_operation = args[:tuning_operation] if args.key?(:tuning_operation)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Additional configs for the frequently-bought-together model type.
      class GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the context of the model when it is used in predict
        # requests. Can only be set for the `frequently-bought-together` type. If it isn'
        # t specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
        # Corresponds to the JSON property `contextProductsType`
        # @return [String]
        attr_accessor :context_products_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_products_type = args[:context_products_type] if args.key?(:context_products_type)
        end
      end
      
      # Additional model features config.
      class GoogleCloudRetailV2ModelModelFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Additional configs for the frequently-bought-together model type.
        # Corresponds to the JSON property `frequentlyBoughtTogetherConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig]
        attr_accessor :frequently_bought_together_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequently_bought_together_config = args[:frequently_bought_together_config] if args.key?(:frequently_bought_together_config)
        end
      end
      
      # Represents an ordered combination of valid serving configs, which can be used
      # for `PAGE_OPTIMIZATION` recommendations.
      class GoogleCloudRetailV2ModelServingConfigList
        include Google::Apis::Core::Hashable
      
        # Optional. A set of valid serving configs that may be used for `
        # PAGE_OPTIMIZATION`.
        # Corresponds to the JSON property `servingConfigIds`
        # @return [Array<String>]
        attr_accessor :serving_config_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serving_config_ids = args[:serving_config_ids] if args.key?(:serving_config_ids)
        end
      end
      
      # Output result that stores the information about where the exported data is
      # stored.
      class GoogleCloudRetailV2OutputResult
        include Google::Apis::Core::Hashable
      
        # The BigQuery location where the result is stored.
        # Corresponds to the JSON property `bigqueryResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2BigQueryOutputResult>]
        attr_accessor :bigquery_result
      
        # The Google Cloud Storage location where the result is stored.
        # Corresponds to the JSON property `gcsResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2GcsOutputResult>]
        attr_accessor :gcs_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_result = args[:bigquery_result] if args.key?(:bigquery_result)
          @gcs_result = args[:gcs_result] if args.key?(:gcs_result)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2PurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the PurgeProducts operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2PurgeProductsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the PurgeProductsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2PurgeProductsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of products purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of the product names that will be deleted. Only populated if `force`
        # is set to false. A max of 100 names will be returned and the names are chosen
        # at random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2PurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # Metadata for `RejoinUserEvents` method.
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `RejoinUserEvents` method.
      class GoogleCloudRetailV2RejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the ProductService.
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the RemoveLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveLocalInventories method.
      class GoogleCloudRetailV2RemoveLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the ProductService.RemoveLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # RemoveLocalInventories method.
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the
      # ProductService.SetInventory method.
      class GoogleCloudRetailV2SetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the ProductService.SetInventory method.
      class GoogleCloudRetailV2SetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata associated with a tune operation.
      class GoogleCloudRetailV2TuneModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this tune applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Response associated with a tune operation.
      class GoogleCloudRetailV2TuneModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2UserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the ProductService.AddFulfillmentPlaces
      # method.
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the AddLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddLocalInventories method.
      class GoogleCloudRetailV2alphaAddLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the ProductService.AddLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # AddLocalInventories method.
      class GoogleCloudRetailV2alphaAddLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A BigQuery output result.
      class GoogleCloudRetailV2alphaBigQueryOutputResult
        include Google::Apis::Core::Hashable
      
        # The ID of a BigQuery Dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The ID of a BigQuery Table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Common metadata related to the progress of the operations.
      class GoogleCloudRetailV2alphaCreateMerchantCenterAccountLinkMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata associated with a create operation.
      class GoogleCloudRetailV2alphaCreateModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this create applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Metadata related to the EnrollSolution method. This will be returned by the
      # google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaEnrollSolutionMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for EnrollSolution method.
      class GoogleCloudRetailV2alphaEnrollSolutionResponse
        include Google::Apis::Core::Hashable
      
        # Retail API solution that the project has enrolled.
        # Corresponds to the JSON property `enrolledSolution`
        # @return [String]
        attr_accessor :enrolled_solution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enrolled_solution = args[:enrolled_solution] if args.key?(:enrolled_solution)
        end
      end
      
      # Response of the ExportAnalyticsMetricsRequest. If the long running operation
      # was successful, then this message is returned by the google.longrunning.
      # Operations.response field if the operation was successful.
      class GoogleCloudRetailV2alphaExportAnalyticsMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Configuration of destination for Export related errors.
      class GoogleCloudRetailV2alphaExportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Export errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Export operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaExportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ExportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2alphaExportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Response of the ExportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # A Gcs output result.
      class GoogleCloudRetailV2alphaGcsOutputResult
        include Google::Apis::Core::Hashable
      
        # The uri of Gcs output
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2alphaImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage prefix for import errors. This must be an empty, existing
        # Cloud Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaImportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification is sent to specified Pub/Sub topic. The
        # message data is JSON string of a Operation. Format of the Pub/Sub topic is `
        # projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Deprecated. This field is never set.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Metadata related to transform user events operation.
        # Corresponds to the JSON property `transformedUserEventsMetadata`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaTransformedUserEventsMetadata]
        attr_accessor :transformed_user_events_metadata
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
          @success_count = args[:success_count] if args.key?(:success_count)
          @transformed_user_events_metadata = args[:transformed_user_events_metadata] if args.key?(:transformed_user_events_metadata)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2alphaImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # Represents a link between a Merchant Center account and a branch. After a link
      # is established, products from the linked Merchant Center account are streamed
      # to the linked branch.
      class GoogleCloudRetailV2alphaMerchantCenterAccountLink
        include Google::Apis::Core::Hashable
      
        # Required. The branch ID (e.g. 0/1/2) within the catalog that products from
        # merchant_center_account_id are streamed to. When updating this field, an empty
        # value will use the currently configured default branch. However, changing the
        # default branch later on won't change the linked branch here. A single branch
        # ID can only have one linked Merchant Center account ID.
        # Corresponds to the JSON property `branchId`
        # @return [String]
        attr_accessor :branch_id
      
        # Criteria for the Merchant Center feeds to be ingested via the link. All offers
        # will be ingested if the list is empty. Otherwise the offers will be ingested
        # from selected feeds.
        # Corresponds to the JSON property `feedFilters`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter>]
        attr_accessor :feed_filters
      
        # The FeedLabel used to perform filtering. Note: this replaces [region_id](https:
        # //developers.google.com/shopping-content/reference/rest/v2.1/products#Product.
        # FIELDS.feed_label). Example value: `US`. Example value: `FeedLabel1`.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Output only. Immutable. MerchantCenterAccountLink identifier, which is the
        # final component of name. This field is auto generated and follows the
        # convention: `BranchId_MerchantCenterAccountId`. `projects/*/locations/global/
        # catalogs/default_catalog/merchantCenterAccountLinks/id_1`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Language of the title/description and other string attributes. Use language
        # tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). ISO
        # 639-1. This specifies the language of offers in Merchant Center that will be
        # accepted. If empty, no language filtering will be performed. Example value: `
        # en`.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The linked [Merchant center account id](https://developers.google.
        # com/shopping-content/guides/accountstatuses). The account must be a standalone
        # account or a sub-account of a MCA.
        # Corresponds to the JSON property `merchantCenterAccountId`
        # @return [Fixnum]
        attr_accessor :merchant_center_account_id
      
        # Output only. Immutable. Full resource name of the Merchant Center Account Link,
        # such as `projects/*/locations/global/catalogs/default_catalog/
        # merchantCenterAccountLinks/merchant_center_account_link`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Google Cloud project ID.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. An optional arbitrary string that could be used as a tag for
        # tracking link source.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. Represents the state of the link.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_id = args[:branch_id] if args.key?(:branch_id)
          @feed_filters = args[:feed_filters] if args.key?(:feed_filters)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @id = args[:id] if args.key?(:id)
          @language_code = args[:language_code] if args.key?(:language_code)
          @merchant_center_account_id = args[:merchant_center_account_id] if args.key?(:merchant_center_account_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @source = args[:source] if args.key?(:source)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Merchant Center Feed filter criterion.
      class GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
        include Google::Apis::Core::Hashable
      
        # AFM data source ID.
        # Corresponds to the JSON property `dataSourceId`
        # @return [Fixnum]
        attr_accessor :data_source_id
      
        # Merchant Center primary feed ID. Deprecated: use data_source_id instead.
        # Corresponds to the JSON property `primaryFeedId`
        # @return [Fixnum]
        attr_accessor :primary_feed_id
      
        # Merchant Center primary feed name. The name is used for the display purposes
        # only.
        # Corresponds to the JSON property `primaryFeedName`
        # @return [String]
        attr_accessor :primary_feed_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @primary_feed_id = args[:primary_feed_id] if args.key?(:primary_feed_id)
          @primary_feed_name = args[:primary_feed_name] if args.key?(:primary_feed_name)
        end
      end
      
      # Metadata that describes the training and serving parameters of a Model. A
      # Model can be associated with a ServingConfig and then queried through the
      # Predict API.
      class GoogleCloudRetailV2alphaModel
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp the Recommendation Model was created at.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The state of data requirements for this model: `DATA_OK` and `
        # DATA_ERROR`. Recommendation model cannot be trained if the data is in `
        # DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if
        # serving state is `ACTIVE`: models were trained successfully before, but cannot
        # be refreshed because model no longer has sufficient data for training.
        # Corresponds to the JSON property `dataState`
        # @return [String]
        attr_accessor :data_state
      
        # Required. The display name of the model. Should be human readable, used to
        # display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8
        # encoded string with limit of 1024 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by
        # attributes is enabled for the model.
        # Corresponds to the JSON property `filteringOption`
        # @return [String]
        attr_accessor :filtering_option
      
        # Output only. The timestamp when the latest successful tune finished.
        # Corresponds to the JSON property `lastTuneTime`
        # @return [String]
        attr_accessor :last_tune_time
      
        # Additional model features config.
        # Corresponds to the JSON property `modelFeaturesConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelModelFeaturesConfig]
        attr_accessor :model_features_config
      
        # Required. The fully qualified resource name of the model. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # ` catalog_id has char limit of 50. recommendation_model_id has char limit of
        # 40.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The optimization objective e.g. `cvr`. Currently supported values: `
        # ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on
        # model type. Default depends on type of recommendation: `recommended-for-you` =>
        # `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `
        # revenue_per_order` This field together with optimization_objective describe
        # model metadata to use to control model training and serving. See https://cloud.
        # google.com/retail/docs/models for more details on what the model metadata
        # control and which combination of parameters are valid. For invalid
        # combinations of parameters (e.g. type = `frequently-bought-together` and
        # optimization_objective = `ctr`), you receive an error 400 if you try to create/
        # update a recommendation with this set of knobs.
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # The PageOptimizationConfig for model training. This determines how many panels
        # to optimize for, and which serving configs to consider for each panel. The
        # purpose of this model is to optimize which ServingConfig to show on which
        # panels in way that optimizes the visitors shopping journey.
        # Corresponds to the JSON property `pageOptimizationConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfig]
        attr_accessor :page_optimization_config
      
        # Optional. The state of periodic tuning. The period we use is 3 months - to do
        # a one-off tune earlier use the `TuneModel` method. Default value is `
        # PERIODIC_TUNING_ENABLED`.
        # Corresponds to the JSON property `periodicTuningState`
        # @return [String]
        attr_accessor :periodic_tuning_state
      
        # Output only. The list of valid serving configs associated with the
        # PageOptimizationConfig.
        # Corresponds to the JSON property `servingConfigLists`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelServingConfigList>]
        attr_accessor :serving_config_lists
      
        # Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
        # Corresponds to the JSON property `servingState`
        # @return [String]
        attr_accessor :serving_state
      
        # Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`)
        # . Since part of the cost of running the service is frequency of training -
        # this can be used to determine when to train model in order to control cost. If
        # not specified: the default value for `CreateModel` method is `TRAINING`. The
        # default value for `UpdateModel` method is to keep the state the same as before.
        # Corresponds to the JSON property `trainingState`
        # @return [String]
        attr_accessor :training_state
      
        # Output only. The tune operation associated with the model. Can be used to
        # determine if there is an ongoing tune for this recommendation. Empty field
        # implies no tune is goig on.
        # Corresponds to the JSON property `tuningOperation`
        # @return [String]
        attr_accessor :tuning_operation
      
        # Required. The type of model e.g. `home-page`. Currently supported values: `
        # recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `
        # page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `
        # recently-viewed`(readonly value). This field together with
        # optimization_objective describe model metadata to use to control model
        # training and serving. See https://cloud.google.com/retail/docs/models for more
        # details on what the model metadata control and which combination of parameters
        # are valid. For invalid combinations of parameters (e.g. type = `frequently-
        # bought-together` and optimization_objective = `ctr`), you receive an error 400
        # if you try to create/update a recommendation with this set of knobs.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Timestamp the Recommendation Model was last updated. E.g. if a
        # Recommendation Model was paused - this would be the time the pause was
        # initiated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_state = args[:data_state] if args.key?(:data_state)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filtering_option = args[:filtering_option] if args.key?(:filtering_option)
          @last_tune_time = args[:last_tune_time] if args.key?(:last_tune_time)
          @model_features_config = args[:model_features_config] if args.key?(:model_features_config)
          @name = args[:name] if args.key?(:name)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @page_optimization_config = args[:page_optimization_config] if args.key?(:page_optimization_config)
          @periodic_tuning_state = args[:periodic_tuning_state] if args.key?(:periodic_tuning_state)
          @serving_config_lists = args[:serving_config_lists] if args.key?(:serving_config_lists)
          @serving_state = args[:serving_state] if args.key?(:serving_state)
          @training_state = args[:training_state] if args.key?(:training_state)
          @tuning_operation = args[:tuning_operation] if args.key?(:tuning_operation)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Additional configs for the frequently-bought-together model type.
      class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the context of the model when it is used in predict
        # requests. Can only be set for the `frequently-bought-together` type. If it isn'
        # t specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
        # Corresponds to the JSON property `contextProductsType`
        # @return [String]
        attr_accessor :context_products_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_products_type = args[:context_products_type] if args.key?(:context_products_type)
        end
      end
      
      # Additional model features config.
      class GoogleCloudRetailV2alphaModelModelFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Additional configs for the frequently-bought-together model type.
        # Corresponds to the JSON property `frequentlyBoughtTogetherConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig]
        attr_accessor :frequently_bought_together_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequently_bought_together_config = args[:frequently_bought_together_config] if args.key?(:frequently_bought_together_config)
        end
      end
      
      # The PageOptimizationConfig for model training. This determines how many panels
      # to optimize for, and which serving configs to consider for each panel. The
      # purpose of this model is to optimize which ServingConfig to show on which
      # panels in way that optimizes the visitors shopping journey.
      class GoogleCloudRetailV2alphaModelPageOptimizationConfig
        include Google::Apis::Core::Hashable
      
        # Required. The type of UserEvent this page optimization is shown for. Each page
        # has an associated event type - this will be the corresponding event type for
        # the page that the page optimization model is used on. Supported types: * `add-
        # to-cart`: Products being added to cart. * `detail-page-view`: Products detail
        # page viewed. * `home-page-view`: Homepage viewed * `category-page-view`:
        # Homepage viewed * `shopping-cart-page-view`: User viewing a shopping cart. `
        # home-page-view` only allows models with type `recommended-for-you`. All other
        # page_optimization_event_type allow all Model.types.
        # Corresponds to the JSON property `pageOptimizationEventType`
        # @return [String]
        attr_accessor :page_optimization_event_type
      
        # Required. A list of panel configurations. Limit = 5.
        # Corresponds to the JSON property `panels`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>]
        attr_accessor :panels
      
        # Optional. How to restrict results across panels e.g. can the same
        # ServingConfig be shown on multiple panels at once. If unspecified, default to `
        # UNIQUE_MODEL_RESTRICTION`.
        # Corresponds to the JSON property `restriction`
        # @return [String]
        attr_accessor :restriction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_optimization_event_type = args[:page_optimization_event_type] if args.key?(:page_optimization_event_type)
          @panels = args[:panels] if args.key?(:panels)
          @restriction = args[:restriction] if args.key?(:restriction)
        end
      end
      
      # A candidate to consider for a given panel. Currently only ServingConfig are
      # valid candidates.
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
        include Google::Apis::Core::Hashable
      
        # This has to be a valid ServingConfig identifier. For example, for a
        # ServingConfig with full name: `projects/*/locations/global/catalogs/
        # default_catalog/servingConfigs/my_candidate_config`, this would be `
        # my_candidate_config`.
        # Corresponds to the JSON property `servingConfigId`
        # @return [String]
        attr_accessor :serving_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serving_config_id = args[:serving_config_id] if args.key?(:serving_config_id)
        end
      end
      
      # An individual panel with a list of ServingConfigs to consider for it.
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
        include Google::Apis::Core::Hashable
      
        # Required. The candidates to consider on the panel.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>]
        attr_accessor :candidates
      
        # A candidate to consider for a given panel. Currently only ServingConfig are
        # valid candidates.
        # Corresponds to the JSON property `defaultCandidate`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate]
        attr_accessor :default_candidate
      
        # Optional. The name to display for the panel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @default_candidate = args[:default_candidate] if args.key?(:default_candidate)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Represents an ordered combination of valid serving configs, which can be used
      # for `PAGE_OPTIMIZATION` recommendations.
      class GoogleCloudRetailV2alphaModelServingConfigList
        include Google::Apis::Core::Hashable
      
        # Optional. A set of valid serving configs that may be used for `
        # PAGE_OPTIMIZATION`.
        # Corresponds to the JSON property `servingConfigIds`
        # @return [Array<String>]
        attr_accessor :serving_config_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serving_config_ids = args[:serving_config_ids] if args.key?(:serving_config_ids)
        end
      end
      
      # Output result that stores the information about where the exported data is
      # stored.
      class GoogleCloudRetailV2alphaOutputResult
        include Google::Apis::Core::Hashable
      
        # The BigQuery location where the result is stored.
        # Corresponds to the JSON property `bigqueryResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaBigQueryOutputResult>]
        attr_accessor :bigquery_result
      
        # The Google Cloud Storage location where the result is stored.
        # Corresponds to the JSON property `gcsResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaGcsOutputResult>]
        attr_accessor :gcs_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_result = args[:bigquery_result] if args.key?(:bigquery_result)
          @gcs_result = args[:gcs_result] if args.key?(:gcs_result)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaPurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the PurgeProducts operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaPurgeProductsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the PurgeProductsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2alphaPurgeProductsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of products purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of the product names that will be deleted. Only populated if `force`
        # is set to false. A max of 100 names will be returned and the names are chosen
        # at random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # Metadata for `RejoinUserEvents` method.
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `RejoinUserEvents` method.
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the ProductService.
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the RemoveLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveLocalInventories method.
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the ProductService.RemoveLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # RemoveLocalInventories method.
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the
      # ProductService.SetInventory method.
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the ProductService.SetInventory method.
      class GoogleCloudRetailV2alphaSetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to transform user events operation.
      class GoogleCloudRetailV2alphaTransformedUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Count of entries in the source user events BigQuery table.
        # Corresponds to the JSON property `sourceEventsCount`
        # @return [Fixnum]
        attr_accessor :source_events_count
      
        # Count of entries in the transformed user events BigQuery table, which could be
        # different from the actually imported number of user events.
        # Corresponds to the JSON property `transformedEventsCount`
        # @return [Fixnum]
        attr_accessor :transformed_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_events_count = args[:source_events_count] if args.key?(:source_events_count)
          @transformed_events_count = args[:transformed_events_count] if args.key?(:transformed_events_count)
        end
      end
      
      # Metadata associated with a tune operation.
      class GoogleCloudRetailV2alphaTuneModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this tune applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Response associated with a tune operation.
      class GoogleCloudRetailV2alphaTuneModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2alphaUserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # Request for CatalogService.AddCatalogAttribute method.
      class GoogleCloudRetailV2betaAddCatalogAttributeRequest
        include Google::Apis::Core::Hashable
      
        # Catalog level attribute config for an attribute. For example, if customers
        # want to enable/disable facet for a specific attribute.
        # Corresponds to the JSON property `catalogAttribute`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute]
        attr_accessor :catalog_attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_attribute = args[:catalog_attribute] if args.key?(:catalog_attribute)
        end
      end
      
      # Request for AddControl method.
      class GoogleCloudRetailV2betaAddControlRequest
        include Google::Apis::Core::Hashable
      
        # Required. The id of the control to apply. Assumed to be in the same catalog as
        # the serving config - if id is not found a NOT_FOUND error is returned.
        # Corresponds to the JSON property `controlId`
        # @return [String]
        attr_accessor :control_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_id = args[:control_id] if args.key?(:control_id)
        end
      end
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddFulfillmentPlaces method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ProductService.AddFulfillmentPlaces method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesRequest
        include Google::Apis::Core::Hashable
      
        # The time when the fulfillment updates are issued, used to prevent out-of-order
        # updates on fulfillment information. If not provided, the internal system time
        # will be used.
        # Corresponds to the JSON property `addTime`
        # @return [String]
        attr_accessor :add_time
      
        # If set to true, and the Product is not found, the fulfillment information will
        # still be processed and retained for at most 1 day and processed once the
        # Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. The IDs for this type, such as the store IDs for "pickup-in-store"
        # or the region IDs for "same-day-delivery" to be added for this type. Duplicate
        # IDs will be automatically ignored. At least 1 value is required, and a maximum
        # of 2000 values are allowed. Each value must be a string with a length limit of
        # 10 characters, matching the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "
        # REGION-2". Otherwise, an INVALID_ARGUMENT error is returned. If the total
        # number of place IDs exceeds 2000 for this type after adding, then the update
        # will be rejected.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # Required. The fulfillment type, including commonly used types (such as pickup
        # in store and same day delivery), and custom types. Supported values: * "pickup-
        # in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "
        # custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-
        # type-5" If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. This field directly corresponds to Product.
        # fulfillment_info.type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_time = args[:add_time] if args.key?(:add_time)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the ProductService.AddFulfillmentPlaces
      # method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the AddLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.AddLocalInventories method.
      class GoogleCloudRetailV2betaAddLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ProductService.AddLocalInventories method.
      class GoogleCloudRetailV2betaAddLocalInventoriesRequest
        include Google::Apis::Core::Hashable
      
        # Indicates which inventory fields in the provided list of LocalInventory to
        # update. The field is updated to the provided value. If a field is set while
        # the place does not have a previous local inventory, the local inventory at
        # that store is created. If a field is set while the value of that field is not
        # provided, the original field value, if it exists, is deleted. If the mask is
        # not set or set with empty paths, all inventory fields will be updated. If an
        # unsupported or unknown field is provided, an INVALID_ARGUMENT error is
        # returned and the entire update will be ignored.
        # Corresponds to the JSON property `addMask`
        # @return [String]
        attr_accessor :add_mask
      
        # The time when the inventory updates are issued. Used to prevent out-of-order
        # updates on local inventory fields. If not provided, the internal system time
        # will be used.
        # Corresponds to the JSON property `addTime`
        # @return [String]
        attr_accessor :add_time
      
        # If set to true, and the Product is not found, the local inventory will still
        # be processed and retained for at most 1 day and processed once the Product is
        # created. If set to false, a NOT_FOUND error is returned if the Product is not
        # found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. A list of inventory information at difference places. Each place is
        # identified by its place ID. At most 3000 inventories are allowed per request.
        # Corresponds to the JSON property `localInventories`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory>]
        attr_accessor :local_inventories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_mask = args[:add_mask] if args.key?(:add_mask)
          @add_time = args[:add_time] if args.key?(:add_time)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @local_inventories = args[:local_inventories] if args.key?(:local_inventories)
        end
      end
      
      # Response of the ProductService.AddLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # AddLocalInventories method.
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Project level alert config.
      class GoogleCloudRetailV2betaAlertConfig
        include Google::Apis::Core::Hashable
      
        # Alert policies for a customer. They must be unique by [AlertPolicy.alert_group]
        # Corresponds to the JSON property `alertPolicies`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfigAlertPolicy>]
        attr_accessor :alert_policies
      
        # Required. Immutable. The name of the AlertConfig singleton resource. Format:
        # projects/*/alertConfig
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_policies = args[:alert_policies] if args.key?(:alert_policies)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Alert policy for a customer.
      class GoogleCloudRetailV2betaAlertConfigAlertPolicy
        include Google::Apis::Core::Hashable
      
        # The feature that provides alerting capability. Supported value: - `search-data-
        # quality` for retail search customers. - `conv-data-quality` for retail
        # conversation customers.
        # Corresponds to the JSON property `alertGroup`
        # @return [String]
        attr_accessor :alert_group
      
        # The enrollment status of a customer.
        # Corresponds to the JSON property `enrollStatus`
        # @return [String]
        attr_accessor :enroll_status
      
        # Recipients for the alert policy. One alert policy should not exceed 20
        # recipients.
        # Corresponds to the JSON property `recipients`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient>]
        attr_accessor :recipients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_group = args[:alert_group] if args.key?(:alert_group)
          @enroll_status = args[:enroll_status] if args.key?(:enroll_status)
          @recipients = args[:recipients] if args.key?(:recipients)
        end
      end
      
      # Recipient contact information.
      class GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient
        include Google::Apis::Core::Hashable
      
        # Email address of the recipient.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
        end
      end
      
      # Catalog level attribute config.
      class GoogleCloudRetailV2betaAttributesConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The AttributeConfigLevel used for this catalog.
        # Corresponds to the JSON property `attributeConfigLevel`
        # @return [String]
        attr_accessor :attribute_config_level
      
        # Enable attribute(s) config at catalog level. For example, indexable,
        # dynamic_facetable, or searchable for each attribute. The key is catalog
        # attribute's name. For example: `color`, `brands`, `attributes.custom_attribute`
        # , such as `attributes.xyz`. The maximum number of catalog attributes allowed
        # in a request is 1000.
        # Corresponds to the JSON property `catalogAttributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute>]
        attr_accessor :catalog_attributes
      
        # Required. Immutable. The fully qualified resource name of the attribute config.
        # Format: `projects/*/locations/*/catalogs/*/attributesConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_config_level = args[:attribute_config_level] if args.key?(:attribute_config_level)
          @catalog_attributes = args[:catalog_attributes] if args.key?(:catalog_attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An intended audience of the Product for whom it's sold.
      class GoogleCloudRetailV2betaAudience
        include Google::Apis::Core::Hashable
      
        # The age groups of the audience. Strongly encouraged to use the standard values:
        # "newborn" (up to 3 months old), "infant" (3–12 months old), "toddler" (1–5
        # years old), "kids" (5–13 years old), "adult" (typically teens or older). At
        # most 5 values are allowed. Each value must be a UTF-8 encoded string with a
        # length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [age_group](https://support.google.
        # com/merchants/answer/6324463). Schema.org property [Product.audience.
        # suggestedMinAge](https://schema.org/suggestedMinAge) and [Product.audience.
        # suggestedMaxAge](https://schema.org/suggestedMaxAge).
        # Corresponds to the JSON property `ageGroups`
        # @return [Array<String>]
        attr_accessor :age_groups
      
        # The genders of the audience. Strongly encouraged to use the standard values: "
        # male", "female", "unisex". At most 5 values are allowed. Each value must be a
        # UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [gender](
        # https://support.google.com/merchants/answer/6324479). Schema.org property [
        # Product.audience.suggestedGender](https://schema.org/suggestedGender).
        # Corresponds to the JSON property `genders`
        # @return [Array<String>]
        attr_accessor :genders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_groups = args[:age_groups] if args.key?(:age_groups)
          @genders = args[:genders] if args.key?(:genders)
        end
      end
      
      # Request for CatalogService.BatchRemoveCatalogAttributes method.
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The attribute name keys of the CatalogAttributes to delete. A
        # maximum of 1000 catalog attributes can be deleted in a batch.
        # Corresponds to the JSON property `attributeKeys`
        # @return [Array<String>]
        attr_accessor :attribute_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_keys = args[:attribute_keys] if args.key?(:attribute_keys)
        end
      end
      
      # Response of the CatalogService.BatchRemoveCatalogAttributes.
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse
        include Google::Apis::Core::Hashable
      
        # Catalog attributes that were deleted. Only pre-loaded catalog attributes that
        # are neither in use by products nor predefined can be deleted.
        # Corresponds to the JSON property `deletedCatalogAttributes`
        # @return [Array<String>]
        attr_accessor :deleted_catalog_attributes
      
        # Catalog attributes that were reset. Catalog attributes that are either in use
        # by products or are predefined attributes cannot be deleted; however, their
        # configuration properties will reset to default values upon removal request.
        # Corresponds to the JSON property `resetCatalogAttributes`
        # @return [Array<String>]
        attr_accessor :reset_catalog_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted_catalog_attributes = args[:deleted_catalog_attributes] if args.key?(:deleted_catalog_attributes)
          @reset_catalog_attributes = args[:reset_catalog_attributes] if args.key?(:reset_catalog_attributes)
        end
      end
      
      # Request for BatchUpdateGenerativeQuestionConfig method.
      class GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The updates question configs.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Aggregated response for UpdateGenerativeQuestionConfig method.
      class GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The updates question configs.
        # Corresponds to the JSON property `generativeQuestionConfigs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig>]
        attr_accessor :generative_question_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generative_question_configs = args[:generative_question_configs] if args.key?(:generative_question_configs)
        end
      end
      
      # A BigQuery output result.
      class GoogleCloudRetailV2betaBigQueryOutputResult
        include Google::Apis::Core::Hashable
      
        # The ID of a BigQuery Dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The ID of a BigQuery Table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # BigQuery source import data from.
      class GoogleCloudRetailV2betaBigQuerySource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # product imports: * `product` (default): One JSON Product per line. Each
        # product must have a valid Product.id. * `product_merchant_center`: See [
        # Importing catalog data from Merchant Center](https://cloud.google.com/retail/
        # recommendations-ai/docs/upload-catalog#mc). Supported values for user events
        # imports: * `user_event` (default): One JSON UserEvent per line. * `
        # user_event_ga360`: The schema is available here: https://support.google.com/
        # analytics/answer/3437719. * `user_event_ga4`: The schema is available here:
        # https://support.google.com/analytics/answer/7029846. Supported values for
        # autocomplete imports: * `suggestions` (default): One JSON completion
        # suggestion per line. * `denylist`: One JSON deny suggestion per line. * `
        # allowlist`: One JSON allow suggestion per line.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. The BigQuery data set to copy the data from with a length limit of 1,
        # 024 characters.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Intermediate Cloud Storage directory used for the import with a length limit
        # of 2,000 characters. Can be specified if one wants to have the BigQuery export
        # to a specific Cloud Storage directory.
        # Corresponds to the JSON property `gcsStagingDir`
        # @return [String]
        attr_accessor :gcs_staging_dir
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `partitionDate`
        # @return [Google::Apis::RetailV2beta::GoogleTypeDate]
        attr_accessor :partition_date
      
        # The project ID (can be project # or ID) that the BigQuery source is in with a
        # length limit of 128 characters. If not specified, inherits the project ID from
        # the parent request.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The BigQuery table to copy the data from with a length limit of 1,
        # 024 characters.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_schema = args[:data_schema] if args.key?(:data_schema)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @gcs_staging_dir = args[:gcs_staging_dir] if args.key?(:gcs_staging_dir)
          @partition_date = args[:partition_date] if args.key?(:partition_date)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # The catalog configuration.
      class GoogleCloudRetailV2betaCatalog
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The catalog display name. This field must be a UTF-8
        # encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configures Merchant Center linking. Links contained in the config will be used
        # to sync data from a Merchant Center account to a Cloud Retail branch.
        # Corresponds to the JSON property `merchantCenterLinkingConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLinkingConfig]
        attr_accessor :merchant_center_linking_config
      
        # Required. Immutable. The fully qualified resource name of the catalog.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configures what level the product should be uploaded with regards to how users
        # will be send events and how predictions will be made.
        # Corresponds to the JSON property `productLevelConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig]
        attr_accessor :product_level_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @merchant_center_linking_config = args[:merchant_center_linking_config] if args.key?(:merchant_center_linking_config)
          @name = args[:name] if args.key?(:name)
          @product_level_config = args[:product_level_config] if args.key?(:product_level_config)
        end
      end
      
      # Catalog level attribute config for an attribute. For example, if customers
      # want to enable/disable facet for a specific attribute.
      class GoogleCloudRetailV2betaCatalogAttribute
        include Google::Apis::Core::Hashable
      
        # If DYNAMIC_FACETABLE_ENABLED, attribute values are available for dynamic facet.
        # Could only be DYNAMIC_FACETABLE_DISABLED if CatalogAttribute.indexable_option
        # is INDEXABLE_DISABLED. Otherwise, an INVALID_ARGUMENT error is returned. Must
        # be specified, otherwise throws INVALID_FORMAT error.
        # Corresponds to the JSON property `dynamicFacetableOption`
        # @return [String]
        attr_accessor :dynamic_facetable_option
      
        # If EXACT_SEARCHABLE_ENABLED, attribute values will be exact searchable. This
        # property only applies to textual custom attributes and requires indexable set
        # to enabled to enable exact-searchable. If unset, the server behavior defaults
        # to EXACT_SEARCHABLE_DISABLED.
        # Corresponds to the JSON property `exactSearchableOption`
        # @return [String]
        attr_accessor :exact_searchable_option
      
        # Possible options for the facet that corresponds to the current attribute
        # config.
        # Corresponds to the JSON property `facetConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttributeFacetConfig]
        attr_accessor :facet_config
      
        # Output only. Indicates whether this attribute has been used by any products. `
        # True` if at least one Product is using this attribute in Product.attributes.
        # Otherwise, this field is `False`. CatalogAttribute can be pre-loaded by using
        # CatalogService.AddCatalogAttribute or CatalogService.UpdateAttributesConfig
        # APIs. This field is `False` for pre-loaded CatalogAttributes. Only pre-loaded
        # catalog attributes that are neither in use by products nor predefined can be
        # deleted. Catalog attributes that are either in use by products or are
        # predefined attributes cannot be deleted; however, their configuration
        # properties will reset to default values upon removal request. After catalog
        # changes, it takes about 10 minutes for this field to update.
        # Corresponds to the JSON property `inUse`
        # @return [Boolean]
        attr_accessor :in_use
        alias_method :in_use?, :in_use
      
        # When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG,
        # if INDEXABLE_ENABLED attribute values are indexed so that it can be filtered,
        # faceted, or boosted in SearchService.Search. Must be specified when
        # AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG,
        # otherwise throws INVALID_FORMAT error.
        # Corresponds to the JSON property `indexableOption`
        # @return [String]
        attr_accessor :indexable_option
      
        # Required. Attribute name. For example: `color`, `brands`, `attributes.
        # custom_attribute`, such as `attributes.xyz`. To be indexable, the attribute
        # name can contain only alpha-numeric characters and underscores. For example,
        # an attribute named `attributes.abc_xyz` can be indexed, but an attribute named
        # `attributes.abc-xyz` cannot be indexed. If the attribute key starts with `
        # attributes.`, then the attribute is a custom attribute. Attributes such as `
        # brands`, `patterns`, and `title` are built-in and called system attributes.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG,
        # if RECOMMENDATIONS_FILTERING_ENABLED, attribute values are filterable for
        # recommendations. This option works for categorical features only, does not
        # work for numerical features, inventory filtering.
        # Corresponds to the JSON property `recommendationsFilteringOption`
        # @return [String]
        attr_accessor :recommendations_filtering_option
      
        # If RETRIEVABLE_ENABLED, attribute values are retrievable in the search results.
        # If unset, the server behavior defaults to RETRIEVABLE_DISABLED.
        # Corresponds to the JSON property `retrievableOption`
        # @return [String]
        attr_accessor :retrievable_option
      
        # When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG,
        # if SEARCHABLE_ENABLED, attribute values are searchable by text queries in
        # SearchService.Search. If SEARCHABLE_ENABLED but attribute type is numerical,
        # attribute values will not be searchable by text queries in SearchService.
        # Search, as there are no text values associated to numerical attributes. Must
        # be specified, when AttributesConfig.attribute_config_level is
        # CATALOG_LEVEL_ATTRIBUTE_CONFIG, otherwise throws INVALID_FORMAT error.
        # Corresponds to the JSON property `searchableOption`
        # @return [String]
        attr_accessor :searchable_option
      
        # Output only. The type of this attribute. This is derived from the attribute in
        # Product.attributes.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_facetable_option = args[:dynamic_facetable_option] if args.key?(:dynamic_facetable_option)
          @exact_searchable_option = args[:exact_searchable_option] if args.key?(:exact_searchable_option)
          @facet_config = args[:facet_config] if args.key?(:facet_config)
          @in_use = args[:in_use] if args.key?(:in_use)
          @indexable_option = args[:indexable_option] if args.key?(:indexable_option)
          @key = args[:key] if args.key?(:key)
          @recommendations_filtering_option = args[:recommendations_filtering_option] if args.key?(:recommendations_filtering_option)
          @retrievable_option = args[:retrievable_option] if args.key?(:retrievable_option)
          @searchable_option = args[:searchable_option] if args.key?(:searchable_option)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Possible options for the facet that corresponds to the current attribute
      # config.
      class GoogleCloudRetailV2betaCatalogAttributeFacetConfig
        include Google::Apis::Core::Hashable
      
        # If you don't set the facet SearchRequest.FacetSpec.FacetKey.intervals in the
        # request to a numerical attribute, then we use the computed intervals with
        # rounded bounds obtained from all its product numerical attribute values. The
        # computed intervals might not be ideal for some attributes. Therefore, we give
        # you the option to overwrite them with the facet_intervals field. The maximum
        # of facet intervals per CatalogAttribute is 40. Each interval must have a lower
        # bound or an upper bound. If both bounds are provided, then the lower bound
        # must be smaller or equal than the upper bound.
        # Corresponds to the JSON property `facetIntervals`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval>]
        attr_accessor :facet_intervals
      
        # Each instance represents a list of attribute values to ignore as facet values
        # for a specific time range. The maximum number of instances per
        # CatalogAttribute is 25.
        # Corresponds to the JSON property `ignoredFacetValues`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues>]
        attr_accessor :ignored_facet_values
      
        # The current facet key (i.e. attribute config) maps into the merged_facet_key.
        # A facet key can have at most one child. The current facet key and the merged
        # facet key need both to be textual custom attributes or both numerical custom
        # attributes (same type).
        # Corresponds to the JSON property `mergedFacet`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet]
        attr_accessor :merged_facet
      
        # Each instance replaces a list of facet values by a merged facet value. If a
        # facet value is not in any list, then it will stay the same. To avoid conflicts,
        # only paths of length 1 are accepted. In other words, if "dark_blue" merged
        # into "BLUE", then the latter can't merge into "blues" because this would
        # create a path of length 2. The maximum number of instances of MergedFacetValue
        # per CatalogAttribute is 100. This feature is available only for textual custom
        # attributes.
        # Corresponds to the JSON property `mergedFacetValues`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue>]
        attr_accessor :merged_facet_values
      
        # Options to rerank based on facet values engaged by the user for the current
        # key. That key needs to be a custom textual key and facetable. To use this
        # control, you also need to pass all the facet keys engaged by the user in the
        # request using the field [SearchRequest.FacetSpec]. In particular, if you don't
        # pass the facet keys engaged that you want to rerank on, this control won't be
        # effective. Moreover, to obtain better results, the facet values that you want
        # to rerank on should be close to English (ideally made of words, underscores,
        # and spaces).
        # Corresponds to the JSON property `rerankConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig]
        attr_accessor :rerank_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facet_intervals = args[:facet_intervals] if args.key?(:facet_intervals)
          @ignored_facet_values = args[:ignored_facet_values] if args.key?(:ignored_facet_values)
          @merged_facet = args[:merged_facet] if args.key?(:merged_facet)
          @merged_facet_values = args[:merged_facet_values] if args.key?(:merged_facet_values)
          @rerank_config = args[:rerank_config] if args.key?(:rerank_config)
        end
      end
      
      # Facet values to ignore on facets during the specified time range for the given
      # SearchResponse.Facet.key attribute.
      class GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues
        include Google::Apis::Core::Hashable
      
        # If start time is empty and end time is not empty, then ignore these facet
        # values before end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Time range for the current list of facet values to ignore. If multiple time
        # ranges are specified for an facet value for the current attribute, consider
        # all of them. If both are empty, ignore always. If start time and end time are
        # set, then start time must be before end time. If start time is not empty and
        # end time is empty, then will ignore these facet values after the start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # List of facet values to ignore for the following time range. The facet values
        # are the same as the attribute values. There is a limit of 10 values per
        # instance of IgnoredFacetValues. Each value can have at most 128 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The current facet key (i.e. attribute config) maps into the merged_facet_key.
      # A facet key can have at most one child. The current facet key and the merged
      # facet key need both to be textual custom attributes or both numerical custom
      # attributes (same type).
      class GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet
        include Google::Apis::Core::Hashable
      
        # The merged facet key should be a valid facet key that is different than the
        # facet key of the current catalog attribute. We refer this is merged facet key
        # as the child of the current catalog attribute. This merged facet key can't be
        # a parent of another facet key (i.e. no directed path of length 2). This merged
        # facet key needs to be either a textual custom attribute or a numerical custom
        # attribute.
        # Corresponds to the JSON property `mergedFacetKey`
        # @return [String]
        attr_accessor :merged_facet_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merged_facet_key = args[:merged_facet_key] if args.key?(:merged_facet_key)
        end
      end
      
      # Replaces a set of textual facet values by the same (possibly different) merged
      # facet value. Each facet value should appear at most once as a value per
      # CatalogAttribute. This feature is available only for textual custom attributes.
      class GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue
        include Google::Apis::Core::Hashable
      
        # All the previous values are replaced by this merged facet value. This
        # merged_value must be non-empty and can have up to 128 characters.
        # Corresponds to the JSON property `mergedValue`
        # @return [String]
        attr_accessor :merged_value
      
        # All the facet values that are replaces by the same merged_value that follows.
        # The maximum number of values per MergedFacetValue is 25. Each value can have
        # up to 128 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merged_value = args[:merged_value] if args.key?(:merged_value)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Options to rerank based on facet values engaged by the user for the current
      # key. That key needs to be a custom textual key and facetable. To use this
      # control, you also need to pass all the facet keys engaged by the user in the
      # request using the field [SearchRequest.FacetSpec]. In particular, if you don't
      # pass the facet keys engaged that you want to rerank on, this control won't be
      # effective. Moreover, to obtain better results, the facet values that you want
      # to rerank on should be close to English (ideally made of words, underscores,
      # and spaces).
      class GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig
        include Google::Apis::Core::Hashable
      
        # If empty, rerank on all facet values for the current key. Otherwise, will
        # rerank on the facet values from this list only.
        # Corresponds to the JSON property `facetValues`
        # @return [Array<String>]
        attr_accessor :facet_values
      
        # If set to true, then we also rerank the dynamic facets based on the facet
        # values engaged by the user for the current attribute key during serving.
        # Corresponds to the JSON property `rerankFacet`
        # @return [Boolean]
        attr_accessor :rerank_facet
        alias_method :rerank_facet?, :rerank_facet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facet_values = args[:facet_values] if args.key?(:facet_values)
          @rerank_facet = args[:rerank_facet] if args.key?(:rerank_facet)
        end
      end
      
      # Request message for CollectUserEvent method.
      class GoogleCloudRetailV2betaCollectUserEventRequest
        include Google::Apis::Core::Hashable
      
        # The event timestamp in milliseconds. This prevents browser caching of
        # otherwise identical get requests. The name is abbreviated to reduce the
        # payload bytes.
        # Corresponds to the JSON property `ets`
        # @return [Fixnum]
        attr_accessor :ets
      
        # The prebuilt rule name that can convert a specific type of raw_json. For
        # example: "ga4_bq" rule for the GA4 user event schema.
        # Corresponds to the JSON property `prebuiltRule`
        # @return [String]
        attr_accessor :prebuilt_rule
      
        # An arbitrary serialized JSON string that contains necessary information that
        # can comprise a user event. When this field is specified, the user_event field
        # will be ignored. Note: line-delimited JSON is not supported, a single JSON
        # only.
        # Corresponds to the JSON property `rawJson`
        # @return [String]
        attr_accessor :raw_json
      
        # The URL including cgi-parameters but excluding the hash fragment with a length
        # limit of 5,000 characters. This is often more useful than the referer URL,
        # because many browsers only send the domain for 3rd party requests.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Required. URL encoded UserEvent proto with a length limit of 2,000,000
        # characters.
        # Corresponds to the JSON property `userEvent`
        # @return [String]
        attr_accessor :user_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ets = args[:ets] if args.key?(:ets)
          @prebuilt_rule = args[:prebuilt_rule] if args.key?(:prebuilt_rule)
          @raw_json = args[:raw_json] if args.key?(:raw_json)
          @uri = args[:uri] if args.key?(:uri)
          @user_event = args[:user_event] if args.key?(:user_event)
        end
      end
      
      # The color information of a Product.
      class GoogleCloudRetailV2betaColorInfo
        include Google::Apis::Core::Hashable
      
        # The standard color families. Strongly recommended to use the following
        # standard color groups: "Red", "Pink", "Orange", "Yellow", "Purple", "Green", "
        # Cyan", "Blue", "Brown", "White", "Gray", "Black" and "Mixed". Normally it is
        # expected to have only 1 color family. May consider using single "Mixed"
        # instead of multiple values. A maximum of 5 values are allowed. Each value must
        # be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [color](
        # https://support.google.com/merchants/answer/6324487). Schema.org property [
        # Product.color](https://schema.org/color). The colorFamilies field as a system
        # attribute is not a required field but strongly recommended to be specified.
        # Google Search models treat this field as more important than a custom product
        # attribute when specified.
        # Corresponds to the JSON property `colorFamilies`
        # @return [Array<String>]
        attr_accessor :color_families
      
        # The color display names, which may be different from standard color family
        # names, such as the color aliases used in the website frontend. Normally it is
        # expected to have only 1 color. May consider using single "Mixed" instead of
        # multiple values. A maximum of 75 colors are allowed. Each value must be a UTF-
        # 8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [color](
        # https://support.google.com/merchants/answer/6324487). Schema.org property [
        # Product.color](https://schema.org/color).
        # Corresponds to the JSON property `colors`
        # @return [Array<String>]
        attr_accessor :colors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color_families = args[:color_families] if args.key?(:color_families)
          @colors = args[:colors] if args.key?(:colors)
        end
      end
      
      # Response of the autocomplete query.
      class GoogleCloudRetailV2betaCompleteQueryResponse
        include Google::Apis::Core::Hashable
      
        # A map of matched attribute suggestions. This field is only available for `
        # cloud-retail` dataset. Current supported keys: * `brands` * `categories`
        # Corresponds to the JSON property `attributeResults`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult>]
        attr_accessor :attribute_results
      
        # A unique complete token. This should be included in the UserEvent.
        # completion_detail for search events resulting from this completion, which
        # enables accurate attribution of complete model performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # Results of the matching suggestions. The result list is ordered and the first
        # result is top suggestion.
        # Corresponds to the JSON property `completionResults`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult>]
        attr_accessor :completion_results
      
        # Deprecated. Matched recent searches of this user. The maximum number of recent
        # searches is 10. This field is a restricted feature. If you want to enable it,
        # contact Retail Search support. This feature is only available when
        # CompleteQueryRequest.visitor_id field is set and UserEvent is imported. The
        # recent searches satisfy the follow rules: * They are ordered from latest to
        # oldest. * They are matched with CompleteQueryRequest.query case insensitively.
        # * They are transformed to lower case. * They are UTF-8 safe. Recent searches
        # are deduplicated. More recent searches will be reserved when duplication
        # happens.
        # Corresponds to the JSON property `recentSearchResults`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult>]
        attr_accessor :recent_search_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_results = args[:attribute_results] if args.key?(:attribute_results)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @completion_results = args[:completion_results] if args.key?(:completion_results)
          @recent_search_results = args[:recent_search_results] if args.key?(:recent_search_results)
        end
      end
      
      # Resource that represents attribute results.
      class GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult
        include Google::Apis::Core::Hashable
      
        # The list of suggestions for the attribute.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<String>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # Resource that represents completion results.
      class GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult
        include Google::Apis::Core::Hashable
      
        # Custom attributes for the suggestion term. * For `user-data`, the attributes
        # are additional custom attributes ingested through BigQuery. * For `cloud-
        # retail`, the attributes are product attributes generated by Cloud Retail. It
        # requires UserEvent.product_details is imported properly.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # The suggestion for the query.
        # Corresponds to the JSON property `suggestion`
        # @return [String]
        attr_accessor :suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
        end
      end
      
      # Deprecated: Recent search of this user.
      class GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult
        include Google::Apis::Core::Hashable
      
        # The recent search query.
        # Corresponds to the JSON property `recentSearch`
        # @return [String]
        attr_accessor :recent_search
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recent_search = args[:recent_search] if args.key?(:recent_search)
        end
      end
      
      # Catalog level autocomplete config for customers to customize autocomplete
      # feature's settings.
      class GoogleCloudRetailV2betaCompletionConfig
        include Google::Apis::Core::Hashable
      
        # The input config source for completion data.
        # Corresponds to the JSON property `allowlistInputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig]
        attr_accessor :allowlist_input_config
      
        # If set to true, the auto learning function is enabled. Auto learning uses user
        # data to generate suggestions using ML techniques. Default value is false. Only
        # after enabling auto learning can users use `cloud-retail` data in
        # CompleteQueryRequest.
        # Corresponds to the JSON property `autoLearning`
        # @return [Boolean]
        attr_accessor :auto_learning
        alias_method :auto_learning?, :auto_learning
      
        # The input config source for completion data.
        # Corresponds to the JSON property `denylistInputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig]
        attr_accessor :denylist_input_config
      
        # Output only. Name of the LRO corresponding to the latest allowlist import. Can
        # use GetOperation API to retrieve the latest state of the Long Running
        # Operation.
        # Corresponds to the JSON property `lastAllowlistImportOperation`
        # @return [String]
        attr_accessor :last_allowlist_import_operation
      
        # Output only. Name of the LRO corresponding to the latest denylist import. Can
        # use GetOperation API to retrieve the latest state of the Long Running
        # Operation.
        # Corresponds to the JSON property `lastDenylistImportOperation`
        # @return [String]
        attr_accessor :last_denylist_import_operation
      
        # Output only. Name of the LRO corresponding to the latest suggestion terms list
        # import. Can use GetOperation API method to retrieve the latest state of the
        # Long Running Operation.
        # Corresponds to the JSON property `lastSuggestionsImportOperation`
        # @return [String]
        attr_accessor :last_suggestions_import_operation
      
        # Specifies the matching order for autocomplete suggestions, e.g., a query
        # consisting of 'sh' with 'out-of-order' specified would suggest "women's shoes",
        # whereas a query of 'red s' with 'exact-prefix' specified would suggest "red
        # shoes". Currently supported values: * 'out-of-order' * 'exact-prefix' Default
        # value: 'exact-prefix'.
        # Corresponds to the JSON property `matchingOrder`
        # @return [String]
        attr_accessor :matching_order
      
        # The maximum number of autocomplete suggestions returned per term. Default
        # value is 20. If left unset or set to 0, then will fallback to default value.
        # Value range is 1 to 20.
        # Corresponds to the JSON property `maxSuggestions`
        # @return [Fixnum]
        attr_accessor :max_suggestions
      
        # The minimum number of characters needed to be typed in order to get
        # suggestions. Default value is 2. If left unset or set to 0, then will fallback
        # to default value. Value range is 1 to 20.
        # Corresponds to the JSON property `minPrefixLength`
        # @return [Fixnum]
        attr_accessor :min_prefix_length
      
        # Required. Immutable. Fully qualified name `projects/*/locations/*/catalogs/*/
        # completionConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The input config source for completion data.
        # Corresponds to the JSON property `suggestionsInputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig]
        attr_accessor :suggestions_input_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist_input_config = args[:allowlist_input_config] if args.key?(:allowlist_input_config)
          @auto_learning = args[:auto_learning] if args.key?(:auto_learning)
          @denylist_input_config = args[:denylist_input_config] if args.key?(:denylist_input_config)
          @last_allowlist_import_operation = args[:last_allowlist_import_operation] if args.key?(:last_allowlist_import_operation)
          @last_denylist_import_operation = args[:last_denylist_import_operation] if args.key?(:last_denylist_import_operation)
          @last_suggestions_import_operation = args[:last_suggestions_import_operation] if args.key?(:last_suggestions_import_operation)
          @matching_order = args[:matching_order] if args.key?(:matching_order)
          @max_suggestions = args[:max_suggestions] if args.key?(:max_suggestions)
          @min_prefix_length = args[:min_prefix_length] if args.key?(:min_prefix_length)
          @name = args[:name] if args.key?(:name)
          @suggestions_input_config = args[:suggestions_input_config] if args.key?(:suggestions_input_config)
        end
      end
      
      # The input config source for completion data.
      class GoogleCloudRetailV2betaCompletionDataInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
        end
      end
      
      # Detailed completion information including completion attribution token and
      # clicked completion info.
      class GoogleCloudRetailV2betaCompletionDetail
        include Google::Apis::Core::Hashable
      
        # Completion attribution token in CompleteQueryResponse.attribution_token.
        # Corresponds to the JSON property `completionAttributionToken`
        # @return [String]
        attr_accessor :completion_attribution_token
      
        # End user selected CompleteQueryResponse.CompletionResult.suggestion position,
        # starting from 0.
        # Corresponds to the JSON property `selectedPosition`
        # @return [Fixnum]
        attr_accessor :selected_position
      
        # End user selected CompleteQueryResponse.CompletionResult.suggestion.
        # Corresponds to the JSON property `selectedSuggestion`
        # @return [String]
        attr_accessor :selected_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_attribution_token = args[:completion_attribution_token] if args.key?(:completion_attribution_token)
          @selected_position = args[:selected_position] if args.key?(:selected_position)
          @selected_suggestion = args[:selected_suggestion] if args.key?(:selected_suggestion)
        end
      end
      
      # Metadata that is used to define a condition that triggers an action. A valid
      # condition must specify at least one of 'query_terms' or 'products_filter'. If
      # multiple fields are specified, the condition is met if all the fields are
      # satisfied e.g. if a set of query terms and product_filter are set, then only
      # items matching the product_filter for requests with a query matching the query
      # terms wil get boosted.
      class GoogleCloudRetailV2betaCondition
        include Google::Apis::Core::Hashable
      
        # Range of time(s) specifying when Condition is active. Condition true if any
        # time range matches.
        # Corresponds to the JSON property `activeTimeRange`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionTimeRange>]
        attr_accessor :active_time_range
      
        # Used to support browse uses cases. A list (up to 10 entries) of categories or
        # departments. The format should be the same as UserEvent.page_categories;
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<String>]
        attr_accessor :page_categories
      
        # A list (up to 10 entries) of terms to match the query on. If not specified,
        # match all queries. If many query terms are specified, the condition is matched
        # if any of the terms is a match (i.e. using the OR operator).
        # Corresponds to the JSON property `queryTerms`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionQueryTerm>]
        attr_accessor :query_terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_time_range = args[:active_time_range] if args.key?(:active_time_range)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @query_terms = args[:query_terms] if args.key?(:query_terms)
        end
      end
      
      # Query terms that we want to match on.
      class GoogleCloudRetailV2betaConditionQueryTerm
        include Google::Apis::Core::Hashable
      
        # Whether this is supposed to be a full or partial match.
        # Corresponds to the JSON property `fullMatch`
        # @return [Boolean]
        attr_accessor :full_match
        alias_method :full_match?, :full_match
      
        # The value of the term to match on. Value cannot be empty. Value can have at
        # most 3 terms if specified as a partial match. Each space separated string is
        # considered as one term. For example, "a b c" is 3 terms and allowed, but " a b
        # c d" is 4 terms and not allowed for a partial match.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_match = args[:full_match] if args.key?(:full_match)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Used for time-dependent conditions. Example: Want to have rule applied for
      # week long sale.
      class GoogleCloudRetailV2betaConditionTimeRange
        include Google::Apis::Core::Hashable
      
        # End of time range. Range is inclusive.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start of time range. Range is inclusive.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Configures dynamic metadata that can be linked to a ServingConfig and affect
      # search or recommendation results at serving time.
      class GoogleCloudRetailV2betaControl
        include Google::Apis::Core::Hashable
      
        # Output only. List of serving config ids that are associated with this control
        # in the same Catalog. Note the association is managed via the ServingConfig,
        # this is an output only denormalized view.
        # Corresponds to the JSON property `associatedServingConfigIds`
        # @return [Array<String>]
        attr_accessor :associated_serving_config_ids
      
        # Required. The human readable control display name. Used in Retail UI. This
        # field must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is thrown.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A facet specification to perform faceted search.
        # Corresponds to the JSON property `facetSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec]
        attr_accessor :facet_spec
      
        # Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/
        # controls/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A rule is a condition-action pair * A condition defines when a rule is to be
        # triggered. * An action specifies what occurs on that trigger. Currently rules
        # only work for controls with SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRule]
        attr_accessor :rule
      
        # Specifies the use case for the control. Affects what condition fields can be
        # set. Only settable by search controls. Will default to
        # SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one
        # search_solution_use_case per control.
        # Corresponds to the JSON property `searchSolutionUseCase`
        # @return [Array<String>]
        attr_accessor :search_solution_use_case
      
        # Required. Immutable. The solution types that the control is used for.
        # Currently we support setting only one type of solution at creation time. Only `
        # SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is
        # provided at creation time, will default to SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `solutionTypes`
        # @return [Array<String>]
        attr_accessor :solution_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_serving_config_ids = args[:associated_serving_config_ids] if args.key?(:associated_serving_config_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @facet_spec = args[:facet_spec] if args.key?(:facet_spec)
          @name = args[:name] if args.key?(:name)
          @rule = args[:rule] if args.key?(:rule)
          @search_solution_use_case = args[:search_solution_use_case] if args.key?(:search_solution_use_case)
          @solution_types = args[:solution_types] if args.key?(:solution_types)
        end
      end
      
      # The public proto to represent the conversational search customization config.
      # It will be converted to the internal proto in the backend.
      class GoogleCloudRetailV2betaConversationalSearchCustomizationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Resource name of the catalog. Format: projects/`project`/locations/`
        # location`/catalogs/`catalog`
        # Corresponds to the JSON property `catalog`
        # @return [String]
        attr_accessor :catalog
      
        # The public proto to represent the intent classification config. It will be
        # converted to the internal proto in the backend.
        # Corresponds to the JSON property `intentClassificationConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaIntentClassificationConfig]
        attr_accessor :intent_classification_config
      
        # Optional. The retailer's display name that could be used in our LLM answers.
        # Example - "Google"
        # Corresponds to the JSON property `retailerDisplayName`
        # @return [String]
        attr_accessor :retailer_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog = args[:catalog] if args.key?(:catalog)
          @intent_classification_config = args[:intent_classification_config] if args.key?(:intent_classification_config)
          @retailer_display_name = args[:retailer_display_name] if args.key?(:retailer_display_name)
        end
      end
      
      # Metadata associated with a create operation.
      class GoogleCloudRetailV2betaCreateModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this create applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # A custom attribute that is not explicitly modeled in Product.
      class GoogleCloudRetailV2betaCustomAttribute
        include Google::Apis::Core::Hashable
      
        # This field is normally ignored unless AttributesConfig.attribute_config_level
        # of the Catalog is set to the deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode.
        # For information about product-level attribute configuration, see [
        # Configuration modes](https://cloud.google.com/retail/docs/attribute-config#
        # config-modes). If true, custom attribute values are indexed, so that they can
        # be filtered, faceted or boosted in SearchService.Search. This field is ignored
        # in a UserEvent. See SearchRequest.filter, SearchRequest.facet_specs and
        # SearchRequest.boost_spec for more details.
        # Corresponds to the JSON property `indexable`
        # @return [Boolean]
        attr_accessor :indexable
        alias_method :indexable?, :indexable
      
        # The numerical values of this custom attribute. For example, `[2.3, 15.4]` when
        # the key is "lengths_cm". Exactly one of text or numbers should be set.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `numbers`
        # @return [Array<Float>]
        attr_accessor :numbers
      
        # This field is normally ignored unless AttributesConfig.attribute_config_level
        # of the Catalog is set to the deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode.
        # For information about product-level attribute configuration, see [
        # Configuration modes](https://cloud.google.com/retail/docs/attribute-config#
        # config-modes). If true, custom attribute values are searchable by text queries
        # in SearchService.Search. This field is ignored in a UserEvent. Only set if
        # type text is set. Otherwise, a INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `searchable`
        # @return [Boolean]
        attr_accessor :searchable
        alias_method :searchable?, :searchable
      
        # The textual values of this custom attribute. For example, `["yellow", "green"]`
        # when the key is "color". Empty string is not allowed. Otherwise, an
        # INVALID_ARGUMENT error is returned. Exactly one of text or numbers should be
        # set. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexable = args[:indexable] if args.key?(:indexable)
          @numbers = args[:numbers] if args.key?(:numbers)
          @searchable = args[:searchable] if args.key?(:searchable)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A message with a list of double values.
      class GoogleCloudRetailV2betaDoubleList
        include Google::Apis::Core::Hashable
      
        # The list of double values.
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata for active A/B testing experiment.
      class GoogleCloudRetailV2betaExperimentInfo
        include Google::Apis::Core::Hashable
      
        # The fully qualified resource name of the experiment that provides the serving
        # config under test, should an active experiment exist. For example: `projects/*/
        # locations/global/catalogs/default_catalog/experiments/experiment_id`
        # Corresponds to the JSON property `experiment`
        # @return [String]
        attr_accessor :experiment
      
        # Metadata for active serving config A/B tests.
        # Corresponds to the JSON property `servingConfigExperiment`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment]
        attr_accessor :serving_config_experiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experiment = args[:experiment] if args.key?(:experiment)
          @serving_config_experiment = args[:serving_config_experiment] if args.key?(:serving_config_experiment)
        end
      end
      
      # Metadata for active serving config A/B tests.
      class GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment
        include Google::Apis::Core::Hashable
      
        # The fully qualified resource name of the serving config `Experiment.VariantArm.
        # serving_config_id` responsible for generating the search response. For example:
        # `projects/*/locations/*/catalogs/*/servingConfigs/*`.
        # Corresponds to the JSON property `experimentServingConfig`
        # @return [String]
        attr_accessor :experiment_serving_config
      
        # The fully qualified resource name of the original SearchRequest.placement in
        # the search request prior to reassignment by experiment API. For example: `
        # projects/*/locations/*/catalogs/*/servingConfigs/*`.
        # Corresponds to the JSON property `originalServingConfig`
        # @return [String]
        attr_accessor :original_serving_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experiment_serving_config = args[:experiment_serving_config] if args.key?(:experiment_serving_config)
          @original_serving_config = args[:original_serving_config] if args.key?(:original_serving_config)
        end
      end
      
      # Request message for the `ExportAnalyticsMetrics` method.
      class GoogleCloudRetailV2betaExportAnalyticsMetricsRequest
        include Google::Apis::Core::Hashable
      
        # A filtering expression to specify restrictions on returned metrics. The
        # expression is a sequence of terms. Each term applies a restriction to the
        # returned metrics. Use this expression to restrict results to a specific time
        # range. Currently we expect only one types of fields: * `timestamp`: This can
        # be specified twice, once with a less than operator and once with a greater
        # than operator. The `timestamp` restriction should result in one, contiguous,
        # valid, `timestamp` range. Some examples of valid filters expressions: *
        # Example 1: `timestamp > "2012-04-23T18:25:43.511Z" timestamp < "2012-04-23T18:
        # 30:43.511Z"` * Example 2: `timestamp > "2012-04-23T18:25:43.511Z"`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The output configuration setting.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Response of the ExportAnalyticsMetricsRequest. If the long running operation
      # was successful, then this message is returned by the google.longrunning.
      # Operations.response field if the operation was successful.
      class GoogleCloudRetailV2betaExportAnalyticsMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Configuration of destination for Export related errors.
      class GoogleCloudRetailV2betaExportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Export errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Export operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaExportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for ExportProducts method.
      class GoogleCloudRetailV2betaExportProductsRequest
        include Google::Apis::Core::Hashable
      
        # A filtering expression to specify restrictions on returned events. The
        # expression is a sequence of terms. Each term applies a restriction to the
        # returned products. Use this expression to restrict results to a specific time
        # range, tag, or stock state or to filter products by product type. For example,
        # `lastModifiedTime > "2012-04-23T18:25:43.511Z" lastModifiedTime<"2012-04-23T18:
        # 25:43.511Z" productType=primary` We expect only four types of fields: * `
        # lastModifiedTime`: This can be specified twice, once with a less than operator
        # and once with a greater than operator. The `lastModifiedTime` restriction
        # should result in one, contiguous, valid, last-modified, time range. * `
        # productType`: Supported values are `primary` and `variant`. The Boolean
        # operators `OR` and `NOT` are supported if the expression is enclosed in
        # parentheses and must be separated from the `productType` values by a space. * `
        # availability`: Supported values are `IN_STOCK`, `OUT_OF_STOCK`, `PREORDER`,
        # and `BACKORDER`. Boolean operators `OR` and `NOT` are supported if the
        # expression is enclosed in parentheses and must be separated from the `
        # availability` values by a space. * `Tag expressions`: Restricts output to
        # products that match all of the specified tags. Boolean operators `OR` and `NOT`
        # are supported if the expression is enclosed in parentheses and the operators
        # are separated from the tag values by a space. Also supported is '`-"tagA"`',
        # which is equivalent to '`NOT "tagA"`'. Tag values must be double-quoted, UTF-8
        # encoded strings and have a size limit of 1,000 characters. Some examples of
        # valid filters expressions: * Example 1: `lastModifiedTime > "2012-04-23T18:25:
        # 43.511Z" lastModifiedTime < "2012-04-23T18:30:43.511Z"` * Example 2: `
        # lastModifiedTime > "2012-04-23T18:25:43.511Z" productType = "variant"` *
        # Example 3: `tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional")
        # productType = "primary" lastModifiedTime < "2018-04-23T18:30:43.511Z"` *
        # Example 4: `lastModifiedTime > "2012-04-23T18:25:43.511Z"` * Example 5: `
        # availability = (IN_STOCK OR BACKORDER)`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The output configuration setting.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Response of the ExportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2betaExportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Request message for the `ExportUserEvents` method.
      class GoogleCloudRetailV2betaExportUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # A filtering expression to specify restrictions on returned events. The
        # expression is a sequence of terms. Each term applies a restriction to the
        # returned user events. Use this expression to restrict results to a specific
        # time range or to filter events by eventType. For example, `eventTime > "2012-
        # 04-23T18:25:43.511Z" eventsMissingCatalogItems eventTime<"2012-04-23T18:25:43.
        # 511Z" eventType=search` We expect only three types of fields: * `eventTime`:
        # This can be specified twice, once with a less than operator and once with a
        # greater than operator. The `eventTime` restriction should result in one,
        # contiguous, valid, `eventTime` range. * `eventType`: Boolean operators `OR`
        # and `NOT` are supported if the expression is enclosed in parentheses and the
        # operators are separated from the tag values by a space. * `
        # eventsMissingCatalogItems`: This restricts results to events for which catalog
        # items were not found in the catalog. The default behavior is to return only
        # those events for which catalog items were found. Some examples of valid
        # filters expressions: * Example 1: `eventTime > "2012-04-23T18:25:43.511Z"
        # eventTime < "2012-04-23T18:30:43.511Z"` * Example 2: `eventTime > "2012-04-
        # 23T18:25:43.511Z" eventType = detail-page-view` * Example 3: `
        # eventsMissingCatalogItems eventType = (NOT search) eventTime < "2018-04-23T18:
        # 30:43.511Z"` * Example 4: `eventTime > "2012-04-23T18:25:43.511Z"` * Example 5:
        # `eventType = (detail-page-view OR search)` * Example 6: `
        # eventsMissingCatalogItems`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The output configuration setting.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Response of the ExportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2betaExportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig]
        attr_accessor :errors_config
      
        # Output result that stores the information about where the exported data is
        # stored.
        # Corresponds to the JSON property `outputResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult]
        attr_accessor :output_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @output_result = args[:output_result] if args.key?(:output_result)
        end
      end
      
      # Fulfillment information, such as the store IDs for in-store pickup or region
      # IDs for different shipping methods.
      class GoogleCloudRetailV2betaFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # The IDs for this type, such as the store IDs for FulfillmentInfo.type.pickup-
        # in-store or the region IDs for FulfillmentInfo.type.same-day-delivery. A
        # maximum of 3000 values are allowed. Each value must be a string with a length
        # limit of 30 characters, matching the pattern `[a-zA-Z0-9_-]+`, such as "store1"
        # or "REGION-2". Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # The fulfillment type, including commonly used types (such as pickup in store
        # and same day delivery), and custom types. Customers have to map custom types
        # to their display names before rendering UI. Supported values: * "pickup-in-
        # store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-
        # type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5"
        # If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Gcs output result.
      class GoogleCloudRetailV2betaGcsOutputResult
        include Google::Apis::Core::Hashable
      
        # The uri of Gcs output
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Google Cloud Storage location for input content.
      class GoogleCloudRetailV2betaGcsSource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # product imports: * `product` (default): One JSON Product per line. Each
        # product must have a valid Product.id. * `product_merchant_center`: See [
        # Importing catalog data from Merchant Center](https://cloud.google.com/retail/
        # recommendations-ai/docs/upload-catalog#mc). Supported values for user events
        # imports: * `user_event` (default): One JSON UserEvent per line. * `
        # user_event_ga360`: Using https://support.google.com/analytics/answer/3437719.
        # Supported values for control imports: * `control` (default): One JSON Control
        # per line. Supported values for catalog attribute imports: * `catalog_attribute`
        # (default): One CSV CatalogAttribute per line.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. Google Cloud Storage URIs to input files. URI can be up to 2000
        # characters long. URIs can match the full object path (for example, `gs://
        # bucket/directory/object.json`) or a pattern matching one or more files, such
        # as `gs://bucket/directory/*.json`. A request can contain at most 100 files,
        # and each file can be up to 2 GB. See [Importing product information](https://
        # cloud.google.com/retail/recommendations-ai/docs/upload-catalog) for the
        # expected file format and setup instructions.
        # Corresponds to the JSON property `inputUris`
        # @return [Array<String>]
        attr_accessor :input_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_schema = args[:data_schema] if args.key?(:data_schema)
          @input_uris = args[:input_uris] if args.key?(:input_uris)
        end
      end
      
      # Configuration for a single generated question.
      class GoogleCloudRetailV2betaGenerativeQuestionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the question is asked at serving time.
        # Corresponds to the JSON property `allowedInConversation`
        # @return [Boolean]
        attr_accessor :allowed_in_conversation
        alias_method :allowed_in_conversation?, :allowed_in_conversation
      
        # Required. Resource name of the catalog. Format: projects/`project`/locations/`
        # location`/catalogs/`catalog`
        # Corresponds to the JSON property `catalog`
        # @return [String]
        attr_accessor :catalog
      
        # Output only. Values that can be used to answer the question.
        # Corresponds to the JSON property `exampleValues`
        # @return [Array<String>]
        attr_accessor :example_values
      
        # Required. The facet to which the question is associated.
        # Corresponds to the JSON property `facet`
        # @return [String]
        attr_accessor :facet
      
        # Optional. The question that will be used at serving time. Question can have a
        # max length of 300 bytes. When not populated, generated_question should be used.
        # Corresponds to the JSON property `finalQuestion`
        # @return [String]
        attr_accessor :final_question
      
        # Output only. The ratio of how often a question was asked.
        # Corresponds to the JSON property `frequency`
        # @return [Float]
        attr_accessor :frequency
      
        # Output only. The LLM generated question.
        # Corresponds to the JSON property `generatedQuestion`
        # @return [String]
        attr_accessor :generated_question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_in_conversation = args[:allowed_in_conversation] if args.key?(:allowed_in_conversation)
          @catalog = args[:catalog] if args.key?(:catalog)
          @example_values = args[:example_values] if args.key?(:example_values)
          @facet = args[:facet] if args.key?(:facet)
          @final_question = args[:final_question] if args.key?(:final_question)
          @frequency = args[:frequency] if args.key?(:frequency)
          @generated_question = args[:generated_question] if args.key?(:generated_question)
        end
      end
      
      # Configuration for overall generative question feature state.
      class GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig
        include Google::Apis::Core::Hashable
      
        # Required. Resource name of the affected catalog. Format: projects/`project`/
        # locations/`location`/catalogs/`catalog`
        # Corresponds to the JSON property `catalog`
        # @return [String]
        attr_accessor :catalog
      
        # Optional. Determines whether questions will be used at serving time. Note:
        # This feature cannot be enabled until initial data requirements are satisfied.
        # Corresponds to the JSON property `featureEnabled`
        # @return [Boolean]
        attr_accessor :feature_enabled
        alias_method :feature_enabled?, :feature_enabled
      
        # Optional. Minimum number of products in the response to trigger follow-up
        # questions. Value must be 0 or positive.
        # Corresponds to the JSON property `minimumProducts`
        # @return [Fixnum]
        attr_accessor :minimum_products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog = args[:catalog] if args.key?(:catalog)
          @feature_enabled = args[:feature_enabled] if args.key?(:feature_enabled)
          @minimum_products = args[:minimum_products] if args.key?(:minimum_products)
        end
      end
      
      # Response message of CatalogService.GetDefaultBranch.
      class GoogleCloudRetailV2betaGetDefaultBranchResponse
        include Google::Apis::Core::Hashable
      
        # Full resource name of the branch id currently set as default branch.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # This corresponds to SetDefaultBranchRequest.note field, when this branch was
        # set as default.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # The time when this branch is set to default.
        # Corresponds to the JSON property `setTime`
        # @return [String]
        attr_accessor :set_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch = args[:branch] if args.key?(:branch)
          @note = args[:note] if args.key?(:note)
          @set_time = args[:set_time] if args.key?(:set_time)
        end
      end
      
      # Product image. Recommendations AI and Retail Search use product images to
      # improve prediction and search results. Product images can be returned in
      # results, and are shown in prediction or search previews in the console. Please
      # try to provide correct product images and avoid using images with size too
      # small.
      class GoogleCloudRetailV2betaImage
        include Google::Apis::Core::Hashable
      
        # Height of the image in number of pixels. This field must be nonnegative.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Required. URI of the image. This field must be a valid UTF-8 encoded URI with
        # a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [image_link](https://support.google.
        # com/merchants/answer/6324350). Schema.org property [Product.image](https://
        # schema.org/image).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Width of the image in number of pixels. This field must be nonnegative.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @uri = args[:uri] if args.key?(:uri)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Request message for ImportCompletionData methods.
      class GoogleCloudRetailV2betaImportCompletionDataRequest
        include Google::Apis::Core::Hashable
      
        # The input config source for completion data.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig]
        attr_accessor :input_config
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification is sent to specified Pub/Sub topic. The
        # message data is JSON string of a Operation. Format of the Pub/Sub topic is `
        # projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
        end
      end
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2betaImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage prefix for import errors. This must be an empty, existing
        # Cloud Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaImportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification is sent to specified Pub/Sub topic. The
        # message data is JSON string of a Operation. Format of the Pub/Sub topic is `
        # projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Deprecated. This field is never set.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for Import methods.
      class GoogleCloudRetailV2betaImportProductsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source for products.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig]
        attr_accessor :input_config
      
        # Full Pub/Sub topic name for receiving notification. If this field is set, when
        # the import is finished, a notification is sent to specified Pub/Sub topic. The
        # message data is JSON string of a Operation. Format of the Pub/Sub topic is `
        # projects/`project`/topics/`topic``. It has to be within the same project as
        # ImportProductsRequest.parent. Make sure that both `cloud-retail-customer-data-
        # access@system.gserviceaccount.com` and `service-@gcp-sa-retail.iam.
        # gserviceaccount.com` have the `pubsub.topics.publish` IAM permission on the
        # topic. Only supported when ImportProductsRequest.reconciliation_mode is set to
        # `FULL`.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # The mode of reconciliation between existing products and the products to be
        # imported. Defaults to ReconciliationMode.INCREMENTAL.
        # Corresponds to the JSON property `reconciliationMode`
        # @return [String]
        attr_accessor :reconciliation_mode
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Indicates which fields in the provided imported `products` to update. If not
        # set, all fields are updated. If provided, only the existing product fields are
        # updated. Missing products will not be created.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @reconciliation_mode = args[:reconciliation_mode] if args.key?(:reconciliation_mode)
          @request_id = args[:request_id] if args.key?(:request_id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2betaImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Request message for the ImportUserEvents request.
      class GoogleCloudRetailV2betaImportUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source for user events.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig]
        attr_accessor :input_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2betaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # The public proto to represent the intent classification config. It will be
      # converted to the internal proto in the backend.
      class GoogleCloudRetailV2betaIntentClassificationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A list of keywords that will be used to classify the query to the "
        # BLOCKLISTED" intent type. The keywords are case insensitive.
        # Corresponds to the JSON property `blocklistKeywords`
        # @return [Array<String>]
        attr_accessor :blocklist_keywords
      
        # Optional. A list of intent types that will be disabled for this customer. The
        # intent types must match one of the predefined intent types defined at https://
        # cloud.google.com/retail/docs/reference/rpc/google.cloud.retail.v2alpha#
        # querytype
        # Corresponds to the JSON property `disabledIntentTypes`
        # @return [Array<String>]
        attr_accessor :disabled_intent_types
      
        # Optional. A list of examples for intent classification.
        # Corresponds to the JSON property `example`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaIntentClassificationConfigExample>]
        attr_accessor :example
      
        # Inline source for intent classifications.
        # Corresponds to the JSON property `inlineSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaIntentClassificationConfigInlineSource]
        attr_accessor :inline_source
      
        # Optional. Customers can use the preamble to specify any requirements for
        # blocklisting intent classification. This preamble will be added to the
        # blocklisting intent classification model prompt.
        # Corresponds to the JSON property `modelPreamble`
        # @return [String]
        attr_accessor :model_preamble
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocklist_keywords = args[:blocklist_keywords] if args.key?(:blocklist_keywords)
          @disabled_intent_types = args[:disabled_intent_types] if args.key?(:disabled_intent_types)
          @example = args[:example] if args.key?(:example)
          @inline_source = args[:inline_source] if args.key?(:inline_source)
          @model_preamble = args[:model_preamble] if args.key?(:model_preamble)
        end
      end
      
      # An example for intent classification.
      class GoogleCloudRetailV2betaIntentClassificationConfigExample
        include Google::Apis::Core::Hashable
      
        # Required. Whether the example is classified positively.
        # Corresponds to the JSON property `classifiedPositive`
        # @return [Boolean]
        attr_accessor :classified_positive
        alias_method :classified_positive?, :classified_positive
      
        # Optional. The intent_type must match one of the predefined intent types
        # defined at https://cloud.google.com/retail/docs/reference/rpc/google.cloud.
        # retail.v2alpha#querytype
        # Corresponds to the JSON property `intentType`
        # @return [String]
        attr_accessor :intent_type
      
        # Required. Example query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Optional. The reason for the intent classification. This is used to explain
        # the intent classification decision.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classified_positive = args[:classified_positive] if args.key?(:classified_positive)
          @intent_type = args[:intent_type] if args.key?(:intent_type)
          @query = args[:query] if args.key?(:query)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # An inline force intent classification configuration.
      class GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent
        include Google::Apis::Core::Hashable
      
        # Optional. The intent_type must match one of the predefined intent types
        # defined at https://cloud.google.com/retail/docs/reference/rpc/google.cloud.
        # retail.v2alpha#querytype
        # Corresponds to the JSON property `intentType`
        # @return [String]
        attr_accessor :intent_type
      
        # Optional. The operation to perform for the query.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Optional. A example query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent_type = args[:intent_type] if args.key?(:intent_type)
          @operation = args[:operation] if args.key?(:operation)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Inline source for intent classifications.
      class GoogleCloudRetailV2betaIntentClassificationConfigInlineSource
        include Google::Apis::Core::Hashable
      
        # Optional. A list of inline force intent classifications.
        # Corresponds to the JSON property `inlineForceIntents`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent>]
        attr_accessor :inline_force_intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline_force_intents = args[:inline_force_intents] if args.key?(:inline_force_intents)
        end
      end
      
      # A floating point interval.
      class GoogleCloudRetailV2betaInterval
        include Google::Apis::Core::Hashable
      
        # Exclusive upper bound.
        # Corresponds to the JSON property `exclusiveMaximum`
        # @return [Float]
        attr_accessor :exclusive_maximum
      
        # Exclusive lower bound.
        # Corresponds to the JSON property `exclusiveMinimum`
        # @return [Float]
        attr_accessor :exclusive_minimum
      
        # Inclusive upper bound.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Inclusive lower bound.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusive_maximum = args[:exclusive_maximum] if args.key?(:exclusive_maximum)
          @exclusive_minimum = args[:exclusive_minimum] if args.key?(:exclusive_minimum)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
        end
      end
      
      # Response for CatalogService.ListCatalogs method.
      class GoogleCloudRetailV2betaListCatalogsResponse
        include Google::Apis::Core::Hashable
      
        # All the customer's Catalogs.
        # Corresponds to the JSON property `catalogs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog>]
        attr_accessor :catalogs
      
        # A token that can be sent as ListCatalogsRequest.page_token to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalogs = args[:catalogs] if args.key?(:catalogs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListControls method.
      class GoogleCloudRetailV2betaListControlsResponse
        include Google::Apis::Core::Hashable
      
        # All the Controls for a given catalog.
        # Corresponds to the JSON property `controls`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl>]
        attr_accessor :controls
      
        # Pagination token, if not returned indicates the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @controls = args[:controls] if args.key?(:controls)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListQuestions method.
      class GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse
        include Google::Apis::Core::Hashable
      
        # All the questions for a given catalog.
        # Corresponds to the JSON property `generativeQuestionConfigs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig>]
        attr_accessor :generative_question_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generative_question_configs = args[:generative_question_configs] if args.key?(:generative_question_configs)
        end
      end
      
      # Response to a ListModelRequest.
      class GoogleCloudRetailV2betaListModelsResponse
        include Google::Apis::Core::Hashable
      
        # List of Models.
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel>]
        attr_accessor :models
      
        # Pagination token, if not returned indicates the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @models = args[:models] if args.key?(:models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ProductService.ListProducts method.
      class GoogleCloudRetailV2betaListProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as ListProductsRequest.page_token to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Products.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # Response for ListServingConfigs method.
      class GoogleCloudRetailV2betaListServingConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token, if not returned indicates the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All the ServingConfigs for a given catalog.
        # Corresponds to the JSON property `servingConfigs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig>]
        attr_accessor :serving_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @serving_configs = args[:serving_configs] if args.key?(:serving_configs)
        end
      end
      
      # The inventory information at a place (e.g. a store) identified by a place ID.
      class GoogleCloudRetailV2betaLocalInventory
        include Google::Apis::Core::Hashable
      
        # Optional. Additional local inventory attributes, for example, store name,
        # promotion tags, etc. This field needs to pass all below criteria, otherwise an
        # INVALID_ARGUMENT error is returned: * At most 30 attributes are allowed. * The
        # key must be a UTF-8 encoded string with a length limit of 32 characters. * The
        # key must match the pattern: `a-zA-Z0-9*`. For example, key0LikeThis or
        # KEY_1_LIKE_THIS. * The attribute values must be of the same type (text or
        # number). * Only 1 value is allowed for each attribute. * For text values, the
        # length limit is 256 UTF-8 characters. * The attribute does not support search.
        # The `searchable` field should be unset or set to false. * The max summed total
        # bytes of custom attribute keys and values per product is 5MiB.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # Optional. Supported fulfillment types. Valid fulfillment type values include
        # commonly used types (such as pickup in store and same day delivery), and
        # custom types. Customers have to map custom types to their display names before
        # rendering UI. Supported values: * "pickup-in-store" * "ship-to-store" * "same-
        # day-delivery" * "next-day-delivery" * "custom-type-1" * "custom-type-2" * "
        # custom-type-3" * "custom-type-4" * "custom-type-5" If this field is set to an
        # invalid value other than these, an INVALID_ARGUMENT error is returned. All the
        # elements must be distinct. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `fulfillmentTypes`
        # @return [Array<String>]
        attr_accessor :fulfillment_types
      
        # Optional. The place ID for the current set of inventory information.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # The price information of a Product.
        # Corresponds to the JSON property `priceInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo]
        attr_accessor :price_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @fulfillment_types = args[:fulfillment_types] if args.key?(:fulfillment_types)
          @place_id = args[:place_id] if args.key?(:place_id)
          @price_info = args[:price_info] if args.key?(:price_info)
        end
      end
      
      # Merchant Center Feed filter criterion.
      class GoogleCloudRetailV2betaMerchantCenterFeedFilter
        include Google::Apis::Core::Hashable
      
        # AFM data source ID.
        # Corresponds to the JSON property `dataSourceId`
        # @return [Fixnum]
        attr_accessor :data_source_id
      
        # Merchant Center primary feed name. The name is used for the display purposes
        # only.
        # Corresponds to the JSON property `primaryFeedName`
        # @return [String]
        attr_accessor :primary_feed_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @primary_feed_name = args[:primary_feed_name] if args.key?(:primary_feed_name)
        end
      end
      
      # Represents a link between a Merchant Center account and a branch. After a link
      # is established, products from the linked Merchant Center account are streamed
      # to the linked branch.
      class GoogleCloudRetailV2betaMerchantCenterLink
        include Google::Apis::Core::Hashable
      
        # The branch ID (e.g. 0/1/2) within this catalog that products from
        # merchant_center_account_id are streamed to. When updating this field, an empty
        # value will use the currently configured default branch. However, changing the
        # default branch later on won't change the linked branch here. A single branch
        # ID can only have one linked Merchant Center account ID.
        # Corresponds to the JSON property `branchId`
        # @return [String]
        attr_accessor :branch_id
      
        # String representing the destination to import for, all if left empty. List of
        # possible values is given in [Included destination](https://support.google.com/
        # merchants/answer/7501026). List of allowed string values: "Shopping_ads", "
        # Buy_on_google_listings", "Display_ads", "Local_inventory _ads", "Free_listings"
        # , "Free_local_listings" NOTE: The string values are case sensitive.
        # Corresponds to the JSON property `destinations`
        # @return [Array<String>]
        attr_accessor :destinations
      
        # Criteria for the Merchant Center feeds to be ingested via the link. All offers
        # will be ingested if the list is empty. Otherwise the offers will be ingested
        # from selected feeds.
        # Corresponds to the JSON property `feeds`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterFeedFilter>]
        attr_accessor :feeds
      
        # Language of the title/description and other string attributes. Use language
        # tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). ISO
        # 639-1. This specifies the language of offers in Merchant Center that will be
        # accepted. If empty no language filtering will be performed. Example value: `en`
        # .
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The linked [Merchant Center account ID](https://developers.google.
        # com/shopping-content/guides/accountstatuses). The account must be a standalone
        # account or a sub-account of a MCA.
        # Corresponds to the JSON property `merchantCenterAccountId`
        # @return [Fixnum]
        attr_accessor :merchant_center_account_id
      
        # Region code of offers to accept. 2-letter Uppercase ISO 3166-1 alpha-2 code.
        # List of values can be found [here](https://www.iana.org/assignments/language-
        # subtag-registry/language-subtag-registry) under the `region` tag. If left
        # blank no region filtering will be performed. Example value: `US`.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_id = args[:branch_id] if args.key?(:branch_id)
          @destinations = args[:destinations] if args.key?(:destinations)
          @feeds = args[:feeds] if args.key?(:feeds)
          @language_code = args[:language_code] if args.key?(:language_code)
          @merchant_center_account_id = args[:merchant_center_account_id] if args.key?(:merchant_center_account_id)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Configures Merchant Center linking. Links contained in the config will be used
      # to sync data from a Merchant Center account to a Cloud Retail branch.
      class GoogleCloudRetailV2betaMerchantCenterLinkingConfig
        include Google::Apis::Core::Hashable
      
        # Links between Merchant Center accounts and branches.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLink>]
        attr_accessor :links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
        end
      end
      
      # Metadata that describes the training and serving parameters of a Model. A
      # Model can be associated with a ServingConfig and then queried through the
      # Predict API.
      class GoogleCloudRetailV2betaModel
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp the Recommendation Model was created at.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The state of data requirements for this model: `DATA_OK` and `
        # DATA_ERROR`. Recommendation model cannot be trained if the data is in `
        # DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if
        # serving state is `ACTIVE`: models were trained successfully before, but cannot
        # be refreshed because model no longer has sufficient data for training.
        # Corresponds to the JSON property `dataState`
        # @return [String]
        attr_accessor :data_state
      
        # Required. The display name of the model. Should be human readable, used to
        # display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8
        # encoded string with limit of 1024 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by
        # attributes is enabled for the model.
        # Corresponds to the JSON property `filteringOption`
        # @return [String]
        attr_accessor :filtering_option
      
        # Output only. The timestamp when the latest successful tune finished.
        # Corresponds to the JSON property `lastTuneTime`
        # @return [String]
        attr_accessor :last_tune_time
      
        # Additional model features config.
        # Corresponds to the JSON property `modelFeaturesConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModelModelFeaturesConfig]
        attr_accessor :model_features_config
      
        # Required. The fully qualified resource name of the model. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # ` catalog_id has char limit of 50. recommendation_model_id has char limit of
        # 40.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The optimization objective e.g. `cvr`. Currently supported values: `
        # ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on
        # model type. Default depends on type of recommendation: `recommended-for-you` =>
        # `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `
        # revenue_per_order` This field together with optimization_objective describe
        # model metadata to use to control model training and serving. See https://cloud.
        # google.com/retail/docs/models for more details on what the model metadata
        # control and which combination of parameters are valid. For invalid
        # combinations of parameters (e.g. type = `frequently-bought-together` and
        # optimization_objective = `ctr`), you receive an error 400 if you try to create/
        # update a recommendation with this set of knobs.
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # Optional. The state of periodic tuning. The period we use is 3 months - to do
        # a one-off tune earlier use the `TuneModel` method. Default value is `
        # PERIODIC_TUNING_ENABLED`.
        # Corresponds to the JSON property `periodicTuningState`
        # @return [String]
        attr_accessor :periodic_tuning_state
      
        # Output only. The list of valid serving configs associated with the
        # PageOptimizationConfig.
        # Corresponds to the JSON property `servingConfigLists`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModelServingConfigList>]
        attr_accessor :serving_config_lists
      
        # Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
        # Corresponds to the JSON property `servingState`
        # @return [String]
        attr_accessor :serving_state
      
        # Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`)
        # . Since part of the cost of running the service is frequency of training -
        # this can be used to determine when to train model in order to control cost. If
        # not specified: the default value for `CreateModel` method is `TRAINING`. The
        # default value for `UpdateModel` method is to keep the state the same as before.
        # Corresponds to the JSON property `trainingState`
        # @return [String]
        attr_accessor :training_state
      
        # Output only. The tune operation associated with the model. Can be used to
        # determine if there is an ongoing tune for this recommendation. Empty field
        # implies no tune is goig on.
        # Corresponds to the JSON property `tuningOperation`
        # @return [String]
        attr_accessor :tuning_operation
      
        # Required. The type of model e.g. `home-page`. Currently supported values: `
        # recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `
        # page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `
        # recently-viewed`(readonly value). This field together with
        # optimization_objective describe model metadata to use to control model
        # training and serving. See https://cloud.google.com/retail/docs/models for more
        # details on what the model metadata control and which combination of parameters
        # are valid. For invalid combinations of parameters (e.g. type = `frequently-
        # bought-together` and optimization_objective = `ctr`), you receive an error 400
        # if you try to create/update a recommendation with this set of knobs.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Timestamp the Recommendation Model was last updated. E.g. if a
        # Recommendation Model was paused - this would be the time the pause was
        # initiated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_state = args[:data_state] if args.key?(:data_state)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filtering_option = args[:filtering_option] if args.key?(:filtering_option)
          @last_tune_time = args[:last_tune_time] if args.key?(:last_tune_time)
          @model_features_config = args[:model_features_config] if args.key?(:model_features_config)
          @name = args[:name] if args.key?(:name)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @periodic_tuning_state = args[:periodic_tuning_state] if args.key?(:periodic_tuning_state)
          @serving_config_lists = args[:serving_config_lists] if args.key?(:serving_config_lists)
          @serving_state = args[:serving_state] if args.key?(:serving_state)
          @training_state = args[:training_state] if args.key?(:training_state)
          @tuning_operation = args[:tuning_operation] if args.key?(:tuning_operation)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Additional configs for the frequently-bought-together model type.
      class GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the context of the model when it is used in predict
        # requests. Can only be set for the `frequently-bought-together` type. If it isn'
        # t specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
        # Corresponds to the JSON property `contextProductsType`
        # @return [String]
        attr_accessor :context_products_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_products_type = args[:context_products_type] if args.key?(:context_products_type)
        end
      end
      
      # Additional model features config.
      class GoogleCloudRetailV2betaModelModelFeaturesConfig
        include Google::Apis::Core::Hashable
      
        # Additional configs for the frequently-bought-together model type.
        # Corresponds to the JSON property `frequentlyBoughtTogetherConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig]
        attr_accessor :frequently_bought_together_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequently_bought_together_config = args[:frequently_bought_together_config] if args.key?(:frequently_bought_together_config)
        end
      end
      
      # Represents an ordered combination of valid serving configs, which can be used
      # for `PAGE_OPTIMIZATION` recommendations.
      class GoogleCloudRetailV2betaModelServingConfigList
        include Google::Apis::Core::Hashable
      
        # Optional. A set of valid serving configs that may be used for `
        # PAGE_OPTIMIZATION`.
        # Corresponds to the JSON property `servingConfigIds`
        # @return [Array<String>]
        attr_accessor :serving_config_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serving_config_ids = args[:serving_config_ids] if args.key?(:serving_config_ids)
        end
      end
      
      # The output configuration setting.
      class GoogleCloudRetailV2betaOutputConfig
        include Google::Apis::Core::Hashable
      
        # The BigQuery output destination configuration.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputConfigBigQueryDestination]
        attr_accessor :bigquery_destination
      
        # The Google Cloud Storage output destination configuration.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputConfigGcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # The BigQuery output destination configuration.
      class GoogleCloudRetailV2betaOutputConfigBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The ID of a BigQuery Dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The prefix of exported BigQuery tables.
        # Corresponds to the JSON property `tableIdPrefix`
        # @return [String]
        attr_accessor :table_id_prefix
      
        # Required. Describes the table type. The following values are supported: * `
        # table`: A BigQuery native table. * `view`: A virtual table defined by a SQL
        # query.
        # Corresponds to the JSON property `tableType`
        # @return [String]
        attr_accessor :table_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @table_id_prefix = args[:table_id_prefix] if args.key?(:table_id_prefix)
          @table_type = args[:table_type] if args.key?(:table_type)
        end
      end
      
      # The Google Cloud Storage output destination configuration.
      class GoogleCloudRetailV2betaOutputConfigGcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The output uri prefix for saving output data to json files. Some
        # mapping examples are as follows: output_uri_prefix sample output(assuming the
        # object is foo.json) ======================== ==================================
        # =========== gs://bucket/ gs://bucket/foo.json gs://bucket/folder/ gs://bucket/
        # folder/foo.json gs://bucket/folder/item_ gs://bucket/folder/item_foo.json
        # Corresponds to the JSON property `outputUriPrefix`
        # @return [String]
        attr_accessor :output_uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri_prefix = args[:output_uri_prefix] if args.key?(:output_uri_prefix)
        end
      end
      
      # Output result that stores the information about where the exported data is
      # stored.
      class GoogleCloudRetailV2betaOutputResult
        include Google::Apis::Core::Hashable
      
        # The BigQuery location where the result is stored.
        # Corresponds to the JSON property `bigqueryResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQueryOutputResult>]
        attr_accessor :bigquery_result
      
        # The Google Cloud Storage location where the result is stored.
        # Corresponds to the JSON property `gcsResult`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsOutputResult>]
        attr_accessor :gcs_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_result = args[:bigquery_result] if args.key?(:bigquery_result)
          @gcs_result = args[:gcs_result] if args.key?(:gcs_result)
        end
      end
      
      # Request for pausing training of a model.
      class GoogleCloudRetailV2betaPauseModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for pinning to be returned in the response. This is used for
      # distinguishing between applied vs dropped pins.
      class GoogleCloudRetailV2betaPinControlMetadata
        include Google::Apis::Core::Hashable
      
        # Map of all matched pins, keyed by pin position.
        # Corresponds to the JSON property `allMatchedPins`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPinControlMetadataProductPins>]
        attr_accessor :all_matched_pins
      
        # Map of pins that were dropped due to overlap with other matching pins, keyed
        # by pin position.
        # Corresponds to the JSON property `droppedPins`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPinControlMetadataProductPins>]
        attr_accessor :dropped_pins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_matched_pins = args[:all_matched_pins] if args.key?(:all_matched_pins)
          @dropped_pins = args[:dropped_pins] if args.key?(:dropped_pins)
        end
      end
      
      # List of product ids which have associated pins.
      class GoogleCloudRetailV2betaPinControlMetadataProductPins
        include Google::Apis::Core::Hashable
      
        # List of product ids which have associated pins.
        # Corresponds to the JSON property `productId`
        # @return [Array<String>]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # Request message for Predict method.
      class GoogleCloudRetailV2betaPredictRequest
        include Google::Apis::Core::Hashable
      
        # Filter for restricting prediction results with a length limit of 5,000
        # characters. Accepts values for tags and the `filterOutOfStockItems` flag. *
        # Tag expressions. Restricts predictions to products that match all of the
        # specified tags. Boolean operators `OR` and `NOT` are supported if the
        # expression is enclosed in parentheses, and must be separated from the tag
        # values by a space. `-"tagA"` is also supported and is equivalent to `NOT "tagA"
        # `. Tag values must be double quoted UTF-8 encoded strings with a size limit of
        # 1,000 characters. Note: "Recently viewed" models don't support tag filtering
        # at the moment. * filterOutOfStockItems. Restricts predictions to products that
        # do not have a stockState value of OUT_OF_STOCK. Examples: * tag=("Red" OR "
        # Blue") tag="New-Arrival" tag=(NOT "promotional") * filterOutOfStockItems tag=(-
        # "promotional") * filterOutOfStockItems If your filter blocks all prediction
        # results, the API will return *no* results. If instead you want empty result
        # sets to return generic (unfiltered) popular products, set `strictFiltering` to
        # False in `PredictRequest.params`. Note that the API will never return items
        # with storageStatus of "EXPIRED" or "DELETED" regardless of filter choices. If `
        # filterSyntaxV2` is set to true under the `params` field, then attribute-based
        # expressions are expected instead of the above described tag-based syntax.
        # Examples: * (colors: ANY("Red", "Blue")) AND NOT (categories: ANY("Phones")) *
        # (availability: ANY("IN_STOCK")) AND (colors: ANY("Red") OR categories: ANY("
        # Phones")) For more information, see [Filter recommendations](https://cloud.
        # google.com/retail/docs/filter-recs).
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The labels applied to a resource must meet the following requirements: * Each
        # resource can have multiple labels, up to a maximum of 64. * Each label must be
        # a key-value pair. * Keys have a minimum length of 1 character and a maximum
        # length of 63 characters and cannot be empty. Values can be empty and have a
        # maximum length of 63 characters. * Keys and values can contain only lowercase
        # letters, numeric characters, underscores, and dashes. All characters must use
        # UTF-8 encoding, and international characters are allowed. * The key portion of
        # a label must be unique. However, you can use the same key with multiple
        # resources. * Keys must start with a lowercase letter or international
        # character. See [Google Cloud Document](https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels#requirements) for more details.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Maximum number of results to return. Set this property to the number of
        # prediction results needed. If zero, the service will choose a reasonable
        # default. The maximum allowed value is 100. Values above 100 will be coerced to
        # 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # This field is not used; leave it unset.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Additional domain specific parameters for the predictions. Allowed values: * `
        # returnProduct`: Boolean. If set to true, the associated product object will be
        # returned in the `results.metadata` field in the prediction response. * `
        # returnScore`: Boolean. If set to true, the prediction 'score' corresponding to
        # each returned product will be set in the `results.metadata` field in the
        # prediction response. The given 'score' indicates the probability of a product
        # being clicked/purchased given the user's context and history. * `
        # strictFiltering`: Boolean. True by default. If set to false, the service will
        # return generic (unfiltered) popular products instead of empty if your filter
        # blocks all prediction results. * `priceRerankLevel`: String. Default empty. If
        # set to be non-empty, then it needs to be one of `'no-price-reranking', 'low-
        # price-reranking', 'medium-price-reranking', 'high-price-reranking'`. This
        # gives request-level control and adjusts prediction results based on product
        # price. * `diversityLevel`: String. Default empty. If set to be non-empty, then
        # it needs to be one of `'no-diversity', 'low-diversity', 'medium-diversity', '
        # high-diversity', 'auto-diversity'`. This gives request-level control and
        # adjusts prediction results based on product category. * `filterSyntaxV2`:
        # Boolean. False by default. If set to true, the `filter` field is interpreteted
        # according to the new, attribute-based syntax.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # UserEvent captures all metadata information Retail API needs to know about how
        # end users interact with customers' website.
        # Corresponds to the JSON property `userEvent`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent]
        attr_accessor :user_event
      
        # Use validate only mode for this prediction query. If set to true, a dummy
        # model will be used that returns arbitrary products. Note that the validate
        # only mode should only be used for testing the API, or if the model is not
        # ready.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @params = args[:params] if args.key?(:params)
          @user_event = args[:user_event] if args.key?(:user_event)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for predict method.
      class GoogleCloudRetailV2betaPredictResponse
        include Google::Apis::Core::Hashable
      
        # A unique attribution token. This should be included in the UserEvent logs
        # resulting from this recommendation, which enables accurate attribution of
        # recommendation model performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # IDs of products in the request that were missing from the inventory.
        # Corresponds to the JSON property `missingIds`
        # @return [Array<String>]
        attr_accessor :missing_ids
      
        # A list of recommended products. The order represents the ranking (from the
        # most relevant product to the least).
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult>]
        attr_accessor :results
      
        # True if the validateOnly property was set in the request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @missing_ids = args[:missing_ids] if args.key?(:missing_ids)
          @results = args[:results] if args.key?(:results)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # PredictionResult represents the recommendation prediction results.
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        include Google::Apis::Core::Hashable
      
        # ID of the recommended product
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional product metadata / annotations. Possible values: * `product`: JSON
        # representation of the product. Is set if `returnProduct` is set to true in `
        # PredictRequest.params`. * `score`: Prediction score in double value. Is set if
        # `returnScore` is set to true in `PredictRequest.params`.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # The price information of a Product.
      class GoogleCloudRetailV2betaPriceInfo
        include Google::Apis::Core::Hashable
      
        # The costs associated with the sale of a particular product. Used for gross
        # profit reporting. * Profit = price - cost Google Merchant Center property [
        # cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-
        # currency-codes.html). If this field is an unrecognizable currency code, an
        # INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the
        # same Product.primary_product_id must share the same currency_code. Otherwise,
        # a FAILED_PRECONDITION error is returned.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Price of the product without any discount. If zero, by default set to be the
        # price. If set, original_price should be greater than or equal to price,
        # otherwise an INVALID_ARGUMENT error is thrown.
        # Corresponds to the JSON property `originalPrice`
        # @return [Float]
        attr_accessor :original_price
      
        # Price of the product. Google Merchant Center property [price](https://support.
        # google.com/merchants/answer/6324371). Schema.org property [Offer.price](https:/
        # /schema.org/price).
        # Corresponds to the JSON property `price`
        # @return [Float]
        attr_accessor :price
      
        # The timestamp when the price starts to be effective. This can be set as a
        # future timestamp, and the price is only used for search after
        # price_effective_time. If so, the original_price must be set and original_price
        # is used before price_effective_time. Do not set if price is always effective
        # because it will cause additional latency during search.
        # Corresponds to the JSON property `priceEffectiveTime`
        # @return [String]
        attr_accessor :price_effective_time
      
        # The timestamp when the price stops to be effective. The price is used for
        # search before price_expire_time. If this field is set, the original_price must
        # be set and original_price is used after price_expire_time. Do not set if price
        # is always effective because it will cause additional latency during search.
        # Corresponds to the JSON property `priceExpireTime`
        # @return [String]
        attr_accessor :price_expire_time
      
        # The price range of all variant Product having the same Product.
        # primary_product_id.
        # Corresponds to the JSON property `priceRange`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfoPriceRange]
        attr_accessor :price_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @original_price = args[:original_price] if args.key?(:original_price)
          @price = args[:price] if args.key?(:price)
          @price_effective_time = args[:price_effective_time] if args.key?(:price_effective_time)
          @price_expire_time = args[:price_expire_time] if args.key?(:price_expire_time)
          @price_range = args[:price_range] if args.key?(:price_range)
        end
      end
      
      # The price range of all variant Product having the same Product.
      # primary_product_id.
      class GoogleCloudRetailV2betaPriceInfoPriceRange
        include Google::Apis::Core::Hashable
      
        # A floating point interval.
        # Corresponds to the JSON property `originalPrice`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :original_price
      
        # A floating point interval.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_price = args[:original_price] if args.key?(:original_price)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # Product captures all metadata information of items to be recommended or
      # searched.
      class GoogleCloudRetailV2betaProduct
        include Google::Apis::Core::Hashable
      
        # Highly encouraged. Extra product attributes to be included. For example, for
        # products, this could include the store name, vendor, style, color, etc. These
        # are very strong signals for recommendation model, thus we highly recommend
        # providing the attributes here. Features that can take on one of a limited
        # number of possible values. Two types of features can be set are: Textual
        # features. some examples would be the brand/maker of a product, or country of a
        # customer. Numerical features. Some examples would be the height/weight of a
        # product, or age of a customer. For example: `` "vendor": `"text": ["vendor123",
        # "vendor456"]`, "lengths_cm": `"numbers":[2.3, 15.4]`, "heights_cm": `"numbers"
        # :[8.1, 6.4]` ``. This field needs to pass all below criteria, otherwise an
        # INVALID_ARGUMENT error is returned: * Max entries count: 200. * The key must
        # be a UTF-8 encoded string with a length limit of 128 characters. * For
        # indexable attribute, the key must match the pattern: `a-zA-Z0-9*`. For example,
        # `key0LikeThis` or `KEY_1_LIKE_THIS`. * For text attributes, at most 400
        # values are allowed. Empty values are not allowed. Each value must be a non-
        # empty UTF-8 encoded string with a length limit of 256 characters. * For number
        # attributes, at most 400 values are allowed.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # An intended audience of the Product for whom it's sold.
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAudience]
        attr_accessor :audience
      
        # The online availability of the Product. Default to Availability.IN_STOCK. For
        # primary products with variants set the availability of the primary as
        # Availability.OUT_OF_STOCK and set the true availability at the variant level.
        # This way the primary product will be considered "in stock" as long as it has
        # at least one variant in stock. For primary products with no variants set the
        # true availability at the primary level. Corresponding properties: Google
        # Merchant Center property [availability](https://support.google.com/merchants/
        # answer/6324448). Schema.org property [Offer.availability](https://schema.org/
        # availability).
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The available quantity of the item.
        # Corresponds to the JSON property `availableQuantity`
        # @return [Fixnum]
        attr_accessor :available_quantity
      
        # The timestamp when this Product becomes available for SearchService.Search.
        # Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and
        # ignored for Type.VARIANT.
        # Corresponds to the JSON property `availableTime`
        # @return [String]
        attr_accessor :available_time
      
        # The brands of the product. A maximum of 30 brands are allowed unless
        # overridden through the Google Cloud console. Each brand must be a UTF-8
        # encoded string with a length limit of 1,000 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant
        # Center property [brand](https://support.google.com/merchants/answer/6324351).
        # Schema.org property [Product.brand](https://schema.org/brand).
        # Corresponds to the JSON property `brands`
        # @return [Array<String>]
        attr_accessor :brands
      
        # Product categories. This field is repeated for supporting one product
        # belonging to several parallel categories. Strongly recommended using the full
        # path for better search / recommendation quality. To represent full path of
        # category, use '>' sign to separate different hierarchies. If '>' is part of
        # the category name, replace it with other character(s). For example, if a shoes
        # product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports &
        # Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "
        # categories": [ "Shoes & Accessories > Shoes", "Sports & Fitness > Athletic
        # Clothing > Shoes" ] Must be set for Type.PRIMARY Product otherwise an
        # INVALID_ARGUMENT error is returned. At most 250 values are allowed per Product
        # unless overridden through the Google Cloud console. Empty values are not
        # allowed. Each value must be a UTF-8 encoded string with a length limit of 5,
        # 000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponding properties: Google Merchant Center property
        # google_product_category. Schema.org property [Product.category] (https://
        # schema.org/category). [mc_google_product_category]: https://support.google.com/
        # merchants/answer/6324436
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # The id of the collection members when type is Type.COLLECTION. Non-existent
        # product ids are allowed. The type of the members must be either Type.PRIMARY
        # or Type.VARIANT otherwise an INVALID_ARGUMENT error is thrown. Should not set
        # it for other types. A maximum of 1000 values are allowed. Otherwise, an
        # INVALID_ARGUMENT error is return.
        # Corresponds to the JSON property `collectionMemberIds`
        # @return [Array<String>]
        attr_accessor :collection_member_ids
      
        # The color information of a Product.
        # Corresponds to the JSON property `colorInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaColorInfo]
        attr_accessor :color_info
      
        # The condition of the product. Strongly encouraged to use the standard values: "
        # new", "refurbished", "used". A maximum of 1 value is allowed per Product. Each
        # value must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties:
        # Google Merchant Center property [condition](https://support.google.com/
        # merchants/answer/6324469). Schema.org property [Offer.itemCondition](https://
        # schema.org/itemCondition).
        # Corresponds to the JSON property `conditions`
        # @return [Array<String>]
        attr_accessor :conditions
      
        # Product description. This field must be a UTF-8 encoded string with a length
        # limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponding properties: Google Merchant Center property [description](https:/
        # /support.google.com/merchants/answer/6324468). Schema.org property [Product.
        # description](https://schema.org/description).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Note that this field is applied in the following ways: * If the Product is
        # already expired when it is uploaded, this product is not indexed for search. *
        # If the Product is not expired when it is uploaded, only the Type.PRIMARY's and
        # Type.COLLECTION's expireTime is respected, and Type.VARIANT's expireTime is
        # not used. In general, we suggest the users to delete the stale products
        # explicitly, instead of using this field to determine staleness. expire_time
        # must be later than available_time and publish_time, otherwise an
        # INVALID_ARGUMENT error is thrown. Corresponding properties: Google Merchant
        # Center property [expiration_date](https://support.google.com/merchants/answer/
        # 6324499).
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Fulfillment information, such as the store IDs for in-store pickup or region
        # IDs for different shipping methods. All the elements must have distinct
        # FulfillmentInfo.type. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaFulfillmentInfo>]
        attr_accessor :fulfillment_info
      
        # The Global Trade Item Number (GTIN) of the product. This field must be a UTF-8
        # encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. This field must be a Unigram. Otherwise,
        # an INVALID_ARGUMENT error is returned. Corresponding properties: Google
        # Merchant Center property [gtin](https://support.google.com/merchants/answer/
        # 6324461). Schema.org property [Product.isbn](https://schema.org/isbn), [
        # Product.gtin8](https://schema.org/gtin8), [Product.gtin12](https://schema.org/
        # gtin12), [Product.gtin13](https://schema.org/gtin13), or [Product.gtin14](
        # https://schema.org/gtin14). If the value is not a valid GTIN, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Immutable. Product identifier, which is the final component of name. For
        # example, this field is "id_1", if name is `projects/*/locations/global/
        # catalogs/default_catalog/branches/default_branch/products/id_1`. This field
        # must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties:
        # Google Merchant Center property [id](https://support.google.com/merchants/
        # answer/6324405). Schema.org property [Product.sku](https://schema.org/sku).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Product images for the product. We highly recommend putting the main image
        # first. A maximum of 300 images are allowed. Corresponding properties: Google
        # Merchant Center property [image_link](https://support.google.com/merchants/
        # answer/6324350). Schema.org property [Product.image](https://schema.org/image).
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage>]
        attr_accessor :images
      
        # Language of the title/description and other string attributes. Use language
        # tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). For
        # product prediction, this field is ignored and the model automatically detects
        # the text language. The Product can include text in different languages, but
        # duplicating Products to provide text in multiple languages can result in
        # degraded model performance. For product search this field is in use. It
        # defaults to "en-US" if unset.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. A list of local inventories specific to different places. This
        # field can be managed by ProductService.AddLocalInventories and ProductService.
        # RemoveLocalInventories APIs if fine-grained, high-volume updates are necessary.
        # Corresponds to the JSON property `localInventories`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory>]
        attr_accessor :local_inventories
      
        # The material of the product. For example, "leather", "wooden". A maximum of 20
        # values are allowed. Each value must be a UTF-8 encoded string with a length
        # limit of 200 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponding properties: Google Merchant Center property [material](https://
        # support.google.com/merchants/answer/6324410). Schema.org property [Product.
        # material](https://schema.org/material).
        # Corresponds to the JSON property `materials`
        # @return [Array<String>]
        attr_accessor :materials
      
        # Immutable. Full resource name of the product, such as `projects/*/locations/
        # global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The pattern or graphic print of the product. For example, "striped", "polka
        # dot", "paisley". A maximum of 20 values are allowed per Product. Each value
        # must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties:
        # Google Merchant Center property [pattern](https://support.google.com/merchants/
        # answer/6324483). Schema.org property [Product.pattern](https://schema.org/
        # pattern).
        # Corresponds to the JSON property `patterns`
        # @return [Array<String>]
        attr_accessor :patterns
      
        # The price information of a Product.
        # Corresponds to the JSON property `priceInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo]
        attr_accessor :price_info
      
        # Variant group identifier. Must be an id, with the same parent branch with this
        # product. Otherwise, an error is thrown. For Type.PRIMARY Products, this field
        # can only be empty or set to the same value as id. For VARIANT Products, this
        # field cannot be empty. A maximum of 2,000 products are allowed to share the
        # same Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponding properties: Google Merchant Center property [item_group_id](
        # https://support.google.com/merchants/answer/6324507). Schema.org property [
        # Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
        # Corresponds to the JSON property `primaryProductId`
        # @return [String]
        attr_accessor :primary_product_id
      
        # The promotions applied to the product. A maximum of 10 values are allowed per
        # Product. Only Promotion.promotion_id will be used, other fields will be
        # ignored if set.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPromotion>]
        attr_accessor :promotions
      
        # The timestamp when the product is published by the retailer for the first time,
        # which indicates the freshness of the products. Note that this field is
        # different from available_time, given it purely describes product freshness
        # regardless of when it is available on search and recommendation.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # The rating of a Product.
        # Corresponds to the JSON property `rating`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRating]
        attr_accessor :rating
      
        # Indicates which fields in the Products are returned in SearchResponse.
        # Supported fields for all types: * audience * availability * brands *
        # color_info * conditions * gtin * materials * name * patterns * price_info *
        # rating * sizes * title * uri Supported fields only for Type.PRIMARY and Type.
        # COLLECTION: * categories * description * images Supported fields only for Type.
        # VARIANT: * Only the first image in images To mark attributes as retrievable,
        # include paths of the form "attributes.key" where "key" is the key of a custom
        # attribute, as specified in attributes. For Type.PRIMARY and Type.COLLECTION,
        # the following fields are always returned in SearchResponse by default: * name
        # For Type.VARIANT, the following fields are always returned in by default: *
        # name * color_info Note: Returning more fields in SearchResponse can increase
        # response payload size and serving latency. This field is deprecated. Use the
        # retrievable site-wide control instead.
        # Corresponds to the JSON property `retrievableFields`
        # @return [String]
        attr_accessor :retrievable_fields
      
        # The size of the product. To represent different size systems or size types,
        # consider using this format: [[[size_system:]size_type:]size_value]. For
        # example, in "US:MENS:M", "US" represents size system; "MENS" represents size
        # type; "M" represents size value. In "GIRLS:27", size system is empty; "GIRLS"
        # represents size type; "27" represents size value. In "32 inches", both size
        # system and size type are empty, while size value is "32 inches". A maximum of
        # 20 values are allowed per Product. Each value must be a UTF-8 encoded string
        # with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Corresponding properties: Google Merchant Center property [size](
        # https://support.google.com/merchants/answer/6324492), [size_type](https://
        # support.google.com/merchants/answer/6324497), and [size_system](https://
        # support.google.com/merchants/answer/6324502). Schema.org property [Product.
        # size](https://schema.org/size).
        # Corresponds to the JSON property `sizes`
        # @return [Array<String>]
        attr_accessor :sizes
      
        # Custom tags associated with the product. At most 250 values are allowed per
        # Product. This value must be a UTF-8 encoded string with a length limit of 1,
        # 000 characters. Otherwise, an INVALID_ARGUMENT error is returned. This tag can
        # be used for filtering recommendation results by passing the tag as part of the
        # PredictRequest.filter. Corresponding properties: Google Merchant Center
        # property [custom_label_0–4](https://support.google.com/merchants/answer/
        # 6324473).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Required. Product title. This field must be a UTF-8 encoded string with a
        # length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Corresponding properties: Google Merchant Center property [title](
        # https://support.google.com/merchants/answer/6324415). Schema.org property [
        # Product.name](https://schema.org/name).
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Input only. The TTL (time to live) of the product. Note that this is only
        # applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT.
        # In general, we suggest the users to delete the stale products explicitly,
        # instead of using this field to determine staleness. If it is set, it must be a
        # non-negative value, and expire_time is set as current timestamp plus ttl. The
        # derived expire_time is returned in the output and ttl is left blank when
        # retrieving the Product. If it is set, the product is not available for
        # SearchService.Search after current timestamp plus ttl. However, the product
        # can still be retrieved by ProductService.GetProduct and ProductService.
        # ListProducts.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Immutable. The type of the product. Default to Catalog.product_level_config.
        # ingestion_product_type if unset.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Canonical URL directly linking to the product detail page. It is strongly
        # recommended to provide a valid uri for the product, otherwise the service
        # performance could be significantly degraded. This field must be a UTF-8
        # encoded string with a length limit of 5,000 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant
        # Center property [link](https://support.google.com/merchants/answer/6324416).
        # Schema.org property [Offer.url](https://schema.org/url).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Output only. Product variants grouped together on primary product which share
        # similar product attributes. It's automatically grouped by primary_product_id
        # for all the product variants. Only populated for Type.PRIMARY Products. Note:
        # This field is OUTPUT_ONLY for ProductService.GetProduct. Do not set this field
        # in API requests.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @audience = args[:audience] if args.key?(:audience)
          @availability = args[:availability] if args.key?(:availability)
          @available_quantity = args[:available_quantity] if args.key?(:available_quantity)
          @available_time = args[:available_time] if args.key?(:available_time)
          @brands = args[:brands] if args.key?(:brands)
          @categories = args[:categories] if args.key?(:categories)
          @collection_member_ids = args[:collection_member_ids] if args.key?(:collection_member_ids)
          @color_info = args[:color_info] if args.key?(:color_info)
          @conditions = args[:conditions] if args.key?(:conditions)
          @description = args[:description] if args.key?(:description)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @fulfillment_info = args[:fulfillment_info] if args.key?(:fulfillment_info)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @images = args[:images] if args.key?(:images)
          @language_code = args[:language_code] if args.key?(:language_code)
          @local_inventories = args[:local_inventories] if args.key?(:local_inventories)
          @materials = args[:materials] if args.key?(:materials)
          @name = args[:name] if args.key?(:name)
          @patterns = args[:patterns] if args.key?(:patterns)
          @price_info = args[:price_info] if args.key?(:price_info)
          @primary_product_id = args[:primary_product_id] if args.key?(:primary_product_id)
          @promotions = args[:promotions] if args.key?(:promotions)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @rating = args[:rating] if args.key?(:rating)
          @retrievable_fields = args[:retrievable_fields] if args.key?(:retrievable_fields)
          @sizes = args[:sizes] if args.key?(:sizes)
          @tags = args[:tags] if args.key?(:tags)
          @title = args[:title] if args.key?(:title)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # Product attribute name and numeric interval.
      class GoogleCloudRetailV2betaProductAttributeInterval
        include Google::Apis::Core::Hashable
      
        # A floating point interval.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :interval
      
        # The attribute name (e.g. "length")
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Product attribute which structured by an attribute name and value. This
      # structure is used in conversational search filters and answers. For example,
      # if we have `name=color` and `value=red`, this means that the color is `red`.
      class GoogleCloudRetailV2betaProductAttributeValue
        include Google::Apis::Core::Hashable
      
        # The attribute name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The attribute value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Detailed product information associated with a user event.
      class GoogleCloudRetailV2betaProductDetail
        include Google::Apis::Core::Hashable
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :product
      
        # Quantity of the product associated with the user event. For example, this
        # field will be 2 if two products are added to the shopping cart for `purchase-
        # complete` event. Required for `add-to-cart` and `purchase-complete` event
        # types.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # The inline source for the input config for ImportProducts method.
      class GoogleCloudRetailV2betaProductInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of products to update/create. Each product must have a valid
        # Product.id. Recommended max of 100 items.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # The input config source for products.
      class GoogleCloudRetailV2betaProductInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        # Google Cloud Storage location for input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportProducts method.
        # Corresponds to the JSON property `productInlineSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource]
        attr_accessor :product_inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @product_inline_source = args[:product_inline_source] if args.key?(:product_inline_source)
        end
      end
      
      # Configures what level the product should be uploaded with regards to how users
      # will be send events and how predictions will be made.
      class GoogleCloudRetailV2betaProductLevelConfig
        include Google::Apis::Core::Hashable
      
        # The type of Products allowed to be ingested into the catalog. Acceptable
        # values are: * `primary` (default): You can ingest Products of all types. When
        # ingesting a Product, its type will default to Product.Type.PRIMARY if unset. *
        # `variant` (incompatible with Retail Search): You can only ingest Product.Type.
        # VARIANT Products. This means Product.primary_product_id cannot be empty. If
        # this field is set to an invalid value other than these, an INVALID_ARGUMENT
        # error is returned. If this field is `variant` and
        # merchant_center_product_id_field is `itemGroupId`, an INVALID_ARGUMENT error
        # is returned. See [Product levels](https://cloud.google.com/retail/docs/catalog#
        # product-levels) for more details.
        # Corresponds to the JSON property `ingestionProductType`
        # @return [String]
        attr_accessor :ingestion_product_type
      
        # Which field of [Merchant Center Product](/bigquery-transfer/docs/merchant-
        # center-products-schema) should be imported as Product.id. Acceptable values
        # are: * `offerId` (default): Import `offerId` as the product ID. * `itemGroupId`
        # : Import `itemGroupId` as the product ID. Notice that Retail API will choose
        # one item from the ones with the same `itemGroupId`, and use it to represent
        # the item group. If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. If this field is `itemGroupId` and
        # ingestion_product_type is `variant`, an INVALID_ARGUMENT error is returned.
        # See [Product levels](https://cloud.google.com/retail/docs/catalog#product-
        # levels) for more details.
        # Corresponds to the JSON property `merchantCenterProductIdField`
        # @return [String]
        attr_accessor :merchant_center_product_id_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_product_type = args[:ingestion_product_type] if args.key?(:ingestion_product_type)
          @merchant_center_product_id_field = args[:merchant_center_product_id_field] if args.key?(:merchant_center_product_id_field)
        end
      end
      
      # Promotion specification.
      class GoogleCloudRetailV2betaPromotion
        include Google::Apis::Core::Hashable
      
        # Promotion identifier, which is the final component of name. For example, this
        # field is "free_gift", if name is `projects/*/locations/global/catalogs/
        # default_catalog/promotions/free_gift`. The value must be a UTF-8 encoded
        # string with a length limit of 128 characters, and match the pattern: `a-zA-Z*`.
        # For example, id0LikeThis or ID_1_LIKE_THIS. Otherwise, an INVALID_ARGUMENT
        # error is returned. Corresponds to Google Merchant Center property [
        # promotion_id](https://support.google.com/merchants/answer/7050148).
        # Corresponds to the JSON property `promotionId`
        # @return [String]
        attr_accessor :promotion_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @promotion_id = args[:promotion_id] if args.key?(:promotion_id)
        end
      end
      
      # A transaction represents the entire purchase transaction.
      class GoogleCloudRetailV2betaPurchaseTransaction
        include Google::Apis::Core::Hashable
      
        # All the costs associated with the products. These can be manufacturing costs,
        # shipping expenses not borne by the end user, or any other costs, such that: *
        # Profit = revenue - tax - cost
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Required. Currency code. Use three-character ISO-4217 code.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The transaction ID with a length limit of 128 characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Total non-zero revenue or grand total associated with the
        # transaction. This value include shipping, tax, or other adjustments to total
        # revenue that you want to include as part of your revenue calculations.
        # Corresponds to the JSON property `revenue`
        # @return [Float]
        attr_accessor :revenue
      
        # All the taxes associated with the transaction.
        # Corresponds to the JSON property `tax`
        # @return [Float]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @id = args[:id] if args.key?(:id)
          @revenue = args[:revenue] if args.key?(:revenue)
          @tax = args[:tax] if args.key?(:tax)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaPurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the PurgeProducts operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaPurgeProductsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for PurgeProducts method.
      class GoogleCloudRetailV2betaPurgeProductsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filter string to specify the products to be deleted with a
        # length limit of 5,000 characters. Empty string filter is not allowed. "*"
        # implies delete all items in a branch. The eligible fields for filtering are: *
        # `availability`: Double quoted Product.availability string. * `create_time` :
        # in ISO 8601 "zulu" format. Supported syntax: * Comparators (">", "<", ">=", "<=
        # ", "="). Examples: * create_time <= "2015-02-13T17:05:46Z" * availability = "
        # IN_STOCK" * Conjunctions ("AND") Examples: * create_time <= "2015-02-13T17:05:
        # 46Z" AND availability = "PREORDER" * Disjunctions ("OR") Examples: *
        # create_time <= "2015-02-13T17:05:46Z" OR availability = "IN_STOCK" * Can
        # support nested queries. Examples: * (create_time <= "2015-02-13T17:05:46Z" AND
        # availability = "PREORDER") OR (create_time >= "2015-02-14T13:03:32Z" AND
        # availability = "IN_STOCK") * Filter Limits: * Filter should not contain more
        # than 6 conditions. * Max nesting depth should not exceed 2 levels. Examples
        # queries: * Delete back order products created before a timestamp. create_time <
        # = "2015-02-13T17:05:46Z" OR availability = "BACKORDER"
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Actually perform the purge. If `force` is set to false, the method will return
        # the expected purge count without deleting any products.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # Response of the PurgeProductsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2betaPurgeProductsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of products purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of the product names that will be deleted. Only populated if `force`
        # is set to false. A max of 100 names will be returned and the names are chosen
        # at random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Request message for PurgeUserEvents method.
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filter string to specify the events to be deleted with a length
        # limit of 5,000 characters. Empty string filter is not allowed. The eligible
        # fields for filtering are: * `eventType`: Double quoted UserEvent.event_type
        # string. * `eventTime`: in ISO 8601 "zulu" format. * `visitorId`: Double quoted
        # string. Specifying this will delete all events associated with a visitor. * `
        # userId`: Double quoted string. Specifying this will delete all events
        # associated with a user. Examples: * Deleting all events in a time range: `
        # eventTime > "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z"`
        # * Deleting specific eventType in time range: `eventTime > "2012-04-23T18:25:43.
        # 511Z" eventType = "detail-page-view"` * Deleting all events for a specific
        # visitor: `visitorId = "visitor1024"` The filtering fields are assumed to have
        # an implicit AND.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Actually perform the purge. If `force` is set to false, the method will return
        # the expected purge count without deleting any user events.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # The rating of a Product.
      class GoogleCloudRetailV2betaRating
        include Google::Apis::Core::Hashable
      
        # The average rating of the Product. The rating is scaled at 1-5. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `averageRating`
        # @return [Float]
        attr_accessor :average_rating
      
        # The total number of ratings. This value is independent of the value of
        # rating_histogram. This value must be nonnegative. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `ratingCount`
        # @return [Fixnum]
        attr_accessor :rating_count
      
        # List of rating counts per rating value (index = rating - 1). The list is empty
        # if there is no rating. If the list is non-empty, its size is always 5.
        # Otherwise, an INVALID_ARGUMENT error is returned. For example, [41, 14, 13, 47,
        # 303]. It means that the Product got 41 ratings with 1 star, 14 ratings with 2
        # star, and so on.
        # Corresponds to the JSON property `ratingHistogram`
        # @return [Array<Fixnum>]
        attr_accessor :rating_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_rating = args[:average_rating] if args.key?(:average_rating)
          @rating_count = args[:rating_count] if args.key?(:rating_count)
          @rating_histogram = args[:rating_histogram] if args.key?(:rating_histogram)
        end
      end
      
      # Metadata for `RejoinUserEvents` method.
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for RejoinUserEvents method.
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # The type of the user event rejoin to define the scope and range of the user
        # events to be rejoined with the latest product catalog. Defaults to `
        # USER_EVENT_REJOIN_SCOPE_UNSPECIFIED` if this field is not set, or set to an
        # invalid integer value.
        # Corresponds to the JSON property `userEventRejoinScope`
        # @return [String]
        attr_accessor :user_event_rejoin_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_event_rejoin_scope = args[:user_event_rejoin_scope] if args.key?(:user_event_rejoin_scope)
        end
      end
      
      # Response message for `RejoinUserEvents` method.
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # Request for CatalogService.RemoveCatalogAttribute method.
      class GoogleCloudRetailV2betaRemoveCatalogAttributeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The attribute name key of the CatalogAttribute to remove.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Request for RemoveControl method.
      class GoogleCloudRetailV2betaRemoveControlRequest
        include Google::Apis::Core::Hashable
      
        # Required. The id of the control to apply. Assumed to be in the same catalog as
        # the serving config.
        # Corresponds to the JSON property `controlId`
        # @return [String]
        attr_accessor :control_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_id = args[:control_id] if args.key?(:control_id)
        end
      end
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ProductService.RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest
        include Google::Apis::Core::Hashable
      
        # If set to true, and the Product is not found, the fulfillment information will
        # still be processed and retained for at most 1 day and processed once the
        # Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. The IDs for this type, such as the store IDs for "pickup-in-store"
        # or the region IDs for "same-day-delivery", to be removed for this type. At
        # least 1 value is required, and a maximum of 2000 values are allowed. Each
        # value must be a string with a length limit of 10 characters, matching the
        # pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # The time when the fulfillment updates are issued, used to prevent out-of-order
        # updates on fulfillment information. If not provided, the internal system time
        # will be used.
        # Corresponds to the JSON property `removeTime`
        # @return [String]
        attr_accessor :remove_time
      
        # Required. The fulfillment type, including commonly used types (such as pickup
        # in store and same day delivery), and custom types. Supported values: * "pickup-
        # in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "
        # custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-
        # type-5" If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. This field directly corresponds to Product.
        # fulfillment_info.type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @remove_time = args[:remove_time] if args.key?(:remove_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the ProductService.
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the RemoveLocalInventories operation.
      # Currently empty because there is no meaningful metadata populated from the
      # ProductService.RemoveLocalInventories method.
      class GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ProductService.RemoveLocalInventories method.
      class GoogleCloudRetailV2betaRemoveLocalInventoriesRequest
        include Google::Apis::Core::Hashable
      
        # If set to true, and the Product is not found, the local inventory removal
        # request will still be processed and retained for at most 1 day and processed
        # once the Product is created. If set to false, a NOT_FOUND error is returned if
        # the Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. A list of place IDs to have their inventory deleted. At most 3000
        # place IDs are allowed per request.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # The time when the inventory deletions are issued. Used to prevent out-of-order
        # updates and deletions on local inventory fields. If not provided, the internal
        # system time will be used.
        # Corresponds to the JSON property `removeTime`
        # @return [String]
        attr_accessor :remove_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @remove_time = args[:remove_time] if args.key?(:remove_time)
        end
      end
      
      # Response of the ProductService.RemoveLocalInventories API. Currently empty
      # because there is no meaningful response populated from the ProductService.
      # RemoveLocalInventories method.
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for CatalogService.ReplaceCatalogAttribute method.
      class GoogleCloudRetailV2betaReplaceCatalogAttributeRequest
        include Google::Apis::Core::Hashable
      
        # Catalog level attribute config for an attribute. For example, if customers
        # want to enable/disable facet for a specific attribute.
        # Corresponds to the JSON property `catalogAttribute`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute]
        attr_accessor :catalog_attribute
      
        # Indicates which fields in the provided CatalogAttribute to update. The
        # following are NOT supported: * CatalogAttribute.key If not set, all supported
        # fields are updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_attribute = args[:catalog_attribute] if args.key?(:catalog_attribute)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for resuming training of a model.
      class GoogleCloudRetailV2betaResumeModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A rule is a condition-action pair * A condition defines when a rule is to be
      # triggered. * An action specifies what occurs on that trigger. Currently rules
      # only work for controls with SOLUTION_TYPE_SEARCH.
      class GoogleCloudRetailV2betaRule
        include Google::Apis::Core::Hashable
      
        # A boost action to apply to results matching condition specified above.
        # Corresponds to the JSON property `boostAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleBoostAction]
        attr_accessor :boost_action
      
        # Metadata that is used to define a condition that triggers an action. A valid
        # condition must specify at least one of 'query_terms' or 'products_filter'. If
        # multiple fields are specified, the condition is met if all the fields are
        # satisfied e.g. if a set of query terms and product_filter are set, then only
        # items matching the product_filter for requests with a query matching the query
        # terms wil get boosted.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCondition]
        attr_accessor :condition
      
        # Prevents `query_term` from being associated with specified terms during search.
        # Example: Don't associate "gShoe" and "cheap".
        # Corresponds to the JSON property `doNotAssociateAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleDoNotAssociateAction]
        attr_accessor :do_not_associate_action
      
        # * Rule Condition: - No Condition.query_terms provided is a global match. - 1
        # or more Condition.query_terms provided are combined with OR operator. * Action
        # Input: The request query and filter that are applied to the retrieved products,
        # in addition to any filters already provided with the SearchRequest. The AND
        # operator is used to combine the query's existing filters with the filter rule(
        # s). NOTE: May result in 0 results when filters conflict. * Action Result:
        # Filters the returned objects to be ONLY those that passed the filter.
        # Corresponds to the JSON property `filterAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleFilterAction]
        attr_accessor :filter_action
      
        # Force returns an attribute/facet in the request around a certain position or
        # above. * Rule Condition: Must specify non-empty Condition.query_terms (for
        # search only) or Condition.page_categories (for browse only), but can't specify
        # both. * Action Inputs: attribute name, position * Action Result: Will force
        # return a facet key around a certain position or above if the condition is
        # satisfied. Example: Suppose the query is "shoes", the Condition.query_terms is
        # "shoes", the ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "
        # size" and the ForceReturnFacetAction.FacetPositionAdjustment.position is 8.
        # Two cases: a) The facet key "size" is not already in the top 8 slots, then the
        # facet "size" will appear at a position close to 8. b) The facet key "size" in
        # among the top 8 positions in the request, then it will stay at its current
        # rank.
        # Corresponds to the JSON property `forceReturnFacetAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleForceReturnFacetAction]
        attr_accessor :force_return_facet_action
      
        # Prevents a term in the query from being used in search. Example: Don't search
        # for "shoddy".
        # Corresponds to the JSON property `ignoreAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleIgnoreAction]
        attr_accessor :ignore_action
      
        # Maps a set of terms to a set of synonyms. Set of synonyms will be treated as
        # synonyms of each query term only. `query_terms` will not be treated as
        # synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "
        # shoes" will not use a synonym of "sneakers".
        # Corresponds to the JSON property `onewaySynonymsAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleOnewaySynonymsAction]
        attr_accessor :oneway_synonyms_action
      
        # Pins one or more specified products to a specific position in the results. *
        # Rule Condition: Must specify non-empty Condition.query_terms (for search only)
        # or Condition.page_categories (for browse only), but can't specify both. *
        # Action Input: mapping of `[pin_position, product_id]` pairs (pin position uses
        # 1-based indexing). * Action Result: Will pin products with matching ids to the
        # position specified in the final result order. Example: Suppose the query is `
        # shoes`, the Condition.query_terms is `shoes` and the pin_map has ``1, "pid1"``,
        # then product with `pid1` will be pinned to the top position in the final
        # results. If multiple PinActions are matched to a single request the actions
        # will be processed from most to least recently updated. Pins to positions
        # larger than the max allowed page size of 120 are not allowed.
        # Corresponds to the JSON property `pinAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRulePinAction]
        attr_accessor :pin_action
      
        # Redirects a shopper to a specific page. * Rule Condition: Must specify
        # Condition.query_terms. * Action Input: Request Query * Action Result:
        # Redirects shopper to provided uri.
        # Corresponds to the JSON property `redirectAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleRedirectAction]
        attr_accessor :redirect_action
      
        # Removes an attribute/facet in the request if is present. * Rule Condition:
        # Must specify non-empty Condition.query_terms (for search only) or Condition.
        # page_categories (for browse only), but can't specify both. * Action Input:
        # attribute name * Action Result: Will remove the attribute (as a facet) from
        # the request if it is present. Example: Suppose the query is "shoes", the
        # Condition.query_terms is "shoes" and the attribute name "size", then facet key
        # "size" will be removed from the request (if it is present).
        # Corresponds to the JSON property `removeFacetAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleRemoveFacetAction]
        attr_accessor :remove_facet_action
      
        # Replaces a term in the query. Multiple replacement candidates can be specified.
        # All `query_terms` will be replaced with the replacement term. Example:
        # Replace "gShoe" with "google shoe".
        # Corresponds to the JSON property `replacementAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleReplacementAction]
        attr_accessor :replacement_action
      
        # Creates a set of terms that will be treated as synonyms of each other. Example:
        # synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes"
        # . * "shoes" will use a synonym of "sneakers".
        # Corresponds to the JSON property `twowaySynonymsAction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleTwowaySynonymsAction]
        attr_accessor :twoway_synonyms_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_action = args[:boost_action] if args.key?(:boost_action)
          @condition = args[:condition] if args.key?(:condition)
          @do_not_associate_action = args[:do_not_associate_action] if args.key?(:do_not_associate_action)
          @filter_action = args[:filter_action] if args.key?(:filter_action)
          @force_return_facet_action = args[:force_return_facet_action] if args.key?(:force_return_facet_action)
          @ignore_action = args[:ignore_action] if args.key?(:ignore_action)
          @oneway_synonyms_action = args[:oneway_synonyms_action] if args.key?(:oneway_synonyms_action)
          @pin_action = args[:pin_action] if args.key?(:pin_action)
          @redirect_action = args[:redirect_action] if args.key?(:redirect_action)
          @remove_facet_action = args[:remove_facet_action] if args.key?(:remove_facet_action)
          @replacement_action = args[:replacement_action] if args.key?(:replacement_action)
          @twoway_synonyms_action = args[:twoway_synonyms_action] if args.key?(:twoway_synonyms_action)
        end
      end
      
      # A boost action to apply to results matching condition specified above.
      class GoogleCloudRetailV2betaRuleBoostAction
        include Google::Apis::Core::Hashable
      
        # Strength of the condition boost, which must be in [-1, 1]. Negative boost
        # means demotion. Default is 0.0. Setting to 1.0 gives the item a big promotion.
        # However, it does not necessarily mean that the boosted item will be the top
        # result at all times, nor that other items will be excluded. Results could
        # still be shown even when none of them matches the condition. And results that
        # are significantly more relevant to the search query can still trump your
        # heavily favored but irrelevant items. Setting to -1.0 gives the item a big
        # demotion. However, results that are deeply relevant might still be shown. The
        # item will have an upstream battle to get a fairly high ranking, but it is not
        # blocked out completely. Setting to 0.0 means no boost applied. The boosting
        # condition is ignored.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # The filter can have a max size of 5000 characters. An expression which
        # specifies which products to apply an action to. The syntax and supported
        # fields are the same as a filter expression. See SearchRequest.filter for
        # detail syntax and limitations. Examples: * To boost products with product ID "
        # product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "
        # product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
        # Corresponds to the JSON property `productsFilter`
        # @return [String]
        attr_accessor :products_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost = args[:boost] if args.key?(:boost)
          @products_filter = args[:products_filter] if args.key?(:products_filter)
        end
      end
      
      # Prevents `query_term` from being associated with specified terms during search.
      # Example: Don't associate "gShoe" and "cheap".
      class GoogleCloudRetailV2betaRuleDoNotAssociateAction
        include Google::Apis::Core::Hashable
      
        # Cannot contain duplicates or the query term. Can specify up to 100 terms.
        # Corresponds to the JSON property `doNotAssociateTerms`
        # @return [Array<String>]
        attr_accessor :do_not_associate_terms
      
        # Terms from the search query. Will not consider do_not_associate_terms for
        # search if in search query. Can specify up to 100 terms.
        # Corresponds to the JSON property `queryTerms`
        # @return [Array<String>]
        attr_accessor :query_terms
      
        # Will be [deprecated = true] post migration;
        # Corresponds to the JSON property `terms`
        # @return [Array<String>]
        attr_accessor :terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @do_not_associate_terms = args[:do_not_associate_terms] if args.key?(:do_not_associate_terms)
          @query_terms = args[:query_terms] if args.key?(:query_terms)
          @terms = args[:terms] if args.key?(:terms)
        end
      end
      
      # * Rule Condition: - No Condition.query_terms provided is a global match. - 1
      # or more Condition.query_terms provided are combined with OR operator. * Action
      # Input: The request query and filter that are applied to the retrieved products,
      # in addition to any filters already provided with the SearchRequest. The AND
      # operator is used to combine the query's existing filters with the filter rule(
      # s). NOTE: May result in 0 results when filters conflict. * Action Result:
      # Filters the returned objects to be ONLY those that passed the filter.
      class GoogleCloudRetailV2betaRuleFilterAction
        include Google::Apis::Core::Hashable
      
        # A filter to apply on the matching condition results. Supported features: *
        # filter must be set. * Filter syntax is identical to SearchRequest.filter. For
        # more information, see [Filter](/retail/docs/filter-and-order#filter). * To
        # filter products with product ID "product_1" or "product_2", and color "Red" or
        # "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("
        # Red", "Blue")) *
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Force returns an attribute/facet in the request around a certain position or
      # above. * Rule Condition: Must specify non-empty Condition.query_terms (for
      # search only) or Condition.page_categories (for browse only), but can't specify
      # both. * Action Inputs: attribute name, position * Action Result: Will force
      # return a facet key around a certain position or above if the condition is
      # satisfied. Example: Suppose the query is "shoes", the Condition.query_terms is
      # "shoes", the ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "
      # size" and the ForceReturnFacetAction.FacetPositionAdjustment.position is 8.
      # Two cases: a) The facet key "size" is not already in the top 8 slots, then the
      # facet "size" will appear at a position close to 8. b) The facet key "size" in
      # among the top 8 positions in the request, then it will stay at its current
      # rank.
      class GoogleCloudRetailV2betaRuleForceReturnFacetAction
        include Google::Apis::Core::Hashable
      
        # Each instance corresponds to a force return attribute for the given condition.
        # There can't be more 15 instances here.
        # Corresponds to the JSON property `facetPositionAdjustments`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment>]
        attr_accessor :facet_position_adjustments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facet_position_adjustments = args[:facet_position_adjustments] if args.key?(:facet_position_adjustments)
        end
      end
      
      # Each facet position adjustment consists of a single attribute name (i.e. facet
      # key) along with a specified position.
      class GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment
        include Google::Apis::Core::Hashable
      
        # The attribute name to force return as a facet. Each attribute name should be a
        # valid attribute name, be non-empty and contain at most 80 characters long.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # This is the position in the request as explained above. It should be strictly
        # positive be at most 100.
        # Corresponds to the JSON property `position`
        # @return [Fixnum]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # Prevents a term in the query from being used in search. Example: Don't search
      # for "shoddy".
      class GoogleCloudRetailV2betaRuleIgnoreAction
        include Google::Apis::Core::Hashable
      
        # Terms to ignore in the search query.
        # Corresponds to the JSON property `ignoreTerms`
        # @return [Array<String>]
        attr_accessor :ignore_terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_terms = args[:ignore_terms] if args.key?(:ignore_terms)
        end
      end
      
      # Maps a set of terms to a set of synonyms. Set of synonyms will be treated as
      # synonyms of each query term only. `query_terms` will not be treated as
      # synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "
      # shoes" will not use a synonym of "sneakers".
      class GoogleCloudRetailV2betaRuleOnewaySynonymsAction
        include Google::Apis::Core::Hashable
      
        # Will be [deprecated = true] post migration;
        # Corresponds to the JSON property `onewayTerms`
        # @return [Array<String>]
        attr_accessor :oneway_terms
      
        # Terms from the search query. Will treat synonyms as their synonyms. Not
        # themselves synonyms of the synonyms. Can specify up to 100 terms.
        # Corresponds to the JSON property `queryTerms`
        # @return [Array<String>]
        attr_accessor :query_terms
      
        # Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100
        # synonyms.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oneway_terms = args[:oneway_terms] if args.key?(:oneway_terms)
          @query_terms = args[:query_terms] if args.key?(:query_terms)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # Pins one or more specified products to a specific position in the results. *
      # Rule Condition: Must specify non-empty Condition.query_terms (for search only)
      # or Condition.page_categories (for browse only), but can't specify both. *
      # Action Input: mapping of `[pin_position, product_id]` pairs (pin position uses
      # 1-based indexing). * Action Result: Will pin products with matching ids to the
      # position specified in the final result order. Example: Suppose the query is `
      # shoes`, the Condition.query_terms is `shoes` and the pin_map has ``1, "pid1"``,
      # then product with `pid1` will be pinned to the top position in the final
      # results. If multiple PinActions are matched to a single request the actions
      # will be processed from most to least recently updated. Pins to positions
      # larger than the max allowed page size of 120 are not allowed.
      class GoogleCloudRetailV2betaRulePinAction
        include Google::Apis::Core::Hashable
      
        # Required. A map of positions to product_ids. Partial matches per action are
        # allowed, if a certain position in the map is already filled that `[position,
        # product_id]` pair will be ignored but the rest may still be applied. This case
        # will only occur if multiple pin actions are matched to a single request, as
        # the map guarantees that pin positions are unique within the same action.
        # Duplicate product_ids are not permitted within a single pin map. The max size
        # of this map is 120, equivalent to the max [request page size](https://cloud.
        # google.com/retail/docs/reference/rest/v2/projects.locations.catalogs.
        # placements/search#request-body).
        # Corresponds to the JSON property `pinMap`
        # @return [Hash<String,String>]
        attr_accessor :pin_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pin_map = args[:pin_map] if args.key?(:pin_map)
        end
      end
      
      # Redirects a shopper to a specific page. * Rule Condition: Must specify
      # Condition.query_terms. * Action Input: Request Query * Action Result:
      # Redirects shopper to provided uri.
      class GoogleCloudRetailV2betaRuleRedirectAction
        include Google::Apis::Core::Hashable
      
        # URL must have length equal or less than 2000 characters.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
        end
      end
      
      # Removes an attribute/facet in the request if is present. * Rule Condition:
      # Must specify non-empty Condition.query_terms (for search only) or Condition.
      # page_categories (for browse only), but can't specify both. * Action Input:
      # attribute name * Action Result: Will remove the attribute (as a facet) from
      # the request if it is present. Example: Suppose the query is "shoes", the
      # Condition.query_terms is "shoes" and the attribute name "size", then facet key
      # "size" will be removed from the request (if it is present).
      class GoogleCloudRetailV2betaRuleRemoveFacetAction
        include Google::Apis::Core::Hashable
      
        # The attribute names (i.e. facet keys) to remove from the dynamic facets (if
        # present in the request). There can't be more 3 attribute names. Each attribute
        # name should be a valid attribute name, be non-empty and contain at most 80
        # characters.
        # Corresponds to the JSON property `attributeNames`
        # @return [Array<String>]
        attr_accessor :attribute_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_names = args[:attribute_names] if args.key?(:attribute_names)
        end
      end
      
      # Replaces a term in the query. Multiple replacement candidates can be specified.
      # All `query_terms` will be replaced with the replacement term. Example:
      # Replace "gShoe" with "google shoe".
      class GoogleCloudRetailV2betaRuleReplacementAction
        include Google::Apis::Core::Hashable
      
        # Terms from the search query. Will be replaced by replacement term. Can specify
        # up to 100 terms.
        # Corresponds to the JSON property `queryTerms`
        # @return [Array<String>]
        attr_accessor :query_terms
      
        # Term that will be used for replacement.
        # Corresponds to the JSON property `replacementTerm`
        # @return [String]
        attr_accessor :replacement_term
      
        # Will be [deprecated = true] post migration;
        # Corresponds to the JSON property `term`
        # @return [String]
        attr_accessor :term
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_terms = args[:query_terms] if args.key?(:query_terms)
          @replacement_term = args[:replacement_term] if args.key?(:replacement_term)
          @term = args[:term] if args.key?(:term)
        end
      end
      
      # Creates a set of terms that will be treated as synonyms of each other. Example:
      # synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes"
      # . * "shoes" will use a synonym of "sneakers".
      class GoogleCloudRetailV2betaRuleTwowaySynonymsAction
        include Google::Apis::Core::Hashable
      
        # Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at
        # least 2 synonyms.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # Request message for SearchService.Search method.
      class GoogleCloudRetailV2betaSearchRequest
        include Google::Apis::Core::Hashable
      
        # Boost specification to boost certain items.
        # Corresponds to the JSON property `boostSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpec]
        attr_accessor :boost_spec
      
        # The branch resource name, such as `projects/*/locations/global/catalogs/
        # default_catalog/branches/0`. Use "default_branch" as the branch ID or leave
        # this field empty, to search products under the default branch.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # The default filter that is applied when a user performs a search without
        # checking any filters on the search page. The filter applied to every search
        # request when quality improvement such as query expansion is needed. In the
        # case a query does not have a sufficient amount of results this filter will be
        # used to determine whether or not to enable the query expansion flow. The
        # original filter will still be used for the query expanded search. This field
        # is strongly recommended to achieve high search quality. For more information
        # about filter syntax, see SearchRequest.filter.
        # Corresponds to the JSON property `canonicalFilter`
        # @return [String]
        attr_accessor :canonical_filter
      
        # This field specifies all conversational related parameters addition to
        # traditional retail search.
        # Corresponds to the JSON property `conversationalSearchSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec]
        attr_accessor :conversational_search_spec
      
        # The specifications of dynamically generated facets.
        # Corresponds to the JSON property `dynamicFacetSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec]
        attr_accessor :dynamic_facet_spec
      
        # The entity for customers that may run multiple different entities, domains,
        # sites or regions, for example, `Google US`, `Google Ads`, `Waymo`, `google.com`
        # , `youtube.com`, etc. If this is set, it should be exactly matched with
        # UserEvent.entity to get search results boosted by entity.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Facet specifications for faceted search. If empty, no facets are returned. A
        # maximum of 200 values are allowed. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `facetSpecs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec>]
        attr_accessor :facet_specs
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the products being filtered. Filter
        # expression is case-sensitive. For more information, see [Filter](https://cloud.
        # google.com/retail/docs/filter-and-order#filter). If this field is
        # unrecognizable, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The labels applied to a resource must meet the following requirements: * Each
        # resource can have multiple labels, up to a maximum of 64. * Each label must be
        # a key-value pair. * Keys have a minimum length of 1 character and a maximum
        # length of 63 characters and cannot be empty. Values can be empty and have a
        # maximum length of 63 characters. * Keys and values can contain only lowercase
        # letters, numeric characters, underscores, and dashes. All characters must use
        # UTF-8 encoding, and international characters are allowed. * The key portion of
        # a label must be unique. However, you can use the same key with multiple
        # resources. * Keys must start with a lowercase letter or international
        # character. For more information, see [Requirements for labels](https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels#requirements) in the
        # Resource Manager documentation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The BCP-47 language code, such as "en-US" or "sr-Latn" [list](https:/
        # /www.unicode.org/cldr/charts/46/summary/root.html). For more information, see [
        # Standardized codes](https://google.aip.dev/143). This field helps to better
        # interpret the query. If a value isn't specified, the query language code is
        # automatically detected, which may not be accurate.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # A 0-indexed integer that specifies the current offset (that is, starting
        # result location, amongst the Products deemed by the API as relevant) in search
        # results. This field is only considered if page_token is unset. If this field
        # is negative, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned. Products can be ordered by a field
        # in an Product object. Leave it unset if ordered by relevance. OrderBy
        # expression is case-sensitive. For more information, see [Order](https://cloud.
        # google.com/retail/docs/filter-and-order#order). If this field is
        # unrecognizable, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The categories associated with a category page. Must be set for category
        # navigation queries to achieve good search quality. The format should be the
        # same as UserEvent.page_categories; To represent full path of category, use '>'
        # sign to separate different hierarchies. If '>' is part of the category name,
        # replace it with other character(s). Category pages include special pages such
        # as sales or promotions. For instance, a special sale page may have the
        # category hierarchy: "pageCategories" : ["Sales > 2017 Black Friday Deals"].
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<String>]
        attr_accessor :page_categories
      
        # Maximum number of Products to return. If unspecified, defaults to a reasonable
        # value. The maximum allowed value is 120. Values above 120 will be coerced to
        # 120. If this field is negative, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token SearchResponse.next_page_token, received from a previous
        # SearchService.Search call. Provide this to retrieve the subsequent page. When
        # paginating, all other parameters provided to SearchService.Search must match
        # the call that provided the page token. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The specification for personalization.
        # Corresponds to the JSON property `personalizationSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec]
        attr_accessor :personalization_spec
      
        # Optional. An id corresponding to a place, such as a store id or region id.
        # When specified, we use the price from the local inventory with the matching
        # product's LocalInventory.place_id for revenue optimization.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Raw search query. If this field is empty, the request is considered a category
        # browsing request and returned results are based on filter and page_categories.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Specification to determine under which conditions query expansion should occur.
        # Corresponds to the JSON property `queryExpansionSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec]
        attr_accessor :query_expansion_spec
      
        # Optional. The Unicode country/region code (CLDR) of a location, such as "US"
        # and "419" [list](https://www.unicode.org/cldr/charts/46/supplemental/
        # territory_information.html). For more information, see [Standardized codes](
        # https://google.aip.dev/143). If set, then results will be boosted based on the
        # region_code provided.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The search mode of the search request. If not specified, a single search
        # request triggers both product search and faceted search.
        # Corresponds to the JSON property `searchMode`
        # @return [String]
        attr_accessor :search_mode
      
        # The specification for query spell correction.
        # Corresponds to the JSON property `spellCorrectionSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec]
        attr_accessor :spell_correction_spec
      
        # This field specifies tile navigation related parameters.
        # Corresponds to the JSON property `tileNavigationSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestTileNavigationSpec]
        attr_accessor :tile_navigation_spec
      
        # Optional. The user attributes that could be used for personalization of search
        # results. * Populate at most 100 key-value pairs per query. * Only supports
        # string keys and repeated string values. * Duplicate keys are not allowed
        # within a single query. Example: user_attributes: [ ` key: "pets" value `
        # values: "dog" values: "cat" ` `, ` key: "state" value ` values: "CA" ` ` ]
        # Corresponds to the JSON property `userAttributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaStringList>]
        attr_accessor :user_attributes
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo]
        attr_accessor :user_info
      
        # The keys to fetch and rollup the matching variant Products attributes,
        # FulfillmentInfo or LocalInventorys attributes. The attributes from all the
        # matching variant Products or LocalInventorys are merged and de-duplicated.
        # Notice that rollup attributes will lead to extra query latency. Maximum number
        # of keys is 30. For FulfillmentInfo, a fulfillment type and a fulfillment ID
        # must be provided in the format of "fulfillmentType.fulfillmentId". E.g., in "
        # pickupInStore.store123", "pickupInStore" is fulfillment type and "store123" is
        # the store ID. Supported keys are: * colorFamilies * price * originalPrice *
        # discount * variantId * inventory(place_id,price) * inventory(place_id,
        # original_price) * inventory(place_id,attributes.key), where key is any key in
        # the Product.local_inventories.attributes map. * attributes.key, where key is
        # any key in the Product.attributes map. * pickupInStore.id, where id is any
        # FulfillmentInfo.place_ids for FulfillmentInfo.type "pickup-in-store". *
        # shipToStore.id, where id is any FulfillmentInfo.place_ids for FulfillmentInfo.
        # type "ship-to-store". * sameDayDelivery.id, where id is any FulfillmentInfo.
        # place_ids for FulfillmentInfo.type "same-day-delivery". * nextDayDelivery.id,
        # where id is any FulfillmentInfo.place_ids for FulfillmentInfo.type "next-day-
        # delivery". * customFulfillment1.id, where id is any FulfillmentInfo.place_ids
        # for FulfillmentInfo.type "custom-type-1". * customFulfillment2.id, where id is
        # any FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-2". *
        # customFulfillment3.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "custom-type-3". * customFulfillment4.id, where id is any
        # FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-4". *
        # customFulfillment5.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "custom-type-5". If this field is set to an invalid value
        # other than these, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `variantRollupKeys`
        # @return [Array<String>]
        attr_accessor :variant_rollup_keys
      
        # Required. A unique identifier for tracking visitors. For example, this could
        # be implemented with an HTTP cookie, which should be able to uniquely identify
        # a visitor on a single device. This unique identifier should not change if the
        # visitor logs in or out of the website. This should be the same identifier as
        # UserEvent.visitor_id. The field must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_spec = args[:boost_spec] if args.key?(:boost_spec)
          @branch = args[:branch] if args.key?(:branch)
          @canonical_filter = args[:canonical_filter] if args.key?(:canonical_filter)
          @conversational_search_spec = args[:conversational_search_spec] if args.key?(:conversational_search_spec)
          @dynamic_facet_spec = args[:dynamic_facet_spec] if args.key?(:dynamic_facet_spec)
          @entity = args[:entity] if args.key?(:entity)
          @facet_specs = args[:facet_specs] if args.key?(:facet_specs)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @language_code = args[:language_code] if args.key?(:language_code)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @personalization_spec = args[:personalization_spec] if args.key?(:personalization_spec)
          @place_id = args[:place_id] if args.key?(:place_id)
          @query = args[:query] if args.key?(:query)
          @query_expansion_spec = args[:query_expansion_spec] if args.key?(:query_expansion_spec)
          @region_code = args[:region_code] if args.key?(:region_code)
          @search_mode = args[:search_mode] if args.key?(:search_mode)
          @spell_correction_spec = args[:spell_correction_spec] if args.key?(:spell_correction_spec)
          @tile_navigation_spec = args[:tile_navigation_spec] if args.key?(:tile_navigation_spec)
          @user_attributes = args[:user_attributes] if args.key?(:user_attributes)
          @user_info = args[:user_info] if args.key?(:user_info)
          @variant_rollup_keys = args[:variant_rollup_keys] if args.key?(:variant_rollup_keys)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # Boost specification to boost certain items.
      class GoogleCloudRetailV2betaSearchRequestBoostSpec
        include Google::Apis::Core::Hashable
      
        # Condition boost specifications. If a product matches multiple conditions in
        # the specifications, boost scores from these specifications are all applied and
        # combined in a non-linear way. Maximum number of specifications is 20.
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>]
        attr_accessor :condition_boost_specs
      
        # Whether to skip boostspec validation. If this field is set to true, invalid
        # BoostSpec.condition_boost_specs will be ignored and valid BoostSpec.
        # condition_boost_specs will still be applied.
        # Corresponds to the JSON property `skipBoostSpecValidation`
        # @return [Boolean]
        attr_accessor :skip_boost_spec_validation
        alias_method :skip_boost_spec_validation?, :skip_boost_spec_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_boost_specs = args[:condition_boost_specs] if args.key?(:condition_boost_specs)
          @skip_boost_spec_validation = args[:skip_boost_spec_validation] if args.key?(:skip_boost_spec_validation)
        end
      end
      
      # Boost applies to products which match a condition.
      class GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # Strength of the condition boost, which should be in [-1, 1]. Negative boost
        # means demotion. Default is 0.0. Setting to 1.0 gives the item a big promotion.
        # However, it does not necessarily mean that the boosted item will be the top
        # result at all times, nor that other items will be excluded. Results could
        # still be shown even when none of them matches the condition. And results that
        # are significantly more relevant to the search query can still trump your
        # heavily favored but irrelevant items. Setting to -1.0 gives the item a big
        # demotion. However, results that are deeply relevant might still be shown. The
        # item will have an upstream battle to get a fairly high ranking, but it is not
        # blocked out completely. Setting to 0.0 means no boost applied. The boosting
        # condition is ignored.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # An expression which specifies a boost condition. The syntax and supported
        # fields are the same as a filter expression. See SearchRequest.filter for
        # detail syntax and limitations. Examples: * To boost products with product ID "
        # product_1" or "product_2", and color "Red" or "Blue": * (id: ANY("product_1", "
        # product_2")) AND (colorFamilies: ANY("Red","Blue"))
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost = args[:boost] if args.key?(:boost)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # This field specifies all conversational related parameters addition to
      # traditional retail search.
      class GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec
        include Google::Apis::Core::Hashable
      
        # This field specifies the conversation id, which maintains the state of the
        # conversation between client side and server side. Use the value from the
        # previous ConversationalSearchResult.conversation_id. For the initial request,
        # this should be empty.
        # Corresponds to the JSON property `conversationId`
        # @return [String]
        attr_accessor :conversation_id
      
        # This field specifies whether the customer would like to do conversational
        # search. If this field is set to true, conversational related extra information
        # will be returned from server side, including follow-up question, answer
        # options, etc.
        # Corresponds to the JSON property `followupConversationRequested`
        # @return [Boolean]
        attr_accessor :followup_conversation_requested
        alias_method :followup_conversation_requested?, :followup_conversation_requested
      
        # This field specifies the current user answer during the conversational search.
        # This can be either user selected from suggested answers or user input plain
        # text.
        # Corresponds to the JSON property `userAnswer`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer]
        attr_accessor :user_answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_id = args[:conversation_id] if args.key?(:conversation_id)
          @followup_conversation_requested = args[:followup_conversation_requested] if args.key?(:followup_conversation_requested)
          @user_answer = args[:user_answer] if args.key?(:user_answer)
        end
      end
      
      # This field specifies the current user answer during the conversational search.
      # This can be either user selected from suggested answers or user input plain
      # text.
      class GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer
        include Google::Apis::Core::Hashable
      
        # This field specifies the selected answers during the conversational search.
        # Corresponds to the JSON property `selectedAnswer`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer]
        attr_accessor :selected_answer
      
        # This field specifies the incremental input text from the user during the
        # conversational search.
        # Corresponds to the JSON property `textAnswer`
        # @return [String]
        attr_accessor :text_answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected_answer = args[:selected_answer] if args.key?(:selected_answer)
          @text_answer = args[:text_answer] if args.key?(:text_answer)
        end
      end
      
      # This field specifies the selected answers during the conversational search.
      class GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
        include Google::Apis::Core::Hashable
      
        # Product attribute which structured by an attribute name and value. This
        # structure is used in conversational search filters and answers. For example,
        # if we have `name=color` and `value=red`, this means that the color is `red`.
        # Corresponds to the JSON property `productAttributeValue`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeValue]
        attr_accessor :product_attribute_value
      
        # This field is deprecated and should not be set.
        # Corresponds to the JSON property `productAttributeValues`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeValue>]
        attr_accessor :product_attribute_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_attribute_value = args[:product_attribute_value] if args.key?(:product_attribute_value)
          @product_attribute_values = args[:product_attribute_values] if args.key?(:product_attribute_values)
        end
      end
      
      # The specifications of dynamically generated facets.
      class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec
        include Google::Apis::Core::Hashable
      
        # Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # A facet specification to perform faceted search.
      class GoogleCloudRetailV2betaSearchRequestFacetSpec
        include Google::Apis::Core::Hashable
      
        # Enables dynamic position for this facet. If set to true, the position of this
        # facet among all facets in the response is determined by Google Retail Search.
        # It is ordered together with dynamic facets if dynamic facets is enabled. If
        # set to false, the position of this facet in the response is the same as in the
        # request, and it is ranked before the facets with dynamic position enable and
        # all dynamic facets. For example, you may always want to have rating facet
        # returned in the response, but it's not necessarily to always display the
        # rating facet at the top. In that case, you can set enable_dynamic_position to
        # true so that the position of rating facet in response is determined by Google
        # Retail Search. Another example, assuming you have the following facets in the
        # request: * "rating", enable_dynamic_position = true * "price",
        # enable_dynamic_position = false * "brands", enable_dynamic_position = false
        # And also you have a dynamic facets enable, which generates a facet "gender".
        # Then, the final order of the facets in the response can be ("price", "brands",
        # "rating", "gender") or ("price", "brands", "gender", "rating") depends on how
        # Google Retail Search orders "gender" and "rating" facets. However, notice that
        # "price" and "brands" are always ranked at first and second position because
        # their enable_dynamic_position values are false.
        # Corresponds to the JSON property `enableDynamicPosition`
        # @return [Boolean]
        attr_accessor :enable_dynamic_position
        alias_method :enable_dynamic_position?, :enable_dynamic_position
      
        # List of keys to exclude when faceting. By default, FacetKey.key is not
        # excluded from the filter unless it is listed in this field. Listing a facet
        # key in this field allows its values to appear as facet results, even when they
        # are filtered out of search results. Using this field does not affect what
        # search results are returned. For example, suppose there are 100 products with
        # the color facet "Red" and 200 products with the color facet "Blue". A query
        # containing the filter "colorFamilies:ANY("Red")" and having "colorFamilies" as
        # FacetKey.key would by default return only "Red" products in the search results,
        # and also return "Red" with count 100 as the only color facet. Although there
        # are also blue products available, "Blue" would not be shown as an available
        # facet value. If "colorFamilies" is listed in "excludedFilterKeys", then the
        # query returns the facet values "Red" with count 100 and "Blue" with count 200,
        # because the "colorFamilies" key is now excluded from the filter. Because this
        # field doesn't affect search results, the search results are still correctly
        # filtered to return only "Red" products. A maximum of 100 values are allowed.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `excludedFilterKeys`
        # @return [Array<String>]
        attr_accessor :excluded_filter_keys
      
        # Specifies how a facet is computed.
        # Corresponds to the JSON property `facetKey`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey]
        attr_accessor :facet_key
      
        # Maximum of facet values that should be returned for this facet. If unspecified,
        # defaults to 50. The maximum allowed value is 300. Values above 300 will be
        # coerced to 300. If this field is negative, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_dynamic_position = args[:enable_dynamic_position] if args.key?(:enable_dynamic_position)
          @excluded_filter_keys = args[:excluded_filter_keys] if args.key?(:excluded_filter_keys)
          @facet_key = args[:facet_key] if args.key?(:facet_key)
          @limit = args[:limit] if args.key?(:limit)
        end
      end
      
      # Specifies how a facet is computed.
      class GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey
        include Google::Apis::Core::Hashable
      
        # True to make facet keys case insensitive when getting faceting values with
        # prefixes or contains; false otherwise.
        # Corresponds to the JSON property `caseInsensitive`
        # @return [Boolean]
        attr_accessor :case_insensitive
        alias_method :case_insensitive?, :case_insensitive
      
        # Only get facet values that contains the given strings. For example, suppose "
        # categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe".
        # If set "contains" to "Shoe", the "categories" facet gives only "Women > Shoe"
        # and "Men > Shoe". Only supported on textual fields. Maximum is 10.
        # Corresponds to the JSON property `contains`
        # @return [Array<String>]
        attr_accessor :contains
      
        # Set only if values should be bucketized into intervals. Must be set for facets
        # with numerical values. Must not be set for facet with text values. Maximum
        # number of intervals is 40. For all numerical facet keys that appear in the
        # list of products from the catalog, the percentiles 0, 10, 30, 50, 70, 90, and
        # 100 are computed from their distribution weekly. If the model assigns a high
        # score to a numerical facet key and its intervals are not specified in the
        # search request, these percentiles become the bounds for its intervals and are
        # returned in the response. If the facet key intervals are specified in the
        # request, then the specified intervals are returned instead.
        # Corresponds to the JSON property `intervals`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval>]
        attr_accessor :intervals
      
        # Required. Supported textual and numerical facet keys in Product object, over
        # which the facet values are computed. Facet key is case-sensitive. Allowed
        # facet keys when FacetKey.query is not specified: * textual_field = * "brands" *
        # "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "
        # colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key"
        # * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "
        # customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "
        # customFulfillment4" * "customFulfillment5" * "inventory(place_id,attributes.
        # key)" * numerical_field = * "price" * "discount" * "rating" * "ratingCount" * "
        # attributes.key" * "inventory(place_id,price)" * "inventory(place_id,
        # original_price)" * "inventory(place_id,attributes.key)"
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The order in which SearchResponse.Facet.values are returned. Allowed values
        # are: * "count desc", which means order by SearchResponse.Facet.values.count
        # descending. * "value desc", which means order by SearchResponse.Facet.values.
        # value descending. Only applies to textual facets. If not set, textual values
        # are sorted in [natural order](https://en.wikipedia.org/wiki/Natural_sort_order)
        # ; numerical intervals are sorted in the order given by FacetSpec.FacetKey.
        # intervals; FulfillmentInfo.place_ids are sorted in the order given by
        # FacetSpec.FacetKey.restricted_values.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Only get facet values that start with the given string prefix. For example,
        # suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men
        # > Shoe". If set "prefixes" to "Women", the "categories" facet gives only "
        # Women > Shoe" and "Women > Dress". Only supported on textual fields. Maximum
        # is 10.
        # Corresponds to the JSON property `prefixes`
        # @return [Array<String>]
        attr_accessor :prefixes
      
        # The query that is used to compute facet for the given facet key. When provided,
        # it overrides the default behavior of facet computation. The query syntax is
        # the same as a filter expression. See SearchRequest.filter for detail syntax
        # and limitations. Notice that there is no limitation on FacetKey.key when query
        # is specified. In the response, SearchResponse.Facet.values.value is always "1"
        # and SearchResponse.Facet.values.count is the number of results that match the
        # query. For example, you can set a customized facet for "shipToStore", where
        # FacetKey.key is "customizedShipToStore", and FacetKey.query is "availability:
        # ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet counts the
        # products that are both in stock and ship to store "123".
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Only get facet for the given restricted values. For example, when using "
        # pickupInStore" as key and set restricted values to ["store123", "store456"],
        # only facets for "store123" and "store456" are returned. Only supported on
        # predefined textual fields, custom textual attributes and fulfillments. Maximum
        # is 20. Must be set for the fulfillment facet keys: * pickupInStore *
        # shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 *
        # customFulfillment2 * customFulfillment3 * customFulfillment4 *
        # customFulfillment5
        # Corresponds to the JSON property `restrictedValues`
        # @return [Array<String>]
        attr_accessor :restricted_values
      
        # Returns the min and max value for each numerical facet intervals. Ignored for
        # textual facets.
        # Corresponds to the JSON property `returnMinMax`
        # @return [Boolean]
        attr_accessor :return_min_max
        alias_method :return_min_max?, :return_min_max
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_insensitive = args[:case_insensitive] if args.key?(:case_insensitive)
          @contains = args[:contains] if args.key?(:contains)
          @intervals = args[:intervals] if args.key?(:intervals)
          @key = args[:key] if args.key?(:key)
          @order_by = args[:order_by] if args.key?(:order_by)
          @prefixes = args[:prefixes] if args.key?(:prefixes)
          @query = args[:query] if args.key?(:query)
          @restricted_values = args[:restricted_values] if args.key?(:restricted_values)
          @return_min_max = args[:return_min_max] if args.key?(:return_min_max)
        end
      end
      
      # The specification for personalization.
      class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec
        include Google::Apis::Core::Hashable
      
        # Defaults to Mode.AUTO.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Specification to determine under which conditions query expansion should occur.
      class GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec
        include Google::Apis::Core::Hashable
      
        # The condition under which query expansion should occur. Default to Condition.
        # DISABLED.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Whether to pin unexpanded results. The default value is false. If this field
        # is set to true, unexpanded products are always at the top of the search
        # results, followed by the expanded results.
        # Corresponds to the JSON property `pinUnexpandedResults`
        # @return [Boolean]
        attr_accessor :pin_unexpanded_results
        alias_method :pin_unexpanded_results?, :pin_unexpanded_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @pin_unexpanded_results = args[:pin_unexpanded_results] if args.key?(:pin_unexpanded_results)
        end
      end
      
      # The specification for query spell correction.
      class GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec
        include Google::Apis::Core::Hashable
      
        # The mode under which spell correction should take effect to replace the
        # original search query. Default to Mode.AUTO.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # This field specifies tile navigation related parameters.
      class GoogleCloudRetailV2betaSearchRequestTileNavigationSpec
        include Google::Apis::Core::Hashable
      
        # This optional field specifies the tiles which are already clicked in client
        # side. While the feature works without this field set, particularly for an
        # initial query, it is highly recommended to set this field because it can
        # improve the quality of the search response and removes possible duplicate
        # tiles. NOTE: This field is not being used for filtering search products.
        # Client side should also put all the applied tiles in SearchRequest.filter.
        # Corresponds to the JSON property `appliedTiles`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaTile>]
        attr_accessor :applied_tiles
      
        # This field specifies whether the customer would like to request tile
        # navigation.
        # Corresponds to the JSON property `tileNavigationRequested`
        # @return [Boolean]
        attr_accessor :tile_navigation_requested
        alias_method :tile_navigation_requested?, :tile_navigation_requested
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_tiles = args[:applied_tiles] if args.key?(:applied_tiles)
          @tile_navigation_requested = args[:tile_navigation_requested] if args.key?(:tile_navigation_requested)
        end
      end
      
      # Response message for SearchService.Search method.
      class GoogleCloudRetailV2betaSearchResponse
        include Google::Apis::Core::Hashable
      
        # The fully qualified resource name of applied [controls](https://cloud.google.
        # com/retail/docs/serving-control-rules).
        # Corresponds to the JSON property `appliedControls`
        # @return [Array<String>]
        attr_accessor :applied_controls
      
        # A unique search token. This should be included in the UserEvent logs resulting
        # from this search, which enables accurate attribution of search model
        # performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # This field specifies all related information that is needed on client side for
        # UI rendering of conversational retail search.
        # Corresponds to the JSON property `conversationalSearchResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseConversationalSearchResult]
        attr_accessor :conversational_search_result
      
        # Contains the spell corrected query, if found. If the spell correction type is
        # AUTOMATIC, then the search results are based on corrected_query. Otherwise the
        # original query is used for search.
        # Corresponds to the JSON property `correctedQuery`
        # @return [String]
        attr_accessor :corrected_query
      
        # Metadata related to A/B testing experiment associated with this response. Only
        # exists when an experiment is triggered.
        # Corresponds to the JSON property `experimentInfo`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfo>]
        attr_accessor :experiment_info
      
        # Results of facets requested by user.
        # Corresponds to the JSON property `facets`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacet>]
        attr_accessor :facets
      
        # The invalid SearchRequest.BoostSpec.condition_boost_specs that are not applied
        # during serving.
        # Corresponds to the JSON property `invalidConditionBoostSpecs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>]
        attr_accessor :invalid_condition_boost_specs
      
        # A token that can be sent as SearchRequest.page_token to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Metadata for pinning to be returned in the response. This is used for
        # distinguishing between applied vs dropped pins.
        # Corresponds to the JSON property `pinControlMetadata`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPinControlMetadata]
        attr_accessor :pin_control_metadata
      
        # Information describing query expansion including whether expansion has
        # occurred.
        # Corresponds to the JSON property `queryExpansionInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo]
        attr_accessor :query_expansion_info
      
        # The URI of a customer-defined redirect page. If redirect action is triggered,
        # no search is performed, and only redirect_uri and attribution_token are set in
        # the response.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # A list of matched items. The order represents the ranking.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseSearchResult>]
        attr_accessor :results
      
        # This field specifies all related information for tile navigation that will be
        # used in client side.
        # Corresponds to the JSON property `tileNavigationResult`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseTileNavigationResult]
        attr_accessor :tile_navigation_result
      
        # The estimated total count of matched items irrespective of pagination. The
        # count of results returned by pagination may be less than the total_size that
        # matches.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_controls = args[:applied_controls] if args.key?(:applied_controls)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @conversational_search_result = args[:conversational_search_result] if args.key?(:conversational_search_result)
          @corrected_query = args[:corrected_query] if args.key?(:corrected_query)
          @experiment_info = args[:experiment_info] if args.key?(:experiment_info)
          @facets = args[:facets] if args.key?(:facets)
          @invalid_condition_boost_specs = args[:invalid_condition_boost_specs] if args.key?(:invalid_condition_boost_specs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pin_control_metadata = args[:pin_control_metadata] if args.key?(:pin_control_metadata)
          @query_expansion_info = args[:query_expansion_info] if args.key?(:query_expansion_info)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @results = args[:results] if args.key?(:results)
          @tile_navigation_result = args[:tile_navigation_result] if args.key?(:tile_navigation_result)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # This field specifies all related information that is needed on client side for
      # UI rendering of conversational retail search.
      class GoogleCloudRetailV2betaSearchResponseConversationalSearchResult
        include Google::Apis::Core::Hashable
      
        # Additional filter that client side need to apply.
        # Corresponds to the JSON property `additionalFilter`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter]
        attr_accessor :additional_filter
      
        # This field is deprecated but will be kept for backward compatibility. There is
        # expected to have only one additional filter and the value will be the same to
        # the same as field `additional_filter`.
        # Corresponds to the JSON property `additionalFilters`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter>]
        attr_accessor :additional_filters
      
        # Conversation UUID. This field will be stored in client side storage to
        # maintain the conversation session with server and will be used for next search
        # request's SearchRequest.ConversationalSearchSpec.conversation_id to restore
        # conversation state in server.
        # Corresponds to the JSON property `conversationId`
        # @return [String]
        attr_accessor :conversation_id
      
        # The follow-up question. e.g., `What is the color?`
        # Corresponds to the JSON property `followupQuestion`
        # @return [String]
        attr_accessor :followup_question
      
        # The current refined query for the conversational search. This field will be
        # used in customer UI that the query in the search bar should be replaced with
        # the refined query. For example, if SearchRequest.query is `dress` and next
        # SearchRequest.ConversationalSearchSpec.UserAnswer.text_answer is `red color`,
        # which does not match any product attribute value filters, the refined query
        # will be `dress, red color`.
        # Corresponds to the JSON property `refinedQuery`
        # @return [String]
        attr_accessor :refined_query
      
        # The answer options provided to client for the follow-up question.
        # Corresponds to the JSON property `suggestedAnswers`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer>]
        attr_accessor :suggested_answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_filter = args[:additional_filter] if args.key?(:additional_filter)
          @additional_filters = args[:additional_filters] if args.key?(:additional_filters)
          @conversation_id = args[:conversation_id] if args.key?(:conversation_id)
          @followup_question = args[:followup_question] if args.key?(:followup_question)
          @refined_query = args[:refined_query] if args.key?(:refined_query)
          @suggested_answers = args[:suggested_answers] if args.key?(:suggested_answers)
        end
      end
      
      # Additional filter that client side need to apply.
      class GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter
        include Google::Apis::Core::Hashable
      
        # Product attribute which structured by an attribute name and value. This
        # structure is used in conversational search filters and answers. For example,
        # if we have `name=color` and `value=red`, this means that the color is `red`.
        # Corresponds to the JSON property `productAttributeValue`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeValue]
        attr_accessor :product_attribute_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_attribute_value = args[:product_attribute_value] if args.key?(:product_attribute_value)
        end
      end
      
      # Suggested answers to the follow-up question.
      class GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer
        include Google::Apis::Core::Hashable
      
        # Product attribute which structured by an attribute name and value. This
        # structure is used in conversational search filters and answers. For example,
        # if we have `name=color` and `value=red`, this means that the color is `red`.
        # Corresponds to the JSON property `productAttributeValue`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeValue]
        attr_accessor :product_attribute_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_attribute_value = args[:product_attribute_value] if args.key?(:product_attribute_value)
        end
      end
      
      # A facet result.
      class GoogleCloudRetailV2betaSearchResponseFacet
        include Google::Apis::Core::Hashable
      
        # Whether the facet is dynamically generated.
        # Corresponds to the JSON property `dynamicFacet`
        # @return [Boolean]
        attr_accessor :dynamic_facet
        alias_method :dynamic_facet?, :dynamic_facet
      
        # The key for this facet. E.g., "colorFamilies" or "price" or "attributes.attr1".
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The facet values for this field.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacetFacetValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_facet = args[:dynamic_facet] if args.key?(:dynamic_facet)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A facet value which contains value names and their count.
      class GoogleCloudRetailV2betaSearchResponseFacetFacetValue
        include Google::Apis::Core::Hashable
      
        # Number of items that have this facet value.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A floating point interval.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :interval
      
        # The maximum value in the FacetValue.interval. Only supported on numerical
        # facets and returned if SearchRequest.FacetSpec.FacetKey.return_min_max is true.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # The minimum value in the FacetValue.interval. Only supported on numerical
        # facets and returned if SearchRequest.FacetSpec.FacetKey.return_min_max is true.
        # Corresponds to the JSON property `minValue`
        # @return [Float]
        attr_accessor :min_value
      
        # Text value of a facet, such as "Black" for facet "colorFamilies".
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @interval = args[:interval] if args.key?(:interval)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Information describing query expansion including whether expansion has
      # occurred.
      class GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo
        include Google::Apis::Core::Hashable
      
        # Bool describing whether query expansion has occurred.
        # Corresponds to the JSON property `expandedQuery`
        # @return [Boolean]
        attr_accessor :expanded_query
        alias_method :expanded_query?, :expanded_query
      
        # Number of pinned results. This field will only be set when expansion happens
        # and SearchRequest.QueryExpansionSpec.pin_unexpanded_results is set to true.
        # Corresponds to the JSON property `pinnedResultCount`
        # @return [Fixnum]
        attr_accessor :pinned_result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expanded_query = args[:expanded_query] if args.key?(:expanded_query)
          @pinned_result_count = args[:pinned_result_count] if args.key?(:pinned_result_count)
        end
      end
      
      # Represents the search results.
      class GoogleCloudRetailV2betaSearchResponseSearchResult
        include Google::Apis::Core::Hashable
      
        # Product.id of the searched Product.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The count of matched variant Products.
        # Corresponds to the JSON property `matchingVariantCount`
        # @return [Fixnum]
        attr_accessor :matching_variant_count
      
        # If a variant Product matches the search query, this map indicates which
        # Product fields are matched. The key is the Product.name, the value is a field
        # mask of the matched Product fields. If matched attributes cannot be determined,
        # this map will be empty. For example, a key "sku1" with field mask "products.
        # color_info" indicates there is a match between "sku1" ColorInfo and the query.
        # Corresponds to the JSON property `matchingVariantFields`
        # @return [Hash<String,String>]
        attr_accessor :matching_variant_fields
      
        # Google provided available scores.
        # Corresponds to the JSON property `modelScores`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaDoubleList>]
        attr_accessor :model_scores
      
        # Specifies previous events related to this product for this user based on
        # UserEvent with same SearchRequest.visitor_id or UserInfo.user_id. This is set
        # only when SearchRequest.PersonalizationSpec.mode is SearchRequest.
        # PersonalizationSpec.Mode.AUTO. Possible values: * `purchased`: Indicates that
        # this product has been purchased before.
        # Corresponds to the JSON property `personalLabels`
        # @return [Array<String>]
        attr_accessor :personal_labels
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :product
      
        # The rollup matching variant Product attributes. The key is one of the
        # SearchRequest.variant_rollup_keys. The values are the merged and de-duplicated
        # Product attributes. Notice that the rollup values are respect filter. For
        # example, when filtering by "colorFamilies:ANY(\"red\")" and rollup "
        # colorFamilies", only "red" is returned. For textual and numerical attributes,
        # the rollup values is a list of string or double values with type google.
        # protobuf.ListValue. For example, if there are two variants with colors "red"
        # and "blue", the rollup values are ` key: "colorFamilies" value ` list_value `
        # values ` string_value: "red" ` values ` string_value: "blue" ` ` ` ` For
        # FulfillmentInfo, the rollup values is a double value with type google.protobuf.
        # Value. For example, ``key: "pickupInStore.store1" value ` number_value: 10 ```
        # means a there are 10 variants in this product are available in the store "
        # store1".
        # Corresponds to the JSON property `variantRollupValues`
        # @return [Hash<String,Object>]
        attr_accessor :variant_rollup_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @matching_variant_count = args[:matching_variant_count] if args.key?(:matching_variant_count)
          @matching_variant_fields = args[:matching_variant_fields] if args.key?(:matching_variant_fields)
          @model_scores = args[:model_scores] if args.key?(:model_scores)
          @personal_labels = args[:personal_labels] if args.key?(:personal_labels)
          @product = args[:product] if args.key?(:product)
          @variant_rollup_values = args[:variant_rollup_values] if args.key?(:variant_rollup_values)
        end
      end
      
      # This field specifies all related information for tile navigation that will be
      # used in client side.
      class GoogleCloudRetailV2betaSearchResponseTileNavigationResult
        include Google::Apis::Core::Hashable
      
        # The current tiles that are used for tile navigation, sorted by engagement.
        # Corresponds to the JSON property `tiles`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaTile>]
        attr_accessor :tiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tiles = args[:tiles] if args.key?(:tiles)
        end
      end
      
      # Configures metadata that is used to generate serving time results (e.g. search
      # results or recommendation predictions).
      class GoogleCloudRetailV2betaServingConfig
        include Google::Apis::Core::Hashable
      
        # Condition boost specifications. If a product matches multiple conditions in
        # the specifications, boost scores from these specifications are all applied and
        # combined in a non-linear way. Maximum number of specifications is 100. Notice
        # that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are
        # set, the boost conditions from both places are evaluated. If a search request
        # matches multiple boost conditions, the final boost score is equal to the sum
        # of the boost scores from all matched boost conditions. Can only be set if
        # solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `boostControlIds`
        # @return [Array<String>]
        attr_accessor :boost_control_ids
      
        # Required. The human readable serving config display name. Used in Retail UI.
        # This field must be a UTF-8 encoded string with a length limit of 128
        # characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # How much diversity to use in recommendation model results e.g. `medium-
        # diversity` or `high-diversity`. Currently supported values: * `no-diversity` *
        # `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If
        # not specified, we choose default based on recommendation model type. Default
        # value: `no-diversity`. Can only be set if solution_types is
        # SOLUTION_TYPE_RECOMMENDATION.
        # Corresponds to the JSON property `diversityLevel`
        # @return [String]
        attr_accessor :diversity_level
      
        # What kind of diversity to use - data driven or rule based. If unset, the
        # server behavior defaults to RULE_BASED_DIVERSITY.
        # Corresponds to the JSON property `diversityType`
        # @return [String]
        attr_accessor :diversity_type
      
        # Condition do not associate specifications. If multiple do not associate
        # conditions match, all matching do not associate controls in the list will
        # execute. - Order does not matter. - Maximum number of specifications is 100.
        # Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `doNotAssociateControlIds`
        # @return [Array<String>]
        attr_accessor :do_not_associate_control_ids
      
        # The specifications of dynamically generated facets.
        # Corresponds to the JSON property `dynamicFacetSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec]
        attr_accessor :dynamic_facet_spec
      
        # Whether to add additional category filters on the `similar-items` model. If
        # not specified, we enable it by default. Allowed values are: * `no-category-
        # match`: No additional filtering of original results from the model and the
        # customer's filters. * `relaxed-category-match`: Only keep results with
        # categories that match at least one item categories in the PredictRequests's
        # context item. * If customer also sends filters in the PredictRequest, then the
        # results will satisfy both conditions (user given and category match). Can only
        # be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
        # Corresponds to the JSON property `enableCategoryFilterLevel`
        # @return [String]
        attr_accessor :enable_category_filter_level
      
        # Facet specifications for faceted search. If empty, no facets are returned. The
        # ids refer to the ids of Control resources with only the Facet control set.
        # These controls are assumed to be in the same Catalog as the ServingConfig. A
        # maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is
        # returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `facetControlIds`
        # @return [Array<String>]
        attr_accessor :facet_control_ids
      
        # Condition filter specifications. If a product matches multiple conditions in
        # the specifications, filters from these specifications are all applied and
        # combined via the AND operator. Maximum number of specifications is 100. Can
        # only be set if solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `filterControlIds`
        # @return [Array<String>]
        attr_accessor :filter_control_ids
      
        # Condition ignore specifications. If multiple ignore conditions match, all
        # matching ignore controls in the list will execute. - Order does not matter. -
        # Maximum number of specifications is 100. Can only be set if solution_types is
        # SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `ignoreControlIds`
        # @return [Array<String>]
        attr_accessor :ignore_control_ids
      
        # When the flag is enabled, the products in the denylist will not be filtered
        # out in the recommendation filtering results.
        # Corresponds to the JSON property `ignoreRecsDenylist`
        # @return [Boolean]
        attr_accessor :ignore_recs_denylist
        alias_method :ignore_recs_denylist?, :ignore_recs_denylist
      
        # The id of the model in the same Catalog to use at serving time. Currently only
        # RecommendationModels are supported: https://cloud.google.com/retail/
        # recommendations-ai/docs/create-models Can be changed but only to a compatible
        # model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when
        # solution_types is SOLUTION_TYPE_RECOMMENDATION.
        # Corresponds to the JSON property `modelId`
        # @return [String]
        attr_accessor :model_id
      
        # Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/
        # servingConfig/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Condition oneway synonyms specifications. If multiple oneway synonyms
        # conditions match, all matching oneway synonyms controls in the list will
        # execute. Order of controls in the list will not matter. Maximum number of
        # specifications is 100. Can only be set if solution_types is
        # SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `onewaySynonymsControlIds`
        # @return [Array<String>]
        attr_accessor :oneway_synonyms_control_ids
      
        # The specification for personalization.
        # Corresponds to the JSON property `personalizationSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec]
        attr_accessor :personalization_spec
      
        # How much price ranking we want in serving results. Price reranking causes
        # product items with a similar recommendation probability to be ordered by price,
        # with the highest-priced items first. This setting could result in a decrease
        # in click-through and conversion rates. Allowed values are: * `no-price-
        # reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-
        # reranking` If not specified, we choose default based on model type. Default
        # value: `no-price-reranking`. Can only be set if solution_types is
        # SOLUTION_TYPE_RECOMMENDATION.
        # Corresponds to the JSON property `priceRerankingLevel`
        # @return [String]
        attr_accessor :price_reranking_level
      
        # Condition redirect specifications. Only the first triggered redirect action is
        # applied, even if multiple apply. Maximum number of specifications is 1000. Can
        # only be set if solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `redirectControlIds`
        # @return [Array<String>]
        attr_accessor :redirect_control_ids
      
        # Condition replacement specifications. - Applied according to the order in the
        # list. - A previously replaced term can not be re-replaced. - Maximum number of
        # specifications is 100. Can only be set if solution_types is
        # SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `replacementControlIds`
        # @return [Array<String>]
        attr_accessor :replacement_control_ids
      
        # Required. Immutable. Specifies the solution types that a serving config can be
        # associated with. Currently we support setting only one type of solution.
        # Corresponds to the JSON property `solutionTypes`
        # @return [Array<String>]
        attr_accessor :solution_types
      
        # Condition synonyms specifications. If multiple syonyms conditions match, all
        # matching synonyms control in the list will execute. Order of controls in the
        # list will not matter. Maximum number of specifications is 100. Can only be set
        # if solution_types is SOLUTION_TYPE_SEARCH.
        # Corresponds to the JSON property `twowaySynonymsControlIds`
        # @return [Array<String>]
        attr_accessor :twoway_synonyms_control_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_control_ids = args[:boost_control_ids] if args.key?(:boost_control_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @diversity_level = args[:diversity_level] if args.key?(:diversity_level)
          @diversity_type = args[:diversity_type] if args.key?(:diversity_type)
          @do_not_associate_control_ids = args[:do_not_associate_control_ids] if args.key?(:do_not_associate_control_ids)
          @dynamic_facet_spec = args[:dynamic_facet_spec] if args.key?(:dynamic_facet_spec)
          @enable_category_filter_level = args[:enable_category_filter_level] if args.key?(:enable_category_filter_level)
          @facet_control_ids = args[:facet_control_ids] if args.key?(:facet_control_ids)
          @filter_control_ids = args[:filter_control_ids] if args.key?(:filter_control_ids)
          @ignore_control_ids = args[:ignore_control_ids] if args.key?(:ignore_control_ids)
          @ignore_recs_denylist = args[:ignore_recs_denylist] if args.key?(:ignore_recs_denylist)
          @model_id = args[:model_id] if args.key?(:model_id)
          @name = args[:name] if args.key?(:name)
          @oneway_synonyms_control_ids = args[:oneway_synonyms_control_ids] if args.key?(:oneway_synonyms_control_ids)
          @personalization_spec = args[:personalization_spec] if args.key?(:personalization_spec)
          @price_reranking_level = args[:price_reranking_level] if args.key?(:price_reranking_level)
          @redirect_control_ids = args[:redirect_control_ids] if args.key?(:redirect_control_ids)
          @replacement_control_ids = args[:replacement_control_ids] if args.key?(:replacement_control_ids)
          @solution_types = args[:solution_types] if args.key?(:solution_types)
          @twoway_synonyms_control_ids = args[:twoway_synonyms_control_ids] if args.key?(:twoway_synonyms_control_ids)
        end
      end
      
      # Request message to set a specified branch as new default_branch.
      class GoogleCloudRetailV2betaSetDefaultBranchRequest
        include Google::Apis::Core::Hashable
      
        # The final component of the resource name of a branch. This field must be one
        # of "0", "1" or "2". Otherwise, an INVALID_ARGUMENT error is returned. If there
        # are no sufficient active products in the targeted branch and force is not set,
        # a FAILED_PRECONDITION error is returned.
        # Corresponds to the JSON property `branchId`
        # @return [String]
        attr_accessor :branch_id
      
        # If set to true, it permits switching to a branch with branch_id even if it has
        # no sufficient active products.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Some note on this request, this can be retrieved by CatalogService.
        # GetDefaultBranch before next valid default branch set occurs. This field must
        # be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
        # an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_id = args[:branch_id] if args.key?(:branch_id)
          @force = args[:force] if args.key?(:force)
          @note = args[:note] if args.key?(:note)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the
      # ProductService.SetInventory method.
      class GoogleCloudRetailV2betaSetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ProductService.SetInventory method.
      class GoogleCloudRetailV2betaSetInventoryRequest
        include Google::Apis::Core::Hashable
      
        # If set to true, and the Product with name Product.name is not found, the
        # inventory update will still be processed and retained for at most 1 day until
        # the Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :inventory
      
        # Indicates which inventory fields in the provided Product to update. At least
        # one field must be provided. If an unsupported or unknown field is provided, an
        # INVALID_ARGUMENT error is returned and the entire update will be ignored.
        # Corresponds to the JSON property `setMask`
        # @return [String]
        attr_accessor :set_mask
      
        # The time when the request is issued, used to prevent out-of-order updates on
        # inventory fields with the last update time recorded. If not provided, the
        # internal system time will be used.
        # Corresponds to the JSON property `setTime`
        # @return [String]
        attr_accessor :set_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @inventory = args[:inventory] if args.key?(:inventory)
          @set_mask = args[:set_mask] if args.key?(:set_mask)
          @set_time = args[:set_time] if args.key?(:set_time)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the ProductService.SetInventory method.
      class GoogleCloudRetailV2betaSetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A list of string values.
      class GoogleCloudRetailV2betaStringList
        include Google::Apis::Core::Hashable
      
        # String values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # This field specifies the tile information including an attribute key,
      # attribute value. More fields will be added in the future, eg: product id or
      # product counts, etc.
      class GoogleCloudRetailV2betaTile
        include Google::Apis::Core::Hashable
      
        # Product attribute name and numeric interval.
        # Corresponds to the JSON property `productAttributeInterval`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeInterval]
        attr_accessor :product_attribute_interval
      
        # Product attribute which structured by an attribute name and value. This
        # structure is used in conversational search filters and answers. For example,
        # if we have `name=color` and `value=red`, this means that the color is `red`.
        # Corresponds to the JSON property `productAttributeValue`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductAttributeValue]
        attr_accessor :product_attribute_value
      
        # The representative product id for this tile.
        # Corresponds to the JSON property `representativeProductId`
        # @return [String]
        attr_accessor :representative_product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_attribute_interval = args[:product_attribute_interval] if args.key?(:product_attribute_interval)
          @product_attribute_value = args[:product_attribute_value] if args.key?(:product_attribute_value)
          @representative_product_id = args[:representative_product_id] if args.key?(:representative_product_id)
        end
      end
      
      # Metadata associated with a tune operation.
      class GoogleCloudRetailV2betaTuneModelMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the model that this tune applies to. Format: `projects/`
        # project_number`/locations/`location_id`/catalogs/`catalog_id`/models/`model_id`
        # `
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Request to manually start a tuning process now (instead of waiting for the
      # periodically scheduled tuning to happen).
      class GoogleCloudRetailV2betaTuneModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response associated with a tune operation.
      class GoogleCloudRetailV2betaTuneModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for UpdateGenerativeQuestionConfig method.
      class GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a single generated question.
        # Corresponds to the JSON property `generativeQuestionConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGenerativeQuestionConfig]
        attr_accessor :generative_question_config
      
        # Optional. Indicates which fields in the provided GenerativeQuestionConfig to
        # update. The following are NOT supported: * GenerativeQuestionConfig.frequency
        # If not set or empty, all supported fields are updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generative_question_config = args[:generative_question_config] if args.key?(:generative_question_config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # UserEvent captures all metadata information Retail API needs to know about how
      # end users interact with customers' website.
      class GoogleCloudRetailV2betaUserEvent
        include Google::Apis::Core::Hashable
      
        # Extra user event features to include in the recommendation model. If you
        # provide custom attributes for ingested user events, also include them in the
        # user events that you associate with prediction requests. Custom attribute
        # formatting must be consistent between imported events and events provided with
        # prediction requests. This lets the Retail API use those custom attributes when
        # training models and serving predictions, which helps improve recommendation
        # quality. This field needs to pass all below criteria, otherwise an
        # INVALID_ARGUMENT error is returned: * The key must be a UTF-8 encoded string
        # with a length limit of 5,000 characters. * For text attributes, at most 400
        # values are allowed. Empty values are not allowed. Each value must be a UTF-8
        # encoded string with a length limit of 256 characters. * For number attributes,
        # at most 400 values are allowed. For product recommendations, an example of
        # extra user information is traffic_channel, which is how a user arrives at the
        # site. Users can arrive at the site by coming to the site directly, coming
        # through Google search, or in other ways.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # Highly recommended for user events that are the result of PredictionService.
        # Predict. This field enables accurate attribution of recommendation model
        # performance. The value must be a valid PredictResponse.attribution_token for
        # user events that are the result of PredictionService.Predict. The value must
        # be a valid SearchResponse.attribution_token for user events that are the
        # result of SearchService.Search. This token enables us to accurately attribute
        # page view or purchase back to the event and the particular predict response
        # containing this clicked/purchased product. If user clicks on product K in the
        # recommendation results, pass PredictResponse.attribution_token as a URL
        # parameter to product K's page. When recording events on product K's page, log
        # the PredictResponse.attribution_token to this field.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # The ID or name of the associated shopping cart. This ID is used to associate
        # multiple items added or present in the cart before purchase. This can only be
        # set for `add-to-cart`, `purchase-complete`, or `shopping-cart-page-view`
        # events.
        # Corresponds to the JSON property `cartId`
        # @return [String]
        attr_accessor :cart_id
      
        # Detailed completion information including completion attribution token and
        # clicked completion info.
        # Corresponds to the JSON property `completionDetail`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDetail]
        attr_accessor :completion_detail
      
        # The entity for customers that may run multiple different entities, domains,
        # sites or regions, for example, `Google US`, `Google Ads`, `Waymo`, `google.com`
        # , `youtube.com`, etc. We recommend that you set this field to get better per-
        # entity search, completion, and prediction results.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Only required for UserEventService.ImportUserEvents method. Timestamp of when
        # the user event happened.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. User event type. Allowed values are: * `add-to-cart`: Products being
        # added to cart. * `remove-from-cart`: Products being removed from cart. * `
        # category-page-view`: Special pages such as sale or promotion pages viewed. * `
        # detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage
        # viewed. * `purchase-complete`: User finishing a purchase. * `search`: Product
        # search. * `shopping-cart-page-view`: User viewing a shopping cart.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # A list of identifiers for the independent experiment groups this user event
        # belongs to. This is used to distinguish between user events associated with
        # different experiment setups (e.g. using Retail API, using different
        # recommendation models).
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the products being filtered. See
        # SearchRequest.filter for definition and syntax. The value must be a UTF-8
        # encoded string with a length limit of 1,000 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # An integer that specifies the current offset for pagination (the 0-indexed
        # starting location, amongst the products deemed by the API as relevant). See
        # SearchRequest.offset for definition. If this field is negative, an
        # INVALID_ARGUMENT is returned. This can only be set for `search` events. Other
        # event types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned. See SearchRequest.order_by for
        # definition and syntax. The value must be a UTF-8 encoded string with a length
        # limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # This can only be set for `search` events. Other event types should not set
        # this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The categories associated with a category page. To represent full path of
        # category, use '>' sign to separate different hierarchies. If '>' is part of
        # the category name, replace it with other character(s). Category pages include
        # special pages such as sales or promotions. For instance, a special sale page
        # may have the category hierarchy: "pageCategories" : ["Sales > 2017 Black
        # Friday Deals"]. Required for `category-page-view` events. At least one of
        # search_query or page_categories is required for `search` events. Other event
        # types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<String>]
        attr_accessor :page_categories
      
        # A unique ID of a web page view. This should be kept the same for all user
        # events triggered from the same pageview. For example, an item detail page view
        # could trigger multiple events as the user is browsing the page. The `
        # pageViewId` property should be kept the same for all these events so that they
        # can be grouped together properly. When using the client side event reporting
        # with JavaScript pixel and Google Tag Manager, this value is filled in
        # automatically.
        # Corresponds to the JSON property `pageViewId`
        # @return [String]
        attr_accessor :page_view_id
      
        # The main product details related to the event. This field is optional except
        # for the following event types: * `add-to-cart` * `detail-page-view` * `
        # purchase-complete` In a `search` event, this field represents the products
        # returned to the end user on the current page (the end user may have not
        # finished browsing the whole page yet). When a new page is returned to the end
        # user, after pagination/filtering/ordering even for the same query, a new `
        # search` event with different product_details is desired. The end user may have
        # not finished browsing the whole page yet.
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail>]
        attr_accessor :product_details
      
        # A transaction represents the entire purchase transaction.
        # Corresponds to the JSON property `purchaseTransaction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction]
        attr_accessor :purchase_transaction
      
        # The referrer URL of the current page. When using the client side event
        # reporting with JavaScript pixel and Google Tag Manager, this value is filled
        # in automatically.
        # Corresponds to the JSON property `referrerUri`
        # @return [String]
        attr_accessor :referrer_uri
      
        # The user's search query. See SearchRequest.query for definition. The value
        # must be a UTF-8 encoded string with a length limit of 5,000 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. At least one of search_query
        # or page_categories is required for `search` events. Other event types should
        # not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `searchQuery`
        # @return [String]
        attr_accessor :search_query
      
        # A unique identifier for tracking a visitor session with a length limit of 128
        # bytes. A session is an aggregation of an end user behavior in a time span. A
        # general guideline to populate the session_id: 1. If user has no activity for
        # 30 min, a new session_id should be assigned. 2. The session_id should be
        # unique across users, suggest use uuid or add visitor_id as prefix.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # Complete URL (window.location.href) of the user's current page. When using the
        # client side event reporting with JavaScript pixel and Google Tag Manager, this
        # value is filled in automatically. Maximum length 5,000 characters.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo]
        attr_accessor :user_info
      
        # Required. A unique identifier for tracking visitors. For example, this could
        # be implemented with an HTTP cookie, which should be able to uniquely identify
        # a visitor on a single device. This unique identifier should not change if the
        # visitor log in/out of the website. Don't set the field to the same fixed ID
        # for different users. This mixes the event history of those users together,
        # which results in degraded model quality. The field must be a UTF-8 encoded
        # string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT
        # error is returned. The field should not contain PII or user-data. We recommend
        # to use Google Analytics [Client ID](https://developers.google.com/analytics/
        # devguides/collection/analyticsjs/field-reference#clientId) for this field.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @cart_id = args[:cart_id] if args.key?(:cart_id)
          @completion_detail = args[:completion_detail] if args.key?(:completion_detail)
          @entity = args[:entity] if args.key?(:entity)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @filter = args[:filter] if args.key?(:filter)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @page_view_id = args[:page_view_id] if args.key?(:page_view_id)
          @product_details = args[:product_details] if args.key?(:product_details)
          @purchase_transaction = args[:purchase_transaction] if args.key?(:purchase_transaction)
          @referrer_uri = args[:referrer_uri] if args.key?(:referrer_uri)
          @search_query = args[:search_query] if args.key?(:search_query)
          @session_id = args[:session_id] if args.key?(:session_id)
          @uri = args[:uri] if args.key?(:uri)
          @user_info = args[:user_info] if args.key?(:user_info)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2betaUserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # The inline source for the input config for ImportUserEvents method.
      class GoogleCloudRetailV2betaUserEventInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of user events to import. Recommended max of 10k items.
        # Corresponds to the JSON property `userEvents`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent>]
        attr_accessor :user_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_events = args[:user_events] if args.key?(:user_events)
        end
      end
      
      # The input config source for user events.
      class GoogleCloudRetailV2betaUserEventInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        # Google Cloud Storage location for input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportUserEvents method.
        # Corresponds to the JSON property `userEventInlineSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource]
        attr_accessor :user_event_inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @user_event_inline_source = args[:user_event_inline_source] if args.key?(:user_event_inline_source)
        end
      end
      
      # Information of an end user.
      class GoogleCloudRetailV2betaUserInfo
        include Google::Apis::Core::Hashable
      
        # True if the request is made directly from the end user, in which case the
        # ip_address and user_agent can be populated from the HTTP request. This flag
        # should be set only if the API request is made directly from the end user such
        # as a mobile app (and not if a gateway or a server is processing and pushing
        # the user events). This should not be set when using the JavaScript tag in
        # UserEventService.CollectUserEvent.
        # Corresponds to the JSON property `directUserRequest`
        # @return [Boolean]
        attr_accessor :direct_user_request
        alias_method :direct_user_request?, :direct_user_request
      
        # The end user's IP address. This field is used to extract location information
        # for personalization. This field must be either an IPv4 address (e.g. "104.133.
        # 9.80") or an IPv6 address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334").
        # Otherwise, an INVALID_ARGUMENT error is returned. This should not be set when:
        # * setting SearchRequest.user_info. * using the JavaScript tag in
        # UserEventService.CollectUserEvent or if direct_user_request is set.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # User agent as included in the HTTP header. The field must be a UTF-8 encoded
        # string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT
        # error is returned. This should not be set when using the client side event
        # reporting with GTM or JavaScript tag in UserEventService.CollectUserEvent or
        # if direct_user_request is set.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Highly recommended for logged-in users. Unique identifier for logged-in user,
        # such as a user name. Don't set for anonymous users. Always use a hashed value
        # for this ID. Don't set the field to the same fixed ID for different users.
        # This mixes the event history of those users together, which results in
        # degraded model quality. The field must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_user_request = args[:direct_user_request] if args.key?(:direct_user_request)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::RetailV2beta::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::RetailV2beta::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
    end
  end
end
