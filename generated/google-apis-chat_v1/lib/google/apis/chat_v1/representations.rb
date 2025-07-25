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
    module ChatV1
      
      class AccessSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessoryWidget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppCommandMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedGif
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachmentDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Button
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardWithId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatAppLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatClientDataSourceMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatSpaceLinkData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonEventObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteImportSpaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteImportSpaceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomEmoji
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomEmojiMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomEmojiPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTimeInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeletionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeprecatedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dialog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DialogAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveLinkData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Emoji
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmojiReactionSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1BorderStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Button
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ButtonList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardFixedFooter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Carousel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CarouselCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Chip
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ChipList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CollapseControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Column
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Columns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1DateTimePicker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1DecoratedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Divider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Grid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1GridItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Icon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ImageComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ImageCropStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1MaterialIcon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1NestedWidget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OverflowMenu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OverflowMenuItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1PlatformDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SelectionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SelectionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SuggestionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Suggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SwitchControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1TextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Validation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Widget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Widgets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostAppDataSourceMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Inputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomEmojisResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReactionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpaceEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchedUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipBatchCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipBatchDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipBatchUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageBatchCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageBatchDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageBatchUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PermissionSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PermissionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotedMessageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactionBatchCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactionBatchDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactionCreatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactionDeletedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RichLinkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchSpacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectionItems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetUpSpaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlashCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlashCommandMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Space
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceBatchUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceNotificationSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceReadState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceUpdatedEventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Thread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThreadReadState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatedWidget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAttachmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAttachmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserMentionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WidgetMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_state, as: 'accessState'
          property :audience, as: 'audience'
        end
      end
      
      class AccessoryWidget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList::Representation
      
        end
      end
      
      class ActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class ActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialog_action, as: 'dialogAction', class: Google::Apis::ChatV1::DialogAction, decorator: Google::Apis::ChatV1::DialogAction::Representation
      
          property :type, as: 'type'
          property :updated_widget, as: 'updatedWidget', class: Google::Apis::ChatV1::UpdatedWidget, decorator: Google::Apis::ChatV1::UpdatedWidget::Representation
      
          property :url, as: 'url'
        end
      end
      
      class ActionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status_code, as: 'statusCode'
          property :user_facing_message, as: 'userFacingMessage'
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_emoji_metadata, as: 'customEmojiMetadata', class: Google::Apis::ChatV1::CustomEmojiMetadata, decorator: Google::Apis::ChatV1::CustomEmojiMetadata::Representation
      
          property :length, as: 'length'
          property :rich_link_metadata, as: 'richLinkMetadata', class: Google::Apis::ChatV1::RichLinkMetadata, decorator: Google::Apis::ChatV1::RichLinkMetadata::Representation
      
          property :slash_command, as: 'slashCommand', class: Google::Apis::ChatV1::SlashCommandMetadata, decorator: Google::Apis::ChatV1::SlashCommandMetadata::Representation
      
          property :start_index, as: 'startIndex'
          property :type, as: 'type'
          property :user_mention, as: 'userMention', class: Google::Apis::ChatV1::UserMentionMetadata, decorator: Google::Apis::ChatV1::UserMentionMetadata::Representation
      
        end
      end
      
      class AppCommandMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_command_id, as: 'appCommandId'
          property :app_command_type, as: 'appCommandType'
        end
      end
      
      class AttachedGif
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_data_ref, as: 'attachmentDataRef', class: Google::Apis::ChatV1::AttachmentDataRef, decorator: Google::Apis::ChatV1::AttachmentDataRef::Representation
      
          property :content_name, as: 'contentName'
          property :content_type, as: 'contentType'
          property :download_uri, as: 'downloadUri'
          property :drive_data_ref, as: 'driveDataRef', class: Google::Apis::ChatV1::DriveDataRef, decorator: Google::Apis::ChatV1::DriveDataRef::Representation
      
          property :name, as: 'name'
          property :source, as: 'source'
          property :thumbnail_uri, as: 'thumbnailUri'
        end
      end
      
      class AttachmentDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_upload_token, as: 'attachmentUploadToken'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class Button
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_button, as: 'imageButton', class: Google::Apis::ChatV1::ImageButton, decorator: Google::Apis::ChatV1::ImageButton::Representation
      
          property :text_button, as: 'textButton', class: Google::Apis::ChatV1::TextButton, decorator: Google::Apis::ChatV1::TextButton::Representation
      
        end
      end
      
      class Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::ChatV1::CardAction, decorator: Google::Apis::ChatV1::CardAction::Representation
      
          property :header, as: 'header', class: Google::Apis::ChatV1::CardHeader, decorator: Google::Apis::ChatV1::CardHeader::Representation
      
          property :name, as: 'name'
          collection :sections, as: 'sections', class: Google::Apis::ChatV1::Section, decorator: Google::Apis::ChatV1::Section::Representation
      
        end
      end
      
      class CardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class CardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_style, as: 'imageStyle'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class CardWithId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card, as: 'card', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
          property :card_id, as: 'cardId'
        end
      end
      
      class ChatAppLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :deployment_function, as: 'deploymentFunction'
          property :error, as: 'error', class: Google::Apis::ChatV1::Status, decorator: Google::Apis::ChatV1::Status::Representation
      
        end
      end
      
      class ChatClientDataSourceMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space_data_source, as: 'spaceDataSource', class: Google::Apis::ChatV1::SpaceDataSource, decorator: Google::Apis::ChatV1::SpaceDataSource::Representation
      
        end
      end
      
      class ChatSpaceLinkData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :space, as: 'space'
          property :thread, as: 'thread'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class CommonEventObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :form_inputs, as: 'formInputs', class: Google::Apis::ChatV1::Inputs, decorator: Google::Apis::ChatV1::Inputs::Representation
      
          property :host_app, as: 'hostApp'
          property :invoked_function, as: 'invokedFunction'
          hash :parameters, as: 'parameters'
          property :platform, as: 'platform'
          property :time_zone, as: 'timeZone', class: Google::Apis::ChatV1::TimeZone, decorator: Google::Apis::ChatV1::TimeZone::Representation
      
          property :user_locale, as: 'userLocale'
        end
      end
      
      class CompleteImportSpaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompleteImportSpaceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
        end
      end
      
      class CustomEmoji
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emoji_name, as: 'emojiName'
          property :name, as: 'name'
          property :payload, as: 'payload', class: Google::Apis::ChatV1::CustomEmojiPayload, decorator: Google::Apis::ChatV1::CustomEmojiPayload::Representation
      
          property :temporary_image_uri, as: 'temporaryImageUri'
          property :uid, as: 'uid'
        end
      end
      
      class CustomEmojiMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_emoji, as: 'customEmoji', class: Google::Apis::ChatV1::CustomEmoji, decorator: Google::Apis::ChatV1::CustomEmoji::Representation
      
        end
      end
      
      class CustomEmojiPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_content, :base64 => true, as: 'fileContent'
          property :filename, as: 'filename'
        end
      end
      
      class DateInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ms_since_epoch, :numeric_string => true, as: 'msSinceEpoch'
        end
      end
      
      class DateTimeInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_date, as: 'hasDate'
          property :has_time, as: 'hasTime'
          property :ms_since_epoch, :numeric_string => true, as: 'msSinceEpoch'
        end
      end
      
      class DeletionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_type, as: 'deletionType'
        end
      end
      
      class DeprecatedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::FormAction, decorator: Google::Apis::ChatV1::FormAction::Representation
      
          property :app_command_metadata, as: 'appCommandMetadata', class: Google::Apis::ChatV1::AppCommandMetadata, decorator: Google::Apis::ChatV1::AppCommandMetadata::Representation
      
          property :common, as: 'common', class: Google::Apis::ChatV1::CommonEventObject, decorator: Google::Apis::ChatV1::CommonEventObject::Representation
      
          property :config_complete_redirect_url, as: 'configCompleteRedirectUrl'
          property :dialog_event_type, as: 'dialogEventType'
          property :event_time, as: 'eventTime'
          property :is_dialog_event, as: 'isDialogEvent'
          property :message, as: 'message', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
          property :thread, as: 'thread', class: Google::Apis::ChatV1::Thread, decorator: Google::Apis::ChatV1::Thread::Representation
      
          property :thread_key, as: 'threadKey'
          property :token, as: 'token'
          property :type, as: 'type'
          property :user, as: 'user', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
        end
      end
      
      class Dialog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
        end
      end
      
      class DialogAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_status, as: 'actionStatus', class: Google::Apis::ChatV1::ActionStatus, decorator: Google::Apis::ChatV1::ActionStatus::Representation
      
          property :dialog, as: 'dialog', class: Google::Apis::ChatV1::Dialog, decorator: Google::Apis::ChatV1::Dialog::Representation
      
        end
      end
      
      class DriveDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file_id, as: 'driveFileId'
        end
      end
      
      class DriveLinkData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_data_ref, as: 'driveDataRef', class: Google::Apis::ChatV1::DriveDataRef, decorator: Google::Apis::ChatV1::DriveDataRef::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class Emoji
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_emoji, as: 'customEmoji', class: Google::Apis::ChatV1::CustomEmoji, decorator: Google::Apis::ChatV1::CustomEmoji::Representation
      
          property :unicode, as: 'unicode'
        end
      end
      
      class EmojiReactionSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emoji, as: 'emoji', class: Google::Apis::ChatV1::Emoji, decorator: Google::Apis::ChatV1::Emoji::Representation
      
          property :reaction_count, as: 'reactionCount'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FormAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_method_name, as: 'actionMethodName'
          collection :parameters, as: 'parameters', class: Google::Apis::ChatV1::ActionParameter, decorator: Google::Apis::ChatV1::ActionParameter::Representation
      
        end
      end
      
      class GoogleAppsCardV1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_widgets_are_required, as: 'allWidgetsAreRequired'
          property :function, as: 'function'
          property :interaction, as: 'interaction'
          property :load_indicator, as: 'loadIndicator'
          collection :parameters, as: 'parameters', class: Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter::Representation
      
          property :persist_values, as: 'persistValues'
          collection :required_widgets, as: 'requiredWidgets'
        end
      end
      
      class GoogleAppsCardV1ActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1BorderStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corner_radius, as: 'cornerRadius'
          property :stroke_color, as: 'strokeColor', class: Google::Apis::ChatV1::Color, decorator: Google::Apis::ChatV1::Color::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1Button
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :color, as: 'color', class: Google::Apis::ChatV1::Color, decorator: Google::Apis::ChatV1::Color::Representation
      
          property :disabled, as: 'disabled'
          property :icon, as: 'icon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :text, as: 'text'
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1ButtonList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
        end
      end
      
      class GoogleAppsCardV1Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::ChatV1::GoogleAppsCardV1CardAction, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardAction::Representation
      
          property :display_style, as: 'displayStyle'
          property :fixed_footer, as: 'fixedFooter', class: Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader::Representation
      
          property :name, as: 'name'
          property :peek_card_header, as: 'peekCardHeader', class: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader::Representation
      
          property :section_divider_style, as: 'sectionDividerStyle'
          collection :sections, as: 'sections', class: Google::Apis::ChatV1::GoogleAppsCardV1Section, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Section::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardFixedFooter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_button, as: 'primaryButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :secondary_button, as: 'secondaryButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_alt_text, as: 'imageAltText'
          property :image_type, as: 'imageType'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1Carousel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :carousel_cards, as: 'carouselCards', class: Google::Apis::ChatV1::GoogleAppsCardV1CarouselCard, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CarouselCard::Representation
      
        end
      end
      
      class GoogleAppsCardV1CarouselCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :footer_widgets, as: 'footerWidgets', class: Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget, decorator: Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget::Representation
      
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget, decorator: Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget::Representation
      
        end
      end
      
      class GoogleAppsCardV1Chip
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :disabled, as: 'disabled'
          property :enabled, as: 'enabled'
          property :icon, as: 'icon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :label, as: 'label'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
        end
      end
      
      class GoogleAppsCardV1ChipList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chips, as: 'chips', class: Google::Apis::ChatV1::GoogleAppsCardV1Chip, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Chip::Representation
      
          property :layout, as: 'layout'
        end
      end
      
      class GoogleAppsCardV1CollapseControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collapse_button, as: 'collapseButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :expand_button, as: 'expandButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :horizontal_alignment, as: 'horizontalAlignment'
        end
      end
      
      class GoogleAppsCardV1Column
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :horizontal_size_style, as: 'horizontalSizeStyle'
          property :vertical_alignment, as: 'verticalAlignment'
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::GoogleAppsCardV1Widgets, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Widgets::Representation
      
        end
      end
      
      class GoogleAppsCardV1Columns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_items, as: 'columnItems', class: Google::Apis::ChatV1::GoogleAppsCardV1Column, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Column::Representation
      
        end
      end
      
      class GoogleAppsCardV1DateTimePicker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :timezone_offset_date, as: 'timezoneOffsetDate'
          property :type, as: 'type'
          property :value_ms_epoch, :numeric_string => true, as: 'valueMsEpoch'
        end
      end
      
      class GoogleAppsCardV1DecoratedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :end_icon, as: 'endIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :icon, as: 'icon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :start_icon, as: 'startIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :switch_control, as: 'switchControl', class: Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl::Representation
      
          property :text, as: 'text'
          property :top_label, as: 'topLabel'
          property :wrap_text, as: 'wrapText'
        end
      end
      
      class GoogleAppsCardV1Divider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCardV1Grid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border_style, as: 'borderStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle::Representation
      
          property :column_count, as: 'columnCount'
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1GridItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1GridItem::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1GridItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1ImageComponent, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ImageComponent::Representation
      
          property :layout, as: 'layout'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1Icon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :icon_url, as: 'iconUrl'
          property :image_type, as: 'imageType'
          property :known_icon, as: 'knownIcon'
          property :material_icon, as: 'materialIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1MaterialIcon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1MaterialIcon::Representation
      
        end
      end
      
      class GoogleAppsCardV1Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
        end
      end
      
      class GoogleAppsCardV1ImageComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :border_style, as: 'borderStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle::Representation
      
          property :crop_style, as: 'cropStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1ImageCropStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ImageCropStyle::Representation
      
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleAppsCardV1ImageCropStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1MaterialIcon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fill, as: 'fill'
          property :grade, as: 'grade'
          property :name, as: 'name'
          property :weight, as: 'weight'
        end
      end
      
      class GoogleAppsCardV1NestedWidget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList::Representation
      
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1Image, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Image::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph::Representation
      
        end
      end
      
      class GoogleAppsCardV1OnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :card, as: 'card', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
          property :open_dynamic_link_action, as: 'openDynamicLinkAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::ChatV1::GoogleAppsCardV1OpenLink, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OpenLink::Representation
      
          property :overflow_menu, as: 'overflowMenu', class: Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenu, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenu::Representation
      
        end
      end
      
      class GoogleAppsCardV1OpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_close, as: 'onClose'
          property :open_as, as: 'openAs'
          property :url, as: 'url'
        end
      end
      
      class GoogleAppsCardV1OverflowMenu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenuItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenuItem::Representation
      
        end
      end
      
      class GoogleAppsCardV1OverflowMenuItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :start_icon, as: 'startIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1PlatformDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_data_source, as: 'commonDataSource'
          property :host_app_data_source, as: 'hostAppDataSource', class: Google::Apis::ChatV1::HostAppDataSourceMarkup, decorator: Google::Apis::ChatV1::HostAppDataSourceMarkup::Representation
      
        end
      end
      
      class GoogleAppsCardV1Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collapse_control, as: 'collapseControl', class: Google::Apis::ChatV1::GoogleAppsCardV1CollapseControl, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CollapseControl::Representation
      
          property :collapsible, as: 'collapsible'
          property :header, as: 'header'
          property :uncollapsible_widgets_count, as: 'uncollapsibleWidgetsCount'
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::GoogleAppsCardV1Widget, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Widget::Representation
      
        end
      end
      
      class GoogleAppsCardV1SelectionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_data_source, as: 'externalDataSource', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :hint_text, as: 'hintText'
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem::Representation
      
          property :label, as: 'label'
          property :multi_select_max_selected_items, as: 'multiSelectMaxSelectedItems'
          property :multi_select_min_query_length, as: 'multiSelectMinQueryLength'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :platform_data_source, as: 'platformDataSource', class: Google::Apis::ChatV1::GoogleAppsCardV1PlatformDataSource, decorator: Google::Apis::ChatV1::GoogleAppsCardV1PlatformDataSource::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1SelectionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_text, as: 'bottomText'
          property :selected, as: 'selected'
          property :start_icon_uri, as: 'startIconUri'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1SuggestionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1Suggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1SuggestionItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SuggestionItem::Representation
      
        end
      end
      
      class GoogleAppsCardV1SwitchControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_type, as: 'controlType'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :selected, as: 'selected'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_complete_action, as: 'autoCompleteAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :hint_text, as: 'hintText'
          property :initial_suggestions, as: 'initialSuggestions', class: Google::Apis::ChatV1::GoogleAppsCardV1Suggestions, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Suggestions::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :placeholder_text, as: 'placeholderText'
          property :type, as: 'type'
          property :validation, as: 'validation', class: Google::Apis::ChatV1::GoogleAppsCardV1Validation, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Validation::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1TextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_lines, as: 'maxLines'
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1Validation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_limit, as: 'characterLimit'
          property :input_type, as: 'inputType'
        end
      end
      
      class GoogleAppsCardV1Widget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList::Representation
      
          property :carousel, as: 'carousel', class: Google::Apis::ChatV1::GoogleAppsCardV1Carousel, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Carousel::Representation
      
          property :chip_list, as: 'chipList', class: Google::Apis::ChatV1::GoogleAppsCardV1ChipList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ChipList::Representation
      
          property :columns, as: 'columns', class: Google::Apis::ChatV1::GoogleAppsCardV1Columns, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Columns::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker::Representation
      
          property :decorated_text, as: 'decoratedText', class: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText::Representation
      
          property :divider, as: 'divider', class: Google::Apis::ChatV1::GoogleAppsCardV1Divider, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Divider::Representation
      
          property :grid, as: 'grid', class: Google::Apis::ChatV1::GoogleAppsCardV1Grid, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Grid::Representation
      
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1Image, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Image::Representation
      
          property :selection_input, as: 'selectionInput', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput::Representation
      
          property :text_input, as: 'textInput', class: Google::Apis::ChatV1::GoogleAppsCardV1TextInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextInput::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph::Representation
      
        end
      end
      
      class GoogleAppsCardV1Widgets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList::Representation
      
          property :chip_list, as: 'chipList', class: Google::Apis::ChatV1::GoogleAppsCardV1ChipList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ChipList::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker::Representation
      
          property :decorated_text, as: 'decoratedText', class: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText::Representation
      
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1Image, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Image::Representation
      
          property :selection_input, as: 'selectionInput', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput::Representation
      
          property :text_input, as: 'textInput', class: Google::Apis::ChatV1::GoogleAppsCardV1TextInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextInput::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph::Representation
      
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class HostAppDataSourceMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_data_source, as: 'chatDataSource', class: Google::Apis::ChatV1::ChatClientDataSourceMarkup, decorator: Google::Apis::ChatV1::ChatClientDataSourceMarkup::Representation
      
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class ImageButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class Inputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_input, as: 'dateInput', class: Google::Apis::ChatV1::DateInput, decorator: Google::Apis::ChatV1::DateInput::Representation
      
          property :date_time_input, as: 'dateTimeInput', class: Google::Apis::ChatV1::DateTimeInput, decorator: Google::Apis::ChatV1::DateTimeInput::Representation
      
          property :string_inputs, as: 'stringInputs', class: Google::Apis::ChatV1::StringInputs, decorator: Google::Apis::ChatV1::StringInputs::Representation
      
          property :time_input, as: 'timeInput', class: Google::Apis::ChatV1::TimeInput, decorator: Google::Apis::ChatV1::TimeInput::Representation
      
        end
      end
      
      class KeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::ChatV1::Button, decorator: Google::Apis::ChatV1::Button::Representation
      
          property :content, as: 'content'
          property :content_multiline, as: 'contentMultiline'
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
          property :top_label, as: 'topLabel'
        end
      end
      
      class ListCustomEmojisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_emojis, as: 'customEmojis', class: Google::Apis::ChatV1::CustomEmoji, decorator: Google::Apis::ChatV1::CustomEmoji::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReactionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reactions, as: 'reactions', class: Google::Apis::ChatV1::Reaction, decorator: Google::Apis::ChatV1::Reaction::Representation
      
        end
      end
      
      class ListSpaceEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :space_events, as: 'spaceEvents', class: Google::Apis::ChatV1::SpaceEvent, decorator: Google::Apis::ChatV1::SpaceEvent::Representation
      
        end
      end
      
      class ListSpacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spaces, as: 'spaces', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
        end
      end
      
      class MatchedUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :group_member, as: 'groupMember', class: Google::Apis::ChatV1::Group, decorator: Google::Apis::ChatV1::Group::Representation
      
          property :member, as: 'member', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :name, as: 'name'
          property :role, as: 'role'
          property :state, as: 'state'
        end
      end
      
      class MembershipBatchCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::MembershipCreatedEventData, decorator: Google::Apis::ChatV1::MembershipCreatedEventData::Representation
      
        end
      end
      
      class MembershipBatchDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::MembershipDeletedEventData, decorator: Google::Apis::ChatV1::MembershipDeletedEventData::Representation
      
        end
      end
      
      class MembershipBatchUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::MembershipUpdatedEventData, decorator: Google::Apis::ChatV1::MembershipUpdatedEventData::Representation
      
        end
      end
      
      class MembershipCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_direct_human_user_count, as: 'joinedDirectHumanUserCount'
          property :joined_group_count, as: 'joinedGroupCount'
        end
      end
      
      class MembershipCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
        end
      end
      
      class MembershipDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
        end
      end
      
      class MembershipUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accessory_widgets, as: 'accessoryWidgets', class: Google::Apis::ChatV1::AccessoryWidget, decorator: Google::Apis::ChatV1::AccessoryWidget::Representation
      
          property :action_response, as: 'actionResponse', class: Google::Apis::ChatV1::ActionResponse, decorator: Google::Apis::ChatV1::ActionResponse::Representation
      
          collection :annotations, as: 'annotations', class: Google::Apis::ChatV1::Annotation, decorator: Google::Apis::ChatV1::Annotation::Representation
      
          property :argument_text, as: 'argumentText'
          collection :attached_gifs, as: 'attachedGifs', class: Google::Apis::ChatV1::AttachedGif, decorator: Google::Apis::ChatV1::AttachedGif::Representation
      
          collection :attachment, as: 'attachment', class: Google::Apis::ChatV1::Attachment, decorator: Google::Apis::ChatV1::Attachment::Representation
      
          collection :cards, as: 'cards', class: Google::Apis::ChatV1::Card, decorator: Google::Apis::ChatV1::Card::Representation
      
          collection :cards_v2, as: 'cardsV2', class: Google::Apis::ChatV1::CardWithId, decorator: Google::Apis::ChatV1::CardWithId::Representation
      
          property :client_assigned_message_id, as: 'clientAssignedMessageId'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :deletion_metadata, as: 'deletionMetadata', class: Google::Apis::ChatV1::DeletionMetadata, decorator: Google::Apis::ChatV1::DeletionMetadata::Representation
      
          collection :emoji_reaction_summaries, as: 'emojiReactionSummaries', class: Google::Apis::ChatV1::EmojiReactionSummary, decorator: Google::Apis::ChatV1::EmojiReactionSummary::Representation
      
          property :fallback_text, as: 'fallbackText'
          property :formatted_text, as: 'formattedText'
          property :last_update_time, as: 'lastUpdateTime'
          property :matched_url, as: 'matchedUrl', class: Google::Apis::ChatV1::MatchedUrl, decorator: Google::Apis::ChatV1::MatchedUrl::Representation
      
          property :name, as: 'name'
          property :private_message_viewer, as: 'privateMessageViewer', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :quoted_message_metadata, as: 'quotedMessageMetadata', class: Google::Apis::ChatV1::QuotedMessageMetadata, decorator: Google::Apis::ChatV1::QuotedMessageMetadata::Representation
      
          property :sender, as: 'sender', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :slash_command, as: 'slashCommand', class: Google::Apis::ChatV1::SlashCommand, decorator: Google::Apis::ChatV1::SlashCommand::Representation
      
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
          property :text, as: 'text'
          property :thread, as: 'thread', class: Google::Apis::ChatV1::Thread, decorator: Google::Apis::ChatV1::Thread::Representation
      
          property :thread_reply, as: 'threadReply'
        end
      end
      
      class MessageBatchCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::ChatV1::MessageCreatedEventData, decorator: Google::Apis::ChatV1::MessageCreatedEventData::Representation
      
        end
      end
      
      class MessageBatchDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::ChatV1::MessageDeletedEventData, decorator: Google::Apis::ChatV1::MessageDeletedEventData::Representation
      
        end
      end
      
      class MessageBatchUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::ChatV1::MessageUpdatedEventData, decorator: Google::Apis::ChatV1::MessageUpdatedEventData::Representation
      
        end
      end
      
      class MessageCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
        end
      end
      
      class MessageDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
        end
      end
      
      class MessageUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
        end
      end
      
      class OnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::FormAction, decorator: Google::Apis::ChatV1::FormAction::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::ChatV1::OpenLink, decorator: Google::Apis::ChatV1::OpenLink::Representation
      
        end
      end
      
      class OpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class PermissionSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :managers_allowed, as: 'managersAllowed'
          property :members_allowed, as: 'membersAllowed'
        end
      end
      
      class PermissionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manage_apps, as: 'manageApps', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :manage_members_and_groups, as: 'manageMembersAndGroups', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :manage_webhooks, as: 'manageWebhooks', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :modify_space_details, as: 'modifySpaceDetails', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :post_messages, as: 'postMessages', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :reply_messages, as: 'replyMessages', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :toggle_history, as: 'toggleHistory', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
          property :use_at_mention_all, as: 'useAtMentionAll', class: Google::Apis::ChatV1::PermissionSetting, decorator: Google::Apis::ChatV1::PermissionSetting::Representation
      
        end
      end
      
      class QuotedMessageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_update_time, as: 'lastUpdateTime'
          property :name, as: 'name'
        end
      end
      
      class Reaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emoji, as: 'emoji', class: Google::Apis::ChatV1::Emoji, decorator: Google::Apis::ChatV1::Emoji::Representation
      
          property :name, as: 'name'
          property :user, as: 'user', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
        end
      end
      
      class ReactionBatchCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reactions, as: 'reactions', class: Google::Apis::ChatV1::ReactionCreatedEventData, decorator: Google::Apis::ChatV1::ReactionCreatedEventData::Representation
      
        end
      end
      
      class ReactionBatchDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reactions, as: 'reactions', class: Google::Apis::ChatV1::ReactionDeletedEventData, decorator: Google::Apis::ChatV1::ReactionDeletedEventData::Representation
      
        end
      end
      
      class ReactionCreatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reaction, as: 'reaction', class: Google::Apis::ChatV1::Reaction, decorator: Google::Apis::ChatV1::Reaction::Representation
      
        end
      end
      
      class ReactionDeletedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reaction, as: 'reaction', class: Google::Apis::ChatV1::Reaction, decorator: Google::Apis::ChatV1::Reaction::Representation
      
        end
      end
      
      class RichLinkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_space_link_data, as: 'chatSpaceLinkData', class: Google::Apis::ChatV1::ChatSpaceLinkData, decorator: Google::Apis::ChatV1::ChatSpaceLinkData::Representation
      
          property :drive_link_data, as: 'driveLinkData', class: Google::Apis::ChatV1::DriveLinkData, decorator: Google::Apis::ChatV1::DriveLinkData::Representation
      
          property :rich_link_type, as: 'richLinkType'
          property :uri, as: 'uri'
        end
      end
      
      class SearchSpacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spaces, as: 'spaces', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::WidgetMarkup, decorator: Google::Apis::ChatV1::WidgetMarkup::Representation
      
        end
      end
      
      class SelectionItems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem::Representation
      
        end
      end
      
      class SetUpSpaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
          property :request_id, as: 'requestId'
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
        end
      end
      
      class SlashCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command_id, :numeric_string => true, as: 'commandId'
        end
      end
      
      class SlashCommandMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bot, as: 'bot', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :command_id, :numeric_string => true, as: 'commandId'
          property :command_name, as: 'commandName'
          property :triggers_dialog, as: 'triggersDialog'
          property :type, as: 'type'
        end
      end
      
      class Space
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_settings, as: 'accessSettings', class: Google::Apis::ChatV1::AccessSettings, decorator: Google::Apis::ChatV1::AccessSettings::Representation
      
          property :admin_installed, as: 'adminInstalled'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :external_user_allowed, as: 'externalUserAllowed'
          property :import_mode, as: 'importMode'
          property :import_mode_expire_time, as: 'importModeExpireTime'
          property :last_active_time, as: 'lastActiveTime'
          property :membership_count, as: 'membershipCount', class: Google::Apis::ChatV1::MembershipCount, decorator: Google::Apis::ChatV1::MembershipCount::Representation
      
          property :name, as: 'name'
          property :permission_settings, as: 'permissionSettings', class: Google::Apis::ChatV1::PermissionSettings, decorator: Google::Apis::ChatV1::PermissionSettings::Representation
      
          property :predefined_permission_settings, as: 'predefinedPermissionSettings'
          property :single_user_bot_dm, as: 'singleUserBotDm'
          property :space_details, as: 'spaceDetails', class: Google::Apis::ChatV1::SpaceDetails, decorator: Google::Apis::ChatV1::SpaceDetails::Representation
      
          property :space_history_state, as: 'spaceHistoryState'
          property :space_threading_state, as: 'spaceThreadingState'
          property :space_type, as: 'spaceType'
          property :space_uri, as: 'spaceUri'
          property :threaded, as: 'threaded'
          property :type, as: 'type'
        end
      end
      
      class SpaceBatchUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :spaces, as: 'spaces', class: Google::Apis::ChatV1::SpaceUpdatedEventData, decorator: Google::Apis::ChatV1::SpaceUpdatedEventData::Representation
      
        end
      end
      
      class SpaceDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_to_current_space, as: 'defaultToCurrentSpace'
        end
      end
      
      class SpaceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :guidelines, as: 'guidelines'
        end
      end
      
      class SpaceEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :membership_batch_created_event_data, as: 'membershipBatchCreatedEventData', class: Google::Apis::ChatV1::MembershipBatchCreatedEventData, decorator: Google::Apis::ChatV1::MembershipBatchCreatedEventData::Representation
      
          property :membership_batch_deleted_event_data, as: 'membershipBatchDeletedEventData', class: Google::Apis::ChatV1::MembershipBatchDeletedEventData, decorator: Google::Apis::ChatV1::MembershipBatchDeletedEventData::Representation
      
          property :membership_batch_updated_event_data, as: 'membershipBatchUpdatedEventData', class: Google::Apis::ChatV1::MembershipBatchUpdatedEventData, decorator: Google::Apis::ChatV1::MembershipBatchUpdatedEventData::Representation
      
          property :membership_created_event_data, as: 'membershipCreatedEventData', class: Google::Apis::ChatV1::MembershipCreatedEventData, decorator: Google::Apis::ChatV1::MembershipCreatedEventData::Representation
      
          property :membership_deleted_event_data, as: 'membershipDeletedEventData', class: Google::Apis::ChatV1::MembershipDeletedEventData, decorator: Google::Apis::ChatV1::MembershipDeletedEventData::Representation
      
          property :membership_updated_event_data, as: 'membershipUpdatedEventData', class: Google::Apis::ChatV1::MembershipUpdatedEventData, decorator: Google::Apis::ChatV1::MembershipUpdatedEventData::Representation
      
          property :message_batch_created_event_data, as: 'messageBatchCreatedEventData', class: Google::Apis::ChatV1::MessageBatchCreatedEventData, decorator: Google::Apis::ChatV1::MessageBatchCreatedEventData::Representation
      
          property :message_batch_deleted_event_data, as: 'messageBatchDeletedEventData', class: Google::Apis::ChatV1::MessageBatchDeletedEventData, decorator: Google::Apis::ChatV1::MessageBatchDeletedEventData::Representation
      
          property :message_batch_updated_event_data, as: 'messageBatchUpdatedEventData', class: Google::Apis::ChatV1::MessageBatchUpdatedEventData, decorator: Google::Apis::ChatV1::MessageBatchUpdatedEventData::Representation
      
          property :message_created_event_data, as: 'messageCreatedEventData', class: Google::Apis::ChatV1::MessageCreatedEventData, decorator: Google::Apis::ChatV1::MessageCreatedEventData::Representation
      
          property :message_deleted_event_data, as: 'messageDeletedEventData', class: Google::Apis::ChatV1::MessageDeletedEventData, decorator: Google::Apis::ChatV1::MessageDeletedEventData::Representation
      
          property :message_updated_event_data, as: 'messageUpdatedEventData', class: Google::Apis::ChatV1::MessageUpdatedEventData, decorator: Google::Apis::ChatV1::MessageUpdatedEventData::Representation
      
          property :name, as: 'name'
          property :reaction_batch_created_event_data, as: 'reactionBatchCreatedEventData', class: Google::Apis::ChatV1::ReactionBatchCreatedEventData, decorator: Google::Apis::ChatV1::ReactionBatchCreatedEventData::Representation
      
          property :reaction_batch_deleted_event_data, as: 'reactionBatchDeletedEventData', class: Google::Apis::ChatV1::ReactionBatchDeletedEventData, decorator: Google::Apis::ChatV1::ReactionBatchDeletedEventData::Representation
      
          property :reaction_created_event_data, as: 'reactionCreatedEventData', class: Google::Apis::ChatV1::ReactionCreatedEventData, decorator: Google::Apis::ChatV1::ReactionCreatedEventData::Representation
      
          property :reaction_deleted_event_data, as: 'reactionDeletedEventData', class: Google::Apis::ChatV1::ReactionDeletedEventData, decorator: Google::Apis::ChatV1::ReactionDeletedEventData::Representation
      
          property :space_batch_updated_event_data, as: 'spaceBatchUpdatedEventData', class: Google::Apis::ChatV1::SpaceBatchUpdatedEventData, decorator: Google::Apis::ChatV1::SpaceBatchUpdatedEventData::Representation
      
          property :space_updated_event_data, as: 'spaceUpdatedEventData', class: Google::Apis::ChatV1::SpaceUpdatedEventData, decorator: Google::Apis::ChatV1::SpaceUpdatedEventData::Representation
      
        end
      end
      
      class SpaceNotificationSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mute_setting, as: 'muteSetting'
          property :name, as: 'name'
          property :notification_setting, as: 'notificationSetting'
        end
      end
      
      class SpaceReadState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_read_time, as: 'lastReadTime'
          property :name, as: 'name'
        end
      end
      
      class SpaceUpdatedEventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StringInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value'
        end
      end
      
      class TextButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class TextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class Thread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :thread_key, as: 'threadKey'
        end
      end
      
      class ThreadReadState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_read_time, as: 'lastReadTime'
          property :name, as: 'name'
        end
      end
      
      class TimeInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :offset, as: 'offset'
        end
      end
      
      class UpdatedWidget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggestions, as: 'suggestions', class: Google::Apis::ChatV1::SelectionItems, decorator: Google::Apis::ChatV1::SelectionItems::Representation
      
          property :widget, as: 'widget'
        end
      end
      
      class UploadAttachmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filename, as: 'filename'
        end
      end
      
      class UploadAttachmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_data_ref, as: 'attachmentDataRef', class: Google::Apis::ChatV1::AttachmentDataRef, decorator: Google::Apis::ChatV1::AttachmentDataRef::Representation
      
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :domain_id, as: 'domainId'
          property :is_anonymous, as: 'isAnonymous'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class UserMentionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :user, as: 'user', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
        end
      end
      
      class WidgetMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::ChatV1::Button, decorator: Google::Apis::ChatV1::Button::Representation
      
          property :image, as: 'image', class: Google::Apis::ChatV1::Image, decorator: Google::Apis::ChatV1::Image::Representation
      
          property :key_value, as: 'keyValue', class: Google::Apis::ChatV1::KeyValue, decorator: Google::Apis::ChatV1::KeyValue::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::TextParagraph, decorator: Google::Apis::ChatV1::TextParagraph::Representation
      
        end
      end
    end
  end
end
