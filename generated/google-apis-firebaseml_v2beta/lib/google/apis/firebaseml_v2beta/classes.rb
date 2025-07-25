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
    module FirebasemlV2beta
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
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
      
      # The generic reusable api auth config. Deprecated. Please use AuthConfig (
      # google/cloud/aiplatform/master/auth.proto) instead.
      class GoogleCloudAiplatformV1beta1ApiAuth
        include Google::Apis::Core::Hashable
      
        # The API secret.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig]
        attr_accessor :api_key_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
        end
      end
      
      # The API secret.
      class GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Required. The SecretManager secret version resource name storing API key. e.g.
        # projects/`project`/secrets/`secret`/versions/`version`
        # Corresponds to the JSON property `apiKeySecretVersion`
        # @return [String]
        attr_accessor :api_key_secret_version
      
        # The API key string. Either this or `api_key_secret_version` must be set.
        # Corresponds to the JSON property `apiKeyString`
        # @return [String]
        attr_accessor :api_key_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_secret_version = args[:api_key_secret_version] if args.key?(:api_key_secret_version)
          @api_key_string = args[:api_key_string] if args.key?(:api_key_string)
        end
      end
      
      # Auth configuration to run the extension.
      class GoogleCloudAiplatformV1beta1AuthConfig
        include Google::Apis::Core::Hashable
      
        # Config for authentication with API key.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig]
        attr_accessor :api_key_config
      
        # Type of auth scheme.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Config for Google Service Account Authentication.
        # Corresponds to the JSON property `googleServiceAccountConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig]
        attr_accessor :google_service_account_config
      
        # Config for HTTP Basic Authentication.
        # Corresponds to the JSON property `httpBasicAuthConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig]
        attr_accessor :http_basic_auth_config
      
        # Config for user oauth.
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigOauthConfig]
        attr_accessor :oauth_config
      
        # Config for user OIDC auth.
        # Corresponds to the JSON property `oidcConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigOidcConfig]
        attr_accessor :oidc_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @google_service_account_config = args[:google_service_account_config] if args.key?(:google_service_account_config)
          @http_basic_auth_config = args[:http_basic_auth_config] if args.key?(:http_basic_auth_config)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @oidc_config = args[:oidc_config] if args.key?(:oidc_config)
        end
      end
      
      # Config for authentication with API key.
      class GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the SecretManager secret version resource storing the
        # API key. Format: `projects/`project`/secrets/`secrete`/versions/`version`` -
        # If both `api_key_secret` and `api_key_string` are specified, this field takes
        # precedence over `api_key_string`. - If specified, the `secretmanager.versions.
        # access` permission should be granted to Vertex AI Extension Service Agent (
        # https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents)
        # on the specified resource.
        # Corresponds to the JSON property `apiKeySecret`
        # @return [String]
        attr_accessor :api_key_secret
      
        # Optional. The API key to be used in the request directly.
        # Corresponds to the JSON property `apiKeyString`
        # @return [String]
        attr_accessor :api_key_string
      
        # Optional. The location of the API key.
        # Corresponds to the JSON property `httpElementLocation`
        # @return [String]
        attr_accessor :http_element_location
      
        # Optional. The parameter name of the API key. E.g. If the API request is "https:
        # //example.com/act?api_key=", "api_key" would be the parameter name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_secret = args[:api_key_secret] if args.key?(:api_key_secret)
          @api_key_string = args[:api_key_string] if args.key?(:api_key_string)
          @http_element_location = args[:http_element_location] if args.key?(:http_element_location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Config for Google Service Account Authentication.
      class GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The service account that the extension execution service runs as. -
        # If the service account is specified, the `iam.serviceAccounts.getAccessToken`
        # permission should be granted to Vertex AI Extension Service Agent (https://
        # cloud.google.com/vertex-ai/docs/general/access-control#service-agents) on the
        # specified service account. - If not specified, the Vertex AI Extension Service
        # Agent will be used to execute the Extension.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Config for HTTP Basic Authentication.
      class GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the SecretManager secret version resource storing the
        # base64 encoded credentials. Format: `projects/`project`/secrets/`secrete`/
        # versions/`version`` - If specified, the `secretmanager.versions.access`
        # permission should be granted to Vertex AI Extension Service Agent (https://
        # cloud.google.com/vertex-ai/docs/general/access-control#service-agents) on the
        # specified resource.
        # Corresponds to the JSON property `credentialSecret`
        # @return [String]
        attr_accessor :credential_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credential_secret = args[:credential_secret] if args.key?(:credential_secret)
        end
      end
      
      # Config for user oauth.
      class GoogleCloudAiplatformV1beta1AuthConfigOauthConfig
        include Google::Apis::Core::Hashable
      
        # Access token for extension endpoint. Only used to propagate token from [[
        # ExecuteExtensionRequest.runtime_auth_config]] at request time.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # The service account used to generate access tokens for executing the Extension.
        # - If the service account is specified, the `iam.serviceAccounts.
        # getAccessToken` permission should be granted to Vertex AI Extension Service
        # Agent (https://cloud.google.com/vertex-ai/docs/general/access-control#service-
        # agents) on the provided service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Config for user OIDC auth.
      class GoogleCloudAiplatformV1beta1AuthConfigOidcConfig
        include Google::Apis::Core::Hashable
      
        # OpenID Connect formatted ID token for extension endpoint. Only used to
        # propagate token from [[ExecuteExtensionRequest.runtime_auth_config]] at
        # request time.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The service account used to generate an OpenID Connect (OIDC)-compatible JWT
        # token signed by the Google OIDC Provider (accounts.google.com) for extension
        # endpoint (https://cloud.google.com/iam/docs/create-short-lived-credentials-
        # direct#sa-credentials-oidc). - The audience for the token will be set to the
        # URL in the server url defined in the OpenApi spec. - If the service account is
        # provided, the service account should grant `iam.serviceAccounts.getOpenIdToken`
        # permission to Vertex AI Extension Service Agent (https://cloud.google.com/
        # vertex-ai/docs/general/access-control#service-agents).
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Content blob.
      class GoogleCloudAiplatformV1beta1Blob
        include Google::Apis::Core::Hashable
      
        # Required. Raw bytes.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. Display name of the blob. Used to provide a label or filename to
        # distinguish blobs. This field is only returned in PromptMessage for prompt
        # management. It is currently used in the Gemini GenerateContent calls only when
        # server side tools (code_execution, google_search, and url_context) are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The IANA standard MIME type of the source data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @display_name = args[:display_name] if args.key?(:display_name)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A response candidate generated from the model.
      class GoogleCloudAiplatformV1beta1Candidate
        include Google::Apis::Core::Hashable
      
        # Output only. Average log probability score of the candidate.
        # Corresponds to the JSON property `avgLogprobs`
        # @return [Float]
        attr_accessor :avg_logprobs
      
        # A collection of source attributions for a piece of content.
        # Corresponds to the JSON property `citationMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CitationMetadata]
        attr_accessor :citation_metadata
      
        # The base structured datatype containing multi-part content of a message. A `
        # Content` includes a `role` field designating the producer of the `Content` and
        # a `parts` field containing multi-part data that contains the content of the
        # message turn.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :content
      
        # Output only. Describes the reason the mode stopped generating tokens in more
        # detail. This is only filled when `finish_reason` is set.
        # Corresponds to the JSON property `finishMessage`
        # @return [String]
        attr_accessor :finish_message
      
        # Output only. The reason why the model stopped generating tokens. If empty, the
        # model has not stopped generating the tokens.
        # Corresponds to the JSON property `finishReason`
        # @return [String]
        attr_accessor :finish_reason
      
        # Metadata returned to client when grounding is enabled.
        # Corresponds to the JSON property `groundingMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingMetadata]
        attr_accessor :grounding_metadata
      
        # Output only. Index of the candidate.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Logprobs Result
        # Corresponds to the JSON property `logprobsResult`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResult]
        attr_accessor :logprobs_result
      
        # Output only. List of ratings for the safety of a response candidate. There is
        # at most one rating per category.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating>]
        attr_accessor :safety_ratings
      
        # Metadata related to url context retrieval tool.
        # Corresponds to the JSON property `urlContextMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlContextMetadata]
        attr_accessor :url_context_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_logprobs = args[:avg_logprobs] if args.key?(:avg_logprobs)
          @citation_metadata = args[:citation_metadata] if args.key?(:citation_metadata)
          @content = args[:content] if args.key?(:content)
          @finish_message = args[:finish_message] if args.key?(:finish_message)
          @finish_reason = args[:finish_reason] if args.key?(:finish_reason)
          @grounding_metadata = args[:grounding_metadata] if args.key?(:grounding_metadata)
          @index = args[:index] if args.key?(:index)
          @logprobs_result = args[:logprobs_result] if args.key?(:logprobs_result)
          @safety_ratings = args[:safety_ratings] if args.key?(:safety_ratings)
          @url_context_metadata = args[:url_context_metadata] if args.key?(:url_context_metadata)
        end
      end
      
      # Source attributions for content.
      class GoogleCloudAiplatformV1beta1Citation
        include Google::Apis::Core::Hashable
      
        # Output only. End index into the content.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. License of the attribution.
        # Corresponds to the JSON property `license`
        # @return [String]
        attr_accessor :license
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `publicationDate`
        # @return [Google::Apis::FirebasemlV2beta::Date]
        attr_accessor :publication_date
      
        # Output only. Start index into the content.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Output only. Title of the attribution.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Url reference of the attribution.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @license = args[:license] if args.key?(:license)
          @publication_date = args[:publication_date] if args.key?(:publication_date)
          @start_index = args[:start_index] if args.key?(:start_index)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A collection of source attributions for a piece of content.
      class GoogleCloudAiplatformV1beta1CitationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. List of citations.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Citation>]
        attr_accessor :citations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citations = args[:citations] if args.key?(:citations)
        end
      end
      
      # Result of executing the [ExecutableCode]. Only generated when using the [
      # CodeExecution] tool, and always follows a `part` containing the [
      # ExecutableCode].
      class GoogleCloudAiplatformV1beta1CodeExecutionResult
        include Google::Apis::Core::Hashable
      
        # Required. Outcome of the code execution.
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # Optional. Contains stdout when code execution is successful, stderr or other
        # description otherwise.
        # Corresponds to the JSON property `output`
        # @return [String]
        attr_accessor :output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outcome = args[:outcome] if args.key?(:outcome)
          @output = args[:output] if args.key?(:output)
        end
      end
      
      # The base structured datatype containing multi-part content of a message. A `
      # Content` includes a `role` field designating the producer of the `Content` and
      # a `parts` field containing multi-part data that contains the content of the
      # message turn.
      class GoogleCloudAiplatformV1beta1Content
        include Google::Apis::Core::Hashable
      
        # Required. Ordered `Parts` that constitute a single message. Parts may have
        # different IANA MIME types.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Part>]
        attr_accessor :parts
      
        # Optional. The producer of the content. Must be either 'user' or 'model'.
        # Useful to set for multi-turn conversations, otherwise can be left blank or
        # unset.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parts = args[:parts] if args.key?(:parts)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for PredictionService.CountTokens.
      class GoogleCloudAiplatformV1beta1CountTokensRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Input content.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content>]
        attr_accessor :contents
      
        # Generation config.
        # Corresponds to the JSON property `generationConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig]
        attr_accessor :generation_config
      
        # Optional. The instances that are the input to token counting call. Schema is
        # identical to the prediction schema of the underlying model.
        # Corresponds to the JSON property `instances`
        # @return [Array<Object>]
        attr_accessor :instances
      
        # Optional. The name of the publisher model requested to serve the prediction.
        # Format: `projects/`project`/locations/`location`/publishers/*/models/*`
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The base structured datatype containing multi-part content of a message. A `
        # Content` includes a `role` field designating the producer of the `Content` and
        # a `parts` field containing multi-part data that contains the content of the
        # message turn.
        # Corresponds to the JSON property `systemInstruction`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :system_instruction
      
        # Optional. A list of `Tools` the model may use to generate the next response. A
        # `Tool` is a piece of code that enables the system to interact with external
        # systems to perform an action, or set of actions, outside of knowledge and
        # scope of the model.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @generation_config = args[:generation_config] if args.key?(:generation_config)
          @instances = args[:instances] if args.key?(:instances)
          @model = args[:model] if args.key?(:model)
          @system_instruction = args[:system_instruction] if args.key?(:system_instruction)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Response message for PredictionService.CountTokens.
      class GoogleCloudAiplatformV1beta1CountTokensResponse
        include Google::Apis::Core::Hashable
      
        # Output only. List of modalities that were processed in the request input.
        # Corresponds to the JSON property `promptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :prompt_tokens_details
      
        # The total number of billable characters counted across all instances from the
        # request.
        # Corresponds to the JSON property `totalBillableCharacters`
        # @return [Fixnum]
        attr_accessor :total_billable_characters
      
        # The total number of tokens counted across all instances from the request.
        # Corresponds to the JSON property `totalTokens`
        # @return [Fixnum]
        attr_accessor :total_tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt_tokens_details = args[:prompt_tokens_details] if args.key?(:prompt_tokens_details)
          @total_billable_characters = args[:total_billable_characters] if args.key?(:total_billable_characters)
          @total_tokens = args[:total_tokens] if args.key?(:total_tokens)
        end
      end
      
      # Describes the options to customize dynamic retrieval.
      class GoogleCloudAiplatformV1beta1DynamicRetrievalConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The threshold to be used in dynamic retrieval. If not set, a system
        # default value is used.
        # Corresponds to the JSON property `dynamicThreshold`
        # @return [Float]
        attr_accessor :dynamic_threshold
      
        # The mode of the predictor to be used in dynamic retrieval.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_threshold = args[:dynamic_threshold] if args.key?(:dynamic_threshold)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Tool to search public web data, powered by Vertex AI Search and Sec4
      # compliance.
      class GoogleCloudAiplatformV1beta1EnterpriseWebSearch
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Code generated by the model that is meant to be executed, and the result
      # returned to the model. Generated when using the [CodeExecution] tool, in which
      # the code will be automatically executed, and a corresponding [
      # CodeExecutionResult] will also be generated.
      class GoogleCloudAiplatformV1beta1ExecutableCode
        include Google::Apis::Core::Hashable
      
        # Required. The code to be executed.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required. Programming language of the `code`.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # Retrieve from data source powered by external API for grounding. The external
      # API is not owned by Google, but need to follow the pre-defined API spec.
      class GoogleCloudAiplatformV1beta1ExternalApi
        include Google::Apis::Core::Hashable
      
        # The generic reusable api auth config. Deprecated. Please use AuthConfig (
        # google/cloud/aiplatform/master/auth.proto) instead.
        # Corresponds to the JSON property `apiAuth`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ApiAuth]
        attr_accessor :api_auth
      
        # The API spec that the external API implements.
        # Corresponds to the JSON property `apiSpec`
        # @return [String]
        attr_accessor :api_spec
      
        # Auth configuration to run the extension.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfig]
        attr_accessor :auth_config
      
        # The search parameters to use for the ELASTIC_SEARCH spec.
        # Corresponds to the JSON property `elasticSearchParams`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams]
        attr_accessor :elastic_search_params
      
        # The endpoint of the external API. The system will call the API at this
        # endpoint to retrieve the data for grounding. Example: https://acme.com:443/
        # search
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # The search parameters to use for SIMPLE_SEARCH spec.
        # Corresponds to the JSON property `simpleSearchParams`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams]
        attr_accessor :simple_search_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_auth = args[:api_auth] if args.key?(:api_auth)
          @api_spec = args[:api_spec] if args.key?(:api_spec)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @elastic_search_params = args[:elastic_search_params] if args.key?(:elastic_search_params)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @simple_search_params = args[:simple_search_params] if args.key?(:simple_search_params)
        end
      end
      
      # The search parameters to use for the ELASTIC_SEARCH spec.
      class GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams
        include Google::Apis::Core::Hashable
      
        # The ElasticSearch index to use.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # Optional. Number of hits (chunks) to request. When specified, it is passed to
        # Elasticsearch as the `num_hits` param.
        # Corresponds to the JSON property `numHits`
        # @return [Fixnum]
        attr_accessor :num_hits
      
        # The ElasticSearch search template to use.
        # Corresponds to the JSON property `searchTemplate`
        # @return [String]
        attr_accessor :search_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @num_hits = args[:num_hits] if args.key?(:num_hits)
          @search_template = args[:search_template] if args.key?(:search_template)
        end
      end
      
      # The search parameters to use for SIMPLE_SEARCH spec.
      class GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # URI based data.
      class GoogleCloudAiplatformV1beta1FileData
        include Google::Apis::Core::Hashable
      
        # Optional. Display name of the file data. Used to provide a label or filename
        # to distinguish file datas. This field is only returned in PromptMessage for
        # prompt management. It is currently used in the Gemini GenerateContent calls
        # only when server side tools (code_execution, google_search, and url_context)
        # are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. URI.
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        # Required. The IANA standard MIME type of the source data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A predicted [FunctionCall] returned from the model that contains a string
      # representing the [FunctionDeclaration.name] and a structured JSON object
      # containing the parameters and their values.
      class GoogleCloudAiplatformV1beta1FunctionCall
        include Google::Apis::Core::Hashable
      
        # Optional. The function parameters and values in JSON object format. See [
        # FunctionDeclaration.parameters] for parameter details.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # Optional. The unique id of the function call. If populated, the client to
        # execute the `function_call` and return the response with the matching `id`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the function to call. Matches [FunctionDeclaration.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Function calling config.
      class GoogleCloudAiplatformV1beta1FunctionCallingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Function names to call. Only set when the Mode is ANY. Function
        # names should match [FunctionDeclaration.name]. With mode set to ANY, model
        # will predict a function call from the set of function names provided.
        # Corresponds to the JSON property `allowedFunctionNames`
        # @return [Array<String>]
        attr_accessor :allowed_function_names
      
        # Optional. Function calling mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_function_names = args[:allowed_function_names] if args.key?(:allowed_function_names)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Structured representation of a function declaration as defined by the [OpenAPI
      # 3.0 specification](https://spec.openapis.org/oas/v3.0.3). Included in this
      # declaration are the function name, description, parameters and response type.
      # This FunctionDeclaration is a representation of a block of code that can be
      # used as a `Tool` by the model and executed by the client.
      class GoogleCloudAiplatformV1beta1FunctionDeclaration
        include Google::Apis::Core::Hashable
      
        # Optional. Description and purpose of the function. Model uses it to decide how
        # and whether to call the function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the function to call. Must start with a letter or an
        # underscore. Must be a-z, A-Z, 0-9, or contain underscores, dots and dashes,
        # with a maximum length of 64.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema-object). More fields may be added in the future as needed.
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :parameters
      
        # Optional. Describes the parameters to the function in JSON Schema format. The
        # schema must describe an object where the properties are the parameters to the
        # function. For example: ``` ` "type": "object", "properties": ` "name": ` "type"
        # : "string" `, "age": ` "type": "integer" ` `, "additionalProperties": false, "
        # required": ["name", "age"], "propertyOrdering": ["name", "age"] ` ``` This
        # field is mutually exclusive with `parameters`.
        # Corresponds to the JSON property `parametersJsonSchema`
        # @return [Object]
        attr_accessor :parameters_json_schema
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema-object). More fields may be added in the future as needed.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :response
      
        # Optional. Describes the output from this function in JSON Schema format. The
        # value specified by the schema is the response value of the function. This
        # field is mutually exclusive with `response`.
        # Corresponds to the JSON property `responseJsonSchema`
        # @return [Object]
        attr_accessor :response_json_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parameters_json_schema = args[:parameters_json_schema] if args.key?(:parameters_json_schema)
          @response = args[:response] if args.key?(:response)
          @response_json_schema = args[:response_json_schema] if args.key?(:response_json_schema)
        end
      end
      
      # The result output from a [FunctionCall] that contains a string representing
      # the [FunctionDeclaration.name] and a structured JSON object containing any
      # output from the function is used as context to the model. This should contain
      # the result of a [FunctionCall] made based on model prediction.
      class GoogleCloudAiplatformV1beta1FunctionResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The id of the function call this response is for. Populated by the
        # client to match the corresponding function call `id`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the function to call. Matches [FunctionDeclaration.name]
        # and [FunctionCall.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The function response in JSON object format. Use "output" key to
        # specify function output and "error" key to specify error details (if any). If "
        # output" and "error" keys are not specified, then whole "response" is treated
        # as function output.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Request message for [PredictionService.GenerateContent].
      class GoogleCloudAiplatformV1beta1GenerateContentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the cached content used as context to serve the
        # prediction. Note: only used in explicit caching, where users can have control
        # over caching (e.g. what content to cache) and enjoy guaranteed cost savings.
        # Format: `projects/`project`/locations/`location`/cachedContents/`cachedContent`
        # `
        # Corresponds to the JSON property `cachedContent`
        # @return [String]
        attr_accessor :cached_content
      
        # Required. The content of the current conversation with the model. For single-
        # turn queries, this is a single instance. For multi-turn queries, this is a
        # repeated field that contains conversation history + latest request.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content>]
        attr_accessor :contents
      
        # Generation config.
        # Corresponds to the JSON property `generationConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig]
        attr_accessor :generation_config
      
        # Optional. The labels with user-defined metadata for the request. It is used
        # for billing and reporting only. Label keys and values can be no longer than 63
        # characters (Unicode codepoints) and can only contain lowercase letters,
        # numeric characters, underscores, and dashes. International characters are
        # allowed. Label values are optional. Label keys must start with a letter.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Per request settings for blocking unsafe content. Enforced on
        # GenerateContentResponse.candidates.
        # Corresponds to the JSON property `safetySettings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetySetting>]
        attr_accessor :safety_settings
      
        # The base structured datatype containing multi-part content of a message. A `
        # Content` includes a `role` field designating the producer of the `Content` and
        # a `parts` field containing multi-part data that contains the content of the
        # message turn.
        # Corresponds to the JSON property `systemInstruction`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :system_instruction
      
        # Tool config. This config is shared for all tools provided in the request.
        # Corresponds to the JSON property `toolConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolConfig]
        attr_accessor :tool_config
      
        # Optional. A list of `Tools` the model may use to generate the next response. A
        # `Tool` is a piece of code that enables the system to interact with external
        # systems to perform an action, or set of actions, outside of knowledge and
        # scope of the model.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cached_content = args[:cached_content] if args.key?(:cached_content)
          @contents = args[:contents] if args.key?(:contents)
          @generation_config = args[:generation_config] if args.key?(:generation_config)
          @labels = args[:labels] if args.key?(:labels)
          @safety_settings = args[:safety_settings] if args.key?(:safety_settings)
          @system_instruction = args[:system_instruction] if args.key?(:system_instruction)
          @tool_config = args[:tool_config] if args.key?(:tool_config)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Response message for [PredictionService.GenerateContent].
      class GoogleCloudAiplatformV1beta1GenerateContentResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Generated candidates.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Candidate>]
        attr_accessor :candidates
      
        # Output only. Timestamp when the request is made to the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The model version used to generate the response.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        # Content filter results for a prompt sent in the request.
        # Corresponds to the JSON property `promptFeedback`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback]
        attr_accessor :prompt_feedback
      
        # Output only. response_id is used to identify each response. It is the encoding
        # of the event_id.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # Usage metadata about response(s).
        # Corresponds to the JSON property `usageMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata]
        attr_accessor :usage_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @create_time = args[:create_time] if args.key?(:create_time)
          @model_version = args[:model_version] if args.key?(:model_version)
          @prompt_feedback = args[:prompt_feedback] if args.key?(:prompt_feedback)
          @response_id = args[:response_id] if args.key?(:response_id)
          @usage_metadata = args[:usage_metadata] if args.key?(:usage_metadata)
        end
      end
      
      # Content filter results for a prompt sent in the request.
      class GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback
        include Google::Apis::Core::Hashable
      
        # Output only. Blocked reason.
        # Corresponds to the JSON property `blockReason`
        # @return [String]
        attr_accessor :block_reason
      
        # Output only. A readable block reason message.
        # Corresponds to the JSON property `blockReasonMessage`
        # @return [String]
        attr_accessor :block_reason_message
      
        # Output only. Safety ratings.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating>]
        attr_accessor :safety_ratings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_reason = args[:block_reason] if args.key?(:block_reason)
          @block_reason_message = args[:block_reason_message] if args.key?(:block_reason_message)
          @safety_ratings = args[:safety_ratings] if args.key?(:safety_ratings)
        end
      end
      
      # Usage metadata about response(s).
      class GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. List of modalities of the cached content in the request input.
        # Corresponds to the JSON property `cacheTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :cache_tokens_details
      
        # Output only. Number of tokens in the cached part in the input (the cached
        # content).
        # Corresponds to the JSON property `cachedContentTokenCount`
        # @return [Fixnum]
        attr_accessor :cached_content_token_count
      
        # Number of tokens in the response(s).
        # Corresponds to the JSON property `candidatesTokenCount`
        # @return [Fixnum]
        attr_accessor :candidates_token_count
      
        # Output only. List of modalities that were returned in the response.
        # Corresponds to the JSON property `candidatesTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :candidates_tokens_details
      
        # Number of tokens in the request. When `cached_content` is set, this is still
        # the total effective prompt size meaning this includes the number of tokens in
        # the cached content.
        # Corresponds to the JSON property `promptTokenCount`
        # @return [Fixnum]
        attr_accessor :prompt_token_count
      
        # Output only. List of modalities that were processed in the request input.
        # Corresponds to the JSON property `promptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :prompt_tokens_details
      
        # Output only. Number of tokens present in thoughts output.
        # Corresponds to the JSON property `thoughtsTokenCount`
        # @return [Fixnum]
        attr_accessor :thoughts_token_count
      
        # Output only. Number of tokens present in tool-use prompt(s).
        # Corresponds to the JSON property `toolUsePromptTokenCount`
        # @return [Fixnum]
        attr_accessor :tool_use_prompt_token_count
      
        # Output only. List of modalities that were processed for tool-use request
        # inputs.
        # Corresponds to the JSON property `toolUsePromptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :tool_use_prompt_tokens_details
      
        # Total token count for prompt, response candidates, and tool-use prompts (if
        # present).
        # Corresponds to the JSON property `totalTokenCount`
        # @return [Fixnum]
        attr_accessor :total_token_count
      
        # Output only. Traffic type. This shows whether a request consumes Pay-As-You-Go
        # or Provisioned Throughput quota.
        # Corresponds to the JSON property `trafficType`
        # @return [String]
        attr_accessor :traffic_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_tokens_details = args[:cache_tokens_details] if args.key?(:cache_tokens_details)
          @cached_content_token_count = args[:cached_content_token_count] if args.key?(:cached_content_token_count)
          @candidates_token_count = args[:candidates_token_count] if args.key?(:candidates_token_count)
          @candidates_tokens_details = args[:candidates_tokens_details] if args.key?(:candidates_tokens_details)
          @prompt_token_count = args[:prompt_token_count] if args.key?(:prompt_token_count)
          @prompt_tokens_details = args[:prompt_tokens_details] if args.key?(:prompt_tokens_details)
          @thoughts_token_count = args[:thoughts_token_count] if args.key?(:thoughts_token_count)
          @tool_use_prompt_token_count = args[:tool_use_prompt_token_count] if args.key?(:tool_use_prompt_token_count)
          @tool_use_prompt_tokens_details = args[:tool_use_prompt_tokens_details] if args.key?(:tool_use_prompt_tokens_details)
          @total_token_count = args[:total_token_count] if args.key?(:total_token_count)
          @traffic_type = args[:traffic_type] if args.key?(:traffic_type)
        end
      end
      
      # Generation config.
      class GoogleCloudAiplatformV1beta1GenerationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If enabled, audio timestamp will be included in the request to the
        # model.
        # Corresponds to the JSON property `audioTimestamp`
        # @return [Boolean]
        attr_accessor :audio_timestamp
        alias_method :audio_timestamp?, :audio_timestamp
      
        # Optional. Number of candidates to generate.
        # Corresponds to the JSON property `candidateCount`
        # @return [Fixnum]
        attr_accessor :candidate_count
      
        # Optional. If enabled, the model will detect emotions and adapt its responses
        # accordingly.
        # Corresponds to the JSON property `enableAffectiveDialog`
        # @return [Boolean]
        attr_accessor :enable_affective_dialog
        alias_method :enable_affective_dialog?, :enable_affective_dialog
      
        # Optional. Frequency penalties.
        # Corresponds to the JSON property `frequencyPenalty`
        # @return [Float]
        attr_accessor :frequency_penalty
      
        # Optional. Logit probabilities.
        # Corresponds to the JSON property `logprobs`
        # @return [Fixnum]
        attr_accessor :logprobs
      
        # Optional. The maximum number of output tokens to generate per message.
        # Corresponds to the JSON property `maxOutputTokens`
        # @return [Fixnum]
        attr_accessor :max_output_tokens
      
        # Optional. If specified, the media resolution specified will be used.
        # Corresponds to the JSON property `mediaResolution`
        # @return [String]
        attr_accessor :media_resolution
      
        # Config for model selection.
        # Corresponds to the JSON property `modelConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigModelConfig]
        attr_accessor :model_config
      
        # Optional. Positive penalties.
        # Corresponds to the JSON property `presencePenalty`
        # @return [Float]
        attr_accessor :presence_penalty
      
        # Optional. Output schema of the generated response. This is an alternative to `
        # response_schema` that accepts [JSON Schema](https://json-schema.org/). If set,
        # `response_schema` must be omitted, but `response_mime_type` is required. While
        # the full JSON Schema may be sent, not all features are supported. Specifically,
        # only the following properties are supported: - `$id` - `$defs` - `$ref` - `$
        # anchor` - `type` - `format` - `title` - `description` - `enum` (for strings
        # and numbers) - `items` - `prefixItems` - `minItems` - `maxItems` - `minimum` -
        # `maximum` - `anyOf` - `oneOf` (interpreted the same as `anyOf`) - `properties`
        # - `additionalProperties` - `required` The non-standard `propertyOrdering`
        # property may also be set. Cyclic references are unrolled to a limited degree
        # and, as such, may only be used within non-required properties. (Nullable
        # properties are not sufficient.) If `$ref` is set on a sub-schema, no other
        # properties, except for than those starting as a `$`, may be set.
        # Corresponds to the JSON property `responseJsonSchema`
        # @return [Object]
        attr_accessor :response_json_schema
      
        # Optional. If true, export the logprobs results in response.
        # Corresponds to the JSON property `responseLogprobs`
        # @return [Boolean]
        attr_accessor :response_logprobs
        alias_method :response_logprobs?, :response_logprobs
      
        # Optional. Output response mimetype of the generated candidate text. Supported
        # mimetype: - `text/plain`: (default) Text output. - `application/json`: JSON
        # response in the candidates. The model needs to be prompted to output the
        # appropriate response type, otherwise the behavior is undefined. This is a
        # preview feature.
        # Corresponds to the JSON property `responseMimeType`
        # @return [String]
        attr_accessor :response_mime_type
      
        # Optional. The modalities of the response.
        # Corresponds to the JSON property `responseModalities`
        # @return [Array<String>]
        attr_accessor :response_modalities
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema-object). More fields may be added in the future as needed.
        # Corresponds to the JSON property `responseSchema`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :response_schema
      
        # The configuration for routing the request to a specific model.
        # Corresponds to the JSON property `routingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig]
        attr_accessor :routing_config
      
        # Optional. Seed.
        # Corresponds to the JSON property `seed`
        # @return [Fixnum]
        attr_accessor :seed
      
        # The speech generation config.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SpeechConfig]
        attr_accessor :speech_config
      
        # Optional. Stop sequences.
        # Corresponds to the JSON property `stopSequences`
        # @return [Array<String>]
        attr_accessor :stop_sequences
      
        # Optional. Controls the randomness of predictions.
        # Corresponds to the JSON property `temperature`
        # @return [Float]
        attr_accessor :temperature
      
        # Config for thinking features.
        # Corresponds to the JSON property `thinkingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig]
        attr_accessor :thinking_config
      
        # Optional. If specified, top-k sampling will be used.
        # Corresponds to the JSON property `topK`
        # @return [Float]
        attr_accessor :top_k
      
        # Optional. If specified, nucleus sampling will be used.
        # Corresponds to the JSON property `topP`
        # @return [Float]
        attr_accessor :top_p
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_timestamp = args[:audio_timestamp] if args.key?(:audio_timestamp)
          @candidate_count = args[:candidate_count] if args.key?(:candidate_count)
          @enable_affective_dialog = args[:enable_affective_dialog] if args.key?(:enable_affective_dialog)
          @frequency_penalty = args[:frequency_penalty] if args.key?(:frequency_penalty)
          @logprobs = args[:logprobs] if args.key?(:logprobs)
          @max_output_tokens = args[:max_output_tokens] if args.key?(:max_output_tokens)
          @media_resolution = args[:media_resolution] if args.key?(:media_resolution)
          @model_config = args[:model_config] if args.key?(:model_config)
          @presence_penalty = args[:presence_penalty] if args.key?(:presence_penalty)
          @response_json_schema = args[:response_json_schema] if args.key?(:response_json_schema)
          @response_logprobs = args[:response_logprobs] if args.key?(:response_logprobs)
          @response_mime_type = args[:response_mime_type] if args.key?(:response_mime_type)
          @response_modalities = args[:response_modalities] if args.key?(:response_modalities)
          @response_schema = args[:response_schema] if args.key?(:response_schema)
          @routing_config = args[:routing_config] if args.key?(:routing_config)
          @seed = args[:seed] if args.key?(:seed)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @stop_sequences = args[:stop_sequences] if args.key?(:stop_sequences)
          @temperature = args[:temperature] if args.key?(:temperature)
          @thinking_config = args[:thinking_config] if args.key?(:thinking_config)
          @top_k = args[:top_k] if args.key?(:top_k)
          @top_p = args[:top_p] if args.key?(:top_p)
        end
      end
      
      # Config for model selection.
      class GoogleCloudAiplatformV1beta1GenerationConfigModelConfig
        include Google::Apis::Core::Hashable
      
        # Required. Feature selection preference.
        # Corresponds to the JSON property `featureSelectionPreference`
        # @return [String]
        attr_accessor :feature_selection_preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature_selection_preference = args[:feature_selection_preference] if args.key?(:feature_selection_preference)
        end
      end
      
      # The configuration for routing the request to a specific model.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig
        include Google::Apis::Core::Hashable
      
        # When automated routing is specified, the routing will be determined by the
        # pretrained routing model and customer provided model routing preference.
        # Corresponds to the JSON property `autoMode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode]
        attr_accessor :auto_mode
      
        # When manual routing is set, the specified model will be used directly.
        # Corresponds to the JSON property `manualMode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode]
        attr_accessor :manual_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_mode = args[:auto_mode] if args.key?(:auto_mode)
          @manual_mode = args[:manual_mode] if args.key?(:manual_mode)
        end
      end
      
      # When automated routing is specified, the routing will be determined by the
      # pretrained routing model and customer provided model routing preference.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode
        include Google::Apis::Core::Hashable
      
        # The model routing preference.
        # Corresponds to the JSON property `modelRoutingPreference`
        # @return [String]
        attr_accessor :model_routing_preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_routing_preference = args[:model_routing_preference] if args.key?(:model_routing_preference)
        end
      end
      
      # When manual routing is set, the specified model will be used directly.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode
        include Google::Apis::Core::Hashable
      
        # The model name to use. Only the public LLM models are accepted. See [Supported
        # models](https://cloud.google.com/vertex-ai/generative-ai/docs/model-reference/
        # inference#supported-models).
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # Config for thinking features.
      class GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether to include thoughts in the response. If true,
        # thoughts are returned only when available.
        # Corresponds to the JSON property `includeThoughts`
        # @return [Boolean]
        attr_accessor :include_thoughts
        alias_method :include_thoughts?, :include_thoughts
      
        # Optional. Indicates the thinking budget in tokens.
        # Corresponds to the JSON property `thinkingBudget`
        # @return [Fixnum]
        attr_accessor :thinking_budget
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_thoughts = args[:include_thoughts] if args.key?(:include_thoughts)
          @thinking_budget = args[:thinking_budget] if args.key?(:thinking_budget)
        end
      end
      
      # Tool to retrieve public maps data for grounding, powered by Google.
      class GoogleCloudAiplatformV1beta1GoogleMaps
        include Google::Apis::Core::Hashable
      
        # The generic reusable api auth config. Deprecated. Please use AuthConfig (
        # google/cloud/aiplatform/master/auth.proto) instead.
        # Corresponds to the JSON property `apiAuth`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ApiAuth]
        attr_accessor :api_auth
      
        # Auth configuration to run the extension.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfig]
        attr_accessor :auth_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_auth = args[:api_auth] if args.key?(:api_auth)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
        end
      end
      
      # Tool to retrieve public web data for grounding, powered by Google.
      class GoogleCloudAiplatformV1beta1GoogleSearchRetrieval
        include Google::Apis::Core::Hashable
      
        # Describes the options to customize dynamic retrieval.
        # Corresponds to the JSON property `dynamicRetrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1DynamicRetrievalConfig]
        attr_accessor :dynamic_retrieval_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_retrieval_config = args[:dynamic_retrieval_config] if args.key?(:dynamic_retrieval_config)
        end
      end
      
      # Grounding chunk.
      class GoogleCloudAiplatformV1beta1GroundingChunk
        include Google::Apis::Core::Hashable
      
        # Chunk from Google Maps.
        # Corresponds to the JSON property `maps`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkMaps]
        attr_accessor :maps
      
        # Chunk from context retrieved by the retrieval tools.
        # Corresponds to the JSON property `retrievedContext`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext]
        attr_accessor :retrieved_context
      
        # Chunk from the web.
        # Corresponds to the JSON property `web`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkWeb]
        attr_accessor :web
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maps = args[:maps] if args.key?(:maps)
          @retrieved_context = args[:retrieved_context] if args.key?(:retrieved_context)
          @web = args[:web] if args.key?(:web)
        end
      end
      
      # Chunk from Google Maps.
      class GoogleCloudAiplatformV1beta1GroundingChunkMaps
        include Google::Apis::Core::Hashable
      
        # This Place's resource name, in `places/`place_id`` format. Can be used to look
        # up the Place.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Text of the chunk.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Title of the chunk.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URI reference of the chunk.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Chunk from context retrieved by the retrieval tools.
      class GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext
        include Google::Apis::Core::Hashable
      
        # A RagChunk includes the content of a chunk of a RagFile, and associated
        # metadata.
        # Corresponds to the JSON property `ragChunk`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagChunk]
        attr_accessor :rag_chunk
      
        # Text of the attribution.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Title of the attribution.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URI reference of the attribution.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rag_chunk = args[:rag_chunk] if args.key?(:rag_chunk)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Chunk from the web.
      class GoogleCloudAiplatformV1beta1GroundingChunkWeb
        include Google::Apis::Core::Hashable
      
        # Domain of the (original) URI.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Title of the chunk.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URI reference of the chunk.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Metadata returned to client when grounding is enabled.
      class GoogleCloudAiplatformV1beta1GroundingMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. Resource name of the Google Maps widget context token
        # to be used with the PlacesContextElement widget to render contextual data.
        # This is populated only for Google Maps grounding.
        # Corresponds to the JSON property `googleMapsWidgetContextToken`
        # @return [String]
        attr_accessor :google_maps_widget_context_token
      
        # List of supporting references retrieved from specified grounding source.
        # Corresponds to the JSON property `groundingChunks`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunk>]
        attr_accessor :grounding_chunks
      
        # Optional. List of grounding support.
        # Corresponds to the JSON property `groundingSupports`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingSupport>]
        attr_accessor :grounding_supports
      
        # Metadata related to retrieval in the grounding flow.
        # Corresponds to the JSON property `retrievalMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RetrievalMetadata]
        attr_accessor :retrieval_metadata
      
        # Optional. Queries executed by the retrieval tools.
        # Corresponds to the JSON property `retrievalQueries`
        # @return [Array<String>]
        attr_accessor :retrieval_queries
      
        # Google search entry point.
        # Corresponds to the JSON property `searchEntryPoint`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SearchEntryPoint]
        attr_accessor :search_entry_point
      
        # Optional. Web search queries for the following-up web search.
        # Corresponds to the JSON property `webSearchQueries`
        # @return [Array<String>]
        attr_accessor :web_search_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_maps_widget_context_token = args[:google_maps_widget_context_token] if args.key?(:google_maps_widget_context_token)
          @grounding_chunks = args[:grounding_chunks] if args.key?(:grounding_chunks)
          @grounding_supports = args[:grounding_supports] if args.key?(:grounding_supports)
          @retrieval_metadata = args[:retrieval_metadata] if args.key?(:retrieval_metadata)
          @retrieval_queries = args[:retrieval_queries] if args.key?(:retrieval_queries)
          @search_entry_point = args[:search_entry_point] if args.key?(:search_entry_point)
          @web_search_queries = args[:web_search_queries] if args.key?(:web_search_queries)
        end
      end
      
      # Grounding support.
      class GoogleCloudAiplatformV1beta1GroundingSupport
        include Google::Apis::Core::Hashable
      
        # Confidence score of the support references. Ranges from 0 to 1. 1 is the most
        # confident. For Gemini 2.0 and before, this list must have the same size as the
        # grounding_chunk_indices. For Gemini 2.5 and after, this list will be empty and
        # should be ignored.
        # Corresponds to the JSON property `confidenceScores`
        # @return [Array<Float>]
        attr_accessor :confidence_scores
      
        # A list of indices (into 'grounding_chunk') specifying the citations associated
        # with the claim. For instance [1,3,4] means that grounding_chunk[1],
        # grounding_chunk[3], grounding_chunk[4] are the retrieved content attributed to
        # the claim.
        # Corresponds to the JSON property `groundingChunkIndices`
        # @return [Array<Fixnum>]
        attr_accessor :grounding_chunk_indices
      
        # Segment of the content.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_scores = args[:confidence_scores] if args.key?(:confidence_scores)
          @grounding_chunk_indices = args[:grounding_chunk_indices] if args.key?(:grounding_chunk_indices)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # Logprobs Result
      class GoogleCloudAiplatformV1beta1LogprobsResult
        include Google::Apis::Core::Hashable
      
        # Length = total number of decoding steps. The chosen candidates may or may not
        # be in top_candidates.
        # Corresponds to the JSON property `chosenCandidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultCandidate>]
        attr_accessor :chosen_candidates
      
        # Length = total number of decoding steps.
        # Corresponds to the JSON property `topCandidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates>]
        attr_accessor :top_candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chosen_candidates = args[:chosen_candidates] if args.key?(:chosen_candidates)
          @top_candidates = args[:top_candidates] if args.key?(:top_candidates)
        end
      end
      
      # Candidate for the logprobs token and score.
      class GoogleCloudAiplatformV1beta1LogprobsResultCandidate
        include Google::Apis::Core::Hashable
      
        # The candidate's log probability.
        # Corresponds to the JSON property `logProbability`
        # @return [Float]
        attr_accessor :log_probability
      
        # The candidate's token string value.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The candidate's token id value.
        # Corresponds to the JSON property `tokenId`
        # @return [Fixnum]
        attr_accessor :token_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_probability = args[:log_probability] if args.key?(:log_probability)
          @token = args[:token] if args.key?(:token)
          @token_id = args[:token_id] if args.key?(:token_id)
        end
      end
      
      # Candidates with top log probabilities at each decoding step.
      class GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates
        include Google::Apis::Core::Hashable
      
        # Sorted by log probability in descending order.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultCandidate>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # Represents token counting info for a single modality.
      class GoogleCloudAiplatformV1beta1ModalityTokenCount
        include Google::Apis::Core::Hashable
      
        # The modality associated with this token count.
        # Corresponds to the JSON property `modality`
        # @return [String]
        attr_accessor :modality
      
        # Number of tokens.
        # Corresponds to the JSON property `tokenCount`
        # @return [Fixnum]
        attr_accessor :token_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modality = args[:modality] if args.key?(:modality)
          @token_count = args[:token_count] if args.key?(:token_count)
        end
      end
      
      # A datatype containing media that is part of a multi-part `Content` message. A `
      # Part` consists of data which has an associated datatype. A `Part` can only
      # contain one of the accepted types in `Part.data`. A `Part` must have a fixed
      # IANA MIME type identifying the type and subtype of the media if `inline_data`
      # or `file_data` field is filled with raw bytes.
      class GoogleCloudAiplatformV1beta1Part
        include Google::Apis::Core::Hashable
      
        # Result of executing the [ExecutableCode]. Only generated when using the [
        # CodeExecution] tool, and always follows a `part` containing the [
        # ExecutableCode].
        # Corresponds to the JSON property `codeExecutionResult`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CodeExecutionResult]
        attr_accessor :code_execution_result
      
        # Code generated by the model that is meant to be executed, and the result
        # returned to the model. Generated when using the [CodeExecution] tool, in which
        # the code will be automatically executed, and a corresponding [
        # CodeExecutionResult] will also be generated.
        # Corresponds to the JSON property `executableCode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExecutableCode]
        attr_accessor :executable_code
      
        # URI based data.
        # Corresponds to the JSON property `fileData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FileData]
        attr_accessor :file_data
      
        # A predicted [FunctionCall] returned from the model that contains a string
        # representing the [FunctionDeclaration.name] and a structured JSON object
        # containing the parameters and their values.
        # Corresponds to the JSON property `functionCall`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCall]
        attr_accessor :function_call
      
        # The result output from a [FunctionCall] that contains a string representing
        # the [FunctionDeclaration.name] and a structured JSON object containing any
        # output from the function is used as context to the model. This should contain
        # the result of a [FunctionCall] made based on model prediction.
        # Corresponds to the JSON property `functionResponse`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponse]
        attr_accessor :function_response
      
        # Content blob.
        # Corresponds to the JSON property `inlineData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Blob]
        attr_accessor :inline_data
      
        # Optional. Text part (can be code).
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates if the part is thought from the model.
        # Corresponds to the JSON property `thought`
        # @return [Boolean]
        attr_accessor :thought
        alias_method :thought?, :thought
      
        # Optional. An opaque signature for the thought so it can be reused in
        # subsequent requests.
        # Corresponds to the JSON property `thoughtSignature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :thought_signature
      
        # Metadata describes the input video content.
        # Corresponds to the JSON property `videoMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VideoMetadata]
        attr_accessor :video_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_execution_result = args[:code_execution_result] if args.key?(:code_execution_result)
          @executable_code = args[:executable_code] if args.key?(:executable_code)
          @file_data = args[:file_data] if args.key?(:file_data)
          @function_call = args[:function_call] if args.key?(:function_call)
          @function_response = args[:function_response] if args.key?(:function_response)
          @inline_data = args[:inline_data] if args.key?(:inline_data)
          @text = args[:text] if args.key?(:text)
          @thought = args[:thought] if args.key?(:thought)
          @thought_signature = args[:thought_signature] if args.key?(:thought_signature)
          @video_metadata = args[:video_metadata] if args.key?(:video_metadata)
        end
      end
      
      # The configuration for the prebuilt speaker to use.
      class GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig
        include Google::Apis::Core::Hashable
      
        # The name of the preset voice to use.
        # Corresponds to the JSON property `voiceName`
        # @return [String]
        attr_accessor :voice_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @voice_name = args[:voice_name] if args.key?(:voice_name)
        end
      end
      
      # A RagChunk includes the content of a chunk of a RagFile, and associated
      # metadata.
      class GoogleCloudAiplatformV1beta1RagChunk
        include Google::Apis::Core::Hashable
      
        # Represents where the chunk starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagChunkPageSpan]
        attr_accessor :page_span
      
        # The content of the chunk.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_span = args[:page_span] if args.key?(:page_span)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents where the chunk starts and ends in the document.
      class GoogleCloudAiplatformV1beta1RagChunkPageSpan
        include Google::Apis::Core::Hashable
      
        # Page where chunk starts in the document. Inclusive. 1-indexed.
        # Corresponds to the JSON property `firstPage`
        # @return [Fixnum]
        attr_accessor :first_page
      
        # Page where chunk ends in the document. Inclusive. 1-indexed.
        # Corresponds to the JSON property `lastPage`
        # @return [Fixnum]
        attr_accessor :last_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_page = args[:first_page] if args.key?(:first_page)
          @last_page = args[:last_page] if args.key?(:last_page)
        end
      end
      
      # Specifies the context retrieval config.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfig
        include Google::Apis::Core::Hashable
      
        # Config for filters.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter]
        attr_accessor :filter
      
        # Config for Hybrid Search.
        # Corresponds to the JSON property `hybridSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch]
        attr_accessor :hybrid_search
      
        # Config for ranking and reranking.
        # Corresponds to the JSON property `ranking`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking]
        attr_accessor :ranking
      
        # Optional. The number of contexts to retrieve.
        # Corresponds to the JSON property `topK`
        # @return [Fixnum]
        attr_accessor :top_k
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @hybrid_search = args[:hybrid_search] if args.key?(:hybrid_search)
          @ranking = args[:ranking] if args.key?(:ranking)
          @top_k = args[:top_k] if args.key?(:top_k)
        end
      end
      
      # Config for filters.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter
        include Google::Apis::Core::Hashable
      
        # Optional. String for metadata filtering.
        # Corresponds to the JSON property `metadataFilter`
        # @return [String]
        attr_accessor :metadata_filter
      
        # Optional. Only returns contexts with vector distance smaller than the
        # threshold.
        # Corresponds to the JSON property `vectorDistanceThreshold`
        # @return [Float]
        attr_accessor :vector_distance_threshold
      
        # Optional. Only returns contexts with vector similarity larger than the
        # threshold.
        # Corresponds to the JSON property `vectorSimilarityThreshold`
        # @return [Float]
        attr_accessor :vector_similarity_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_filter = args[:metadata_filter] if args.key?(:metadata_filter)
          @vector_distance_threshold = args[:vector_distance_threshold] if args.key?(:vector_distance_threshold)
          @vector_similarity_threshold = args[:vector_similarity_threshold] if args.key?(:vector_similarity_threshold)
        end
      end
      
      # Config for Hybrid Search.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch
        include Google::Apis::Core::Hashable
      
        # Optional. Alpha value controls the weight between dense and sparse vector
        # search results. The range is [0, 1], while 0 means sparse vector search only
        # and 1 means dense vector search only. The default value is 0.5 which balances
        # sparse and dense vector search equally.
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
        end
      end
      
      # Config for ranking and reranking.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking
        include Google::Apis::Core::Hashable
      
        # Config for LlmRanker.
        # Corresponds to the JSON property `llmRanker`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker]
        attr_accessor :llm_ranker
      
        # Config for Rank Service.
        # Corresponds to the JSON property `rankService`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService]
        attr_accessor :rank_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @llm_ranker = args[:llm_ranker] if args.key?(:llm_ranker)
          @rank_service = args[:rank_service] if args.key?(:rank_service)
        end
      end
      
      # Config for LlmRanker.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker
        include Google::Apis::Core::Hashable
      
        # Optional. The model name used for ranking. See [Supported models](https://
        # cloud.google.com/vertex-ai/generative-ai/docs/model-reference/inference#
        # supported-models).
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # Config for Rank Service.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService
        include Google::Apis::Core::Hashable
      
        # Optional. The model name of the rank service. Format: `semantic-ranker-512@
        # latest`
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # Defines a retrieval tool that model can call to access external knowledge.
      class GoogleCloudAiplatformV1beta1Retrieval
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated. This option is no longer supported.
        # Corresponds to the JSON property `disableAttribution`
        # @return [Boolean]
        attr_accessor :disable_attribution
        alias_method :disable_attribution?, :disable_attribution
      
        # Retrieve from data source powered by external API for grounding. The external
        # API is not owned by Google, but need to follow the pre-defined API spec.
        # Corresponds to the JSON property `externalApi`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApi]
        attr_accessor :external_api
      
        # Retrieve from Vertex AI Search datastore or engine for grounding. datastore
        # and engine are mutually exclusive. See https://cloud.google.com/products/agent-
        # builder
        # Corresponds to the JSON property `vertexAiSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearch]
        attr_accessor :vertex_ai_search
      
        # Retrieve from Vertex RAG Store for grounding.
        # Corresponds to the JSON property `vertexRagStore`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStore]
        attr_accessor :vertex_rag_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_attribution = args[:disable_attribution] if args.key?(:disable_attribution)
          @external_api = args[:external_api] if args.key?(:external_api)
          @vertex_ai_search = args[:vertex_ai_search] if args.key?(:vertex_ai_search)
          @vertex_rag_store = args[:vertex_rag_store] if args.key?(:vertex_rag_store)
        end
      end
      
      # Retrieval config.
      class GoogleCloudAiplatformV1beta1RetrievalConfig
        include Google::Apis::Core::Hashable
      
        # The language code of the user.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::FirebasemlV2beta::LatLng]
        attr_accessor :lat_lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
        end
      end
      
      # Metadata related to retrieval in the grounding flow.
      class GoogleCloudAiplatformV1beta1RetrievalMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Score indicating how likely information from Google Search could
        # help answer the prompt. The score is in the range `[0, 1]`, where 0 is the
        # least likely and 1 is the most likely. This score is only populated when
        # Google Search grounding and dynamic retrieval is enabled. It will be compared
        # to the threshold to determine whether to trigger Google Search.
        # Corresponds to the JSON property `googleSearchDynamicRetrievalScore`
        # @return [Float]
        attr_accessor :google_search_dynamic_retrieval_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_search_dynamic_retrieval_score = args[:google_search_dynamic_retrieval_score] if args.key?(:google_search_dynamic_retrieval_score)
        end
      end
      
      # Safety rating corresponding to the generated content.
      class GoogleCloudAiplatformV1beta1SafetyRating
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the content was filtered out because of this
        # rating.
        # Corresponds to the JSON property `blocked`
        # @return [Boolean]
        attr_accessor :blocked
        alias_method :blocked?, :blocked
      
        # Output only. Harm category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. The overwritten threshold for the safety category of Gemini 2.0
        # image out. If minors are detected in the output image, the threshold of each
        # safety category will be overwritten if user sets a lower threshold.
        # Corresponds to the JSON property `overwrittenThreshold`
        # @return [String]
        attr_accessor :overwritten_threshold
      
        # Output only. Harm probability levels in the content.
        # Corresponds to the JSON property `probability`
        # @return [String]
        attr_accessor :probability
      
        # Output only. Harm probability score.
        # Corresponds to the JSON property `probabilityScore`
        # @return [Float]
        attr_accessor :probability_score
      
        # Output only. Harm severity levels in the content.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. Harm severity score.
        # Corresponds to the JSON property `severityScore`
        # @return [Float]
        attr_accessor :severity_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocked = args[:blocked] if args.key?(:blocked)
          @category = args[:category] if args.key?(:category)
          @overwritten_threshold = args[:overwritten_threshold] if args.key?(:overwritten_threshold)
          @probability = args[:probability] if args.key?(:probability)
          @probability_score = args[:probability_score] if args.key?(:probability_score)
          @severity = args[:severity] if args.key?(:severity)
          @severity_score = args[:severity_score] if args.key?(:severity_score)
        end
      end
      
      # Safety settings.
      class GoogleCloudAiplatformV1beta1SafetySetting
        include Google::Apis::Core::Hashable
      
        # Required. Harm category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Optional. Specify if the threshold is used for probability or severity score.
        # If not specified, the threshold is used for probability score.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Required. The harm block threshold.
        # Corresponds to the JSON property `threshold`
        # @return [String]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Schema is used to define the format of input/output data. Represents a select
      # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
      # schema-object). More fields may be added in the future as needed.
      class GoogleCloudAiplatformV1beta1Schema
        include Google::Apis::Core::Hashable
      
        # Optional. Can either be a boolean or an object; controls the presence of
        # additional properties.
        # Corresponds to the JSON property `additionalProperties`
        # @return [Object]
        attr_accessor :additional_properties
      
        # Optional. The value should be validated against any (one or more) of the
        # subschemas in the list.
        # Corresponds to the JSON property `anyOf`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :any_of
      
        # Optional. Default value of the data.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # Optional. A map of definitions for use by `ref` Only allowed at the root of
        # the schema.
        # Corresponds to the JSON property `defs`
        # @return [Hash<String,Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :defs
      
        # Optional. The description of the data.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Possible values of the element of primitive type with enum format.
        # Examples: 1. We can define direction as : `type:STRING, format:enum, enum:["
        # EAST", NORTH", "SOUTH", "WEST"]` 2. We can define apartment number as : `type:
        # INTEGER, format:enum, enum:["101", "201", "301"]`
        # Corresponds to the JSON property `enum`
        # @return [Array<String>]
        attr_accessor :enum
      
        # Optional. Example of the object. Will only populated when the object is the
        # root.
        # Corresponds to the JSON property `example`
        # @return [Object]
        attr_accessor :example
      
        # Optional. The format of the data. Supported formats: for NUMBER type: "float",
        # "double" for INTEGER type: "int32", "int64" for STRING type: "email", "byte",
        # etc
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema-object). More fields may be added in the future as needed.
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :items
      
        # Optional. Maximum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `maxItems`
        # @return [Fixnum]
        attr_accessor :max_items
      
        # Optional. Maximum length of the Type.STRING
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Optional. Maximum number of the properties for Type.OBJECT.
        # Corresponds to the JSON property `maxProperties`
        # @return [Fixnum]
        attr_accessor :max_properties
      
        # Optional. Maximum value of the Type.INTEGER and Type.NUMBER
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Optional. Minimum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `minItems`
        # @return [Fixnum]
        attr_accessor :min_items
      
        # Optional. SCHEMA FIELDS FOR TYPE STRING Minimum length of the Type.STRING
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        # Optional. Minimum number of the properties for Type.OBJECT.
        # Corresponds to the JSON property `minProperties`
        # @return [Fixnum]
        attr_accessor :min_properties
      
        # Optional. SCHEMA FIELDS FOR TYPE INTEGER and NUMBER Minimum value of the Type.
        # INTEGER and Type.NUMBER
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # Optional. Indicates if the value may be null.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Optional. Pattern of the Type.STRING to restrict a string to a regular
        # expression.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Optional. SCHEMA FIELDS FOR TYPE OBJECT Properties of Type.OBJECT.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :properties
      
        # Optional. The order of the properties. Not a standard field in open api spec.
        # Only used to support the order of the properties.
        # Corresponds to the JSON property `propertyOrdering`
        # @return [Array<String>]
        attr_accessor :property_ordering
      
        # Optional. Allows indirect references between schema nodes. The value should be
        # a valid reference to a child of the root `defs`. For example, the following
        # schema defines a reference to a schema node named "Pet": type: object
        # properties: pet: ref: #/defs/Pet defs: Pet: type: object properties: name:
        # type: string The value of the "pet" property is a reference to the schema node
        # named "Pet". See details in https://json-schema.org/understanding-json-schema/
        # structuring
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # Optional. Required properties of Type.OBJECT.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # Optional. The title of the Schema.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional. The type of the data.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_properties = args[:additional_properties] if args.key?(:additional_properties)
          @any_of = args[:any_of] if args.key?(:any_of)
          @default = args[:default] if args.key?(:default)
          @defs = args[:defs] if args.key?(:defs)
          @description = args[:description] if args.key?(:description)
          @enum = args[:enum] if args.key?(:enum)
          @example = args[:example] if args.key?(:example)
          @format = args[:format] if args.key?(:format)
          @items = args[:items] if args.key?(:items)
          @max_items = args[:max_items] if args.key?(:max_items)
          @max_length = args[:max_length] if args.key?(:max_length)
          @max_properties = args[:max_properties] if args.key?(:max_properties)
          @maximum = args[:maximum] if args.key?(:maximum)
          @min_items = args[:min_items] if args.key?(:min_items)
          @min_length = args[:min_length] if args.key?(:min_length)
          @min_properties = args[:min_properties] if args.key?(:min_properties)
          @minimum = args[:minimum] if args.key?(:minimum)
          @nullable = args[:nullable] if args.key?(:nullable)
          @pattern = args[:pattern] if args.key?(:pattern)
          @properties = args[:properties] if args.key?(:properties)
          @property_ordering = args[:property_ordering] if args.key?(:property_ordering)
          @ref = args[:ref] if args.key?(:ref)
          @required = args[:required] if args.key?(:required)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Google search entry point.
      class GoogleCloudAiplatformV1beta1SearchEntryPoint
        include Google::Apis::Core::Hashable
      
        # Optional. Web content snippet that can be embedded in a web page or an app
        # webview.
        # Corresponds to the JSON property `renderedContent`
        # @return [String]
        attr_accessor :rendered_content
      
        # Optional. Base64 encoded JSON representing array of tuple.
        # Corresponds to the JSON property `sdkBlob`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sdk_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rendered_content = args[:rendered_content] if args.key?(:rendered_content)
          @sdk_blob = args[:sdk_blob] if args.key?(:sdk_blob)
        end
      end
      
      # Segment of the content.
      class GoogleCloudAiplatformV1beta1Segment
        include Google::Apis::Core::Hashable
      
        # Output only. End index in the given Part, measured in bytes. Offset from the
        # start of the Part, exclusive, starting at zero.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. The index of a Part object within its parent Content object.
        # Corresponds to the JSON property `partIndex`
        # @return [Fixnum]
        attr_accessor :part_index
      
        # Output only. Start index in the given Part, measured in bytes. Offset from the
        # start of the Part, inclusive, starting at zero.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Output only. The text corresponding to the segment from the response.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @part_index = args[:part_index] if args.key?(:part_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The speech generation config.
      class GoogleCloudAiplatformV1beta1SpeechConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Language code (ISO 639. e.g. en-US) for the speech synthesization.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The configuration for the voice to use.
        # Corresponds to the JSON property `voiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VoiceConfig]
        attr_accessor :voice_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @voice_config = args[:voice_config] if args.key?(:voice_config)
        end
      end
      
      # Tool details that the model may use to generate response. A `Tool` is a piece
      # of code that enables the system to interact with external systems to perform
      # an action, or set of actions, outside of knowledge and scope of the model. A
      # Tool object should contain exactly one type of Tool (e.g FunctionDeclaration,
      # Retrieval or GoogleSearchRetrieval).
      class GoogleCloudAiplatformV1beta1Tool
        include Google::Apis::Core::Hashable
      
        # Tool that executes code generated by the model, and automatically returns the
        # result to the model. See also [ExecutableCode]and [CodeExecutionResult] which
        # are input and output to this tool.
        # Corresponds to the JSON property `codeExecution`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolCodeExecution]
        attr_accessor :code_execution
      
        # Tool to support computer use.
        # Corresponds to the JSON property `computerUse`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolComputerUse]
        attr_accessor :computer_use
      
        # Tool to search public web data, powered by Vertex AI Search and Sec4
        # compliance.
        # Corresponds to the JSON property `enterpriseWebSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1EnterpriseWebSearch]
        attr_accessor :enterprise_web_search
      
        # Optional. Function tool type. One or more function declarations to be passed
        # to the model along with the current user query. Model may decide to call a
        # subset of these functions by populating FunctionCall in the response. User
        # should provide a FunctionResponse for each function call in the next turn.
        # Based on the function responses, Model will generate the final response back
        # to the user. Maximum 512 function declarations can be provided.
        # Corresponds to the JSON property `functionDeclarations`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionDeclaration>]
        attr_accessor :function_declarations
      
        # Tool to retrieve public maps data for grounding, powered by Google.
        # Corresponds to the JSON property `googleMaps`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleMaps]
        attr_accessor :google_maps
      
        # GoogleSearch tool type. Tool to support Google Search in Model. Powered by
        # Google.
        # Corresponds to the JSON property `googleSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolGoogleSearch]
        attr_accessor :google_search
      
        # Tool to retrieve public web data for grounding, powered by Google.
        # Corresponds to the JSON property `googleSearchRetrieval`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleSearchRetrieval]
        attr_accessor :google_search_retrieval
      
        # Defines a retrieval tool that model can call to access external knowledge.
        # Corresponds to the JSON property `retrieval`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Retrieval]
        attr_accessor :retrieval
      
        # Tool to support URL context.
        # Corresponds to the JSON property `urlContext`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlContext]
        attr_accessor :url_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_execution = args[:code_execution] if args.key?(:code_execution)
          @computer_use = args[:computer_use] if args.key?(:computer_use)
          @enterprise_web_search = args[:enterprise_web_search] if args.key?(:enterprise_web_search)
          @function_declarations = args[:function_declarations] if args.key?(:function_declarations)
          @google_maps = args[:google_maps] if args.key?(:google_maps)
          @google_search = args[:google_search] if args.key?(:google_search)
          @google_search_retrieval = args[:google_search_retrieval] if args.key?(:google_search_retrieval)
          @retrieval = args[:retrieval] if args.key?(:retrieval)
          @url_context = args[:url_context] if args.key?(:url_context)
        end
      end
      
      # Tool that executes code generated by the model, and automatically returns the
      # result to the model. See also [ExecutableCode]and [CodeExecutionResult] which
      # are input and output to this tool.
      class GoogleCloudAiplatformV1beta1ToolCodeExecution
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Tool to support computer use.
      class GoogleCloudAiplatformV1beta1ToolComputerUse
        include Google::Apis::Core::Hashable
      
        # Required. The environment being operated.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # Tool config. This config is shared for all tools provided in the request.
      class GoogleCloudAiplatformV1beta1ToolConfig
        include Google::Apis::Core::Hashable
      
        # Function calling config.
        # Corresponds to the JSON property `functionCallingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCallingConfig]
        attr_accessor :function_calling_config
      
        # Retrieval config.
        # Corresponds to the JSON property `retrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RetrievalConfig]
        attr_accessor :retrieval_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_calling_config = args[:function_calling_config] if args.key?(:function_calling_config)
          @retrieval_config = args[:retrieval_config] if args.key?(:retrieval_config)
        end
      end
      
      # GoogleSearch tool type. Tool to support Google Search in Model. Powered by
      # Google.
      class GoogleCloudAiplatformV1beta1ToolGoogleSearch
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Tool to support URL context.
      class GoogleCloudAiplatformV1beta1UrlContext
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to url context retrieval tool.
      class GoogleCloudAiplatformV1beta1UrlContextMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. List of url context.
        # Corresponds to the JSON property `urlMetadata`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlMetadata>]
        attr_accessor :url_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_metadata = args[:url_metadata] if args.key?(:url_metadata)
        end
      end
      
      # Context of the a single url retrieval.
      class GoogleCloudAiplatformV1beta1UrlMetadata
        include Google::Apis::Core::Hashable
      
        # Retrieved url by the tool.
        # Corresponds to the JSON property `retrievedUrl`
        # @return [String]
        attr_accessor :retrieved_url
      
        # Status of the url retrieval.
        # Corresponds to the JSON property `urlRetrievalStatus`
        # @return [String]
        attr_accessor :url_retrieval_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retrieved_url = args[:retrieved_url] if args.key?(:retrieved_url)
          @url_retrieval_status = args[:url_retrieval_status] if args.key?(:url_retrieval_status)
        end
      end
      
      # Retrieve from Vertex AI Search datastore or engine for grounding. datastore
      # and engine are mutually exclusive. See https://cloud.google.com/products/agent-
      # builder
      class GoogleCloudAiplatformV1beta1VertexAiSearch
        include Google::Apis::Core::Hashable
      
        # Specifications that define the specific DataStores to be searched, along with
        # configurations for those data stores. This is only considered for Engines with
        # multiple data stores. It should only be set if engine is used.
        # Corresponds to the JSON property `dataStoreSpecs`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearchDataStoreSpec>]
        attr_accessor :data_store_specs
      
        # Optional. Fully-qualified Vertex AI Search data store resource ID. Format: `
        # projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        # dataStore``
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        # Optional. Fully-qualified Vertex AI Search engine resource ID. Format: `
        # projects/`project`/locations/`location`/collections/`collection`/engines/`
        # engine``
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Optional. Filter strings to be passed to the search API.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Number of search results to return per query. The default value is
        # 10. The maximumm allowed value is 10.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_specs = args[:data_store_specs] if args.key?(:data_store_specs)
          @datastore = args[:datastore] if args.key?(:datastore)
          @engine = args[:engine] if args.key?(:engine)
          @filter = args[:filter] if args.key?(:filter)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Define data stores within engine to filter on in a search call and
      # configurations for those data stores. For more information, see https://cloud.
      # google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.
      # discoveryengine.v1#datastorespec
      class GoogleCloudAiplatformV1beta1VertexAiSearchDataStoreSpec
        include Google::Apis::Core::Hashable
      
        # Full resource name of DataStore, such as Format: `projects/`project`/locations/
        # `location`/collections/`collection`/dataStores/`dataStore``
        # Corresponds to the JSON property `dataStore`
        # @return [String]
        attr_accessor :data_store
      
        # Optional. Filter specification to filter documents in the data store specified
        # by data_store field. For more information on filtering, see [Filtering](https:/
        # /cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store = args[:data_store] if args.key?(:data_store)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Retrieve from Vertex RAG Store for grounding.
      class GoogleCloudAiplatformV1beta1VertexRagStore
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated. Please use rag_resources instead.
        # Corresponds to the JSON property `ragCorpora`
        # @return [Array<String>]
        attr_accessor :rag_corpora
      
        # Optional. The representation of the rag source. It can be used to specify
        # corpus only or ragfiles. Currently only support one corpus or multiple files
        # from one corpus. In the future we may open up multiple corpora support.
        # Corresponds to the JSON property `ragResources`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStoreRagResource>]
        attr_accessor :rag_resources
      
        # Specifies the context retrieval config.
        # Corresponds to the JSON property `ragRetrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfig]
        attr_accessor :rag_retrieval_config
      
        # Optional. Number of top k results to return from the selected corpora.
        # Corresponds to the JSON property `similarityTopK`
        # @return [Fixnum]
        attr_accessor :similarity_top_k
      
        # Optional. Currently only supported for Gemini Multimodal Live API. In Gemini
        # Multimodal Live API, if `store_context` bool is specified, Gemini will
        # leverage it to automatically memorize the interactions between the client and
        # Gemini, and retrieve context when needed to augment the response generation
        # for users' ongoing and future interactions.
        # Corresponds to the JSON property `storeContext`
        # @return [Boolean]
        attr_accessor :store_context
        alias_method :store_context?, :store_context
      
        # Optional. Only return results with vector distance smaller than the threshold.
        # Corresponds to the JSON property `vectorDistanceThreshold`
        # @return [Float]
        attr_accessor :vector_distance_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rag_corpora = args[:rag_corpora] if args.key?(:rag_corpora)
          @rag_resources = args[:rag_resources] if args.key?(:rag_resources)
          @rag_retrieval_config = args[:rag_retrieval_config] if args.key?(:rag_retrieval_config)
          @similarity_top_k = args[:similarity_top_k] if args.key?(:similarity_top_k)
          @store_context = args[:store_context] if args.key?(:store_context)
          @vector_distance_threshold = args[:vector_distance_threshold] if args.key?(:vector_distance_threshold)
        end
      end
      
      # The definition of the Rag resource.
      class GoogleCloudAiplatformV1beta1VertexRagStoreRagResource
        include Google::Apis::Core::Hashable
      
        # Optional. RagCorpora resource name. Format: `projects/`project`/locations/`
        # location`/ragCorpora/`rag_corpus``
        # Corresponds to the JSON property `ragCorpus`
        # @return [String]
        attr_accessor :rag_corpus
      
        # Optional. rag_file_id. The files should be in the same rag_corpus set in
        # rag_corpus field.
        # Corresponds to the JSON property `ragFileIds`
        # @return [Array<String>]
        attr_accessor :rag_file_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rag_corpus = args[:rag_corpus] if args.key?(:rag_corpus)
          @rag_file_ids = args[:rag_file_ids] if args.key?(:rag_file_ids)
        end
      end
      
      # Metadata describes the input video content.
      class GoogleCloudAiplatformV1beta1VideoMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The end offset of the video.
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # Optional. The start offset of the video.
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # The configuration for the voice to use.
      class GoogleCloudAiplatformV1beta1VoiceConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for the prebuilt speaker to use.
        # Corresponds to the JSON property `prebuiltVoiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig]
        attr_accessor :prebuilt_voice_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prebuilt_voice_config = args[:prebuilt_voice_config] if args.key?(:prebuilt_voice_config)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # This is returned in the longrunning operations for create/update.
      class ModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basicOperationStatus`
        # @return [String]
        attr_accessor :basic_operation_status
      
        # The name of the model we are creating/updating The name must have the form `
        # projects/`project_id`/models/`model_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_operation_status = args[:basic_operation_status] if args.key?(:basic_operation_status)
          @name = args[:name] if args.key?(:name)
        end
      end
    end
  end
end
