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

require 'google/apis/discoveryengine_v1beta/service.rb'
require 'google/apis/discoveryengine_v1beta/classes.rb'
require 'google/apis/discoveryengine_v1beta/representations.rb'
require 'google/apis/discoveryengine_v1beta/gem_version.rb'

module Google
  module Apis
    # Discovery Engine API
    #
    # Discovery Engine API.
    #
    # @see https://cloud.google.com/generative-ai-app-builder/docs/
    module DiscoveryengineV1beta
      # Version of the Discovery Engine API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # Search your organization's data in the Cloud Search index
      AUTH_CLOUD_SEARCH_QUERY = 'https://www.googleapis.com/auth/cloud_search.query'
    end
  end
end
