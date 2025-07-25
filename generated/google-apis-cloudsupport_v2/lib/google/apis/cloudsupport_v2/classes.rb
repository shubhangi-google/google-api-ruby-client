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
    module CloudsupportV2
      
      # An Actor represents an entity that performed an action. For example, an actor
      # could be a user who posted a comment on a support case, a user who uploaded an
      # attachment, or a service account that created a support case.
      class Actor
        include Google::Apis::Core::Hashable
      
        # The name to display for the actor. If not provided, it is inferred from
        # credentials supplied during case creation. When an email is provided, a
        # display name must also be provided. This will be obfuscated if the user is a
        # Google Support agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address of the actor. If not provided, it is inferred from the
        # credentials supplied during case creation. When a name is provided, an email
        # must also be provided. If the user is a Google Support agent, this is
        # obfuscated. This field is deprecated. Use `username` instead.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. Whether the actor is a Google support actor.
        # Corresponds to the JSON property `googleSupport`
        # @return [Boolean]
        attr_accessor :google_support
        alias_method :google_support?, :google_support
      
        # Output only. The username of the actor. It may look like an email or other
        # format provided by the identity provider. If not provided, it is inferred from
        # the credentials supplied. When a name is provided, a username must also be
        # provided. If the user is a Google Support agent, this will not be set.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @google_support = args[:google_support] if args.key?(:google_support)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # An Attachment contains metadata about a file that was uploaded to a case - it
      # is NOT a file itself. That being said, the name of an Attachment object can be
      # used to download its accompanying file through the `media.download` endpoint.
      # While attachments can be uploaded in the console at the same time as a comment,
      # they're associated on a "case" level, not a "comment" level.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the attachment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An Actor represents an entity that performed an action. For example, an actor
        # could be a user who posted a comment on a support case, a user who uploaded an
        # attachment, or a service account that created a support case.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::CloudsupportV2::Actor]
        attr_accessor :creator
      
        # The filename of the attachment (e.g. `"graph.jpg"`).
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Output only. The MIME type of the attachment (e.g. text/plain).
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Output only. Identifier. The resource name of the attachment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The size of the attachment in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @filename = args[:filename] if args.key?(:filename)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class Blobstore2Info
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobGeneration`
        # @return [Fixnum]
        attr_accessor :blob_generation
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `downloadReadHandle`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :download_read_handle
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `readToken`
        # @return [String]
        attr_accessor :read_token
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `uploadMetadataContainer`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :upload_metadata_container
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_generation = args[:blob_generation] if args.key?(:blob_generation)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @download_read_handle = args[:download_read_handle] if args.key?(:download_read_handle)
          @read_token = args[:read_token] if args.key?(:read_token)
          @upload_metadata_container = args[:upload_metadata_container] if args.key?(:upload_metadata_container)
        end
      end
      
      # A Case is an object that contains the details of a support case. It contains
      # fields for the time it was created, its priority, its classification, and more.
      # Cases can also have comments and attachments that get added over time. A case
      # is parented by a Google Cloud organization or project. Organizations are
      # identified by a number, so the name of a case parented by an organization
      # would look like this: ``` organizations/123/cases/456 ``` Projects have two
      # unique identifiers, an ID and a number, and they look like this: ``` projects/
      # abc/cases/456 ``` ``` projects/123/cases/456 ``` You can use either of them
      # when calling the API. To learn more about project identifiers, see [AIP-2510](
      # https://google.aip.dev/cloud/2510).
      class Case
        include Google::Apis::Core::Hashable
      
        # A Case Classification represents the topic that a case is about. It's very
        # important to use accurate classifications, because they're used to route your
        # cases to specialists who can help you. A classification always has an ID that
        # is its unique identifier. A valid ID is required when creating a case.
        # Corresponds to the JSON property `classification`
        # @return [Google::Apis::CloudsupportV2::CaseClassification]
        attr_accessor :classification
      
        # A user-supplied email address to send case update notifications for. This
        # should only be used in BYOID flows, where we cannot infer the user's email
        # address directly from their EUCs.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # Output only. The time this case was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An Actor represents an entity that performed an action. For example, an actor
        # could be a user who posted a comment on a support case, a user who uploaded an
        # attachment, or a service account that created a support case.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::CloudsupportV2::Actor]
        attr_accessor :creator
      
        # A broad description of the issue.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The short summary of the issue reported in this case.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether the case is currently escalated.
        # Corresponds to the JSON property `escalated`
        # @return [Boolean]
        attr_accessor :escalated
        alias_method :escalated?, :escalated
      
        # The language the user has requested to receive support in. This should be a
        # BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If
        # no language or an unsupported language is specified, this field defaults to
        # English (en). Language selection during case creation may affect your
        # available support options. For a list of supported languages and their support
        # working hours, see: https://cloud.google.com/support/docs/language-working-
        # hours
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Identifier. The resource name for the case.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The priority of this case.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Output only. The current status of the support case.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The email addresses to receive updates on this case.
        # Corresponds to the JSON property `subscriberEmailAddresses`
        # @return [Array<String>]
        attr_accessor :subscriber_email_addresses
      
        # Whether this case was created for internal API testing and should not be acted
        # on by the support team.
        # Corresponds to the JSON property `testCase`
        # @return [Boolean]
        attr_accessor :test_case
        alias_method :test_case?, :test_case
      
        # The timezone of the user who created the support case. It should be in a
        # format IANA recognizes: https://www.iana.org/time-zones. There is no
        # additional validation done by the API.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. The time this case was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @escalated = args[:escalated] if args.key?(:escalated)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @priority = args[:priority] if args.key?(:priority)
          @state = args[:state] if args.key?(:state)
          @subscriber_email_addresses = args[:subscriber_email_addresses] if args.key?(:subscriber_email_addresses)
          @test_case = args[:test_case] if args.key?(:test_case)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Case Classification represents the topic that a case is about. It's very
      # important to use accurate classifications, because they're used to route your
      # cases to specialists who can help you. A classification always has an ID that
      # is its unique identifier. A valid ID is required when creating a case.
      class CaseClassification
        include Google::Apis::Core::Hashable
      
        # A display name for the classification. The display name is not static and can
        # change. To uniquely and consistently identify classifications, use the `
        # CaseClassification.id` field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique ID for a classification. Must be specified for case creation. To
        # retrieve valid classification IDs for case creation, use `caseClassifications.
        # search`. Classification IDs returned by `caseClassifications.search` are
        # guaranteed to be valid for at least 6 months. If a given classification is
        # deactiveated, it will immediately stop being returned. After 6 months, `case.
        # create` requests using the classification ID will fail.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # The request message for the CloseCase endpoint.
      class CloseCaseRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A comment associated with a support case. Case comments are the primary way
      # for Google Support to communicate with a user who has opened a case. When a
      # user responds to Google Support, the user's responses also appear as comments.
      class Comment
        include Google::Apis::Core::Hashable
      
        # The full comment body. Maximum of 12800 characters.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. The time when the comment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An Actor represents an entity that performed an action. For example, an actor
        # could be a user who posted a comment on a support case, a user who uploaded an
        # attachment, or a service account that created a support case.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::CloudsupportV2::Actor]
        attr_accessor :creator
      
        # Output only. Identifier. The resource name of the comment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. DEPRECATED. DO NOT USE. A duplicate of the `body` field. This
        # field is only present for legacy reasons.
        # Corresponds to the JSON property `plainTextBody`
        # @return [String]
        attr_accessor :plain_text_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @name = args[:name] if args.key?(:name)
          @plain_text_body = args[:plain_text_body] if args.key?(:plain_text_body)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class CompositeMedia
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::CloudsupportV2::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::CloudsupportV2::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @inline = args[:inline] if args.key?(:inline)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class ContentTypeInfo
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `bestGuess`
        # @return [String]
        attr_accessor :best_guess
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `fromBytes`
        # @return [String]
        attr_accessor :from_bytes
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `fromFileName`
        # @return [String]
        attr_accessor :from_file_name
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `fromUrlPath`
        # @return [String]
        attr_accessor :from_url_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_guess = args[:best_guess] if args.key?(:best_guess)
          @from_bytes = args[:from_bytes] if args.key?(:from_bytes)
          @from_file_name = args[:from_file_name] if args.key?(:from_file_name)
          @from_header = args[:from_header] if args.key?(:from_header)
          @from_url_path = args[:from_url_path] if args.key?(:from_url_path)
        end
      end
      
      # The request message for the CreateAttachment endpoint.
      class CreateAttachmentRequest
        include Google::Apis::Core::Hashable
      
        # An Attachment contains metadata about a file that was uploaded to a case - it
        # is NOT a file itself. That being said, the name of an Attachment object can be
        # used to download its accompanying file through the `media.download` endpoint.
        # While attachments can be uploaded in the console at the same time as a comment,
        # they're associated on a "case" level, not a "comment" level.
        # Corresponds to the JSON property `attachment`
        # @return [Google::Apis::CloudsupportV2::Attachment]
        attr_accessor :attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment = args[:attachment] if args.key?(:attachment)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DiffChecksumsResponse
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `checksumsLocation`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :checksums_location
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `chunkSizeBytes`
        # @return [Fixnum]
        attr_accessor :chunk_size_bytes
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :object_location
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_location = args[:checksums_location] if args.key?(:checksums_location)
          @chunk_size_bytes = args[:chunk_size_bytes] if args.key?(:chunk_size_bytes)
          @object_location = args[:object_location] if args.key?(:object_location)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DiffDownloadResponse
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :object_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_location = args[:object_location] if args.key?(:object_location)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DiffUploadRequest
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `checksumsInfo`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :checksums_info
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectInfo`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :object_info
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_info = args[:checksums_info] if args.key?(:checksums_info)
          @object_info = args[:object_info] if args.key?(:object_info)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DiffUploadResponse
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `originalObject`
        # @return [Google::Apis::CloudsupportV2::CompositeMedia]
        attr_accessor :original_object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_version = args[:object_version] if args.key?(:object_version)
          @original_object = args[:original_object] if args.key?(:original_object)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DiffVersionResponse
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class DownloadParameters
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `allowGzipCompression`
        # @return [Boolean]
        attr_accessor :allow_gzip_compression
        alias_method :allow_gzip_compression?, :allow_gzip_compression
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `ignoreRange`
        # @return [Boolean]
        attr_accessor :ignore_range
        alias_method :ignore_range?, :ignore_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_gzip_compression = args[:allow_gzip_compression] if args.key?(:allow_gzip_compression)
          @ignore_range = args[:ignore_range] if args.key?(:ignore_range)
        end
      end
      
      # The request message for the EscalateCase endpoint.
      class EscalateCaseRequest
        include Google::Apis::Core::Hashable
      
        # An escalation of a support case.
        # Corresponds to the JSON property `escalation`
        # @return [Google::Apis::CloudsupportV2::Escalation]
        attr_accessor :escalation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @escalation = args[:escalation] if args.key?(:escalation)
        end
      end
      
      # An escalation of a support case.
      class Escalation
        include Google::Apis::Core::Hashable
      
        # Required. A free text description to accompany the `reason` field above.
        # Provides additional context on why the case is being escalated.
        # Corresponds to the JSON property `justification`
        # @return [String]
        attr_accessor :justification
      
        # Required. The reason why the Case is being escalated.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @justification = args[:justification] if args.key?(:justification)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # The response message for the ListAttachments endpoint.
      class ListAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of attachments associated with a case.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::CloudsupportV2::Attachment>]
        attr_accessor :attachments
      
        # A token to retrieve the next page of results. Set this in the `page_token`
        # field of subsequent `cases.attachments.list` requests. If unspecified, there
        # are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for the ListCases endpoint.
      class ListCasesResponse
        include Google::Apis::Core::Hashable
      
        # The list of cases associated with the parent after any filters have been
        # applied.
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::CloudsupportV2::Case>]
        attr_accessor :cases
      
        # A token to retrieve the next page of results. Set this in the `page_token`
        # field of subsequent `cases.list` requests. If unspecified, there are no more
        # results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for the ListComments endpoint.
      class ListCommentsResponse
        include Google::Apis::Core::Hashable
      
        # List of the comments associated with the case.
        # Corresponds to the JSON property `comments`
        # @return [Array<Google::Apis::CloudsupportV2::Comment>]
        attr_accessor :comments
      
        # A token to retrieve the next page of results. Set this in the `page_token`
        # field of subsequent `cases.comments.list` requests. If unspecified, there are
        # no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comments = args[:comments] if args.key?(:comments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class Media
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `bigstoreObjectRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bigstore_object_ref
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::CloudsupportV2::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `compositeMedia`
        # @return [Array<Google::Apis::CloudsupportV2::CompositeMedia>]
        attr_accessor :composite_media
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `contentTypeInfo`
        # @return [Google::Apis::CloudsupportV2::ContentTypeInfo]
        attr_accessor :content_type_info
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `diffChecksumsResponse`
        # @return [Google::Apis::CloudsupportV2::DiffChecksumsResponse]
        attr_accessor :diff_checksums_response
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `diffDownloadResponse`
        # @return [Google::Apis::CloudsupportV2::DiffDownloadResponse]
        attr_accessor :diff_download_response
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `diffUploadRequest`
        # @return [Google::Apis::CloudsupportV2::DiffUploadRequest]
        attr_accessor :diff_upload_request
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `diffUploadResponse`
        # @return [Google::Apis::CloudsupportV2::DiffUploadResponse]
        attr_accessor :diff_upload_response
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `diffVersionResponse`
        # @return [Google::Apis::CloudsupportV2::DiffVersionResponse]
        attr_accessor :diff_version_response
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `downloadParameters`
        # @return [Google::Apis::CloudsupportV2::DownloadParameters]
        attr_accessor :download_parameters
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `hashVerified`
        # @return [Boolean]
        attr_accessor :hash_verified
        alias_method :hash_verified?, :hash_verified
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `isPotentialRetry`
        # @return [Boolean]
        attr_accessor :is_potential_retry
        alias_method :is_potential_retry?, :is_potential_retry
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `mediaId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :media_id
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::CloudsupportV2::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `sha256Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256_hash
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `timestamp`
        # @return [Fixnum]
        attr_accessor :timestamp
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @bigstore_object_ref = args[:bigstore_object_ref] if args.key?(:bigstore_object_ref)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @composite_media = args[:composite_media] if args.key?(:composite_media)
          @content_type = args[:content_type] if args.key?(:content_type)
          @content_type_info = args[:content_type_info] if args.key?(:content_type_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @diff_checksums_response = args[:diff_checksums_response] if args.key?(:diff_checksums_response)
          @diff_download_response = args[:diff_download_response] if args.key?(:diff_download_response)
          @diff_upload_request = args[:diff_upload_request] if args.key?(:diff_upload_request)
          @diff_upload_response = args[:diff_upload_response] if args.key?(:diff_upload_response)
          @diff_version_response = args[:diff_version_response] if args.key?(:diff_version_response)
          @download_parameters = args[:download_parameters] if args.key?(:download_parameters)
          @filename = args[:filename] if args.key?(:filename)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @hash_verified = args[:hash_verified] if args.key?(:hash_verified)
          @inline = args[:inline] if args.key?(:inline)
          @is_potential_retry = args[:is_potential_retry] if args.key?(:is_potential_retry)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @media_id = args[:media_id] if args.key?(:media_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # # gdata.* are outside protos with mising documentation
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # # gdata.* are outside protos with mising documentation
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @generation = args[:generation] if args.key?(:generation)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # The response message for SearchCaseClassifications endpoint.
      class SearchCaseClassificationsResponse
        include Google::Apis::Core::Hashable
      
        # The classifications retrieved.
        # Corresponds to the JSON property `caseClassifications`
        # @return [Array<Google::Apis::CloudsupportV2::CaseClassification>]
        attr_accessor :case_classifications
      
        # A token to retrieve the next page of results. Set this in the `page_token`
        # field of subsequent `caseClassifications.list` requests. If unspecified, there
        # are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_classifications = args[:case_classifications] if args.key?(:case_classifications)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for the SearchCases endpoint.
      class SearchCasesResponse
        include Google::Apis::Core::Hashable
      
        # The list of cases associated with the parent after any filters have been
        # applied.
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::CloudsupportV2::Case>]
        attr_accessor :cases
      
        # A token to retrieve the next page of results. Set this in the `page_token`
        # field of subsequent `cases.search` requests. If unspecified, there are no more
        # results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
