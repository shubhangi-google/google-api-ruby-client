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

require 'google/apis/alertcenter_v1beta1/service.rb'
require 'google/apis/alertcenter_v1beta1/classes.rb'
require 'google/apis/alertcenter_v1beta1/representations.rb'
require 'google/apis/alertcenter_v1beta1/gem_version.rb'

module Google
  module Apis
    # Google Workspace Alert Center API
    #
    # Manages alerts on issues affecting your domain. Note: The current version of
    # this API (v1beta1) is available to all Google Workspace customers.
    #
    # @see https://developers.google.com/workspace/admin/alertcenter/
    module AlertcenterV1beta1
      # Version of the Google Workspace Alert Center API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta1'

      # See and delete your domain's G Suite alerts, and send alert feedback
      AUTH_APPS_ALERTS = 'https://www.googleapis.com/auth/apps.alerts'
    end
  end
end
