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

require 'google/apis/driveactivity_v2/service.rb'
require 'google/apis/driveactivity_v2/classes.rb'
require 'google/apis/driveactivity_v2/representations.rb'
require 'google/apis/driveactivity_v2/gem_version.rb'

module Google
  module Apis
    # Drive Activity API
    #
    # Provides a historical view of activity in Google Drive.
    #
    # @see https://developers.google.com/workspace/drive/activity/
    module DriveactivityV2
      # Version of the Drive Activity API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # View and add to the activity record of files in your Google Drive
      AUTH_DRIVE_ACTIVITY = 'https://www.googleapis.com/auth/drive.activity'

      # View the activity record of files in your Google Drive
      AUTH_DRIVE_ACTIVITY_READONLY = 'https://www.googleapis.com/auth/drive.activity.readonly'
    end
  end
end
