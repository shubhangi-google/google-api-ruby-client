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
    module ReaderrevenuesubscriptionlinkingV1
      
      # Response to deleting a reader of a publication.
      class DeleteReaderResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A single entitlement for a publication reader
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # The detail field can carry a description of the SKU that corresponds to what
        # the user has been granted access to. This description, which is opaque to
        # Google, can be displayed in the Google user subscription console for users who
        # linked the subscription to a Google Account. Max 80 character limit.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Required. Expiration time of the entitlement. Entitlements that have expired
        # over 30 days will be purged. The max expire_time is 398 days from now().
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Required. The publication's product ID that the user has access to. This is
        # the same product ID as can be found in Schema.org markup (http://schema.org/
        # productID). E.g. "dailybugle.com:basic"
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # A source-specific subscription token. This is an opaque string that the
        # publisher provides to Google. This token is opaque and has no meaning to
        # Google.
        # Corresponds to the JSON property `subscriptionToken`
        # @return [String]
        attr_accessor :subscription_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @product_id = args[:product_id] if args.key?(:product_id)
          @subscription_token = args[:subscription_token] if args.key?(:subscription_token)
        end
      end
      
      # A reader of a publication.
      class Reader
        include Google::Apis::Core::Hashable
      
        # Output only. Time the publication reader was created and associated with a
        # Google user.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name of the reader. The last part of ppid in the
        # resource name is the publisher provided id.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The SwG publication id that the reader's subscription linking was
        # originating from.
        # Corresponds to the JSON property `originatingPublicationId`
        # @return [String]
        attr_accessor :originating_publication_id
      
        # Output only. The publisher provided id of the reader.
        # Corresponds to the JSON property `ppid`
        # @return [String]
        attr_accessor :ppid
      
        # Output only. The SwG publication id that the reader has linked their
        # subscription to.
        # Corresponds to the JSON property `publicationId`
        # @return [String]
        attr_accessor :publication_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @originating_publication_id = args[:originating_publication_id] if args.key?(:originating_publication_id)
          @ppid = args[:ppid] if args.key?(:ppid)
          @publication_id = args[:publication_id] if args.key?(:publication_id)
        end
      end
      
      # A singleton containing all of a reader's entitlements for a publication.
      class ReaderEntitlements
        include Google::Apis::Core::Hashable
      
        # All of the entitlements for a publication reader.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::ReaderrevenuesubscriptionlinkingV1::Entitlement>]
        attr_accessor :entitlements
      
        # Output only. The resource name of the singleton.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @name = args[:name] if args.key?(:name)
        end
      end
    end
  end
end
