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
    module DisplayvideoV3
      
      # Configuration for custom Active View video viewability metrics.
      class ActiveViewVideoViewabilityMetricConfig
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the custom metric.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The minimum visible video duration required (in seconds) in order for an
        # impression to be recorded. You must specify minimum_duration, minimum_quartile
        # or both. If both are specified, an impression meets the metric criteria if
        # either requirement is met (whichever happens first).
        # Corresponds to the JSON property `minimumDuration`
        # @return [String]
        attr_accessor :minimum_duration
      
        # The minimum visible video duration required, based on the video quartiles, in
        # order for an impression to be recorded. You must specify minimum_duration,
        # minimum_quartile or both. If both are specified, an impression meets the
        # metric criteria if either requirement is met (whichever happens first).
        # Corresponds to the JSON property `minimumQuartile`
        # @return [String]
        attr_accessor :minimum_quartile
      
        # Required. The minimum percentage of the video ad's pixels visible on the
        # screen in order for an impression to be recorded.
        # Corresponds to the JSON property `minimumViewability`
        # @return [String]
        attr_accessor :minimum_viewability
      
        # Required. The minimum percentage of the video ad's volume required in order
        # for an impression to be recorded.
        # Corresponds to the JSON property `minimumVolume`
        # @return [String]
        attr_accessor :minimum_volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @minimum_duration = args[:minimum_duration] if args.key?(:minimum_duration)
          @minimum_quartile = args[:minimum_quartile] if args.key?(:minimum_quartile)
          @minimum_viewability = args[:minimum_viewability] if args.key?(:minimum_viewability)
          @minimum_volume = args[:minimum_volume] if args.key?(:minimum_volume)
        end
      end
      
      # A single ad group associated with a line item.
      class AdGroup
        include Google::Apis::Core::Hashable
      
        # The format of the ads in the ad group.
        # Corresponds to the JSON property `adGroupFormat`
        # @return [String]
        attr_accessor :ad_group_format
      
        # The unique ID of the ad group. Assigned by the system.
        # Corresponds to the JSON property `adGroupId`
        # @return [Fixnum]
        attr_accessor :ad_group_id
      
        # The unique ID of the advertiser the ad group belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that control the bid strategy. Bid strategy determines the bid price.
        # Corresponds to the JSON property `bidStrategy`
        # @return [Google::Apis::DisplayvideoV3::BiddingStrategy]
        attr_accessor :bid_strategy
      
        # The display name of the ad group. Must be UTF-8 encoded with a maximum size of
        # 255 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Controls whether or not the ad group can spend its budget and bid on inventory.
        # If the ad group's parent line item is not active, the ad group can't spend
        # its budget even if its own status is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # The unique ID of the line item that the ad group belongs to.
        # Corresponds to the JSON property `lineItemId`
        # @return [Fixnum]
        attr_accessor :line_item_id
      
        # The resource name of the ad group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The details of product feed.
        # Corresponds to the JSON property `productFeedData`
        # @return [Google::Apis::DisplayvideoV3::ProductFeedData]
        attr_accessor :product_feed_data
      
        # Settings that control the [optimized targeting](//support.google.com/
        # displayvideo/answer/12060859) settings of the line item.
        # Corresponds to the JSON property `targetingExpansion`
        # @return [Google::Apis::DisplayvideoV3::TargetingExpansionConfig]
        attr_accessor :targeting_expansion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_format = args[:ad_group_format] if args.key?(:ad_group_format)
          @ad_group_id = args[:ad_group_id] if args.key?(:ad_group_id)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @bid_strategy = args[:bid_strategy] if args.key?(:bid_strategy)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @name = args[:name] if args.key?(:name)
          @product_feed_data = args[:product_feed_data] if args.key?(:product_feed_data)
          @targeting_expansion = args[:targeting_expansion] if args.key?(:targeting_expansion)
        end
      end
      
      # A single ad associated with an ad group.
      class AdGroupAd
        include Google::Apis::Core::Hashable
      
        # The unique ID of the ad. Assigned by the system.
        # Corresponds to the JSON property `adGroupAdId`
        # @return [Fixnum]
        attr_accessor :ad_group_ad_id
      
        # The unique ID of the ad group that the ad belongs to.
        # Corresponds to the JSON property `adGroupId`
        # @return [Fixnum]
        attr_accessor :ad_group_id
      
        # List of URLs used by the ad.
        # Corresponds to the JSON property `adUrls`
        # @return [Array<Google::Apis::DisplayvideoV3::AdUrl>]
        attr_accessor :ad_urls
      
        # The unique ID of the advertiser the ad belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Details for an audio ad.
        # Corresponds to the JSON property `audioAd`
        # @return [Google::Apis::DisplayvideoV3::AudioAd]
        attr_accessor :audio_ad
      
        # Details for a bumper ad.
        # Corresponds to the JSON property `bumperAd`
        # @return [Google::Apis::DisplayvideoV3::BumperAd]
        attr_accessor :bumper_ad
      
        # The display name of the ad. Must be UTF-8 encoded with a maximum size of 255
        # bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ad sourced from a DV360 creative.
        # Corresponds to the JSON property `displayVideoSourceAd`
        # @return [Google::Apis::DisplayvideoV3::DisplayVideoSourceAd]
        attr_accessor :display_video_source_ad
      
        # The entity status of the ad.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Details for an in-stream ad.
        # Corresponds to the JSON property `inStreamAd`
        # @return [Google::Apis::DisplayvideoV3::InStreamAd]
        attr_accessor :in_stream_ad
      
        # Details for a Masthead Ad.
        # Corresponds to the JSON property `mastheadAd`
        # @return [Google::Apis::DisplayvideoV3::MastheadAd]
        attr_accessor :masthead_ad
      
        # The resource name of the ad.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Details for a non-skippable ad.
        # Corresponds to the JSON property `nonSkippableAd`
        # @return [Google::Apis::DisplayvideoV3::NonSkippableAd]
        attr_accessor :non_skippable_ad
      
        # Details for a video discovery ad.
        # Corresponds to the JSON property `videoDiscoverAd`
        # @return [Google::Apis::DisplayvideoV3::VideoDiscoveryAd]
        attr_accessor :video_discover_ad
      
        # Details for a video performance ad.
        # Corresponds to the JSON property `videoPerformanceAd`
        # @return [Google::Apis::DisplayvideoV3::VideoPerformanceAd]
        attr_accessor :video_performance_ad
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ad_id = args[:ad_group_ad_id] if args.key?(:ad_group_ad_id)
          @ad_group_id = args[:ad_group_id] if args.key?(:ad_group_id)
          @ad_urls = args[:ad_urls] if args.key?(:ad_urls)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @audio_ad = args[:audio_ad] if args.key?(:audio_ad)
          @bumper_ad = args[:bumper_ad] if args.key?(:bumper_ad)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_video_source_ad = args[:display_video_source_ad] if args.key?(:display_video_source_ad)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @in_stream_ad = args[:in_stream_ad] if args.key?(:in_stream_ad)
          @masthead_ad = args[:masthead_ad] if args.key?(:masthead_ad)
          @name = args[:name] if args.key?(:name)
          @non_skippable_ad = args[:non_skippable_ad] if args.key?(:non_skippable_ad)
          @video_discover_ad = args[:video_discover_ad] if args.key?(:video_discover_ad)
          @video_performance_ad = args[:video_performance_ad] if args.key?(:video_performance_ad)
        end
      end
      
      # Wrapper object associating an AssignedTargetingOption resource and the ad
      # group it is assigned to.
      class AdGroupAssignedTargetingOption
        include Google::Apis::Core::Hashable
      
        # The ID of the ad group the assigned targeting option is assigned to.
        # Corresponds to the JSON property `adGroupId`
        # @return [Fixnum]
        attr_accessor :ad_group_id
      
        # A single assigned targeting option, which defines the state of a targeting
        # option for an entity with targeting settings.
        # Corresponds to the JSON property `assignedTargetingOption`
        # @return [Google::Apis::DisplayvideoV3::AssignedTargetingOption]
        attr_accessor :assigned_targeting_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_id = args[:ad_group_id] if args.key?(:ad_group_id)
          @assigned_targeting_option = args[:assigned_targeting_option] if args.key?(:assigned_targeting_option)
        end
      end
      
      # Additional URLs related to the ad, including beacons.
      class AdUrl
        include Google::Apis::Core::Hashable
      
        # The type of the Ad URL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The URL string value.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Details of Scope3 (previously known as Adloox) brand safety settings.
      class Adloox
        include Google::Apis::Core::Hashable
      
        # Optional. Adult and Explicit Sexual Content [GARM](https://wfanet.org/
        # leadership/garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `adultExplicitSexualContent`
        # @return [String]
        attr_accessor :adult_explicit_sexual_content
      
        # Optional. Arms and Ammunition Content [GARM](https://wfanet.org/leadership/
        # garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `armsAmmunitionContent`
        # @return [String]
        attr_accessor :arms_ammunition_content
      
        # Optional. Crime and Harmful Acts Content [GARM](https://wfanet.org/leadership/
        # garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent`
        # @return [String]
        attr_accessor :crime_harmful_acts_individuals_society_human_rights_violations_content
      
        # Optional. Death, Injury, or Military Conflict Content [GARM](https://wfanet.
        # org/leadership/garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `deathInjuryMilitaryConflictContent`
        # @return [String]
        attr_accessor :death_injury_military_conflict_content
      
        # Optional. Debated Sensitive Social Issue Content [GARM](https://wfanet.org/
        # leadership/garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `debatedSensitiveSocialIssueContent`
        # @return [String]
        attr_accessor :debated_sensitive_social_issue_content
      
        # Optional. IAB viewability threshold for display ads.
        # Corresponds to the JSON property `displayIabViewability`
        # @return [String]
        attr_accessor :display_iab_viewability
      
        # Scope3 categories to exclude.
        # Corresponds to the JSON property `excludedAdlooxCategories`
        # @return [Array<String>]
        attr_accessor :excluded_adloox_categories
      
        # Optional. Scope3's fraud IVT MFA categories to exclude.
        # Corresponds to the JSON property `excludedFraudIvtMfaCategories`
        # @return [Array<String>]
        attr_accessor :excluded_fraud_ivt_mfa_categories
      
        # Optional. Hate Speech and Acts of Aggression Content [GARM](https://wfanet.org/
        # leadership/garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `hateSpeechActsAggressionContent`
        # @return [String]
        attr_accessor :hate_speech_acts_aggression_content
      
        # Optional. Illegal Drugs/Alcohol Content [GARM](https://wfanet.org/leadership/
        # garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `illegalDrugsTobaccoEcigarettesVapingAlcoholContent`
        # @return [String]
        attr_accessor :illegal_drugs_tobacco_ecigarettes_vaping_alcohol_content
      
        # Optional. Misinformation Content [GARM](https://wfanet.org/leadership/garm/
        # about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `misinformationContent`
        # @return [String]
        attr_accessor :misinformation_content
      
        # Optional. Obscenity and Profanity Content [GARM](https://wfanet.org/leadership/
        # garm/about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `obscenityProfanityContent`
        # @return [String]
        attr_accessor :obscenity_profanity_content
      
        # Optional. Online Piracy Content [GARM](https://wfanet.org/leadership/garm/
        # about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `onlinePiracyContent`
        # @return [String]
        attr_accessor :online_piracy_content
      
        # Optional. Spam or Harmful Content [GARM](https://wfanet.org/leadership/garm/
        # about-garm) risk ranges to exclude.
        # Corresponds to the JSON property `spamHarmfulContent`
        # @return [String]
        attr_accessor :spam_harmful_content
      
        # Optional. Terrorism Content [GARM](https://wfanet.org/leadership/garm/about-
        # garm) risk ranges to exclude.
        # Corresponds to the JSON property `terrorismContent`
        # @return [String]
        attr_accessor :terrorism_content
      
        # Optional. IAB viewability threshold for video ads.
        # Corresponds to the JSON property `videoIabViewability`
        # @return [String]
        attr_accessor :video_iab_viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult_explicit_sexual_content = args[:adult_explicit_sexual_content] if args.key?(:adult_explicit_sexual_content)
          @arms_ammunition_content = args[:arms_ammunition_content] if args.key?(:arms_ammunition_content)
          @crime_harmful_acts_individuals_society_human_rights_violations_content = args[:crime_harmful_acts_individuals_society_human_rights_violations_content] if args.key?(:crime_harmful_acts_individuals_society_human_rights_violations_content)
          @death_injury_military_conflict_content = args[:death_injury_military_conflict_content] if args.key?(:death_injury_military_conflict_content)
          @debated_sensitive_social_issue_content = args[:debated_sensitive_social_issue_content] if args.key?(:debated_sensitive_social_issue_content)
          @display_iab_viewability = args[:display_iab_viewability] if args.key?(:display_iab_viewability)
          @excluded_adloox_categories = args[:excluded_adloox_categories] if args.key?(:excluded_adloox_categories)
          @excluded_fraud_ivt_mfa_categories = args[:excluded_fraud_ivt_mfa_categories] if args.key?(:excluded_fraud_ivt_mfa_categories)
          @hate_speech_acts_aggression_content = args[:hate_speech_acts_aggression_content] if args.key?(:hate_speech_acts_aggression_content)
          @illegal_drugs_tobacco_ecigarettes_vaping_alcohol_content = args[:illegal_drugs_tobacco_ecigarettes_vaping_alcohol_content] if args.key?(:illegal_drugs_tobacco_ecigarettes_vaping_alcohol_content)
          @misinformation_content = args[:misinformation_content] if args.key?(:misinformation_content)
          @obscenity_profanity_content = args[:obscenity_profanity_content] if args.key?(:obscenity_profanity_content)
          @online_piracy_content = args[:online_piracy_content] if args.key?(:online_piracy_content)
          @spam_harmful_content = args[:spam_harmful_content] if args.key?(:spam_harmful_content)
          @terrorism_content = args[:terrorism_content] if args.key?(:terrorism_content)
          @video_iab_viewability = args[:video_iab_viewability] if args.key?(:video_iab_viewability)
        end
      end
      
      # A single advertiser in Display & Video 360 (DV360).
      class Advertiser
        include Google::Apis::Core::Hashable
      
        # Ad server related settings of an advertiser.
        # Corresponds to the JSON property `adServerConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserAdServerConfig]
        attr_accessor :ad_server_config
      
        # Output only. The unique ID of the advertiser. Assigned by the system.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Billing related settings of an advertiser.
        # Corresponds to the JSON property `billingConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserBillingConfig]
        attr_accessor :billing_config
      
        # Creatives related settings of an advertiser.
        # Corresponds to the JSON property `creativeConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserCreativeConfig]
        attr_accessor :creative_config
      
        # Settings that control how advertiser related data may be accessed.
        # Corresponds to the JSON property `dataAccessConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserDataAccessConfig]
        attr_accessor :data_access_config
      
        # Required. The display name of the advertiser. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not insertion orders and line items of the
        # advertiser can spend their budgets and bid on inventory. * Accepted values are
        # `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_PAUSED` and `
        # ENTITY_STATUS_SCHEDULED_FOR_DELETION`. * If set to `
        # ENTITY_STATUS_SCHEDULED_FOR_DELETION`, the advertiser will be deleted 30 days
        # from when it was first scheduled for deletion.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # General settings of an advertiser.
        # Corresponds to the JSON property `generalConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserGeneralConfig]
        attr_accessor :general_config
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV3::IntegrationDetails]
        attr_accessor :integration_details
      
        # Output only. The resource name of the advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The unique ID of the partner that the advertiser belongs
        # to.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Whether integration with Mediaocean (Prisma) is enabled. By enabling this, you
        # agree to the following: On behalf of my company, I authorize Mediaocean (
        # Prisma) to send budget segment plans to Google, and I authorize Google to send
        # corresponding reporting and invoices from DV360 to Mediaocean for the purposes
        # of budget planning, billing, and reconciliation for this advertiser.
        # Corresponds to the JSON property `prismaEnabled`
        # @return [Boolean]
        attr_accessor :prisma_enabled
        alias_method :prisma_enabled?, :prisma_enabled
      
        # Targeting settings related to ad serving of an advertiser.
        # Corresponds to the JSON property `servingConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserTargetingConfig]
        attr_accessor :serving_config
      
        # Output only. The timestamp when the advertiser was last updated. Assigned by
        # the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_server_config = args[:ad_server_config] if args.key?(:ad_server_config)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @billing_config = args[:billing_config] if args.key?(:billing_config)
          @creative_config = args[:creative_config] if args.key?(:creative_config)
          @data_access_config = args[:data_access_config] if args.key?(:data_access_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @general_config = args[:general_config] if args.key?(:general_config)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @prisma_enabled = args[:prisma_enabled] if args.key?(:prisma_enabled)
          @serving_config = args[:serving_config] if args.key?(:serving_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Ad server related settings of an advertiser.
      class AdvertiserAdServerConfig
        include Google::Apis::Core::Hashable
      
        # Settings for advertisers that use both Campaign Manager 360 (CM360) and third-
        # party ad servers.
        # Corresponds to the JSON property `cmHybridConfig`
        # @return [Google::Apis::DisplayvideoV3::CmHybridConfig]
        attr_accessor :cm_hybrid_config
      
        # Settings for advertisers that use third-party ad servers only.
        # Corresponds to the JSON property `thirdPartyOnlyConfig`
        # @return [Google::Apis::DisplayvideoV3::ThirdPartyOnlyConfig]
        attr_accessor :third_party_only_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_hybrid_config = args[:cm_hybrid_config] if args.key?(:cm_hybrid_config)
          @third_party_only_config = args[:third_party_only_config] if args.key?(:third_party_only_config)
        end
      end
      
      # Billing related settings of an advertiser.
      class AdvertiserBillingConfig
        include Google::Apis::Core::Hashable
      
        # Required. The ID of a billing profile assigned to the advertiser.
        # Corresponds to the JSON property `billingProfileId`
        # @return [Fixnum]
        attr_accessor :billing_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_profile_id = args[:billing_profile_id] if args.key?(:billing_profile_id)
        end
      end
      
      # Creatives related settings of an advertiser.
      class AdvertiserCreativeConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not the advertiser is enabled for dynamic creatives.
        # Corresponds to the JSON property `dynamicCreativeEnabled`
        # @return [Boolean]
        attr_accessor :dynamic_creative_enabled
        alias_method :dynamic_creative_enabled?, :dynamic_creative_enabled
      
        # An ID for configuring campaign monitoring provided by Integral Ad Service (IAS)
        # . The DV360 system will append an IAS "Campaign Monitor" tag containing this
        # ID to the creative tag.
        # Corresponds to the JSON property `iasClientId`
        # @return [Fixnum]
        attr_accessor :ias_client_id
      
        # Whether or not to disable Google's About this Ad feature that adds badging (to
        # identify the content as an ad) and transparency information (on interaction
        # with About this Ad) to your ads for Online Behavioral Advertising (OBA) and
        # regulatory requirements. About this Ad gives users greater control over the
        # ads they see and helps you explain why they're seeing your ad. [Learn more](//
        # support.google.com/displayvideo/answer/14315795). If you choose to set this
        # field to `true`, note that ads served through Display & Video 360 must comply
        # to the following: * Be Online Behavioral Advertising (OBA) compliant, as per
        # your contract with Google Marketing Platform. * In the European Economic Area (
        # EEA), include transparency information and a mechanism for users to report
        # illegal content in ads. If using an alternative ad badging, transparency, and
        # reporting solution, you must ensure it includes the required transparency
        # information and illegal content flagging mechanism and that you notify Google
        # of any illegal content reports using the appropriate [form](//support.google.
        # com/legal/troubleshooter/1114905?sjid=6787484030557261960-EU#ts=2981967%
        # 2C2982031%2C12980091).
        # Corresponds to the JSON property `obaComplianceDisabled`
        # @return [Boolean]
        attr_accessor :oba_compliance_disabled
        alias_method :oba_compliance_disabled?, :oba_compliance_disabled
      
        # By setting this field to `true`, you, on behalf of your company, authorize
        # Google to use video creatives associated with this Display & Video 360
        # advertiser to provide reporting and features related to the advertiser's
        # television campaigns. Applicable only when the advertiser has a CM360 hybrid
        # ad server configuration.
        # Corresponds to the JSON property `videoCreativeDataSharingAuthorized`
        # @return [Boolean]
        attr_accessor :video_creative_data_sharing_authorized
        alias_method :video_creative_data_sharing_authorized?, :video_creative_data_sharing_authorized
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_creative_enabled = args[:dynamic_creative_enabled] if args.key?(:dynamic_creative_enabled)
          @ias_client_id = args[:ias_client_id] if args.key?(:ias_client_id)
          @oba_compliance_disabled = args[:oba_compliance_disabled] if args.key?(:oba_compliance_disabled)
          @video_creative_data_sharing_authorized = args[:video_creative_data_sharing_authorized] if args.key?(:video_creative_data_sharing_authorized)
        end
      end
      
      # Settings that control how advertiser related data may be accessed.
      class AdvertiserDataAccessConfig
        include Google::Apis::Core::Hashable
      
        # Structured Data Files (SDF) settings of an advertiser.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV3::AdvertiserSdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # General settings of an advertiser.
      class AdvertiserGeneralConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Advertiser's currency in ISO 4217 format. Accepted codes
        # and the currencies they represent are: Currency Code : Currency Name * `ARS` :
        # Argentine Peso * `AUD` : Australian Dollar * `BRL` : Brazilian Real * `CAD` :
        # Canadian Dollar * `CHF` : Swiss Franc * `CLP` : Chilean Peso * `CNY` : Chinese
        # Yuan * `COP` : Colombian Peso * `CZK` : Czech Koruna * `DKK` : Danish Krone * `
        # EGP` : Egyption Pound * `EUR` : Euro * `GBP` : British Pound * `HKD` : Hong
        # Kong Dollar * `HUF` : Hungarian Forint * `IDR` : Indonesian Rupiah * `ILS` :
        # Israeli Shekel * `INR` : Indian Rupee * `JPY` : Japanese Yen * `KRW` : South
        # Korean Won * `MXN` : Mexican Pesos * `MYR` : Malaysian Ringgit * `NGN` :
        # Nigerian Naira * `NOK` : Norwegian Krone * `NZD` : New Zealand Dollar * `PEN` :
        # Peruvian Nuevo Sol * `PLN` : Polish Zloty * `RON` : New Romanian Leu * `RUB` :
        # Russian Ruble * `SEK` : Swedish Krona * `TRY` : Turkish Lira * `TWD` : New
        # Taiwan Dollar * `USD` : US Dollar * `ZAR` : South African Rand
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Required. The domain URL of the advertiser's primary website. The system will
        # send this information to publishers that require website URL to associate a
        # campaign with an advertiser. Provide a URL with no path or query string,
        # beginning with `http:` or `https:`. For example, http://www.example.com
        # Corresponds to the JSON property `domainUrl`
        # @return [String]
        attr_accessor :domain_url
      
        # Output only. The standard TZ database name of the advertiser's time zone. For
        # example, `America/New_York`. See more at: https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones For CM360 hybrid advertisers, the time zone is
        # the same as that of the associated CM360 account; for third-party only
        # advertisers, the time zone is the same as that of the parent partner.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @domain_url = args[:domain_url] if args.key?(:domain_url)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Structured Data Files (SDF) settings of an advertiser.
      class AdvertiserSdfConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not this advertiser overrides the SDF configuration of its parent
        # partner. By default, an advertiser inherits the SDF configuration from the
        # parent partner. To override the partner configuration, set this field to `true`
        # and provide the new configuration in sdfConfig.
        # Corresponds to the JSON property `overridePartnerSdfConfig`
        # @return [Boolean]
        attr_accessor :override_partner_sdf_config
        alias_method :override_partner_sdf_config?, :override_partner_sdf_config
      
        # Structured Data File (SDF) related settings.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV3::SdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @override_partner_sdf_config = args[:override_partner_sdf_config] if args.key?(:override_partner_sdf_config)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # Targeting settings related to ad serving of an advertiser.
      class AdvertiserTargetingConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not connected TV devices are exempt from viewability targeting for
        # all video line items under the advertiser.
        # Corresponds to the JSON property `exemptTvFromViewabilityTargeting`
        # @return [Boolean]
        attr_accessor :exempt_tv_from_viewability_targeting
        alias_method :exempt_tv_from_viewability_targeting?, :exempt_tv_from_viewability_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempt_tv_from_viewability_targeting = args[:exempt_tv_from_viewability_targeting] if args.key?(:exempt_tv_from_viewability_targeting)
        end
      end
      
      # Represents a targetable age range. This will be populated in the details field
      # of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AGE_RANGE`
      # .
      class AgeRangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The age range of an audience. We only support targeting a continuous
        # age range of an audience. Thus, the age range represented in this field can be
        # 1) targeted solely, or, 2) part of a larger continuous age range. The reach of
        # a continuous age range targeting can be expanded by also targeting an audience
        # of an unknown age.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
        end
      end
      
      # Represents a targetable age range. This will be populated in the
      # age_range_details field when targeting_type is `TARGETING_TYPE_AGE_RANGE`.
      class AgeRangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The age range of an audience.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
        end
      end
      
      # Rule-based algorithm.
      class AlgorithmRules
        include Google::Apis::Core::Hashable
      
        # Attribution model for the algorithm. This field is only supported for
        # allowlisted partners.
        # Corresponds to the JSON property `attributionModelId`
        # @return [Fixnum]
        attr_accessor :attribution_model_id
      
        # A ruleset consisting of a list of rules and how to aggregate the resulting
        # values.
        # Corresponds to the JSON property `impressionSignalRuleset`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesRuleset]
        attr_accessor :impression_signal_ruleset
      
        # A ruleset consisting of a list of rules and how to aggregate the resulting
        # values.
        # Corresponds to the JSON property `postImpressionSignalRuleset`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesRuleset]
        attr_accessor :post_impression_signal_ruleset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_model_id = args[:attribution_model_id] if args.key?(:attribution_model_id)
          @impression_signal_ruleset = args[:impression_signal_ruleset] if args.key?(:impression_signal_ruleset)
          @post_impression_signal_ruleset = args[:post_impression_signal_ruleset] if args.key?(:post_impression_signal_ruleset)
        end
      end
      
      # A value to compare the signal to.
      class AlgorithmRulesComparisonValue
        include Google::Apis::Core::Hashable
      
        # Boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Dimensions.
        # Corresponds to the JSON property `creativeDimensionValue`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :creative_dimension_value
      
        # Representation of time defined by day of the week and hour of the day.
        # Corresponds to the JSON property `dayAndTimeValue`
        # @return [Google::Apis::DisplayvideoV3::DayAndTime]
        attr_accessor :day_and_time_value
      
        # Device type value.
        # Corresponds to the JSON property `deviceTypeValue`
        # @return [String]
        attr_accessor :device_type_value
      
        # Double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Environment value.
        # Corresponds to the JSON property `environmentValue`
        # @return [String]
        attr_accessor :environment_value
      
        # Exchange value.
        # Corresponds to the JSON property `exchangeValue`
        # @return [String]
        attr_accessor :exchange_value
      
        # Integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Ad position value.
        # Corresponds to the JSON property `onScreenPositionValue`
        # @return [String]
        attr_accessor :on_screen_position_value
      
        # String value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Video player size value. This field is only supported for allowlisted partners.
        # Corresponds to the JSON property `videoPlayerSizeValue`
        # @return [String]
        attr_accessor :video_player_size_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @creative_dimension_value = args[:creative_dimension_value] if args.key?(:creative_dimension_value)
          @day_and_time_value = args[:day_and_time_value] if args.key?(:day_and_time_value)
          @device_type_value = args[:device_type_value] if args.key?(:device_type_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @environment_value = args[:environment_value] if args.key?(:environment_value)
          @exchange_value = args[:exchange_value] if args.key?(:exchange_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @on_screen_position_value = args[:on_screen_position_value] if args.key?(:on_screen_position_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @video_player_size_value = args[:video_player_size_value] if args.key?(:video_player_size_value)
        end
      end
      
      # The rule to score impressions based on Floodlight conversion events.
      class AlgorithmRulesFloodlightActivityConversionSignal
        include Google::Apis::Core::Hashable
      
        # Required. The type of conversions to be used in impression value computation,
        # for example, post-click conversions.
        # Corresponds to the JSON property `conversionCounting`
        # @return [String]
        attr_accessor :conversion_counting
      
        # Required. The way to acquire value from the floodlight activity, for example,
        # count of the conversion.
        # Corresponds to the JSON property `countingMethod`
        # @return [String]
        attr_accessor :counting_method
      
        # Required. Id of the floodlight activity.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [Fixnum]
        attr_accessor :floodlight_activity_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_counting = args[:conversion_counting] if args.key?(:conversion_counting)
          @counting_method = args[:counting_method] if args.key?(:counting_method)
          @floodlight_activity_id = args[:floodlight_activity_id] if args.key?(:floodlight_activity_id)
        end
      end
      
      # Set of conditions. The return value of the rule is either: * The return value
      # for single met condition or * The defined default return value if no
      # conditions are met.
      class AlgorithmRulesRule
        include Google::Apis::Core::Hashable
      
        # List of conditions in this rule. The criteria among conditions should be
        # mutually exclusive.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::DisplayvideoV3::AlgorithmRulesRuleCondition>]
        attr_accessor :conditions
      
        # Adjusted value of the signal used for rule evaluation.
        # Corresponds to the JSON property `defaultReturnValue`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue]
        attr_accessor :default_return_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @default_return_value = args[:default_return_value] if args.key?(:default_return_value)
        end
      end
      
      # Set of signal comparisons. Equivalent of an `if` statement.
      class AlgorithmRulesRuleCondition
        include Google::Apis::Core::Hashable
      
        # Adjusted value of the signal used for rule evaluation.
        # Corresponds to the JSON property `returnValue`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue]
        attr_accessor :return_value
      
        # List of comparisons that build `if` statement condition. The comparisons are
        # combined into a single condition with `AND` logical operators.
        # Corresponds to the JSON property `signalComparisons`
        # @return [Array<Google::Apis::DisplayvideoV3::AlgorithmRulesSignalComparison>]
        attr_accessor :signal_comparisons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @return_value = args[:return_value] if args.key?(:return_value)
          @signal_comparisons = args[:signal_comparisons] if args.key?(:signal_comparisons)
        end
      end
      
      # A ruleset consisting of a list of rules and how to aggregate the resulting
      # values.
      class AlgorithmRulesRuleset
        include Google::Apis::Core::Hashable
      
        # How to aggregate values of evaluated rules.
        # Corresponds to the JSON property `aggregationType`
        # @return [String]
        attr_accessor :aggregation_type
      
        # Maximum value the ruleset can evaluate to.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # List of rules to generate the impression value.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DisplayvideoV3::AlgorithmRulesRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_type = args[:aggregation_type] if args.key?(:aggregation_type)
          @max_value = args[:max_value] if args.key?(:max_value)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Signal used to evaluate rules.
      class AlgorithmRulesSignal
        include Google::Apis::Core::Hashable
      
        # Signal based on active views. This field is only supported for allowlisted
        # partners.
        # Corresponds to the JSON property `activeViewSignal`
        # @return [String]
        attr_accessor :active_view_signal
      
        # Signal based on clicks. This field is only supported for allowlisted partners.
        # Corresponds to the JSON property `clickSignal`
        # @return [String]
        attr_accessor :click_signal
      
        # Signal based on impressions.
        # Corresponds to the JSON property `impressionSignal`
        # @return [String]
        attr_accessor :impression_signal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_signal = args[:active_view_signal] if args.key?(:active_view_signal)
          @click_signal = args[:click_signal] if args.key?(:click_signal)
          @impression_signal = args[:impression_signal] if args.key?(:impression_signal)
        end
      end
      
      # A single comparison. The comparison compares the `signal` to the `
      # comparisonValue`. The comparison of `siteId==123` is represented with the
      # following field values: * `signal` has an `impressionSignal` of `SITE_ID`. * `
      # comparisonOperator` is set to `EQUAL`. * `comparisonValue` is set to 123.
      class AlgorithmRulesSignalComparison
        include Google::Apis::Core::Hashable
      
        # Operator used to compare the two values. In the resulting experession, the `
        # signal` will be the first value and the `comparisonValue will be the second.
        # Corresponds to the JSON property `comparisonOperator`
        # @return [String]
        attr_accessor :comparison_operator
      
        # A value to compare the signal to.
        # Corresponds to the JSON property `comparisonValue`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesComparisonValue]
        attr_accessor :comparison_value
      
        # Signal used to evaluate rules.
        # Corresponds to the JSON property `signal`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesSignal]
        attr_accessor :signal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparison_operator = args[:comparison_operator] if args.key?(:comparison_operator)
          @comparison_value = args[:comparison_value] if args.key?(:comparison_value)
          @signal = args[:signal] if args.key?(:signal)
        end
      end
      
      # Adjusted value of the signal used for rule evaluation.
      class AlgorithmRulesSignalValue
        include Google::Apis::Core::Hashable
      
        # Signal based on active views. Only `TIME_ON_SCREEN` is supported. This field
        # is only supported for allowlisted partners.
        # Corresponds to the JSON property `activeViewSignal`
        # @return [String]
        attr_accessor :active_view_signal
      
        # The rule to score impressions based on Floodlight conversion events.
        # Corresponds to the JSON property `floodlightActivityConversionSignal`
        # @return [Google::Apis::DisplayvideoV3::AlgorithmRulesFloodlightActivityConversionSignal]
        attr_accessor :floodlight_activity_conversion_signal
      
        # Value to use as result.
        # Corresponds to the JSON property `number`
        # @return [Float]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_signal = args[:active_view_signal] if args.key?(:active_view_signal)
          @floodlight_activity_conversion_signal = args[:floodlight_activity_conversion_signal] if args.key?(:floodlight_activity_conversion_signal)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Details for assigned app targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_APP`.
      class AppAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the app. Android's Play store app uses bundle ID, for
        # example `com.google.android.gm`. Apple's App store app ID uses 9 digit string,
        # for example `422689480`.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Indicates the platform of the targeted app. If this field is not specified,
        # the app platform will be assumed to be mobile (i.e., Android or iOS), and we
        # will derive the appropriate mobile platform from the app ID.
        # Corresponds to the JSON property `appPlatform`
        # @return [String]
        attr_accessor :app_platform
      
        # Output only. The display name of the app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_platform = args[:app_platform] if args.key?(:app_platform)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Details for assigned app category targeting option. This will be populated in
      # the app_category_details field of an AssignedTargetingOption when
      # targeting_type is `TARGETING_TYPE_APP_CATEGORY`.
      class AppCategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the app category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_APP_CATEGORY`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable collection of apps. A collection lets you target
      # dynamic groups of related apps that are maintained by the platform, for
      # example `All Apps/Google Play/Games`. This will be populated in the
      # app_category_details field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`
      # .
      class AppCategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the app collection.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single asset.
      class Asset
        include Google::Apis::Core::Hashable
      
        # The asset content. For uploaded assets, the content is the serving path.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Media ID of the uploaded asset. This is a unique identifier for the asset.
        # This ID can be passed to other API calls, e.g. CreateCreative to associate the
        # asset with a creative. The Media ID space updated on **April 5, 2023**. Update
        # media IDs cached before **April 5, 2023** by retrieving the new media ID from
        # associated creative resources or re-uploading the asset.
        # Corresponds to the JSON property `mediaId`
        # @return [Fixnum]
        attr_accessor :media_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @media_id = args[:media_id] if args.key?(:media_id)
        end
      end
      
      # Asset association for the creative.
      class AssetAssociation
        include Google::Apis::Core::Hashable
      
        # A single asset.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::DisplayvideoV3::Asset]
        attr_accessor :asset
      
        # Optional. The role of this asset for the creative.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An assignment between a targetable inventory source and an inventory source
      # group.
      class AssignedInventorySource
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the assigned inventory source. The ID is only
        # unique within a given inventory source group. It may be reused in other
        # contexts.
        # Corresponds to the JSON property `assignedInventorySourceId`
        # @return [Fixnum]
        attr_accessor :assigned_inventory_source_id
      
        # Required. The ID of the inventory source entity being targeted.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [String]
        attr_accessor :inventory_source_id
      
        # Output only. The resource name of the assigned inventory source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_source_id = args[:assigned_inventory_source_id] if args.key?(:assigned_inventory_source_id)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An assignment between a location list and a relevant targeting option.
      class AssignedLocation
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the assigned location. The ID is only unique
        # within a location list. It may be reused in other contexts.
        # Corresponds to the JSON property `assignedLocationId`
        # @return [Fixnum]
        attr_accessor :assigned_location_id
      
        # Output only. The resource name of the assigned location.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The ID of the targeting option assigned to the location list.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_location_id = args[:assigned_location_id] if args.key?(:assigned_location_id)
          @name = args[:name] if args.key?(:name)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # A single assigned targeting option, which defines the state of a targeting
      # option for an entity with targeting settings.
      class AssignedTargetingOption
        include Google::Apis::Core::Hashable
      
        # Represents a targetable age range. This will be populated in the details field
        # of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AGE_RANGE`
        # .
        # Corresponds to the JSON property `ageRangeDetails`
        # @return [Google::Apis::DisplayvideoV3::AgeRangeAssignedTargetingOptionDetails]
        attr_accessor :age_range_details
      
        # Details for assigned app category targeting option. This will be populated in
        # the app_category_details field of an AssignedTargetingOption when
        # targeting_type is `TARGETING_TYPE_APP_CATEGORY`.
        # Corresponds to the JSON property `appCategoryDetails`
        # @return [Google::Apis::DisplayvideoV3::AppCategoryAssignedTargetingOptionDetails]
        attr_accessor :app_category_details
      
        # Details for assigned app targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_APP`.
        # Corresponds to the JSON property `appDetails`
        # @return [Google::Apis::DisplayvideoV3::AppAssignedTargetingOptionDetails]
        attr_accessor :app_details
      
        # Output only. The unique ID of the assigned targeting option. The ID is only
        # unique within a given resource and targeting type. It may be reused in other
        # contexts.
        # Corresponds to the JSON property `assignedTargetingOptionId`
        # @return [String]
        attr_accessor :assigned_targeting_option_id
      
        # Output only. An alias for the assigned_targeting_option_id. This value can be
        # used in place of `assignedTargetingOptionId` when retrieving or deleting
        # existing targeting. This field will only be supported for all assigned
        # targeting options of the following targeting types: * `
        # TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_DEVICE_TYPE` * `
        # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        # * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        # TARGETING_TYPE_HOUSEHOLD_INCOME` * `TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        # TARGETING_TYPE_OMID` * `TARGETING_TYPE_PARENTAL_STATUS` * `
        # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `TARGETING_TYPE_VIEWABILITY` This field is
        # also supported for line item assigned targeting options of the following
        # targeting types: * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`
        # Corresponds to the JSON property `assignedTargetingOptionIdAlias`
        # @return [String]
        attr_accessor :assigned_targeting_option_id_alias
      
        # Assigned audience group targeting option details. This will be populated in
        # the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_AUDIENCE_GROUP`. The relation between each group is UNION,
        # except for excluded_first_and_third_party_audience_group and
        # excluded_google_audience_group, of which COMPLEMENT is used as an INTERSECTION
        # with other groups.
        # Corresponds to the JSON property `audienceGroupDetails`
        # @return [Google::Apis::DisplayvideoV3::AudienceGroupAssignedTargetingOptionDetails]
        attr_accessor :audience_group_details
      
        # Details for audio content type assigned targeting option. This will be
        # populated in the audio_content_type_details field when targeting_type is `
        # TARGETING_TYPE_AUDIO_CONTENT_TYPE`. Explicitly targeting all options is not
        # supported. Remove all audio content type targeting options to achieve this
        # effect.
        # Corresponds to the JSON property `audioContentTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::AudioContentTypeAssignedTargetingOptionDetails]
        attr_accessor :audio_content_type_details
      
        # Represents an assigned authorized seller status. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`. If a resource does not have an `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` assigned targeting option, it is
        # using the "Authorized Direct Sellers and Resellers" option.
        # Corresponds to the JSON property `authorizedSellerStatusDetails`
        # @return [Google::Apis::DisplayvideoV3::AuthorizedSellerStatusAssignedTargetingOptionDetails]
        attr_accessor :authorized_seller_status_details
      
        # Details for assigned browser targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `browserDetails`
        # @return [Google::Apis::DisplayvideoV3::BrowserAssignedTargetingOptionDetails]
        attr_accessor :browser_details
      
        # Details for assigned Business chain targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_BUSINESS_CHAIN`.
        # Corresponds to the JSON property `businessChainDetails`
        # @return [Google::Apis::DisplayvideoV3::BusinessChainAssignedTargetingOptionDetails]
        attr_accessor :business_chain_details
      
        # Details for assigned carrier and ISP targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `carrierAndIspDetails`
        # @return [Google::Apis::DisplayvideoV3::CarrierAndIspAssignedTargetingOptionDetails]
        attr_accessor :carrier_and_isp_details
      
        # Assigned category targeting option details. This will be populated in the
        # category_details field when targeting_type is `TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `categoryDetails`
        # @return [Google::Apis::DisplayvideoV3::CategoryAssignedTargetingOptionDetails]
        attr_accessor :category_details
      
        # Details for assigned channel targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_CHANNEL`.
        # Corresponds to the JSON property `channelDetails`
        # @return [Google::Apis::DisplayvideoV3::ChannelAssignedTargetingOptionDetails]
        attr_accessor :channel_details
      
        # Details for content duration assigned targeting option. This will be populated
        # in the content_duration_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_DURATION`. Explicitly targeting all options is not
        # supported. Remove all content duration targeting options to achieve this
        # effect.
        # Corresponds to the JSON property `contentDurationDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentDurationAssignedTargetingOptionDetails]
        attr_accessor :content_duration_details
      
        # Details for content genre assigned targeting option. This will be populated in
        # the content_genre_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_GENRE`. Explicitly targeting all options is not
        # supported. Remove all content genre targeting options to achieve this effect.
        # Corresponds to the JSON property `contentGenreDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentGenreAssignedTargetingOptionDetails]
        attr_accessor :content_genre_details
      
        # Assigned content instream position targeting option details. This will be
        # populated in the content_instream_position_details field when targeting_type
        # is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
        # Corresponds to the JSON property `contentInstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentInstreamPositionAssignedTargetingOptionDetails]
        attr_accessor :content_instream_position_details
      
        # Assigned content outstream position targeting option details. This will be
        # populated in the content_outstream_position_details field when targeting_type
        # is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
        # Corresponds to the JSON property `contentOutstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentOutstreamPositionAssignedTargetingOptionDetails]
        attr_accessor :content_outstream_position_details
      
        # Details for content stream type assigned targeting option. This will be
        # populated in the content_stream_type_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_STREAM_TYPE`. Explicitly targeting all options is not
        # supported. Remove all content stream type targeting options to achieve this
        # effect.
        # Corresponds to the JSON property `contentStreamTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentStreamTypeAssignedTargetingOptionDetails]
        attr_accessor :content_stream_type_details
      
        # Targeting details for content theme. This will be populated in the details
        # field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.
        # Corresponds to the JSON property `contentThemeExclusionDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentThemeAssignedTargetingOptionDetails]
        attr_accessor :content_theme_exclusion_details
      
        # Representation of a segment of time defined on a specific day of the week and
        # with a start and end time. The time represented by `start_hour` must be before
        # the time represented by `end_hour`.
        # Corresponds to the JSON property `dayAndTimeDetails`
        # @return [Google::Apis::DisplayvideoV3::DayAndTimeAssignedTargetingOptionDetails]
        attr_accessor :day_and_time_details
      
        # Assigned device make and model targeting option details. This will be
        # populated in the device_make_model_details field when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `deviceMakeModelDetails`
        # @return [Google::Apis::DisplayvideoV3::DeviceMakeModelAssignedTargetingOptionDetails]
        attr_accessor :device_make_model_details
      
        # Targeting details for device type. This will be populated in the details field
        # of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_TYPE`.
        # Corresponds to the JSON property `deviceTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::DeviceTypeAssignedTargetingOptionDetails]
        attr_accessor :device_type_details
      
        # Targeting details for digital content label. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
        # Corresponds to the JSON property `digitalContentLabelExclusionDetails`
        # @return [Google::Apis::DisplayvideoV3::DigitalContentLabelAssignedTargetingOptionDetails]
        attr_accessor :digital_content_label_exclusion_details
      
        # Assigned environment targeting option details. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_ENVIRONMENT`.
        # Corresponds to the JSON property `environmentDetails`
        # @return [Google::Apis::DisplayvideoV3::EnvironmentAssignedTargetingOptionDetails]
        attr_accessor :environment_details
      
        # Details for assigned exchange targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_EXCHANGE`.
        # Corresponds to the JSON property `exchangeDetails`
        # @return [Google::Apis::DisplayvideoV3::ExchangeAssignedTargetingOptionDetails]
        attr_accessor :exchange_details
      
        # Details for assigned gender targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_GENDER`.
        # Corresponds to the JSON property `genderDetails`
        # @return [Google::Apis::DisplayvideoV3::GenderAssignedTargetingOptionDetails]
        attr_accessor :gender_details
      
        # Details for assigned geographic region targeting option. This will be
        # populated in the details field of an AssignedTargetingOption when
        # targeting_type is `TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `geoRegionDetails`
        # @return [Google::Apis::DisplayvideoV3::GeoRegionAssignedTargetingOptionDetails]
        attr_accessor :geo_region_details
      
        # Details for assigned household income targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_HOUSEHOLD_INCOME`.
        # Corresponds to the JSON property `householdIncomeDetails`
        # @return [Google::Apis::DisplayvideoV3::HouseholdIncomeAssignedTargetingOptionDetails]
        attr_accessor :household_income_details
      
        # Output only. The inheritance status of the assigned targeting option.
        # Corresponds to the JSON property `inheritance`
        # @return [String]
        attr_accessor :inheritance
      
        # Targeting details for inventory source. This will be populated in the details
        # field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_INVENTORY_SOURCE`.
        # Corresponds to the JSON property `inventorySourceDetails`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceAssignedTargetingOptionDetails]
        attr_accessor :inventory_source_details
      
        # Targeting details for inventory source group. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
        # Corresponds to the JSON property `inventorySourceGroupDetails`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceGroupAssignedTargetingOptionDetails]
        attr_accessor :inventory_source_group_details
      
        # Details for assigned keyword targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_KEYWORD`.
        # Corresponds to the JSON property `keywordDetails`
        # @return [Google::Apis::DisplayvideoV3::KeywordAssignedTargetingOptionDetails]
        attr_accessor :keyword_details
      
        # Details for assigned language targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `languageDetails`
        # @return [Google::Apis::DisplayvideoV3::LanguageAssignedTargetingOptionDetails]
        attr_accessor :language_details
      
        # Output only. The resource name for this assigned targeting option.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Details for native content position assigned targeting option. This will be
        # populated in the native_content_position_details field when targeting_type is `
        # TARGETING_TYPE_NATIVE_CONTENT_POSITION`. Explicitly targeting all options is
        # not supported. Remove all native content position targeting options to achieve
        # this effect.
        # Corresponds to the JSON property `nativeContentPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::NativeContentPositionAssignedTargetingOptionDetails]
        attr_accessor :native_content_position_details
      
        # Targeting details for negative keyword list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.
        # Corresponds to the JSON property `negativeKeywordListDetails`
        # @return [Google::Apis::DisplayvideoV3::NegativeKeywordListAssignedTargetingOptionDetails]
        attr_accessor :negative_keyword_list_details
      
        # Represents a targetable Open Measurement enabled inventory type. This will be
        # populated in the details field of an AssignedTargetingOption when
        # targeting_type is `TARGETING_TYPE_OMID`.
        # Corresponds to the JSON property `omidDetails`
        # @return [Google::Apis::DisplayvideoV3::OmidAssignedTargetingOptionDetails]
        attr_accessor :omid_details
      
        # On screen position targeting option details. This will be populated in the
        # on_screen_position_details field when targeting_type is `
        # TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `onScreenPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::OnScreenPositionAssignedTargetingOptionDetails]
        attr_accessor :on_screen_position_details
      
        # Assigned operating system targeting option details. This will be populated in
        # the operating_system_details field when targeting_type is `
        # TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `operatingSystemDetails`
        # @return [Google::Apis::DisplayvideoV3::OperatingSystemAssignedTargetingOptionDetails]
        attr_accessor :operating_system_details
      
        # Details for assigned parental status targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_PARENTAL_STATUS`.
        # Corresponds to the JSON property `parentalStatusDetails`
        # @return [Google::Apis::DisplayvideoV3::ParentalStatusAssignedTargetingOptionDetails]
        attr_accessor :parental_status_details
      
        # Details for assigned POI targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_POI`.
        # Corresponds to the JSON property `poiDetails`
        # @return [Google::Apis::DisplayvideoV3::PoiAssignedTargetingOptionDetails]
        attr_accessor :poi_details
      
        # Targeting details for proximity location list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
        # Corresponds to the JSON property `proximityLocationListDetails`
        # @return [Google::Apis::DisplayvideoV3::ProximityLocationListAssignedTargetingOptionDetails]
        attr_accessor :proximity_location_list_details
      
        # Targeting details for regional location list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
        # Corresponds to the JSON property `regionalLocationListDetails`
        # @return [Google::Apis::DisplayvideoV3::RegionalLocationListAssignedTargetingOptionDetails]
        attr_accessor :regional_location_list_details
      
        # Targeting details for sensitive category. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
        # Corresponds to the JSON property `sensitiveCategoryExclusionDetails`
        # @return [Google::Apis::DisplayvideoV3::SensitiveCategoryAssignedTargetingOptionDetails]
        attr_accessor :sensitive_category_exclusion_details
      
        # Details for session position assigned targeting option. This will be populated
        # in the session_position_details field when targeting_type is `
        # TARGETING_TYPE_SESSION_POSITION`.
        # Corresponds to the JSON property `sessionPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::SessionPositionAssignedTargetingOptionDetails]
        attr_accessor :session_position_details
      
        # Details for assigned sub-exchange targeting option. This will be populated in
        # the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `subExchangeDetails`
        # @return [Google::Apis::DisplayvideoV3::SubExchangeAssignedTargetingOptionDetails]
        attr_accessor :sub_exchange_details
      
        # Output only. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        # Assigned third party verifier targeting option details. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
        # Corresponds to the JSON property `thirdPartyVerifierDetails`
        # @return [Google::Apis::DisplayvideoV3::ThirdPartyVerifierAssignedTargetingOptionDetails]
        attr_accessor :third_party_verifier_details
      
        # Details for assigned URL targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_URL`.
        # Corresponds to the JSON property `urlDetails`
        # @return [Google::Apis::DisplayvideoV3::UrlAssignedTargetingOptionDetails]
        attr_accessor :url_details
      
        # User rewarded content targeting option details. This will be populated in the
        # user_rewarded_content_details field when targeting_type is `
        # TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `userRewardedContentDetails`
        # @return [Google::Apis::DisplayvideoV3::UserRewardedContentAssignedTargetingOptionDetails]
        attr_accessor :user_rewarded_content_details
      
        # Video player size targeting option details. This will be populated in the
        # video_player_size_details field when targeting_type is `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not
        # supported. Remove all video player size targeting options to achieve this
        # effect.
        # Corresponds to the JSON property `videoPlayerSizeDetails`
        # @return [Google::Apis::DisplayvideoV3::VideoPlayerSizeAssignedTargetingOptionDetails]
        attr_accessor :video_player_size_details
      
        # Assigned viewability targeting option details. This will be populated in the
        # viewability_details field of an AssignedTargetingOption when targeting_type is
        # `TARGETING_TYPE_VIEWABILITY`.
        # Corresponds to the JSON property `viewabilityDetails`
        # @return [Google::Apis::DisplayvideoV3::ViewabilityAssignedTargetingOptionDetails]
        attr_accessor :viewability_details
      
        # Details for YouTube channel assigned targeting option. This will be populated
        # in the youtube_channel_details field when targeting_type is `
        # TARGETING_TYPE_YOUTUBE_CHANNEL`.
        # Corresponds to the JSON property `youtubeChannelDetails`
        # @return [Google::Apis::DisplayvideoV3::YoutubeChannelAssignedTargetingOptionDetails]
        attr_accessor :youtube_channel_details
      
        # Details for YouTube video assigned targeting option. This will be populated in
        # the youtube_video_details field when targeting_type is `
        # TARGETING_TYPE_YOUTUBE_VIDEO`.
        # Corresponds to the JSON property `youtubeVideoDetails`
        # @return [Google::Apis::DisplayvideoV3::YoutubeVideoAssignedTargetingOptionDetails]
        attr_accessor :youtube_video_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range_details = args[:age_range_details] if args.key?(:age_range_details)
          @app_category_details = args[:app_category_details] if args.key?(:app_category_details)
          @app_details = args[:app_details] if args.key?(:app_details)
          @assigned_targeting_option_id = args[:assigned_targeting_option_id] if args.key?(:assigned_targeting_option_id)
          @assigned_targeting_option_id_alias = args[:assigned_targeting_option_id_alias] if args.key?(:assigned_targeting_option_id_alias)
          @audience_group_details = args[:audience_group_details] if args.key?(:audience_group_details)
          @audio_content_type_details = args[:audio_content_type_details] if args.key?(:audio_content_type_details)
          @authorized_seller_status_details = args[:authorized_seller_status_details] if args.key?(:authorized_seller_status_details)
          @browser_details = args[:browser_details] if args.key?(:browser_details)
          @business_chain_details = args[:business_chain_details] if args.key?(:business_chain_details)
          @carrier_and_isp_details = args[:carrier_and_isp_details] if args.key?(:carrier_and_isp_details)
          @category_details = args[:category_details] if args.key?(:category_details)
          @channel_details = args[:channel_details] if args.key?(:channel_details)
          @content_duration_details = args[:content_duration_details] if args.key?(:content_duration_details)
          @content_genre_details = args[:content_genre_details] if args.key?(:content_genre_details)
          @content_instream_position_details = args[:content_instream_position_details] if args.key?(:content_instream_position_details)
          @content_outstream_position_details = args[:content_outstream_position_details] if args.key?(:content_outstream_position_details)
          @content_stream_type_details = args[:content_stream_type_details] if args.key?(:content_stream_type_details)
          @content_theme_exclusion_details = args[:content_theme_exclusion_details] if args.key?(:content_theme_exclusion_details)
          @day_and_time_details = args[:day_and_time_details] if args.key?(:day_and_time_details)
          @device_make_model_details = args[:device_make_model_details] if args.key?(:device_make_model_details)
          @device_type_details = args[:device_type_details] if args.key?(:device_type_details)
          @digital_content_label_exclusion_details = args[:digital_content_label_exclusion_details] if args.key?(:digital_content_label_exclusion_details)
          @environment_details = args[:environment_details] if args.key?(:environment_details)
          @exchange_details = args[:exchange_details] if args.key?(:exchange_details)
          @gender_details = args[:gender_details] if args.key?(:gender_details)
          @geo_region_details = args[:geo_region_details] if args.key?(:geo_region_details)
          @household_income_details = args[:household_income_details] if args.key?(:household_income_details)
          @inheritance = args[:inheritance] if args.key?(:inheritance)
          @inventory_source_details = args[:inventory_source_details] if args.key?(:inventory_source_details)
          @inventory_source_group_details = args[:inventory_source_group_details] if args.key?(:inventory_source_group_details)
          @keyword_details = args[:keyword_details] if args.key?(:keyword_details)
          @language_details = args[:language_details] if args.key?(:language_details)
          @name = args[:name] if args.key?(:name)
          @native_content_position_details = args[:native_content_position_details] if args.key?(:native_content_position_details)
          @negative_keyword_list_details = args[:negative_keyword_list_details] if args.key?(:negative_keyword_list_details)
          @omid_details = args[:omid_details] if args.key?(:omid_details)
          @on_screen_position_details = args[:on_screen_position_details] if args.key?(:on_screen_position_details)
          @operating_system_details = args[:operating_system_details] if args.key?(:operating_system_details)
          @parental_status_details = args[:parental_status_details] if args.key?(:parental_status_details)
          @poi_details = args[:poi_details] if args.key?(:poi_details)
          @proximity_location_list_details = args[:proximity_location_list_details] if args.key?(:proximity_location_list_details)
          @regional_location_list_details = args[:regional_location_list_details] if args.key?(:regional_location_list_details)
          @sensitive_category_exclusion_details = args[:sensitive_category_exclusion_details] if args.key?(:sensitive_category_exclusion_details)
          @session_position_details = args[:session_position_details] if args.key?(:session_position_details)
          @sub_exchange_details = args[:sub_exchange_details] if args.key?(:sub_exchange_details)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
          @third_party_verifier_details = args[:third_party_verifier_details] if args.key?(:third_party_verifier_details)
          @url_details = args[:url_details] if args.key?(:url_details)
          @user_rewarded_content_details = args[:user_rewarded_content_details] if args.key?(:user_rewarded_content_details)
          @video_player_size_details = args[:video_player_size_details] if args.key?(:video_player_size_details)
          @viewability_details = args[:viewability_details] if args.key?(:viewability_details)
          @youtube_channel_details = args[:youtube_channel_details] if args.key?(:youtube_channel_details)
          @youtube_video_details = args[:youtube_video_details] if args.key?(:youtube_video_details)
        end
      end
      
      # A single assigned user role, which defines a user's authorized interaction
      # with a specified partner or advertiser.
      class AssignedUserRole
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that the assigend user role applies to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The ID of the assigned user role.
        # Corresponds to the JSON property `assignedUserRoleId`
        # @return [String]
        attr_accessor :assigned_user_role_id
      
        # The ID of the partner that the assigned user role applies to.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Required. The user role to assign to a user for the entity.
        # Corresponds to the JSON property `userRole`
        # @return [String]
        attr_accessor :user_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @assigned_user_role_id = args[:assigned_user_role_id] if args.key?(:assigned_user_role_id)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @user_role = args[:user_role] if args.key?(:user_role)
        end
      end
      
      # Assigned audience group targeting option details. This will be populated in
      # the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_AUDIENCE_GROUP`. The relation between each group is UNION,
      # except for excluded_first_and_third_party_audience_group and
      # excluded_google_audience_group, of which COMPLEMENT is used as an INTERSECTION
      # with other groups.
      class AudienceGroupAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Details of first and third party audience group. All first and third party
        # audience targeting settings are logically ‘OR’ of each other.
        # Corresponds to the JSON property `excludedFirstAndThirdPartyAudienceGroup`
        # @return [Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup]
        attr_accessor :excluded_first_and_third_party_audience_group
      
        # Details of Google audience group. All Google audience targeting settings are
        # logically ‘OR’ of each other.
        # Corresponds to the JSON property `excludedGoogleAudienceGroup`
        # @return [Google::Apis::DisplayvideoV3::GoogleAudienceGroup]
        attr_accessor :excluded_google_audience_group
      
        # Details of combined audience group. All combined audience targeting settings
        # are logically ‘OR’ of each other.
        # Corresponds to the JSON property `includedCombinedAudienceGroup`
        # @return [Google::Apis::DisplayvideoV3::CombinedAudienceGroup]
        attr_accessor :included_combined_audience_group
      
        # Details of custom list group. All custom list targeting settings are logically
        # ‘OR’ of each other.
        # Corresponds to the JSON property `includedCustomListGroup`
        # @return [Google::Apis::DisplayvideoV3::CustomListGroup]
        attr_accessor :included_custom_list_group
      
        # Optional. The first and third party audience ids and recencies of included
        # first and third party audience groups. Each first and third party audience
        # group contains first and third party audience ids only. The relation between
        # each first and third party audience group is INTERSECTION, and the result is
        # UNION'ed with other audience groups. Repeated groups with the same settings
        # will be ignored.
        # Corresponds to the JSON property `includedFirstAndThirdPartyAudienceGroups`
        # @return [Array<Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup>]
        attr_accessor :included_first_and_third_party_audience_groups
      
        # Details of Google audience group. All Google audience targeting settings are
        # logically ‘OR’ of each other.
        # Corresponds to the JSON property `includedGoogleAudienceGroup`
        # @return [Google::Apis::DisplayvideoV3::GoogleAudienceGroup]
        attr_accessor :included_google_audience_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_first_and_third_party_audience_group = args[:excluded_first_and_third_party_audience_group] if args.key?(:excluded_first_and_third_party_audience_group)
          @excluded_google_audience_group = args[:excluded_google_audience_group] if args.key?(:excluded_google_audience_group)
          @included_combined_audience_group = args[:included_combined_audience_group] if args.key?(:included_combined_audience_group)
          @included_custom_list_group = args[:included_custom_list_group] if args.key?(:included_custom_list_group)
          @included_first_and_third_party_audience_groups = args[:included_first_and_third_party_audience_groups] if args.key?(:included_first_and_third_party_audience_groups)
          @included_google_audience_group = args[:included_google_audience_group] if args.key?(:included_google_audience_group)
        end
      end
      
      # Details for an audio ad.
      class AudioAd
        include Google::Apis::Core::Hashable
      
        # The webpage address that appears with the ad.
        # Corresponds to the JSON property `displayUrl`
        # @return [String]
        attr_accessor :display_url
      
        # The URL address of the webpage that people reach after they click the ad.
        # Corresponds to the JSON property `finalUrl`
        # @return [String]
        attr_accessor :final_url
      
        # The URL address loaded in the background for tracking purposes.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        # Details of a YouTube video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::DisplayvideoV3::YoutubeVideoDetails]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_url = args[:display_url] if args.key?(:display_url)
          @final_url = args[:final_url] if args.key?(:final_url)
          @tracking_url = args[:tracking_url] if args.key?(:tracking_url)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # Details for audio content type assigned targeting option. This will be
      # populated in the audio_content_type_details field when targeting_type is `
      # TARGETING_TYPE_AUDIO_CONTENT_TYPE`. Explicitly targeting all options is not
      # supported. Remove all audio content type targeting options to achieve this
      # effect.
      class AudioContentTypeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The audio content type.
        # Corresponds to the JSON property `audioContentType`
        # @return [String]
        attr_accessor :audio_content_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_content_type = args[:audio_content_type] if args.key?(:audio_content_type)
        end
      end
      
      # Represents a targetable audio content type. This will be populated in the
      # audio_content_type_details field when targeting_type is `
      # TARGETING_TYPE_AUDIO_CONTENT_TYPE`.
      class AudioContentTypeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The audio content type.
        # Corresponds to the JSON property `audioContentType`
        # @return [String]
        attr_accessor :audio_content_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_content_type = args[:audio_content_type] if args.key?(:audio_content_type)
        end
      end
      
      # The length an audio or a video has been played.
      class AudioVideoOffset
        include Google::Apis::Core::Hashable
      
        # Optional. The offset in percentage of the audio or video duration.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # Optional. The offset in seconds from the start of the audio or video.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Response message for AdvertiserService.AuditAdvertiser.
      class AuditAdvertiserResponse
        include Google::Apis::Core::Hashable
      
        # The number of individual targeting options from the following targeting types
        # that are assigned to a line item under this advertiser. These individual
        # targeting options count towards the limit of 4500000 ad group targeting
        # options per advertiser. Qualifying Targeting types: * Channels, URLs, apps,
        # and collections * Demographic * Google Audiences, including Affinity, Custom
        # Affinity, and In-market audiences * Inventory source * Keyword * Mobile app
        # category * User lists * Video targeting * Viewability
        # Corresponds to the JSON property `adGroupCriteriaCount`
        # @return [Fixnum]
        attr_accessor :ad_group_criteria_count
      
        # The number of individual targeting options from the following targeting types
        # that are assigned to a line item under this advertiser. These individual
        # targeting options count towards the limit of 900000 campaign targeting options
        # per advertiser. Qualifying Targeting types: * Position * Browser * Connection
        # speed * Day and time * Device and operating system * Digital content label *
        # Sensitive categories * Environment * Geography, including business chains and
        # proximity * ISP * Language * Third-party verification
        # Corresponds to the JSON property `campaignCriteriaCount`
        # @return [Fixnum]
        attr_accessor :campaign_criteria_count
      
        # The number of channels created under this advertiser. These channels count
        # towards the limit of 1000 channels per advertiser.
        # Corresponds to the JSON property `channelsCount`
        # @return [Fixnum]
        attr_accessor :channels_count
      
        # The number of negative keyword lists created under this advertiser. These
        # negative keyword lists count towards the limit of 20 negative keyword lists
        # per advertiser.
        # Corresponds to the JSON property `negativeKeywordListsCount`
        # @return [Fixnum]
        attr_accessor :negative_keyword_lists_count
      
        # The number of negatively targeted channels created under this advertiser.
        # These negatively targeted channels count towards the limit of 5 negatively
        # targeted channels per advertiser.
        # Corresponds to the JSON property `negativelyTargetedChannelsCount`
        # @return [Fixnum]
        attr_accessor :negatively_targeted_channels_count
      
        # The number of ACTIVE and PAUSED campaigns under this advertiser. These
        # campaigns count towards the limit of 9999 campaigns per advertiser.
        # Corresponds to the JSON property `usedCampaignsCount`
        # @return [Fixnum]
        attr_accessor :used_campaigns_count
      
        # The number of ACTIVE, PAUSED and DRAFT insertion orders under this advertiser.
        # These insertion orders count towards the limit of 9999 insertion orders per
        # advertiser.
        # Corresponds to the JSON property `usedInsertionOrdersCount`
        # @return [Fixnum]
        attr_accessor :used_insertion_orders_count
      
        # The number of ACTIVE, PAUSED, and DRAFT line items under this advertiser.
        # These line items count towards the limit of 9999 line items per advertiser.
        # Corresponds to the JSON property `usedLineItemsCount`
        # @return [Fixnum]
        attr_accessor :used_line_items_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_criteria_count = args[:ad_group_criteria_count] if args.key?(:ad_group_criteria_count)
          @campaign_criteria_count = args[:campaign_criteria_count] if args.key?(:campaign_criteria_count)
          @channels_count = args[:channels_count] if args.key?(:channels_count)
          @negative_keyword_lists_count = args[:negative_keyword_lists_count] if args.key?(:negative_keyword_lists_count)
          @negatively_targeted_channels_count = args[:negatively_targeted_channels_count] if args.key?(:negatively_targeted_channels_count)
          @used_campaigns_count = args[:used_campaigns_count] if args.key?(:used_campaigns_count)
          @used_insertion_orders_count = args[:used_insertion_orders_count] if args.key?(:used_insertion_orders_count)
          @used_line_items_count = args[:used_line_items_count] if args.key?(:used_line_items_count)
        end
      end
      
      # Represents an assigned authorized seller status. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`. If a resource does not have an `
      # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` assigned targeting option, it is
      # using the "Authorized Direct Sellers and Resellers" option.
      class AuthorizedSellerStatusAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The authorized seller status to target.
        # Corresponds to the JSON property `authorizedSellerStatus`
        # @return [String]
        attr_accessor :authorized_seller_status
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_seller_status = args[:authorized_seller_status] if args.key?(:authorized_seller_status)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable authorized seller status. This will be populated in
      # the authorized_seller_status_details field when targeting_type is `
      # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
      class AuthorizedSellerStatusTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The authorized seller status.
        # Corresponds to the JSON property `authorizedSellerStatus`
        # @return [String]
        attr_accessor :authorized_seller_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_seller_status = args[:authorized_seller_status] if args.key?(:authorized_seller_status)
        end
      end
      
      # Settings that control the bid strategy. Bid strategy determines the bid price.
      class BiddingStrategy
        include Google::Apis::Core::Hashable
      
        # A strategy that uses a fixed bidding price.
        # Corresponds to the JSON property `fixedBid`
        # @return [Google::Apis::DisplayvideoV3::FixedBidStrategy]
        attr_accessor :fixed_bid
      
        # A strategy that automatically adjusts the bid to optimize a specified
        # performance goal while spending the full budget.
        # Corresponds to the JSON property `maximizeSpendAutoBid`
        # @return [Google::Apis::DisplayvideoV3::MaximizeSpendBidStrategy]
        attr_accessor :maximize_spend_auto_bid
      
        # A strategy that automatically adjusts the bid to meet or beat a specified
        # performance goal.
        # Corresponds to the JSON property `performanceGoalAutoBid`
        # @return [Google::Apis::DisplayvideoV3::PerformanceGoalBidStrategy]
        attr_accessor :performance_goal_auto_bid
      
        # Settings that control the bid strategy for YouTube and Partners resources.
        # Corresponds to the JSON property `youtubeAndPartnersBid`
        # @return [Google::Apis::DisplayvideoV3::YoutubeAndPartnersBiddingStrategy]
        attr_accessor :youtube_and_partners_bid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_bid = args[:fixed_bid] if args.key?(:fixed_bid)
          @maximize_spend_auto_bid = args[:maximize_spend_auto_bid] if args.key?(:maximize_spend_auto_bid)
          @performance_goal_auto_bid = args[:performance_goal_auto_bid] if args.key?(:performance_goal_auto_bid)
          @youtube_and_partners_bid = args[:youtube_and_partners_bid] if args.key?(:youtube_and_partners_bid)
        end
      end
      
      # Details for assigned browser targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_BROWSER`.
      class BrowserAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the browser.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned browser
        # targeting options on the same resource must have the same value for this field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable browser. This will be populated in the browser_details
      # field when targeting_type is `TARGETING_TYPE_BROWSER`.
      class BrowserTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the browser.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Summarized information of an individual campaign budget.
      class BudgetSummary
        include Google::Apis::Core::Hashable
      
        # Corresponds to the external_budget_id of a campaign budget. If the value is
        # not set in the campaign budget, this field will be empty.
        # Corresponds to the JSON property `externalBudgetId`
        # @return [String]
        attr_accessor :external_budget_id
      
        # The sum of charges made under this budget before taxes, in micros of the
        # invoice's currency. For example, if currency_code is `USD`, then 1000000
        # represents one US dollar.
        # Corresponds to the JSON property `preTaxAmountMicros`
        # @return [Fixnum]
        attr_accessor :pre_tax_amount_micros
      
        # Google Payments Center supports searching and filtering on the component
        # fields of this code.
        # Corresponds to the JSON property `prismaCpeCode`
        # @return [Google::Apis::DisplayvideoV3::PrismaCpeCode]
        attr_accessor :prisma_cpe_code
      
        # The amount of tax applied to charges under this budget, in micros of the
        # invoice's currency. For example, if currency_code is `USD`, then 1000000
        # represents one US dollar.
        # Corresponds to the JSON property `taxAmountMicros`
        # @return [Fixnum]
        attr_accessor :tax_amount_micros
      
        # The total sum of charges made under this budget, including tax, in micros of
        # the invoice's currency. For example, if currency_code is `USD`, then 1000000
        # represents one US dollar.
        # Corresponds to the JSON property `totalAmountMicros`
        # @return [Fixnum]
        attr_accessor :total_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_budget_id = args[:external_budget_id] if args.key?(:external_budget_id)
          @pre_tax_amount_micros = args[:pre_tax_amount_micros] if args.key?(:pre_tax_amount_micros)
          @prisma_cpe_code = args[:prisma_cpe_code] if args.key?(:prisma_cpe_code)
          @tax_amount_micros = args[:tax_amount_micros] if args.key?(:tax_amount_micros)
          @total_amount_micros = args[:total_amount_micros] if args.key?(:total_amount_micros)
        end
      end
      
      # Request message for BulkEditAdvertiserAssignedTargetingOptions.
      class BulkEditAdvertiserAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of `
        # CreateAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `
        # TARGETING_TYPE_OMID` * `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `
        # TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_INVENTORY_MODE`
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of `
        # DeleteAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `
        # TARGETING_TYPE_OMID` * `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `
        # TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_INVENTORY_MODE`
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
        end
      end
      
      # 
      class BulkEditAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `createdAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :created_assigned_targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_targeting_options = args[:created_assigned_targeting_options] if args.key?(:created_assigned_targeting_options)
        end
      end
      
      # Request message for AssignedInventorySourceService.BulkEdit.
      class BulkEditAssignedInventorySourcesRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the parent inventory source group. The
        # parent partner does not have access to these assigned inventory sources.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The assigned inventory sources to create in bulk, specified as a list of
        # AssignedInventorySources.
        # Corresponds to the JSON property `createdAssignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedInventorySource>]
        attr_accessor :created_assigned_inventory_sources
      
        # The IDs of the assigned inventory sources to delete in bulk, specified as a
        # list of assigned_inventory_source_ids.
        # Corresponds to the JSON property `deletedAssignedInventorySources`
        # @return [Array<Fixnum>]
        attr_accessor :deleted_assigned_inventory_sources
      
        # The ID of the partner that owns the inventory source group. Only this partner
        # has write access to these assigned inventory sources.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @created_assigned_inventory_sources = args[:created_assigned_inventory_sources] if args.key?(:created_assigned_inventory_sources)
          @deleted_assigned_inventory_sources = args[:deleted_assigned_inventory_sources] if args.key?(:deleted_assigned_inventory_sources)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Response message for AssignedInventorySourceService.BulkEdit.
      class BulkEditAssignedInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned inventory sources that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `assignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedInventorySource>]
        attr_accessor :assigned_inventory_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_sources = args[:assigned_inventory_sources] if args.key?(:assigned_inventory_sources)
        end
      end
      
      # Request message for AssignedLocationService.BulkEditAssignedLocations.
      class BulkEditAssignedLocationsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned locations to create in bulk, specified as a list of
        # AssignedLocation resources.
        # Corresponds to the JSON property `createdAssignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedLocation>]
        attr_accessor :created_assigned_locations
      
        # The IDs of the assigned locations to delete in bulk, specified as a list of
        # assignedLocationId values.
        # Corresponds to the JSON property `deletedAssignedLocations`
        # @return [Array<Fixnum>]
        attr_accessor :deleted_assigned_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_locations = args[:created_assigned_locations] if args.key?(:created_assigned_locations)
          @deleted_assigned_locations = args[:deleted_assigned_locations] if args.key?(:deleted_assigned_locations)
        end
      end
      
      # 
      class BulkEditAssignedLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned locations that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `assignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedLocation>]
        attr_accessor :assigned_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_locations = args[:assigned_locations] if args.key?(:assigned_locations)
        end
      end
      
      # Request message for BulkEditLineItemsAssignedTargetingOptions.
      class BulkEditAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of
        # CreateAssignedTargetingOptionsRequest. Supported targeting types include: * `
        # TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` * `
        # TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        # TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        # * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        # TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        # TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        # TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        # TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        # * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        # TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        # TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        # TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        # TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        # TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        # TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        # TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        # TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        # `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        # TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        # TARGETING_TYPE_VIEWABILITY`
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of
        # DeleteAssignedTargetingOptionsRequest. Supported targeting types include: * `
        # TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_APP` * `
        # TARGETING_TYPE_APP_CATEGORY` * `TARGETING_TYPE_AUDIENCE_GROUP` * `
        # TARGETING_TYPE_AUDIO_CONTENT_TYPE` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`
        # * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_BUSINESS_CHAIN` * `
        # TARGETING_TYPE_CARRIER_AND_ISP` * `TARGETING_TYPE_CATEGORY` * `
        # TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_CONTENT_DURATION` * `
        # TARGETING_TYPE_CONTENT_GENRE` * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` * `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `
        # TARGETING_TYPE_CONTENT_STREAM_TYPE` * `TARGETING_TYPE_DAY_AND_TIME` * `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DEVICE_TYPE` * `
        # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT`
        # * `TARGETING_TYPE_EXCHANGE` * `TARGETING_TYPE_GENDER` * `
        # TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_HOUSEHOLD_INCOME` * `
        # TARGETING_TYPE_INVENTORY_SOURCE` * `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `
        # TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `
        # TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `
        # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OMID` * `
        # TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_OPERATING_SYSTEM` * `
        # TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_POI` * `
        # TARGETING_TYPE_PROXIMITY_LOCATION_LIST` * `
        # TARGETING_TYPE_REGIONAL_LOCATION_LIST` * `
        # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_SUB_EXCHANGE` *
        # `TARGETING_TYPE_THIRD_PARTY_VERIFIER` * `TARGETING_TYPE_URL` * `
        # TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `
        # TARGETING_TYPE_VIEWABILITY`
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        # Required. The ID of the line items whose targeting is being updated.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
        end
      end
      
      # 
      class BulkEditAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The error information for each line item that failed to update.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DisplayvideoV3::Status>]
        attr_accessor :errors
      
        # Output only. The IDs of the line items which failed.
        # Corresponds to the JSON property `failedLineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :failed_line_item_ids
      
        # Output only. The IDs of the line items which successfully updated.
        # Corresponds to the JSON property `updatedLineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :updated_line_item_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @failed_line_item_ids = args[:failed_line_item_ids] if args.key?(:failed_line_item_ids)
          @updated_line_item_ids = args[:updated_line_item_ids] if args.key?(:updated_line_item_ids)
        end
      end
      
      # Request message for BulkEditAssignedUserRoles.
      class BulkEditAssignedUserRolesRequest
        include Google::Apis::Core::Hashable
      
        # The assigned user roles to create in batch, specified as a list of
        # AssignedUserRoles.
        # Corresponds to the JSON property `createdAssignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedUserRole>]
        attr_accessor :created_assigned_user_roles
      
        # The assigned user roles to delete in batch, specified as a list of
        # assigned_user_role_ids. The format of assigned_user_role_id is `entityType-
        # entityid`, for example `partner-123`.
        # Corresponds to the JSON property `deletedAssignedUserRoles`
        # @return [Array<String>]
        attr_accessor :deleted_assigned_user_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_user_roles = args[:created_assigned_user_roles] if args.key?(:created_assigned_user_roles)
          @deleted_assigned_user_roles = args[:deleted_assigned_user_roles] if args.key?(:deleted_assigned_user_roles)
        end
      end
      
      # 
      class BulkEditAssignedUserRolesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned user roles that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `createdAssignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedUserRole>]
        attr_accessor :created_assigned_user_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_user_roles = args[:created_assigned_user_roles] if args.key?(:created_assigned_user_roles)
        end
      end
      
      # Request message for NegativeKeywordService.BulkEditNegativeKeywords.
      class BulkEditNegativeKeywordsRequest
        include Google::Apis::Core::Hashable
      
        # The negative keywords to create in batch, specified as a list of
        # NegativeKeywords.
        # Corresponds to the JSON property `createdNegativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeyword>]
        attr_accessor :created_negative_keywords
      
        # The negative keywords to delete in batch, specified as a list of
        # keyword_values.
        # Corresponds to the JSON property `deletedNegativeKeywords`
        # @return [Array<String>]
        attr_accessor :deleted_negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_negative_keywords = args[:created_negative_keywords] if args.key?(:created_negative_keywords)
          @deleted_negative_keywords = args[:deleted_negative_keywords] if args.key?(:deleted_negative_keywords)
        end
      end
      
      # Response message for NegativeKeywordService.BulkEditNegativeKeywords.
      class BulkEditNegativeKeywordsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keywords that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `negativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeyword>]
        attr_accessor :negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keywords = args[:negative_keywords] if args.key?(:negative_keywords)
        end
      end
      
      # Request message for BulkEditPartnerAssignedTargetingOptions.
      class BulkEditPartnerAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of `
        # CreateAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL`
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of `
        # DeleteAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL`
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
        end
      end
      
      # 
      class BulkEditPartnerAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `createdAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :created_assigned_targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_targeting_options = args[:created_assigned_targeting_options] if args.key?(:created_assigned_targeting_options)
        end
      end
      
      # Request message for SiteService.BulkEditSites.
      class BulkEditSitesRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the parent channel.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The sites to create in batch, specified as a list of Sites.
        # Corresponds to the JSON property `createdSites`
        # @return [Array<Google::Apis::DisplayvideoV3::Site>]
        attr_accessor :created_sites
      
        # The sites to delete in batch, specified as a list of site url_or_app_ids.
        # Corresponds to the JSON property `deletedSites`
        # @return [Array<String>]
        attr_accessor :deleted_sites
      
        # The ID of the partner that owns the parent channel.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @created_sites = args[:created_sites] if args.key?(:created_sites)
          @deleted_sites = args[:deleted_sites] if args.key?(:deleted_sites)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Response message for SiteService.BulkEditSites.
      class BulkEditSitesResponse
        include Google::Apis::Core::Hashable
      
        # The list of sites that have been successfully created. This list will be
        # absent if empty.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DisplayvideoV3::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # 
      class BulkListAdGroupAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of wrapper objects, each providing an assigned targeting option and
        # the ad group it is assigned to. This list will be absent if empty.
        # Corresponds to the JSON property `adGroupAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AdGroupAssignedTargetingOption>]
        attr_accessor :ad_group_assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent call to `
        # BulkListAdGroupAssignedTargetingOptions` to fetch the next page of results.
        # This token will be absent if there are no more AdGroupAssignedTargetingOption
        # resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_assigned_targeting_options = args[:ad_group_assigned_targeting_options] if args.key?(:ad_group_assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class BulkListAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # BulkListAdvertiserAssignedTargetingOptionsRequest to fetch the next page of
        # results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class BulkListAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of wrapper objects, each providing an assigned targeting option and
        # the line item it is assigned to. This list will be absent if empty.
        # Corresponds to the JSON property `lineItemAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::LineItemAssignedTargetingOption>]
        attr_accessor :line_item_assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent call to `BulkListAssignedTargetingOptions` to
        # fetch the next page of results. This token will be absent if there are no more
        # line_item_assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_assigned_targeting_options = args[:line_item_assigned_targeting_options] if args.key?(:line_item_assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class BulkListCampaignAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # BulkListCampaignAssignedTargetingOptionsRequest to fetch the next page of
        # results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class BulkListInsertionOrderAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # BulkListInsertionOrderAssignedTargetingOptionsRequest to fetch the next page
        # of results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for LineItemService.BulkUpdateLineItems.
      class BulkUpdateLineItemsRequest
        include Google::Apis::Core::Hashable
      
        # Required. IDs of line items to update.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # A single line item.
        # Corresponds to the JSON property `targetLineItem`
        # @return [Google::Apis::DisplayvideoV3::LineItem]
        attr_accessor :target_line_item
      
        # Required. A field mask identifying which fields to update. Only the following
        # fields are currently supported: * entityStatus
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @target_line_item = args[:target_line_item] if args.key?(:target_line_item)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response message for LineItemService.BulkUpdateLineItems.
      class BulkUpdateLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # Errors returned by line items that failed to update.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DisplayvideoV3::Status>]
        attr_accessor :errors
      
        # The IDs of line items that failed to update.
        # Corresponds to the JSON property `failedLineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :failed_line_item_ids
      
        # The IDs of line items that are skipped for updates. For example, unnecessary
        # mutates that will result in effectively no changes to line items will be
        # skipped and corresponding line item IDs can be tracked here.
        # Corresponds to the JSON property `skippedLineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :skipped_line_item_ids
      
        # The IDs of successfully updated line items.
        # Corresponds to the JSON property `updatedLineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :updated_line_item_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @failed_line_item_ids = args[:failed_line_item_ids] if args.key?(:failed_line_item_ids)
          @skipped_line_item_ids = args[:skipped_line_item_ids] if args.key?(:skipped_line_item_ids)
          @updated_line_item_ids = args[:updated_line_item_ids] if args.key?(:updated_line_item_ids)
        end
      end
      
      # Details for a bumper ad.
      class BumperAd
        include Google::Apis::Core::Hashable
      
        # Common attributes for in-stream, non-skippable and bumper ads.
        # Corresponds to the JSON property `commonInStreamAttribute`
        # @return [Google::Apis::DisplayvideoV3::CommonInStreamAttribute]
        attr_accessor :common_in_stream_attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_in_stream_attribute = args[:common_in_stream_attribute] if args.key?(:common_in_stream_attribute)
        end
      end
      
      # Details for assigned Business chain targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_BUSINESS_CHAIN`.
      class BusinessChainAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of a business chain, e.g. "KFC", "Chase Bank".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The radius of the area around the business chain that will be
        # targeted. The units of the radius are specified by proximity_radius_unit. Must
        # be 1 to 800 if unit is `DISTANCE_UNIT_KILOMETERS` and 1 to 500 if unit is `
        # DISTANCE_UNIT_MILES`. The minimum increment for both cases is 0.1. Inputs will
        # be rounded to the nearest acceptable value if it is too granular, e.g. 15.57
        # will become 15.6.
        # Corresponds to the JSON property `proximityRadiusAmount`
        # @return [Float]
        attr_accessor :proximity_radius_amount
      
        # Required. The unit of distance by which the targeting radius is measured.
        # Corresponds to the JSON property `proximityRadiusUnit`
        # @return [String]
        attr_accessor :proximity_radius_unit
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_BUSINESS_CHAIN`. Accepted business chain targeting option IDs
        # can be retrieved using SearchTargetingOptions.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @proximity_radius_amount = args[:proximity_radius_amount] if args.key?(:proximity_radius_amount)
          @proximity_radius_unit = args[:proximity_radius_unit] if args.key?(:proximity_radius_unit)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Search terms for Business Chain targeting options. At least one of the field
      # should be populated.
      class BusinessChainSearchTerms
        include Google::Apis::Core::Hashable
      
        # The search query for the desired business chain. The query must be the full
        # name of the business, e.g. "KFC", "mercedes-benz".
        # Corresponds to the JSON property `businessChainQuery`
        # @return [String]
        attr_accessor :business_chain_query
      
        # The search query for the desired geo region, e.g. "Seattle", "United State".
        # Corresponds to the JSON property `regionQuery`
        # @return [String]
        attr_accessor :region_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_chain_query = args[:business_chain_query] if args.key?(:business_chain_query)
          @region_query = args[:region_query] if args.key?(:region_query)
        end
      end
      
      # Represents a targetable business chain within a geo region. This will be
      # populated in the business_chain_details field when targeting_type is `
      # TARGETING_TYPE_BUSINESS_CHAIN`.
      class BusinessChainTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the business chain, e.g. "KFC", "Chase Bank".
        # Corresponds to the JSON property `businessChain`
        # @return [String]
        attr_accessor :business_chain
      
        # Output only. The display name of the geographic region, e.g. "Ontario, Canada".
        # Corresponds to the JSON property `geoRegion`
        # @return [String]
        attr_accessor :geo_region
      
        # Output only. The type of the geographic region.
        # Corresponds to the JSON property `geoRegionType`
        # @return [String]
        attr_accessor :geo_region_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_chain = args[:business_chain] if args.key?(:business_chain)
          @geo_region = args[:geo_region] if args.key?(:geo_region)
          @geo_region_type = args[:geo_region_type] if args.key?(:geo_region_type)
        end
      end
      
      # A single campaign.
      class Campaign
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the campaign belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The list of budgets available to this campaign. If this field is not set, the
        # campaign uses an unlimited budget.
        # Corresponds to the JSON property `campaignBudgets`
        # @return [Array<Google::Apis::DisplayvideoV3::CampaignBudget>]
        attr_accessor :campaign_budgets
      
        # Settings that track the planned spend and duration of a campaign.
        # Corresponds to the JSON property `campaignFlight`
        # @return [Google::Apis::DisplayvideoV3::CampaignFlight]
        attr_accessor :campaign_flight
      
        # Settings that control the goal of a campaign.
        # Corresponds to the JSON property `campaignGoal`
        # @return [Google::Apis::DisplayvideoV3::CampaignGoal]
        attr_accessor :campaign_goal
      
        # Output only. The unique ID of the campaign. Assigned by the system.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Required. The display name of the campaign. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the insertion orders under this campaign can
        # spend their budgets and bid on inventory. * Accepted values are `
        # ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`. *
        # For CreateCampaign method, `ENTITY_STATUS_ARCHIVED` is not allowed.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV3::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Output only. The resource name of the campaign.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the campaign was last updated. Assigned by the
        # system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_budgets = args[:campaign_budgets] if args.key?(:campaign_budgets)
          @campaign_flight = args[:campaign_flight] if args.key?(:campaign_flight)
          @campaign_goal = args[:campaign_goal] if args.key?(:campaign_goal)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings that control how the campaign budget is allocated.
      class CampaignBudget
        include Google::Apis::Core::Hashable
      
        # Required. The total amount the linked insertion order segments can budget. The
        # amount is in micros. Must be greater than 0. For example, 500000000 represents
        # 500 standard units of the currency.
        # Corresponds to the JSON property `budgetAmountMicros`
        # @return [Fixnum]
        attr_accessor :budget_amount_micros
      
        # The unique ID of the campaign budget. Assigned by the system. Do not set for
        # new budgets. Must be included when updating or adding budgets to
        # campaign_budgets. Otherwise, a new ID will be generated and assigned.
        # Corresponds to the JSON property `budgetId`
        # @return [Fixnum]
        attr_accessor :budget_id
      
        # Required. Immutable. Specifies whether the budget is measured in currency or
        # impressions.
        # Corresponds to the JSON property `budgetUnit`
        # @return [String]
        attr_accessor :budget_unit
      
        # A date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DisplayvideoV3::DateRange]
        attr_accessor :date_range
      
        # Required. The display name of the budget. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The ID identifying this budget to the external source. If this
        # field is set and the invoice detail level of the corresponding billing profile
        # is set to "Budget level PO", all impressions served against this budget will
        # include this ID on the invoice. Must be unique under the campaign.
        # Corresponds to the JSON property `externalBudgetId`
        # @return [String]
        attr_accessor :external_budget_id
      
        # Required. The external source of the budget.
        # Corresponds to the JSON property `externalBudgetSource`
        # @return [String]
        attr_accessor :external_budget_source
      
        # Immutable. The ID used to group budgets to be included the same invoice. If
        # this field is set and the invoice level of the corresponding billing profile
        # is set to "Budget invoice grouping ID", all external_budget_id sharing the
        # same invoice_grouping_id will be grouped in the same invoice.
        # Corresponds to the JSON property `invoiceGroupingId`
        # @return [String]
        attr_accessor :invoice_grouping_id
      
        # Settings specific to the Mediaocean Prisma tool.
        # Corresponds to the JSON property `prismaConfig`
        # @return [Google::Apis::DisplayvideoV3::PrismaConfig]
        attr_accessor :prisma_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_amount_micros = args[:budget_amount_micros] if args.key?(:budget_amount_micros)
          @budget_id = args[:budget_id] if args.key?(:budget_id)
          @budget_unit = args[:budget_unit] if args.key?(:budget_unit)
          @date_range = args[:date_range] if args.key?(:date_range)
          @display_name = args[:display_name] if args.key?(:display_name)
          @external_budget_id = args[:external_budget_id] if args.key?(:external_budget_id)
          @external_budget_source = args[:external_budget_source] if args.key?(:external_budget_source)
          @invoice_grouping_id = args[:invoice_grouping_id] if args.key?(:invoice_grouping_id)
          @prisma_config = args[:prisma_config] if args.key?(:prisma_config)
        end
      end
      
      # Settings that track the planned spend and duration of a campaign.
      class CampaignFlight
        include Google::Apis::Core::Hashable
      
        # A date range.
        # Corresponds to the JSON property `plannedDates`
        # @return [Google::Apis::DisplayvideoV3::DateRange]
        attr_accessor :planned_dates
      
        # The amount the campaign is expected to spend for its given planned_dates. This
        # will not limit serving, but will be used for tracking spend in the DV360 UI.
        # The amount is in micros. Must be greater than or equal to 0. For example,
        # 500000000 represents 500 standard units of the currency.
        # Corresponds to the JSON property `plannedSpendAmountMicros`
        # @return [Fixnum]
        attr_accessor :planned_spend_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @planned_dates = args[:planned_dates] if args.key?(:planned_dates)
          @planned_spend_amount_micros = args[:planned_spend_amount_micros] if args.key?(:planned_spend_amount_micros)
        end
      end
      
      # Settings that control the goal of a campaign.
      class CampaignGoal
        include Google::Apis::Core::Hashable
      
        # Required. The type of the campaign goal.
        # Corresponds to the JSON property `campaignGoalType`
        # @return [String]
        attr_accessor :campaign_goal_type
      
        # Settings that control the performance goal of a campaign.
        # Corresponds to the JSON property `performanceGoal`
        # @return [Google::Apis::DisplayvideoV3::PerformanceGoal]
        attr_accessor :performance_goal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_goal_type = args[:campaign_goal_type] if args.key?(:campaign_goal_type)
          @performance_goal = args[:performance_goal] if args.key?(:performance_goal)
        end
      end
      
      # Details for assigned carrier and ISP targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_CARRIER_AND_ISP`.
      class CarrierAndIspAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the carrier or ISP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned carrier
        # and ISP targeting options on the same resource must have the same value for
        # this field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable carrier or ISP. This will be populated in the
      # carrier_and_isp_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_CARRIER_AND_ISP`.
      class CarrierAndIspTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the carrier or ISP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type indicating if it's carrier or ISP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Assigned category targeting option details. This will be populated in the
      # category_details field when targeting_type is `TARGETING_TYPE_CATEGORY`.
      class CategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable category. This will be populated in the
      # category_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_CATEGORY`.
      class CategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single channel. Channels are custom groups of related websites and apps.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the channel.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The unique ID of the channel. Assigned by the system.
        # Corresponds to the JSON property `channelId`
        # @return [Fixnum]
        attr_accessor :channel_id
      
        # Required. The display name of the channel. Must be UTF-8 encoded with a
        # maximum length of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of line items that are directly targeting this channel
        # negatively.
        # Corresponds to the JSON property `negativelyTargetedLineItemCount`
        # @return [Fixnum]
        attr_accessor :negatively_targeted_line_item_count
      
        # The ID of the partner that owns the channel.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Output only. Number of line items that are directly targeting this channel
        # positively.
        # Corresponds to the JSON property `positivelyTargetedLineItemCount`
        # @return [Fixnum]
        attr_accessor :positively_targeted_line_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @negatively_targeted_line_item_count = args[:negatively_targeted_line_item_count] if args.key?(:negatively_targeted_line_item_count)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @positively_targeted_line_item_count = args[:positively_targeted_line_item_count] if args.key?(:positively_targeted_line_item_count)
        end
      end
      
      # Details for assigned channel targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_CHANNEL`.
      class ChannelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the channel. Should refer to the channel ID field on a [
        # Partner-owned channel](partners.channels#Channel.FIELDS.channel_id) or [
        # advertiser-owned channel](advertisers.channels#Channel.FIELDS.channel_id)
        # resource.
        # Corresponds to the JSON property `channelId`
        # @return [Fixnum]
        attr_accessor :channel_id
      
        # Indicates if this option is being negatively targeted. For advertiser level
        # assigned targeting option, this field must be true.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Settings for advertisers that use both Campaign Manager 360 (CM360) and third-
      # party ad servers.
      class CmHybridConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Account ID of the CM360 Floodlight configuration linked
        # with the DV360 advertiser.
        # Corresponds to the JSON property `cmAccountId`
        # @return [Fixnum]
        attr_accessor :cm_account_id
      
        # Output only. The set of CM360 Advertiser IDs sharing the CM360 Floodlight
        # configuration.
        # Corresponds to the JSON property `cmAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :cm_advertiser_ids
      
        # Required. Immutable. ID of the CM360 Floodlight configuration linked with the
        # DV360 advertiser.
        # Corresponds to the JSON property `cmFloodlightConfigId`
        # @return [Fixnum]
        attr_accessor :cm_floodlight_config_id
      
        # Required. Immutable. By setting this field to `true`, you, on behalf of your
        # company, authorize the sharing of information from the given Floodlight
        # configuration to this Display & Video 360 advertiser.
        # Corresponds to the JSON property `cmFloodlightLinkingAuthorized`
        # @return [Boolean]
        attr_accessor :cm_floodlight_linking_authorized
        alias_method :cm_floodlight_linking_authorized?, :cm_floodlight_linking_authorized
      
        # A list of CM360 sites whose placements will be synced to DV360 as creatives.
        # If absent or empty in CreateAdvertiser method, the system will automatically
        # create a CM360 site. Removing sites from this list may cause DV360 creatives
        # synced from CM360 to be deleted. At least one site must be specified.
        # Corresponds to the JSON property `cmSyncableSiteIds`
        # @return [Array<Fixnum>]
        attr_accessor :cm_syncable_site_ids
      
        # Whether or not to report DV360 cost to CM360.
        # Corresponds to the JSON property `dv360ToCmCostReportingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_cost_reporting_enabled
        alias_method :dv360_to_cm_cost_reporting_enabled?, :dv360_to_cm_cost_reporting_enabled
      
        # Whether or not to include DV360 data in CM360 data transfer reports.
        # Corresponds to the JSON property `dv360ToCmDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_data_sharing_enabled
        alias_method :dv360_to_cm_data_sharing_enabled?, :dv360_to_cm_data_sharing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_account_id = args[:cm_account_id] if args.key?(:cm_account_id)
          @cm_advertiser_ids = args[:cm_advertiser_ids] if args.key?(:cm_advertiser_ids)
          @cm_floodlight_config_id = args[:cm_floodlight_config_id] if args.key?(:cm_floodlight_config_id)
          @cm_floodlight_linking_authorized = args[:cm_floodlight_linking_authorized] if args.key?(:cm_floodlight_linking_authorized)
          @cm_syncable_site_ids = args[:cm_syncable_site_ids] if args.key?(:cm_syncable_site_ids)
          @dv360_to_cm_cost_reporting_enabled = args[:dv360_to_cm_cost_reporting_enabled] if args.key?(:dv360_to_cm_cost_reporting_enabled)
          @dv360_to_cm_data_sharing_enabled = args[:dv360_to_cm_data_sharing_enabled] if args.key?(:dv360_to_cm_data_sharing_enabled)
        end
      end
      
      # A Campaign Manager 360 tracking ad.
      class CmTrackingAd
        include Google::Apis::Core::Hashable
      
        # Optional. The ad ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmAdId`
        # @return [Fixnum]
        attr_accessor :cm_ad_id
      
        # Optional. The creative ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmCreativeId`
        # @return [Fixnum]
        attr_accessor :cm_creative_id
      
        # Optional. The placement ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmPlacementId`
        # @return [Fixnum]
        attr_accessor :cm_placement_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_ad_id = args[:cm_ad_id] if args.key?(:cm_ad_id)
          @cm_creative_id = args[:cm_creative_id] if args.key?(:cm_creative_id)
          @cm_placement_id = args[:cm_placement_id] if args.key?(:cm_placement_id)
        end
      end
      
      # Describes a combined audience resource.
      class CombinedAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the combined audience. Assigned by the system.
        # Corresponds to the JSON property `combinedAudienceId`
        # @return [Fixnum]
        attr_accessor :combined_audience_id
      
        # Output only. The display name of the combined audience. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the combined audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audience_id = args[:combined_audience_id] if args.key?(:combined_audience_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of combined audience group. All combined audience targeting settings
      # are logically ‘OR’ of each other.
      class CombinedAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All combined audience targeting settings in combined audience group.
        # Repeated settings with the same id will be ignored. The number of combined
        # audience settings should be no more than five, error will be thrown otherwise.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV3::CombinedAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of combined audience targeting setting.
      class CombinedAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Combined audience id of combined audience targeting setting. This id
        # is combined_audience_id.
        # Corresponds to the JSON property `combinedAudienceId`
        # @return [Fixnum]
        attr_accessor :combined_audience_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audience_id = args[:combined_audience_id] if args.key?(:combined_audience_id)
        end
      end
      
      # Common attributes for in-stream, non-skippable and bumper ads.
      class CommonInStreamAttribute
        include Google::Apis::Core::Hashable
      
        # The text on the call-to-action button.
        # Corresponds to the JSON property `actionButtonLabel`
        # @return [String]
        attr_accessor :action_button_label
      
        # The headline of the call-to-action banner.
        # Corresponds to the JSON property `actionHeadline`
        # @return [String]
        attr_accessor :action_headline
      
        # Meta data of an image asset.
        # Corresponds to the JSON property `companionBanner`
        # @return [Google::Apis::DisplayvideoV3::ImageAsset]
        attr_accessor :companion_banner
      
        # The webpage address that appears with the ad.
        # Corresponds to the JSON property `displayUrl`
        # @return [String]
        attr_accessor :display_url
      
        # The URL address of the webpage that people reach after they click the ad.
        # Corresponds to the JSON property `finalUrl`
        # @return [String]
        attr_accessor :final_url
      
        # The URL address loaded in the background for tracking purposes.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        # Details of a YouTube video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::DisplayvideoV3::YoutubeVideoDetails]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_button_label = args[:action_button_label] if args.key?(:action_button_label)
          @action_headline = args[:action_headline] if args.key?(:action_headline)
          @companion_banner = args[:companion_banner] if args.key?(:companion_banner)
          @display_url = args[:display_url] if args.key?(:display_url)
          @final_url = args[:final_url] if args.key?(:final_url)
          @tracking_url = args[:tracking_url] if args.key?(:tracking_url)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # User consent status.
      class Consent
        include Google::Apis::Core::Hashable
      
        # Represents consent for ad personalization.
        # Corresponds to the JSON property `adPersonalization`
        # @return [String]
        attr_accessor :ad_personalization
      
        # Represents consent for ad user data.
        # Corresponds to the JSON property `adUserData`
        # @return [String]
        attr_accessor :ad_user_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_personalization = args[:ad_personalization] if args.key?(:ad_personalization)
          @ad_user_data = args[:ad_user_data] if args.key?(:ad_user_data)
        end
      end
      
      # Contact information defining a Customer Match audience member.
      class ContactInfo
        include Google::Apis::Core::Hashable
      
        # Country code of the member. Must also be set with the following fields: *
        # hashed_first_name * hashed_last_name * zip_codes
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # A list of SHA256 hashed email of the member. Before hashing, remove all
        # whitespace and make sure the string is all lowercase.
        # Corresponds to the JSON property `hashedEmails`
        # @return [Array<String>]
        attr_accessor :hashed_emails
      
        # SHA256 hashed first name of the member. Before hashing, remove all whitespace
        # and make sure the string is all lowercase. Must also be set with the following
        # fields: * country_code * hashed_last_name * zip_codes
        # Corresponds to the JSON property `hashedFirstName`
        # @return [String]
        attr_accessor :hashed_first_name
      
        # SHA256 hashed last name of the member. Before hashing, remove all whitespace
        # and make sure the string is all lowercase. Must also be set with the following
        # fields: * country_code * hashed_first_name * zip_codes
        # Corresponds to the JSON property `hashedLastName`
        # @return [String]
        attr_accessor :hashed_last_name
      
        # A list of SHA256 hashed phone numbers of the member. Before hashing, all phone
        # numbers must be formatted using the [E.164 format](//en.wikipedia.org/wiki/E.
        # 164) and include the country calling code.
        # Corresponds to the JSON property `hashedPhoneNumbers`
        # @return [Array<String>]
        attr_accessor :hashed_phone_numbers
      
        # A list of zip codes of the member. Must also be set with the following fields:
        # * country_code * hashed_first_name * hashed_last_name
        # Corresponds to the JSON property `zipCodes`
        # @return [Array<String>]
        attr_accessor :zip_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @hashed_emails = args[:hashed_emails] if args.key?(:hashed_emails)
          @hashed_first_name = args[:hashed_first_name] if args.key?(:hashed_first_name)
          @hashed_last_name = args[:hashed_last_name] if args.key?(:hashed_last_name)
          @hashed_phone_numbers = args[:hashed_phone_numbers] if args.key?(:hashed_phone_numbers)
          @zip_codes = args[:zip_codes] if args.key?(:zip_codes)
        end
      end
      
      # Wrapper message for a list of contact information defining Customer Match
      # audience members.
      class ContactInfoList
        include Google::Apis::Core::Hashable
      
        # User consent status.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DisplayvideoV3::Consent]
        attr_accessor :consent
      
        # A list of ContactInfo objects defining Customer Match audience members. The
        # size of members after splitting the contact_infos mustn't be greater than 500,
        # 000.
        # Corresponds to the JSON property `contactInfos`
        # @return [Array<Google::Apis::DisplayvideoV3::ContactInfo>]
        attr_accessor :contact_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @contact_infos = args[:contact_infos] if args.key?(:contact_infos)
        end
      end
      
      # Details for content duration assigned targeting option. This will be populated
      # in the content_duration_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_DURATION`. Explicitly targeting all options is not
      # supported. Remove all content duration targeting options to achieve this
      # effect.
      class ContentDurationAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content duration.
        # Corresponds to the JSON property `contentDuration`
        # @return [String]
        attr_accessor :content_duration
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CONTENT_DURATION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_duration = args[:content_duration] if args.key?(:content_duration)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable content duration. This will be populated in the
      # content_duration_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_DURATION`.
      class ContentDurationTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content duration.
        # Corresponds to the JSON property `contentDuration`
        # @return [String]
        attr_accessor :content_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_duration = args[:content_duration] if args.key?(:content_duration)
        end
      end
      
      # Details for content genre assigned targeting option. This will be populated in
      # the content_genre_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_GENRE`. Explicitly targeting all options is not
      # supported. Remove all content genre targeting options to achieve this effect.
      class ContentGenreAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the content genre.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CONTENT_GENRE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable content genre. This will be populated in the
      # content_genre_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_GENRE`.
      class ContentGenreTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the content genre
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Assigned content instream position targeting option details. This will be
      # populated in the content_instream_position_details field when targeting_type
      # is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
      class ContentInstreamPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The ad type to target. Only applicable to insertion order
        # targeting and new line items supporting the specified ad type will inherit
        # this targeting option by default. Possible values are: * `AD_TYPE_VIDEO`, the
        # setting will be inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_VIDEO_DEFAULT`. * `AD_TYPE_AUDIO`, the setting will be
        # inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_AUDIO_DEFAULT`.
        # Corresponds to the JSON property `adType`
        # @return [String]
        attr_accessor :ad_type
      
        # Required. The content instream position for video or audio ads.
        # Corresponds to the JSON property `contentInstreamPosition`
        # @return [String]
        attr_accessor :content_instream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_type = args[:ad_type] if args.key?(:ad_type)
          @content_instream_position = args[:content_instream_position] if args.key?(:content_instream_position)
        end
      end
      
      # Represents a targetable content instream position, which could be used by
      # video and audio ads. This will be populated in the
      # content_instream_position_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
      class ContentInstreamPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content instream position.
        # Corresponds to the JSON property `contentInstreamPosition`
        # @return [String]
        attr_accessor :content_instream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_instream_position = args[:content_instream_position] if args.key?(:content_instream_position)
        end
      end
      
      # Assigned content outstream position targeting option details. This will be
      # populated in the content_outstream_position_details field when targeting_type
      # is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
      class ContentOutstreamPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The ad type to target. Only applicable to insertion order
        # targeting and new line items supporting the specified ad type will inherit
        # this targeting option by default. Possible values are: * `AD_TYPE_DISPLAY`,
        # the setting will be inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_DISPLAY_DEFAULT`. * `AD_TYPE_VIDEO`, the setting will be
        # inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_VIDEO_DEFAULT`.
        # Corresponds to the JSON property `adType`
        # @return [String]
        attr_accessor :ad_type
      
        # Required. The content outstream position.
        # Corresponds to the JSON property `contentOutstreamPosition`
        # @return [String]
        attr_accessor :content_outstream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_type = args[:ad_type] if args.key?(:ad_type)
          @content_outstream_position = args[:content_outstream_position] if args.key?(:content_outstream_position)
        end
      end
      
      # Represents a targetable content outstream position, which could be used by
      # display and video ads. This will be populated in the
      # content_outstream_position_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
      class ContentOutstreamPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content outstream position.
        # Corresponds to the JSON property `contentOutstreamPosition`
        # @return [String]
        attr_accessor :content_outstream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_outstream_position = args[:content_outstream_position] if args.key?(:content_outstream_position)
        end
      end
      
      # Details for content stream type assigned targeting option. This will be
      # populated in the content_stream_type_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_STREAM_TYPE`. Explicitly targeting all options is not
      # supported. Remove all content stream type targeting options to achieve this
      # effect.
      class ContentStreamTypeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content stream type.
        # Corresponds to the JSON property `contentStreamType`
        # @return [String]
        attr_accessor :content_stream_type
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CONTENT_STREAM_TYPE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_stream_type = args[:content_stream_type] if args.key?(:content_stream_type)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable content stream type. This will be populated in the
      # content_stream_type_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_STREAM_TYPE`.
      class ContentStreamTypeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content stream type.
        # Corresponds to the JSON property `contentStreamType`
        # @return [String]
        attr_accessor :content_stream_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_stream_type = args[:content_stream_type] if args.key?(:content_stream_type)
        end
      end
      
      # Targeting details for content theme. This will be populated in the details
      # field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.
      class ContentThemeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the DV360 content theme classifier.
        # Corresponds to the JSON property `contentTheme`
        # @return [String]
        attr_accessor :content_theme
      
        # Required. An enum for the DV360 content theme classified to be EXCLUDED.
        # Corresponds to the JSON property `excludedContentTheme`
        # @return [String]
        attr_accessor :excluded_content_theme
      
        # Required. ID of the content theme to be EXCLUDED.
        # Corresponds to the JSON property `excludedTargetingOptionId`
        # @return [String]
        attr_accessor :excluded_targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_theme = args[:content_theme] if args.key?(:content_theme)
          @excluded_content_theme = args[:excluded_content_theme] if args.key?(:excluded_content_theme)
          @excluded_targeting_option_id = args[:excluded_targeting_option_id] if args.key?(:excluded_targeting_option_id)
        end
      end
      
      # Represents a targetable content theme. This will be populated in the
      # content_theme_details field of the TargetingOption when targeting_type is `
      # TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.
      class ContentThemeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the DV360 content theme content classifier.
        # Corresponds to the JSON property `contentTheme`
        # @return [String]
        attr_accessor :content_theme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_theme = args[:content_theme] if args.key?(:content_theme)
        end
      end
      
      # Settings that control how conversions are counted. All post-click conversions
      # will be counted. A percentage value can be set for post-view conversions
      # counting.
      class ConversionCountingConfig
        include Google::Apis::Core::Hashable
      
        # The Floodlight activity configs used to track conversions. The number of
        # conversions counted is the sum of all of the conversions counted by all of the
        # Floodlight activity IDs specified in this field. This field can't be updated
        # if a custom bidding algorithm is assigned to the line item. If you set this
        # field and assign a custom bidding algorithm in the same request, the
        # floodlight activities must match the ones used by the custom bidding algorithm.
        # Corresponds to the JSON property `floodlightActivityConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::TrackingFloodlightActivityConfig>]
        attr_accessor :floodlight_activity_configs
      
        # The percentage of post-view conversions to count, in millis (1/1000 of a
        # percent). Must be between 0 and 100000 inclusive. For example, to track 50% of
        # the post-click conversions, set a value of 50000.
        # Corresponds to the JSON property `postViewCountPercentageMillis`
        # @return [Fixnum]
        attr_accessor :post_view_count_percentage_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_configs = args[:floodlight_activity_configs] if args.key?(:floodlight_activity_configs)
          @post_view_count_percentage_millis = args[:post_view_count_percentage_millis] if args.key?(:post_view_count_percentage_millis)
        end
      end
      
      # Counter event of the creative.
      class CounterEvent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the counter event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name used to identify this counter event in reports.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
        end
      end
      
      # A request message for CreateAsset.
      class CreateAssetRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filename of the asset, including the file extension. The
        # filename must be UTF-8 encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # A response message for CreateAsset.
      class CreateAssetResponse
        include Google::Apis::Core::Hashable
      
        # A single asset.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::DisplayvideoV3::Asset]
        attr_accessor :asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
        end
      end
      
      # A request listing which assigned targeting options of a given targeting type
      # should be created and added.
      class CreateAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The assigned targeting options to create and add.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # Required. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
        end
      end
      
      # Request message for [SdfDownloadTaskService.CreateSdfDownloadTask].
      class CreateSdfDownloadTaskRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser to download SDF for.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # A filtering option that filters entities by their entity IDs.
        # Corresponds to the JSON property `idFilter`
        # @return [Google::Apis::DisplayvideoV3::IdFilter]
        attr_accessor :id_filter
      
        # A filtering option for filtering on Inventory Source entities.
        # Corresponds to the JSON property `inventorySourceFilter`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceFilter]
        attr_accessor :inventory_source_filter
      
        # A filtering option that filters on selected file types belonging to a chosen
        # set of filter entities.
        # Corresponds to the JSON property `parentEntityFilter`
        # @return [Google::Apis::DisplayvideoV3::ParentEntityFilter]
        attr_accessor :parent_entity_filter
      
        # The ID of the partner to download SDF for.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Required. The SDF version of the downloaded file. If set to `
        # SDF_VERSION_UNSPECIFIED`, this will default to the version specified by the
        # advertiser or partner identified by `root_id`. An advertiser inherits its SDF
        # version from its partner unless configured otherwise.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @id_filter = args[:id_filter] if args.key?(:id_filter)
          @inventory_source_filter = args[:inventory_source_filter] if args.key?(:inventory_source_filter)
          @parent_entity_filter = args[:parent_entity_filter] if args.key?(:parent_entity_filter)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A single Creative.
      class Creative
        include Google::Apis::Core::Hashable
      
        # Optional. Additional dimensions. Applicable when creative_type is one of: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` * `CREATIVE_TYPE_NATIVE` *
        # `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_LIGHTBOX` * `
        # CREATIVE_TYPE_PUBLISHER_HOSTED` If this field is specified, width_pixels and
        # height_pixels are both required and must be greater than or equal to 0.
        # Corresponds to the JSON property `additionalDimensions`
        # @return [Array<Google::Apis::DisplayvideoV3::Dimensions>]
        attr_accessor :additional_dimensions
      
        # Output only. The unique ID of the advertiser the creative belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Optional. Third-party HTML tracking tag to be appended to the creative tag.
        # Corresponds to the JSON property `appendedTag`
        # @return [String]
        attr_accessor :appended_tag
      
        # Required. Assets associated to this creative.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::DisplayvideoV3::AssetAssociation>]
        attr_accessor :assets
      
        # Output only. The unique ID of the Campaign Manager 360 placement associated
        # with the creative. This field is only applicable for creatives that are synced
        # from Campaign Manager.
        # Corresponds to the JSON property `cmPlacementId`
        # @return [Fixnum]
        attr_accessor :cm_placement_id
      
        # A Campaign Manager 360 tracking ad.
        # Corresponds to the JSON property `cmTrackingAd`
        # @return [Google::Apis::DisplayvideoV3::CmTrackingAd]
        attr_accessor :cm_tracking_ad
      
        # Optional. The IDs of companion creatives for a video creative. You can assign
        # existing display creatives (with image or HTML5 assets) to serve surrounding
        # the publisher's video player. Companions display around the video player while
        # the video is playing and remain after the video has completed. Creatives
        # contain additional dimensions can not be companion creatives. This field is
        # only supported for the following creative_type: * `CREATIVE_TYPE_AUDIO` * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `companionCreativeIds`
        # @return [Array<Fixnum>]
        attr_accessor :companion_creative_ids
      
        # Optional. Counter events for a rich media creative. Counters track the number
        # of times that a user interacts with any part of a rich media creative in a
        # specified way (mouse-overs, mouse-outs, clicks, taps, data loading, keyboard
        # entries, etc.). Any event that can be captured in the creative can be recorded
        # as a counter. Leave it empty or unset for creatives containing image assets
        # only.
        # Corresponds to the JSON property `counterEvents`
        # @return [Array<Google::Apis::DisplayvideoV3::CounterEvent>]
        attr_accessor :counter_events
      
        # Output only. The timestamp when the creative was created. Assigned by the
        # system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. A list of attributes of the creative that is generated by the
        # system.
        # Corresponds to the JSON property `creativeAttributes`
        # @return [Array<String>]
        attr_accessor :creative_attributes
      
        # Output only. The unique ID of the creative. Assigned by the system.
        # Corresponds to the JSON property `creativeId`
        # @return [Fixnum]
        attr_accessor :creative_id
      
        # Required. Immutable. The type of the creative.
        # Corresponds to the JSON property `creativeType`
        # @return [String]
        attr_accessor :creative_type
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :dimensions
      
        # Required. The display name of the creative. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Indicates whether the creative is dynamic.
        # Corresponds to the JSON property `dynamic`
        # @return [Boolean]
        attr_accessor :dynamic
        alias_method :dynamic?, :dynamic
      
        # Required. Controls whether or not the creative can serve. Accepted values are:
        # * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED` * `ENTITY_STATUS_PAUSED`
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Required. Exit events for this creative. An exit (also known as a click tag)
        # is any area in your creative that someone can click or tap to open an
        # advertiser's landing page. Every creative must include at least one exit. You
        # can add an exit to your creative in any of the following ways: * Use Google
        # Web Designer's tap area. * Define a JavaScript variable called "clickTag". *
        # Use the Enabler (Enabler.exit()) to track exits in rich media formats.
        # Corresponds to the JSON property `exitEvents`
        # @return [Array<Google::Apis::DisplayvideoV3::ExitEvent>]
        attr_accessor :exit_events
      
        # Optional. Indicates the creative will automatically expand on hover. Optional
        # and only valid for third-party expandable creatives. Third-party expandable
        # creatives are creatives with following hosting source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `expandOnHover`
        # @return [Boolean]
        attr_accessor :expand_on_hover
        alias_method :expand_on_hover?, :expand_on_hover
      
        # Optional. Specifies the expanding direction of the creative. Required and only
        # valid for third-party expandable creatives. Third-party expandable creatives
        # are creatives with following hosting source: * `HOSTING_SOURCE_THIRD_PARTY`
        # combined with following creative_type: * `CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `expandingDirection`
        # @return [String]
        attr_accessor :expanding_direction
      
        # Required. Indicates where the creative is hosted.
        # Corresponds to the JSON property `hostingSource`
        # @return [String]
        attr_accessor :hosting_source
      
        # Output only. Indicates the third-party VAST tag creative requires HTML5 Video
        # support. Output only and only valid for third-party VAST tag creatives. Third-
        # party VAST tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `html5Video`
        # @return [Boolean]
        attr_accessor :html5_video
        alias_method :html5_video?, :html5_video
      
        # Optional. Indicates whether Integral Ad Science (IAS) campaign monitoring is
        # enabled. To enable this for the creative, make sure the Advertiser.
        # creative_config.ias_client_id has been set to your IAS client ID.
        # Corresponds to the JSON property `iasCampaignMonitoring`
        # @return [Boolean]
        attr_accessor :ias_campaign_monitoring
        alias_method :ias_campaign_monitoring?, :ias_campaign_monitoring
      
        # Optional. ID information used to link this creative to an external system.
        # Must be UTF-8 encoded with a length of no more than 10,000 characters.
        # Corresponds to the JSON property `integrationCode`
        # @return [String]
        attr_accessor :integration_code
      
        # Optional. JavaScript measurement URL from supported third-party verification
        # providers (ComScore, DoubleVerify, IAS, Moat). HTML script tags are not
        # supported. This field is only writeable in the following creative_type: * `
        # CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `
        # CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `jsTrackerUrl`
        # @return [String]
        attr_accessor :js_tracker_url
      
        # Output only. The IDs of the line items this creative is associated with. To
        # associate a creative to a line item, use LineItem.creative_ids instead.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # Output only. Media duration of the creative. Applicable when creative_type is
        # one of: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_AUDIO` * `
        # CREATIVE_TYPE_NATIVE_VIDEO` * `CREATIVE_TYPE_PUBLISHER_HOSTED`
        # Corresponds to the JSON property `mediaDuration`
        # @return [String]
        attr_accessor :media_duration
      
        # Output only. Indicates the third-party audio creative supports MP3. Output
        # only and only valid for third-party audio creatives. Third-party audio
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_AUDIO`
        # Corresponds to the JSON property `mp3Audio`
        # @return [Boolean]
        attr_accessor :mp3_audio
        alias_method :mp3_audio?, :mp3_audio
      
        # Output only. The resource name of the creative.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. User notes for this creative. Must be UTF-8 encoded with a length of
        # no more than 20,000 characters.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # OBA Icon for a Creative
        # Corresponds to the JSON property `obaIcon`
        # @return [Google::Apis::DisplayvideoV3::ObaIcon]
        attr_accessor :oba_icon
      
        # Output only. Indicates the third-party audio creative supports OGG. Output
        # only and only valid for third-party audio creatives. Third-party audio
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_AUDIO`
        # Corresponds to the JSON property `oggAudio`
        # @return [Boolean]
        attr_accessor :ogg_audio
        alias_method :ogg_audio?, :ogg_audio
      
        # The length an audio or a video has been played.
        # Corresponds to the JSON property `progressOffset`
        # @return [Google::Apis::DisplayvideoV3::AudioVideoOffset]
        attr_accessor :progress_offset
      
        # Optional. Indicates that the creative relies on HTML5 to render properly.
        # Optional and only valid for third-party tag creatives. Third-party tag
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `requireHtml5`
        # @return [Boolean]
        attr_accessor :require_html5
        alias_method :require_html5?, :require_html5
      
        # Optional. Indicates that the creative requires MRAID (Mobile Rich Media Ad
        # Interface Definitions system). Set this if the creative relies on mobile
        # gestures for interactivity, such as swiping or tapping. Optional and only
        # valid for third-party tag creatives. Third-party tag creatives are creatives
        # with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with
        # following creative_type: * `CREATIVE_TYPE_STANDARD` * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `requireMraid`
        # @return [Boolean]
        attr_accessor :require_mraid
        alias_method :require_mraid?, :require_mraid
      
        # Optional. Indicates that the creative will wait for a return ping for
        # attribution. Only valid when using a Campaign Manager 360 tracking ad with a
        # third-party ad server parameter and the $`DC_DBM_TOKEN` macro. Optional and
        # only valid for third-party tag creatives or third-party VAST tag creatives.
        # Third-party tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` Third-party VAST tag
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `requirePingForAttribution`
        # @return [Boolean]
        attr_accessor :require_ping_for_attribution
        alias_method :require_ping_for_attribution?, :require_ping_for_attribution
      
        # Review statuses for the creative.
        # Corresponds to the JSON property `reviewStatus`
        # @return [Google::Apis::DisplayvideoV3::ReviewStatusInfo]
        attr_accessor :review_status
      
        # The length an audio or a video has been played.
        # Corresponds to the JSON property `skipOffset`
        # @return [Google::Apis::DisplayvideoV3::AudioVideoOffset]
        attr_accessor :skip_offset
      
        # Optional. Whether the user can choose to skip a video creative. This field is
        # only supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `skippable`
        # @return [Boolean]
        attr_accessor :skippable
        alias_method :skippable?, :skippable
      
        # Optional. The original third-party tag used for the creative. Required and
        # only valid for third-party tag creatives. Third-party tag creatives are
        # creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY`
        # combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `thirdPartyTag`
        # @return [String]
        attr_accessor :third_party_tag
      
        # Optional. Tracking URLs from third parties to track interactions with a video
        # creative. This field is only supported for the following creative_type: * `
        # CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `thirdPartyUrls`
        # @return [Array<Google::Apis::DisplayvideoV3::ThirdPartyUrl>]
        attr_accessor :third_party_urls
      
        # Optional. Timer custom events for a rich media creative. Timers track the time
        # during which a user views and interacts with a specified part of a rich media
        # creative. A creative can have multiple timer events, each timed independently.
        # Leave it empty or unset for creatives containing image assets only.
        # Corresponds to the JSON property `timerEvents`
        # @return [Array<Google::Apis::DisplayvideoV3::TimerEvent>]
        attr_accessor :timer_events
      
        # Optional. Tracking URLs for analytics providers or third-party ad technology
        # vendors. The URLs must start with `https:` (except on inventory that doesn't
        # require SSL compliance). If using macros in your URL, use only macros
        # supported by Display & Video 360. Standard URLs only, no IMG or SCRIPT tags.
        # This field is only writeable in the following creative_type: * `
        # CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `
        # CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `trackerUrls`
        # @return [Array<String>]
        attr_accessor :tracker_urls
      
        # Output only. Audio/Video transcodes. Display & Video 360 transcodes the main
        # asset into a number of alternative versions that use different file formats or
        # have different properties (resolution, audio bit rate, and video bit rate),
        # each designed for specific video players or bandwidths. These transcodes give
        # a publisher's system more options to choose from for each impression on your
        # video and ensures that the appropriate file serves based on the viewer’s
        # connection and screen size. This field is only supported in the following
        # creative_type: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO` * `
        # CREATIVE_TYPE_AUDIO`
        # Corresponds to the JSON property `transcodes`
        # @return [Array<Google::Apis::DisplayvideoV3::Transcode>]
        attr_accessor :transcodes
      
        # A creative identifier provided by a registry that is unique across all
        # platforms. This is part of the VAST 4.0 standard.
        # Corresponds to the JSON property `universalAdId`
        # @return [Google::Apis::DisplayvideoV3::UniversalAdId]
        attr_accessor :universal_ad_id
      
        # Output only. The timestamp when the creative was last updated, either by the
        # user or system (e.g. creative review). Assigned by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The URL of the VAST tag for a third-party VAST tag creative.
        # Required and only valid for third-party VAST tag creatives. Third-party VAST
        # tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `vastTagUrl`
        # @return [String]
        attr_accessor :vast_tag_url
      
        # Output only. Indicates the third-party VAST tag creative requires VPAID (
        # Digital Video Player-Ad Interface). Output only and only valid for third-party
        # VAST tag creatives. Third-party VAST tag creatives are creatives with
        # following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with
        # following creative_type: * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `vpaid`
        # @return [Boolean]
        attr_accessor :vpaid
        alias_method :vpaid?, :vpaid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_dimensions = args[:additional_dimensions] if args.key?(:additional_dimensions)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @appended_tag = args[:appended_tag] if args.key?(:appended_tag)
          @assets = args[:assets] if args.key?(:assets)
          @cm_placement_id = args[:cm_placement_id] if args.key?(:cm_placement_id)
          @cm_tracking_ad = args[:cm_tracking_ad] if args.key?(:cm_tracking_ad)
          @companion_creative_ids = args[:companion_creative_ids] if args.key?(:companion_creative_ids)
          @counter_events = args[:counter_events] if args.key?(:counter_events)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creative_attributes = args[:creative_attributes] if args.key?(:creative_attributes)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @creative_type = args[:creative_type] if args.key?(:creative_type)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dynamic = args[:dynamic] if args.key?(:dynamic)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @exit_events = args[:exit_events] if args.key?(:exit_events)
          @expand_on_hover = args[:expand_on_hover] if args.key?(:expand_on_hover)
          @expanding_direction = args[:expanding_direction] if args.key?(:expanding_direction)
          @hosting_source = args[:hosting_source] if args.key?(:hosting_source)
          @html5_video = args[:html5_video] if args.key?(:html5_video)
          @ias_campaign_monitoring = args[:ias_campaign_monitoring] if args.key?(:ias_campaign_monitoring)
          @integration_code = args[:integration_code] if args.key?(:integration_code)
          @js_tracker_url = args[:js_tracker_url] if args.key?(:js_tracker_url)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @media_duration = args[:media_duration] if args.key?(:media_duration)
          @mp3_audio = args[:mp3_audio] if args.key?(:mp3_audio)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @oba_icon = args[:oba_icon] if args.key?(:oba_icon)
          @ogg_audio = args[:ogg_audio] if args.key?(:ogg_audio)
          @progress_offset = args[:progress_offset] if args.key?(:progress_offset)
          @require_html5 = args[:require_html5] if args.key?(:require_html5)
          @require_mraid = args[:require_mraid] if args.key?(:require_mraid)
          @require_ping_for_attribution = args[:require_ping_for_attribution] if args.key?(:require_ping_for_attribution)
          @review_status = args[:review_status] if args.key?(:review_status)
          @skip_offset = args[:skip_offset] if args.key?(:skip_offset)
          @skippable = args[:skippable] if args.key?(:skippable)
          @third_party_tag = args[:third_party_tag] if args.key?(:third_party_tag)
          @third_party_urls = args[:third_party_urls] if args.key?(:third_party_urls)
          @timer_events = args[:timer_events] if args.key?(:timer_events)
          @tracker_urls = args[:tracker_urls] if args.key?(:tracker_urls)
          @transcodes = args[:transcodes] if args.key?(:transcodes)
          @universal_ad_id = args[:universal_ad_id] if args.key?(:universal_ad_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vast_tag_url = args[:vast_tag_url] if args.key?(:vast_tag_url)
          @vpaid = args[:vpaid] if args.key?(:vpaid)
        end
      end
      
      # Creative requirements configuration for the inventory source.
      class CreativeConfig
        include Google::Apis::Core::Hashable
      
        # The type of creative that can be assigned to the inventory source. Only the
        # following types are supported: * `CREATIVE_TYPE_STANDARD` * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `creativeType`
        # @return [String]
        attr_accessor :creative_type
      
        # The configuration for display creatives.
        # Corresponds to the JSON property `displayCreativeConfig`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceDisplayCreativeConfig]
        attr_accessor :display_creative_config
      
        # The configuration for video creatives.
        # Corresponds to the JSON property `videoCreativeConfig`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceVideoCreativeConfig]
        attr_accessor :video_creative_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_type = args[:creative_type] if args.key?(:creative_type)
          @display_creative_config = args[:display_creative_config] if args.key?(:display_creative_config)
          @video_creative_config = args[:video_creative_config] if args.key?(:video_creative_config)
        end
      end
      
      # A single custom bidding algorithm.
      class CustomBiddingAlgorithm
        include Google::Apis::Core::Hashable
      
        # Immutable. The unique ID of the advertiser that owns the custom bidding
        # algorithm.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The unique ID of the custom bidding algorithm. Assigned by the
        # system.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # Required. Immutable. The type of custom bidding algorithm.
        # Corresponds to the JSON property `customBiddingAlgorithmType`
        # @return [String]
        attr_accessor :custom_bidding_algorithm_type
      
        # Required. The display name of the custom bidding algorithm. Must be UTF-8
        # encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Controls whether or not the custom bidding algorithm can be used as a bidding
        # strategy. Accepted values are: * `ENTITY_STATUS_ACTIVE` * `
        # ENTITY_STATUS_ARCHIVED`
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Output only. The details of custom bidding models for each advertiser who has
        # access. This field may only include the details of the queried advertiser if
        # the algorithm [`owner`](/display-video/api/reference/rest/v1/
        # customBiddingAlgorithms#CustomBiddingAlgorithm.FIELDS.oneof_owner) is a
        # partner and is being retrieved using an advertiser [`accessor`](/display-video/
        # api/reference/rest/v1/customBiddingAlgorithms/list#body.QUERY_PARAMETERS.
        # oneof_accessor).
        # Corresponds to the JSON property `modelDetails`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomBiddingModelDetails>]
        attr_accessor :model_details
      
        # Output only. The resource name of the custom bidding algorithm.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The unique ID of the partner that owns the custom bidding algorithm.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # The IDs of the advertisers who have access to this algorithm. If advertiser_id
        # is set, this field will only consist of that value. This field will not be set
        # if the algorithm [`owner`](/display-video/api/reference/rest/v1/
        # customBiddingAlgorithms#CustomBiddingAlgorithm.FIELDS.oneof_owner) is a
        # partner and is being retrieved using an advertiser [`accessor`](/display-video/
        # api/reference/rest/v1/customBiddingAlgorithms/list#body.QUERY_PARAMETERS.
        # oneof_accessor).
        # Corresponds to the JSON property `sharedAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :shared_advertiser_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @custom_bidding_algorithm_type = args[:custom_bidding_algorithm_type] if args.key?(:custom_bidding_algorithm_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @model_details = args[:model_details] if args.key?(:model_details)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @shared_advertiser_ids = args[:shared_advertiser_ids] if args.key?(:shared_advertiser_ids)
        end
      end
      
      # A single custom bidding algorithm rules.
      class CustomBiddingAlgorithmRules
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the rules resource is currently being used for scoring by
        # the parent algorithm.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Output only. The time when the rules resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique ID of the custom bidding algorithm that the rules
        # resource belongs to.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # Output only. The unique ID of the rules resource.
        # Corresponds to the JSON property `customBiddingAlgorithmRulesId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_rules_id
      
        # An error message for a CustomBiddingAlgorithmRules resource.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesError]
        attr_accessor :error
      
        # Output only. The resource name of the rules resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The reference to the uploaded AlgorithmRules file. Retrieve the location to
        # upload new AlgorithmRules file to using customBiddingAlgorithms.uploadRules.
        # Corresponds to the JSON property `rules`
        # @return [Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesRef]
        attr_accessor :rules
      
        # Output only. The state of the rules resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @custom_bidding_algorithm_rules_id = args[:custom_bidding_algorithm_rules_id] if args.key?(:custom_bidding_algorithm_rules_id)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # An error message for a CustomBiddingAlgorithmRules resource.
      class CustomBiddingAlgorithmRulesError
        include Google::Apis::Core::Hashable
      
        # The type of error.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
        end
      end
      
      # The reference to the uploaded AlgorithmRules file. Retrieve the location to
      # upload new AlgorithmRules file to using customBiddingAlgorithms.uploadRules.
      class CustomBiddingAlgorithmRulesRef
        include Google::Apis::Core::Hashable
      
        # A resource name to be used in media.download to download the rules files. Or
        # media.upload to upload the rules files. Resource names have the format `
        # customBiddingAlgorithms/`custom_bidding_algorithm_id`/rulesRef/`ref_id``.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # The details of a custom bidding algorithm model for a single shared advertiser.
      class CustomBiddingModelDetails
        include Google::Apis::Core::Hashable
      
        # The unique ID of the relevant advertiser.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The readiness state of custom bidding model.
        # Corresponds to the JSON property `readinessState`
        # @return [String]
        attr_accessor :readiness_state
      
        # Output only. The suspension state of custom bidding model.
        # Corresponds to the JSON property `suspensionState`
        # @return [String]
        attr_accessor :suspension_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @readiness_state = args[:readiness_state] if args.key?(:readiness_state)
          @suspension_state = args[:suspension_state] if args.key?(:suspension_state)
        end
      end
      
      # A single custom bidding script.
      class CustomBiddingScript
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the script is currently being used for scoring by the
        # parent algorithm.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Output only. The time when the script was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique ID of the custom bidding algorithm the script belongs
        # to.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # Output only. The unique ID of the custom bidding script.
        # Corresponds to the JSON property `customBiddingScriptId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_script_id
      
        # Output only. Error details of a rejected custom bidding script. This field
        # will only be populated when state is REJECTED.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DisplayvideoV3::ScriptError>]
        attr_accessor :errors
      
        # Output only. The resource name of the custom bidding script.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The reference to the uploaded custom bidding script file.
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::DisplayvideoV3::CustomBiddingScriptRef]
        attr_accessor :script
      
        # Output only. The state of the custom bidding script.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @custom_bidding_script_id = args[:custom_bidding_script_id] if args.key?(:custom_bidding_script_id)
          @errors = args[:errors] if args.key?(:errors)
          @name = args[:name] if args.key?(:name)
          @script = args[:script] if args.key?(:script)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The reference to the uploaded custom bidding script file.
      class CustomBiddingScriptRef
        include Google::Apis::Core::Hashable
      
        # A resource name to be used in media.download to Download the script files. Or
        # media.upload to Upload the script files. Resource names have the format `
        # customBiddingAlgorithms/`custom_bidding_algorithm_id`/scriptRef/`ref_id``.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # The key and value of a custom label.
      class CustomLabel
        include Google::Apis::Core::Hashable
      
        # The key of the label.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the label.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes a custom list entity, such as a custom affinity or custom intent
      # audience list.
      class CustomList
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the custom list. Assigned by the system.
        # Corresponds to the JSON property `customListId`
        # @return [Fixnum]
        attr_accessor :custom_list_id
      
        # Output only. The display name of the custom list. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the custom list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_list_id = args[:custom_list_id] if args.key?(:custom_list_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of custom list group. All custom list targeting settings are logically
      # ‘OR’ of each other.
      class CustomListGroup
        include Google::Apis::Core::Hashable
      
        # Required. All custom list targeting settings in custom list group. Repeated
        # settings with the same id will be ignored.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomListTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of custom list targeting setting.
      class CustomListTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Custom id of custom list targeting setting. This id is
        # custom_list_id.
        # Corresponds to the JSON property `customListId`
        # @return [Fixnum]
        attr_accessor :custom_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_list_id = args[:custom_list_id] if args.key?(:custom_list_id)
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
      
      # A date range.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::DisplayvideoV3::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::DisplayvideoV3::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Representation of time defined by day of the week and hour of the day.
      class DayAndTime
        include Google::Apis::Core::Hashable
      
        # Required. Day of the week.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Required. Hour of the day.
        # Corresponds to the JSON property `hourOfDay`
        # @return [Fixnum]
        attr_accessor :hour_of_day
      
        # Required. The mechanism used to determine the relevant timezone.
        # Corresponds to the JSON property `timeZoneResolution`
        # @return [String]
        attr_accessor :time_zone_resolution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @hour_of_day = args[:hour_of_day] if args.key?(:hour_of_day)
          @time_zone_resolution = args[:time_zone_resolution] if args.key?(:time_zone_resolution)
        end
      end
      
      # Representation of a segment of time defined on a specific day of the week and
      # with a start and end time. The time represented by `start_hour` must be before
      # the time represented by `end_hour`.
      class DayAndTimeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The day of the week for this day and time targeting setting.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Required. The end hour for day and time targeting. Must be between 1 (1 hour
        # after start of day) and 24 (end of day).
        # Corresponds to the JSON property `endHour`
        # @return [Fixnum]
        attr_accessor :end_hour
      
        # Required. The start hour for day and time targeting. Must be between 0 (start
        # of day) and 23 (1 hour before end of day).
        # Corresponds to the JSON property `startHour`
        # @return [Fixnum]
        attr_accessor :start_hour
      
        # Required. The mechanism used to determine which timezone to use for this day
        # and time targeting setting.
        # Corresponds to the JSON property `timeZoneResolution`
        # @return [String]
        attr_accessor :time_zone_resolution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_hour = args[:end_hour] if args.key?(:end_hour)
          @start_hour = args[:start_hour] if args.key?(:start_hour)
          @time_zone_resolution = args[:time_zone_resolution] if args.key?(:time_zone_resolution)
        end
      end
      
      # A request listing which assigned targeting options of a given targeting type
      # should be deleted.
      class DeleteAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The assigned targeting option IDs to delete.
        # Corresponds to the JSON property `assignedTargetingOptionIds`
        # @return [Array<String>]
        attr_accessor :assigned_targeting_option_ids
      
        # Required. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_option_ids = args[:assigned_targeting_option_ids] if args.key?(:assigned_targeting_option_ids)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
        end
      end
      
      # Assigned device make and model targeting option details. This will be
      # populated in the device_make_model_details field when targeting_type is `
      # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
      class DeviceMakeModelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the device make and model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable device make and model. This will be populated in the
      # device_make_model_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
      class DeviceMakeModelTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the device make and model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Targeting details for device type. This will be populated in the details field
      # of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_TYPE`.
      class DeviceTypeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the device type.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Output only. Bid multiplier allows you to show your ads more or less
        # frequently based on the device type. It will apply a multiplier on the
        # original bid price. When this field is 0, it indicates this field is not
        # applicable instead of multiplying 0 on the original bid price. For example, if
        # the bid price without multiplier is $10.0 and the multiplier is 1.5 for Tablet,
        # the resulting bid price for Tablet will be $15.0. Only applicable to YouTube
        # and Partners line items.
        # Corresponds to the JSON property `youtubeAndPartnersBidMultiplier`
        # @return [Float]
        attr_accessor :youtube_and_partners_bid_multiplier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
          @youtube_and_partners_bid_multiplier = args[:youtube_and_partners_bid_multiplier] if args.key?(:youtube_and_partners_bid_multiplier)
        end
      end
      
      # Represents a targetable device type. This will be populated in the
      # device_type_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_TYPE`.
      class DeviceTypeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The device type that is used to be targeted.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
        end
      end
      
      # Targeting details for digital content label. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
      class DigitalContentLabelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the digital content label rating tier to be
        # EXCLUDED.
        # Corresponds to the JSON property `excludedContentRatingTier`
        # @return [String]
        attr_accessor :excluded_content_rating_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_content_rating_tier = args[:excluded_content_rating_tier] if args.key?(:excluded_content_rating_tier)
        end
      end
      
      # Represents a targetable digital content label rating tier. This will be
      # populated in the digital_content_label_details field of the TargetingOption
      # when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
      class DigitalContentLabelTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the content label brand safety tiers.
        # Corresponds to the JSON property `contentRatingTier`
        # @return [String]
        attr_accessor :content_rating_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_rating_tier = args[:content_rating_tier] if args.key?(:content_rating_tier)
        end
      end
      
      # Dimensions.
      class Dimensions
        include Google::Apis::Core::Hashable
      
        # The height in pixels.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # The width in pixels.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
      
      # The ad sourced from a DV360 creative.
      class DisplayVideoSourceAd
        include Google::Apis::Core::Hashable
      
        # The ID of the source creative.
        # Corresponds to the JSON property `creativeId`
        # @return [Fixnum]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # Details of DoubleVerify settings.
      class DoubleVerify
        include Google::Apis::Core::Hashable
      
        # Details of DoubleVerify star ratings settings.
        # Corresponds to the JSON property `appStarRating`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerifyAppStarRating]
        attr_accessor :app_star_rating
      
        # Avoid bidding on apps with the age rating.
        # Corresponds to the JSON property `avoidedAgeRatings`
        # @return [Array<String>]
        attr_accessor :avoided_age_ratings
      
        # Settings for brand safety controls.
        # Corresponds to the JSON property `brandSafetyCategories`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerifyBrandSafetyCategories]
        attr_accessor :brand_safety_categories
      
        # The custom segment ID provided by DoubleVerify. The ID must start with "51"
        # and consist of eight digits. Custom segment ID cannot be specified along with
        # any of the following fields: * brand_safety_categories * avoided_age_ratings *
        # app_star_rating * fraud_invalid_traffic
        # Corresponds to the JSON property `customSegmentId`
        # @return [Fixnum]
        attr_accessor :custom_segment_id
      
        # Details of DoubleVerify display viewability settings.
        # Corresponds to the JSON property `displayViewability`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerifyDisplayViewability]
        attr_accessor :display_viewability
      
        # DoubleVerify Fraud & Invalid Traffic settings.
        # Corresponds to the JSON property `fraudInvalidTraffic`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerifyFraudInvalidTraffic]
        attr_accessor :fraud_invalid_traffic
      
        # Details of DoubleVerify video viewability settings.
        # Corresponds to the JSON property `videoViewability`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerifyVideoViewability]
        attr_accessor :video_viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_star_rating = args[:app_star_rating] if args.key?(:app_star_rating)
          @avoided_age_ratings = args[:avoided_age_ratings] if args.key?(:avoided_age_ratings)
          @brand_safety_categories = args[:brand_safety_categories] if args.key?(:brand_safety_categories)
          @custom_segment_id = args[:custom_segment_id] if args.key?(:custom_segment_id)
          @display_viewability = args[:display_viewability] if args.key?(:display_viewability)
          @fraud_invalid_traffic = args[:fraud_invalid_traffic] if args.key?(:fraud_invalid_traffic)
          @video_viewability = args[:video_viewability] if args.key?(:video_viewability)
        end
      end
      
      # Details of DoubleVerify star ratings settings.
      class DoubleVerifyAppStarRating
        include Google::Apis::Core::Hashable
      
        # Avoid bidding on apps with insufficient star ratings.
        # Corresponds to the JSON property `avoidInsufficientStarRating`
        # @return [Boolean]
        attr_accessor :avoid_insufficient_star_rating
        alias_method :avoid_insufficient_star_rating?, :avoid_insufficient_star_rating
      
        # Avoid bidding on apps with the star ratings.
        # Corresponds to the JSON property `avoidedStarRating`
        # @return [String]
        attr_accessor :avoided_star_rating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_insufficient_star_rating = args[:avoid_insufficient_star_rating] if args.key?(:avoid_insufficient_star_rating)
          @avoided_star_rating = args[:avoided_star_rating] if args.key?(:avoided_star_rating)
        end
      end
      
      # Settings for brand safety controls.
      class DoubleVerifyBrandSafetyCategories
        include Google::Apis::Core::Hashable
      
        # Unknown or unrateable.
        # Corresponds to the JSON property `avoidUnknownBrandSafetyCategory`
        # @return [Boolean]
        attr_accessor :avoid_unknown_brand_safety_category
        alias_method :avoid_unknown_brand_safety_category?, :avoid_unknown_brand_safety_category
      
        # Brand safety high severity avoidance categories.
        # Corresponds to the JSON property `avoidedHighSeverityCategories`
        # @return [Array<String>]
        attr_accessor :avoided_high_severity_categories
      
        # Brand safety medium severity avoidance categories.
        # Corresponds to the JSON property `avoidedMediumSeverityCategories`
        # @return [Array<String>]
        attr_accessor :avoided_medium_severity_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_unknown_brand_safety_category = args[:avoid_unknown_brand_safety_category] if args.key?(:avoid_unknown_brand_safety_category)
          @avoided_high_severity_categories = args[:avoided_high_severity_categories] if args.key?(:avoided_high_severity_categories)
          @avoided_medium_severity_categories = args[:avoided_medium_severity_categories] if args.key?(:avoided_medium_severity_categories)
        end
      end
      
      # Details of DoubleVerify display viewability settings.
      class DoubleVerifyDisplayViewability
        include Google::Apis::Core::Hashable
      
        # Target web and app inventory to maximize IAB viewable rate.
        # Corresponds to the JSON property `iab`
        # @return [String]
        attr_accessor :iab
      
        # Target web and app inventory to maximize 100% viewable duration.
        # Corresponds to the JSON property `viewableDuring`
        # @return [String]
        attr_accessor :viewable_during
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iab = args[:iab] if args.key?(:iab)
          @viewable_during = args[:viewable_during] if args.key?(:viewable_during)
        end
      end
      
      # DoubleVerify Fraud & Invalid Traffic settings.
      class DoubleVerifyFraudInvalidTraffic
        include Google::Apis::Core::Hashable
      
        # Insufficient Historical Fraud & IVT Stats.
        # Corresponds to the JSON property `avoidInsufficientOption`
        # @return [Boolean]
        attr_accessor :avoid_insufficient_option
        alias_method :avoid_insufficient_option?, :avoid_insufficient_option
      
        # Avoid Sites and Apps with historical Fraud & IVT.
        # Corresponds to the JSON property `avoidedFraudOption`
        # @return [String]
        attr_accessor :avoided_fraud_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_insufficient_option = args[:avoid_insufficient_option] if args.key?(:avoid_insufficient_option)
          @avoided_fraud_option = args[:avoided_fraud_option] if args.key?(:avoided_fraud_option)
        end
      end
      
      # Details of DoubleVerify video viewability settings.
      class DoubleVerifyVideoViewability
        include Google::Apis::Core::Hashable
      
        # Target inventory to maximize impressions with 400x300 or greater player size.
        # Corresponds to the JSON property `playerImpressionRate`
        # @return [String]
        attr_accessor :player_impression_rate
      
        # Target web inventory to maximize IAB viewable rate.
        # Corresponds to the JSON property `videoIab`
        # @return [String]
        attr_accessor :video_iab
      
        # Target web inventory to maximize fully viewable rate.
        # Corresponds to the JSON property `videoViewableRate`
        # @return [String]
        attr_accessor :video_viewable_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @player_impression_rate = args[:player_impression_rate] if args.key?(:player_impression_rate)
          @video_iab = args[:video_iab] if args.key?(:video_iab)
          @video_viewable_rate = args[:video_viewable_rate] if args.key?(:video_viewable_rate)
        end
      end
      
      # Request message for LineItemService.DuplicateLineItem.
      class DuplicateLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The display name of the new line item. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `targetDisplayName`
        # @return [String]
        attr_accessor :target_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_display_name = args[:target_display_name] if args.key?(:target_display_name)
        end
      end
      
      # 
      class DuplicateLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the created line item.
        # Corresponds to the JSON property `duplicateLineItemId`
        # @return [Fixnum]
        attr_accessor :duplicate_line_item_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_line_item_id = args[:duplicate_line_item_id] if args.key?(:duplicate_line_item_id)
        end
      end
      
      # Request message for FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.
      class EditCustomerMatchMembersRequest
        include Google::Apis::Core::Hashable
      
        # Wrapper message for a list of contact information defining Customer Match
        # audience members.
        # Corresponds to the JSON property `addedContactInfoList`
        # @return [Google::Apis::DisplayvideoV3::ContactInfoList]
        attr_accessor :added_contact_info_list
      
        # Wrapper message for a list of mobile device IDs defining Customer Match
        # audience members.
        # Corresponds to the JSON property `addedMobileDeviceIdList`
        # @return [Google::Apis::DisplayvideoV3::MobileDeviceIdList]
        attr_accessor :added_mobile_device_id_list
      
        # Required. The ID of the owner advertiser of the updated Customer Match
        # FirstAndThirdPartyAudience.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Wrapper message for a list of contact information defining Customer Match
        # audience members.
        # Corresponds to the JSON property `removedContactInfoList`
        # @return [Google::Apis::DisplayvideoV3::ContactInfoList]
        attr_accessor :removed_contact_info_list
      
        # Wrapper message for a list of mobile device IDs defining Customer Match
        # audience members.
        # Corresponds to the JSON property `removedMobileDeviceIdList`
        # @return [Google::Apis::DisplayvideoV3::MobileDeviceIdList]
        attr_accessor :removed_mobile_device_id_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_contact_info_list = args[:added_contact_info_list] if args.key?(:added_contact_info_list)
          @added_mobile_device_id_list = args[:added_mobile_device_id_list] if args.key?(:added_mobile_device_id_list)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @removed_contact_info_list = args[:removed_contact_info_list] if args.key?(:removed_contact_info_list)
          @removed_mobile_device_id_list = args[:removed_mobile_device_id_list] if args.key?(:removed_mobile_device_id_list)
        end
      end
      
      # The response of FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.
      class EditCustomerMatchMembersResponse
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the updated Customer Match FirstAndThirdPartyAudience.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceId`
        # @return [Fixnum]
        attr_accessor :first_and_third_party_audience_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_and_third_party_audience_id = args[:first_and_third_party_audience_id] if args.key?(:first_and_third_party_audience_id)
        end
      end
      
      # Request message for GuaranteedOrderService.EditGuaranteedOrderReadAccessors.
      class EditGuaranteedOrderReadAccessorsRequest
        include Google::Apis::Core::Hashable
      
        # The advertisers to add as read accessors to the guaranteed order.
        # Corresponds to the JSON property `addedAdvertisers`
        # @return [Array<Fixnum>]
        attr_accessor :added_advertisers
      
        # Required. The partner context in which the change is being made.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Whether to give all advertisers of the read/write accessor partner read access
        # to the guaranteed order. Only applicable if read_write_partner_id is set in
        # the guaranteed order.
        # Corresponds to the JSON property `readAccessInherited`
        # @return [Boolean]
        attr_accessor :read_access_inherited
        alias_method :read_access_inherited?, :read_access_inherited
      
        # The advertisers to remove as read accessors to the guaranteed order.
        # Corresponds to the JSON property `removedAdvertisers`
        # @return [Array<Fixnum>]
        attr_accessor :removed_advertisers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_advertisers = args[:added_advertisers] if args.key?(:added_advertisers)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @read_access_inherited = args[:read_access_inherited] if args.key?(:read_access_inherited)
          @removed_advertisers = args[:removed_advertisers] if args.key?(:removed_advertisers)
        end
      end
      
      # 
      class EditGuaranteedOrderReadAccessorsResponse
        include Google::Apis::Core::Hashable
      
        # Whether all advertisers of read_write_partner_id have read access to the
        # guaranteed order.
        # Corresponds to the JSON property `readAccessInherited`
        # @return [Boolean]
        attr_accessor :read_access_inherited
        alias_method :read_access_inherited?, :read_access_inherited
      
        # The IDs of advertisers with read access to the guaranteed order.
        # Corresponds to the JSON property `readAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :read_advertiser_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_access_inherited = args[:read_access_inherited] if args.key?(:read_access_inherited)
          @read_advertiser_ids = args[:read_advertiser_ids] if args.key?(:read_advertiser_ids)
        end
      end
      
      # Request message for InventorySourceService.
      # EditInventorySourceReadWriteAccessors.
      class EditInventorySourceReadWriteAccessorsRequest
        include Google::Apis::Core::Hashable
      
        # Update to the list of advertisers with read/write access to the inventory
        # source.
        # Corresponds to the JSON property `advertisersUpdate`
        # @return [Google::Apis::DisplayvideoV3::EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate]
        attr_accessor :advertisers_update
      
        # Set the partner context as read/write accessor of the inventory source. This
        # will remove all other current read/write advertiser accessors.
        # Corresponds to the JSON property `assignPartner`
        # @return [Boolean]
        attr_accessor :assign_partner
        alias_method :assign_partner?, :assign_partner
      
        # Required. The partner context by which the accessors change is being made.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers_update = args[:advertisers_update] if args.key?(:advertisers_update)
          @assign_partner = args[:assign_partner] if args.key?(:assign_partner)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Update to the list of advertisers with read/write access to the inventory
      # source.
      class EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
        include Google::Apis::Core::Hashable
      
        # The advertisers to add.
        # Corresponds to the JSON property `addedAdvertisers`
        # @return [Array<Fixnum>]
        attr_accessor :added_advertisers
      
        # The advertisers to remove.
        # Corresponds to the JSON property `removedAdvertisers`
        # @return [Array<Fixnum>]
        attr_accessor :removed_advertisers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_advertisers = args[:added_advertisers] if args.key?(:added_advertisers)
          @removed_advertisers = args[:removed_advertisers] if args.key?(:removed_advertisers)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Assigned environment targeting option details. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_ENVIRONMENT`.
      class EnvironmentAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The serving environment.
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
      
      # Represents a targetable environment. This will be populated in the
      # environment_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_ENVIRONMENT`.
      class EnvironmentTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The serving environment.
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
      
      # Details for assigned exchange targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_EXCHANGE`.
      class ExchangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The enum value for the exchange.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
        end
      end
      
      # Settings that control which exchanges are enabled for a partner.
      class ExchangeConfig
        include Google::Apis::Core::Hashable
      
        # All enabled exchanges in the partner. Duplicate enabled exchanges will be
        # ignored.
        # Corresponds to the JSON property `enabledExchanges`
        # @return [Array<Google::Apis::DisplayvideoV3::ExchangeConfigEnabledExchange>]
        attr_accessor :enabled_exchanges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_exchanges = args[:enabled_exchanges] if args.key?(:enabled_exchanges)
        end
      end
      
      # An enabled exchange in the partner.
      class ExchangeConfigEnabledExchange
        include Google::Apis::Core::Hashable
      
        # The enabled exchange.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Output only. Agency ID of Google Ad Manager. The field is only relevant when
        # Google Ad Manager is the enabled exchange.
        # Corresponds to the JSON property `googleAdManagerAgencyId`
        # @return [String]
        attr_accessor :google_ad_manager_agency_id
      
        # Output only. Network ID of Google Ad Manager. The field is only relevant when
        # Google Ad Manager is the enabled exchange.
        # Corresponds to the JSON property `googleAdManagerBuyerNetworkId`
        # @return [String]
        attr_accessor :google_ad_manager_buyer_network_id
      
        # Output only. Seat ID of the enabled exchange.
        # Corresponds to the JSON property `seatId`
        # @return [String]
        attr_accessor :seat_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
          @google_ad_manager_agency_id = args[:google_ad_manager_agency_id] if args.key?(:google_ad_manager_agency_id)
          @google_ad_manager_buyer_network_id = args[:google_ad_manager_buyer_network_id] if args.key?(:google_ad_manager_buyer_network_id)
          @seat_id = args[:seat_id] if args.key?(:seat_id)
        end
      end
      
      # Exchange review status for the creative.
      class ExchangeReviewStatus
        include Google::Apis::Core::Hashable
      
        # The exchange reviewing the creative.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Status of the exchange review.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a targetable exchange. This will be populated in the
      # exchange_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_EXCHANGE`.
      class ExchangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The type of exchange.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
        end
      end
      
      # Exit event of the creative.
      class ExitEvent
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the click tag of the exit event. The name must be unique
        # within one creative. Leave it empty or unset for creatives containing image
        # assets only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The name used to identify this event in reports. Leave it empty or
        # unset for creatives containing image assets only.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        # Required. The type of the exit event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The click through URL of the exit event. This is required when type
        # is: * `EXIT_EVENT_TYPE_DEFAULT` * `EXIT_EVENT_TYPE_BACKUP`
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Describes a first or third party audience list used for targeting. First party
      # audiences are created via usage of client data. Third party audiences are
      # provided by Third Party data providers and can only be licensed to customers.
      class FirstAndThirdPartyAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The estimated audience size for the Display network in the past
        # month. If the size is less than 1000, the number will be hidden and 0 will be
        # returned due to privacy reasons. Otherwise, the number will be rounded off to
        # two significant digits. Only returned in GET request.
        # Corresponds to the JSON property `activeDisplayAudienceSize`
        # @return [Fixnum]
        attr_accessor :active_display_audience_size
      
        # The app_id matches with the type of the mobile_device_ids being uploaded. Only
        # applicable to audience_type `CUSTOMER_MATCH_DEVICE_ID`
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Output only. The source of the audience.
        # Corresponds to the JSON property `audienceSource`
        # @return [String]
        attr_accessor :audience_source
      
        # The type of the audience.
        # Corresponds to the JSON property `audienceType`
        # @return [String]
        attr_accessor :audience_type
      
        # Wrapper message for a list of contact information defining Customer Match
        # audience members.
        # Corresponds to the JSON property `contactInfoList`
        # @return [Google::Apis::DisplayvideoV3::ContactInfoList]
        attr_accessor :contact_info_list
      
        # The user-provided description of the audience. Only applicable to first party
        # audiences.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The estimated audience size for the Display network. If the size
        # is less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only returned in GET request.
        # Corresponds to the JSON property `displayAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_audience_size
      
        # Output only. The estimated desktop audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayDesktopAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_desktop_audience_size
      
        # Output only. The estimated mobile app audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayMobileAppAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_mobile_app_audience_size
      
        # Output only. The estimated mobile web audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayMobileWebAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_mobile_web_audience_size
      
        # The display name of the first and third party audience.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the first and third party audience. Assigned by
        # the system.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceId`
        # @return [Fixnum]
        attr_accessor :first_and_third_party_audience_id
      
        # Whether the audience is a first or third party audience.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceType`
        # @return [String]
        attr_accessor :first_and_third_party_audience_type
      
        # Output only. The estimated audience size for Gmail network. If the size is
        # less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only applicable to first party audiences. Only returned in GET request.
        # Corresponds to the JSON property `gmailAudienceSize`
        # @return [Fixnum]
        attr_accessor :gmail_audience_size
      
        # The duration in days that an entry remains in the audience after the
        # qualifying event. The set value must be greater than 0 and less than or equal
        # to 540. Only applicable to first party audiences. This field is required if
        # one of the following audience_type is used: * `CUSTOMER_MATCH_CONTACT_INFO` * `
        # CUSTOMER_MATCH_DEVICE_ID`
        # Corresponds to the JSON property `membershipDurationDays`
        # @return [Fixnum]
        attr_accessor :membership_duration_days
      
        # Wrapper message for a list of mobile device IDs defining Customer Match
        # audience members.
        # Corresponds to the JSON property `mobileDeviceIdList`
        # @return [Google::Apis::DisplayvideoV3::MobileDeviceIdList]
        attr_accessor :mobile_device_id_list
      
        # Output only. The resource name of the first and third party audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The estimated audience size for YouTube network. If the size is
        # less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only applicable to first party audiences. Only returned in GET request.
        # Corresponds to the JSON property `youtubeAudienceSize`
        # @return [Fixnum]
        attr_accessor :youtube_audience_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_display_audience_size = args[:active_display_audience_size] if args.key?(:active_display_audience_size)
          @app_id = args[:app_id] if args.key?(:app_id)
          @audience_source = args[:audience_source] if args.key?(:audience_source)
          @audience_type = args[:audience_type] if args.key?(:audience_type)
          @contact_info_list = args[:contact_info_list] if args.key?(:contact_info_list)
          @description = args[:description] if args.key?(:description)
          @display_audience_size = args[:display_audience_size] if args.key?(:display_audience_size)
          @display_desktop_audience_size = args[:display_desktop_audience_size] if args.key?(:display_desktop_audience_size)
          @display_mobile_app_audience_size = args[:display_mobile_app_audience_size] if args.key?(:display_mobile_app_audience_size)
          @display_mobile_web_audience_size = args[:display_mobile_web_audience_size] if args.key?(:display_mobile_web_audience_size)
          @display_name = args[:display_name] if args.key?(:display_name)
          @first_and_third_party_audience_id = args[:first_and_third_party_audience_id] if args.key?(:first_and_third_party_audience_id)
          @first_and_third_party_audience_type = args[:first_and_third_party_audience_type] if args.key?(:first_and_third_party_audience_type)
          @gmail_audience_size = args[:gmail_audience_size] if args.key?(:gmail_audience_size)
          @membership_duration_days = args[:membership_duration_days] if args.key?(:membership_duration_days)
          @mobile_device_id_list = args[:mobile_device_id_list] if args.key?(:mobile_device_id_list)
          @name = args[:name] if args.key?(:name)
          @youtube_audience_size = args[:youtube_audience_size] if args.key?(:youtube_audience_size)
        end
      end
      
      # Details of first and third party audience group. All first and third party
      # audience targeting settings are logically ‘OR’ of each other.
      class FirstAndThirdPartyAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All first and third party audience targeting settings in first and
        # third party audience group. Repeated settings with the same id are not allowed.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of first and third party audience targeting setting.
      class FirstAndThirdPartyAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. First and third party audience id of the first and third party
        # audience targeting setting. This id is first_and_third_party_audience_id.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceId`
        # @return [Fixnum]
        attr_accessor :first_and_third_party_audience_id
      
        # Optional. The recency of the first and third party audience targeting setting.
        # Only applicable to first party audiences, otherwise will be ignored. For more
        # info, refer to https://support.google.com/displayvideo/answer/2949947#recency
        # When unspecified, no recency limit will be used.
        # Corresponds to the JSON property `recency`
        # @return [String]
        attr_accessor :recency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_and_third_party_audience_id = args[:first_and_third_party_audience_id] if args.key?(:first_and_third_party_audience_id)
          @recency = args[:recency] if args.key?(:recency)
        end
      end
      
      # A strategy that uses a fixed bidding price.
      class FixedBidStrategy
        include Google::Apis::Core::Hashable
      
        # The fixed bid amount, in micros of the advertiser's currency. For insertion
        # order entity, bid_amount_micros should be set as 0. For line item entity,
        # bid_amount_micros must be greater than or equal to billable unit of the given
        # currency and smaller than or equal to the upper limit 1000000000. For example,
        # 1500000 represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `bidAmountMicros`
        # @return [Fixnum]
        attr_accessor :bid_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_amount_micros = args[:bid_amount_micros] if args.key?(:bid_amount_micros)
        end
      end
      
      # A single Floodlight activity.
      class FloodlightActivity
        include Google::Apis::Core::Hashable
      
        # Output only. IDs of the advertisers that have access to the parent Floodlight
        # group. Only advertisers under the provided partner ID will be listed in this
        # field.
        # Corresponds to the JSON property `advertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :advertiser_ids
      
        # Required. The display name of the Floodlight activity.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the Floodlight activity. Assigned by the system.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [Fixnum]
        attr_accessor :floodlight_activity_id
      
        # Required. Immutable. The ID of the parent Floodlight group.
        # Corresponds to the JSON property `floodlightGroupId`
        # @return [Fixnum]
        attr_accessor :floodlight_group_id
      
        # Output only. The resource name of the Floodlight activity.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A list of configuration objects designating whether remarketing
        # for this Floodlight Activity is enabled and available for a specifc advertiser.
        # If enabled, this Floodlight Activity generates a remarketing user list that
        # is able to be used in targeting under the advertiser.
        # Corresponds to the JSON property `remarketingConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::RemarketingConfig>]
        attr_accessor :remarketing_configs
      
        # Optional. Whether the Floodlight activity is served.
        # Corresponds to the JSON property `servingStatus`
        # @return [String]
        attr_accessor :serving_status
      
        # Output only. Whether tags are required to be compliant.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_ids = args[:advertiser_ids] if args.key?(:advertiser_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @floodlight_activity_id = args[:floodlight_activity_id] if args.key?(:floodlight_activity_id)
          @floodlight_group_id = args[:floodlight_group_id] if args.key?(:floodlight_group_id)
          @name = args[:name] if args.key?(:name)
          @remarketing_configs = args[:remarketing_configs] if args.key?(:remarketing_configs)
          @serving_status = args[:serving_status] if args.key?(:serving_status)
          @ssl_required = args[:ssl_required] if args.key?(:ssl_required)
        end
      end
      
      # A single Floodlight group.
      class FloodlightGroup
        include Google::Apis::Core::Hashable
      
        # Configuration for custom Active View video viewability metrics.
        # Corresponds to the JSON property `activeViewConfig`
        # @return [Google::Apis::DisplayvideoV3::ActiveViewVideoViewabilityMetricConfig]
        attr_accessor :active_view_config
      
        # User-defined custom variables owned by the Floodlight group. Use custom
        # Floodlight variables to create reporting data that is tailored to your unique
        # business needs. Custom Floodlight variables use the keys `U1=`, `U2=`, and so
        # on, and can take any values that you choose to pass to them. You can use them
        # to track virtually any type of data that you collect about your customers,
        # such as the genre of movie that a customer purchases, the country to which the
        # item is shipped, and so on. Custom Floodlight variables may not be used to
        # pass any data that could be used or recognized as personally identifiable
        # information (PII). Example: `custom_variables ` fields ` "U1": value `
        # number_value: 123.4 `, "U2": value ` string_value: "MyVariable2" `, "U3":
        # value ` string_value: "MyVariable3" ` ` `` Acceptable values for keys are "U1"
        # through "U100", inclusive. String values must be less than 64 characters long,
        # and cannot contain the following characters: `"<>`.
        # Corresponds to the JSON property `customVariables`
        # @return [Hash<String,Object>]
        attr_accessor :custom_variables
      
        # Required. The display name of the Floodlight group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the Floodlight group. Assigned by the system.
        # Corresponds to the JSON property `floodlightGroupId`
        # @return [Fixnum]
        attr_accessor :floodlight_group_id
      
        # Specifies how many days into the past to look when determining whether to
        # record a conversion.
        # Corresponds to the JSON property `lookbackWindow`
        # @return [Google::Apis::DisplayvideoV3::LookbackWindow]
        attr_accessor :lookback_window
      
        # Output only. The resource name of the Floodlight group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The web tag type enabled for the Floodlight group.
        # Corresponds to the JSON property `webTagType`
        # @return [String]
        attr_accessor :web_tag_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_config = args[:active_view_config] if args.key?(:active_view_config)
          @custom_variables = args[:custom_variables] if args.key?(:custom_variables)
          @display_name = args[:display_name] if args.key?(:display_name)
          @floodlight_group_id = args[:floodlight_group_id] if args.key?(:floodlight_group_id)
          @lookback_window = args[:lookback_window] if args.key?(:lookback_window)
          @name = args[:name] if args.key?(:name)
          @web_tag_type = args[:web_tag_type] if args.key?(:web_tag_type)
        end
      end
      
      # Settings that control the number of times a user may be shown with the same ad
      # during a given time period.
      class FrequencyCap
        include Google::Apis::Core::Hashable
      
        # The maximum number of times a user may be shown the same ad during this period.
        # Must be greater than 0. Required when unlimited is `false` and max_views is
        # not set.
        # Corresponds to the JSON property `maxImpressions`
        # @return [Fixnum]
        attr_accessor :max_impressions
      
        # Optional. The maximum number of times a user may click-through or fully view
        # an ad during this period until it is no longer served to them. Must be greater
        # than 0. Only applicable to YouTube and Partners resources. Required when
        # unlimited is `false` and max_impressions is not set.
        # Corresponds to the JSON property `maxViews`
        # @return [Fixnum]
        attr_accessor :max_views
      
        # The time unit in which the frequency cap will be applied. Required when
        # unlimited is `false`.
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        # The number of time_unit the frequency cap will last. Required when unlimited
        # is `false`. The following restrictions apply based on the value of time_unit: *
        # `TIME_UNIT_MONTHS` - must be 1 * `TIME_UNIT_WEEKS` - must be between 1 and 4 *
        # `TIME_UNIT_DAYS` - must be between 1 and 6 * `TIME_UNIT_HOURS` - must be
        # between 1 and 23 * `TIME_UNIT_MINUTES` - must be between 1 and 59
        # Corresponds to the JSON property `timeUnitCount`
        # @return [Fixnum]
        attr_accessor :time_unit_count
      
        # Whether unlimited frequency capping is applied. When this field is set to `
        # true`, the remaining frequency cap fields are not applicable.
        # Corresponds to the JSON property `unlimited`
        # @return [Boolean]
        attr_accessor :unlimited
        alias_method :unlimited?, :unlimited
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_impressions = args[:max_impressions] if args.key?(:max_impressions)
          @max_views = args[:max_views] if args.key?(:max_views)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @time_unit_count = args[:time_unit_count] if args.key?(:time_unit_count)
          @unlimited = args[:unlimited] if args.key?(:unlimited)
        end
      end
      
      # Details for assigned gender targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_GENDER`.
      class GenderAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The gender of the audience.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gender = args[:gender] if args.key?(:gender)
        end
      end
      
      # Represents a targetable gender. This will be populated in the gender_details
      # field of a TargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.
      class GenderTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The gender of an audience.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gender = args[:gender] if args.key?(:gender)
        end
      end
      
      # Request message for LineItemService.GenerateDefaultLineItem.
      class GenerateDefaultLineItemRequest
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the line item. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The unique ID of the insertion order that the line item belongs to.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [Fixnum]
        attr_accessor :insertion_order_id
      
        # Required. The type of the line item.
        # Corresponds to the JSON property `lineItemType`
        # @return [String]
        attr_accessor :line_item_type
      
        # A mobile app promoted by a mobile app install line item.
        # Corresponds to the JSON property `mobileApp`
        # @return [Google::Apis::DisplayvideoV3::MobileApp]
        attr_accessor :mobile_app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @insertion_order_id = args[:insertion_order_id] if args.key?(:insertion_order_id)
          @line_item_type = args[:line_item_type] if args.key?(:line_item_type)
          @mobile_app = args[:mobile_app] if args.key?(:mobile_app)
        end
      end
      
      # Details for assigned geographic region targeting option. This will be
      # populated in the details field of an AssignedTargetingOption when
      # targeting_type is `TARGETING_TYPE_GEO_REGION`.
      class GeoRegionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the geographic region (e.g., "Ontario, Canada"
        # ).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type of geographic region targeting.
        # Corresponds to the JSON property `geoRegionType`
        # @return [String]
        attr_accessor :geo_region_type
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_region_type = args[:geo_region_type] if args.key?(:geo_region_type)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Search terms for geo region targeting options.
      class GeoRegionSearchTerms
        include Google::Apis::Core::Hashable
      
        # The search query for the desired geo region. The query can be a prefix, e.g. "
        # New Yor", "Seattle", "USA", etc.
        # Corresponds to the JSON property `geoRegionQuery`
        # @return [String]
        attr_accessor :geo_region_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_region_query = args[:geo_region_query] if args.key?(:geo_region_query)
        end
      end
      
      # Represents a targetable geographic region. This will be populated in the
      # geo_region_details field when targeting_type is `TARGETING_TYPE_GEO_REGION`.
      class GeoRegionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the geographic region (e.g., "Ontario, Canada"
        # ).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type of geographic region targeting.
        # Corresponds to the JSON property `geoRegionType`
        # @return [String]
        attr_accessor :geo_region_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_region_type = args[:geo_region_type] if args.key?(:geo_region_type)
        end
      end
      
      # Describes a Google audience resource. Includes Google audience lists.
      class GoogleAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the Google audience. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the Google audience. Assigned by the system.
        # Corresponds to the JSON property `googleAudienceId`
        # @return [Fixnum]
        attr_accessor :google_audience_id
      
        # Output only. The type of Google audience. .
        # Corresponds to the JSON property `googleAudienceType`
        # @return [String]
        attr_accessor :google_audience_type
      
        # Output only. The resource name of the google audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @google_audience_id = args[:google_audience_id] if args.key?(:google_audience_id)
          @google_audience_type = args[:google_audience_type] if args.key?(:google_audience_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of Google audience group. All Google audience targeting settings are
      # logically ‘OR’ of each other.
      class GoogleAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All Google audience targeting settings in Google audience group.
        # Repeated settings with the same id will be ignored.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV3::GoogleAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of Google audience targeting setting.
      class GoogleAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Google audience id of the Google audience targeting setting. This id
        # is google_audience_id.
        # Corresponds to the JSON property `googleAudienceId`
        # @return [Fixnum]
        attr_accessor :google_audience_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_audience_id = args[:google_audience_id] if args.key?(:google_audience_id)
        end
      end
      
      # Media resource.
      class GoogleBytestreamMedia
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A guaranteed order. Guaranteed orders are parent entity of guaranteed
      # inventory sources. When creating a guaranteed inventory source, a guaranteed
      # order ID must be assigned to the inventory source.
      class GuaranteedOrder
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of default advertiser of the guaranteed order. The default
        # advertiser is either the read_write_advertiser_id or, if that is not set, the
        # first advertiser listed in read_advertiser_ids. Otherwise, there is no default
        # advertiser.
        # Corresponds to the JSON property `defaultAdvertiserId`
        # @return [Fixnum]
        attr_accessor :default_advertiser_id
      
        # The ID of the default campaign that is assigned to the guaranteed order. The
        # default campaign must belong to the default advertiser.
        # Corresponds to the JSON property `defaultCampaignId`
        # @return [Fixnum]
        attr_accessor :default_campaign_id
      
        # Required. The display name of the guaranteed order. Must be UTF-8 encoded with
        # a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Immutable. The exchange where the guaranteed order originated.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Output only. The unique identifier of the guaranteed order. The guaranteed
        # order IDs have the format ``exchange`-`legacy_guaranteed_order_id``.
        # Corresponds to the JSON property `guaranteedOrderId`
        # @return [String]
        attr_accessor :guaranteed_order_id
      
        # Output only. The legacy ID of the guaranteed order. Assigned by the original
        # exchange. The legacy ID is unique within one exchange, but is not guaranteed
        # to be unique across all guaranteed orders. This ID is used in SDF and UI.
        # Corresponds to the JSON property `legacyGuaranteedOrderId`
        # @return [String]
        attr_accessor :legacy_guaranteed_order_id
      
        # Output only. The resource name of the guaranteed order.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The publisher name of the guaranteed order. Must be UTF-8 encoded
        # with a maximum size of 240 bytes.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # Whether all advertisers of read_write_partner_id have read access to the
        # guaranteed order. Only applicable if read_write_partner_id is set. If True,
        # overrides read_advertiser_ids.
        # Corresponds to the JSON property `readAccessInherited`
        # @return [Boolean]
        attr_accessor :read_access_inherited
        alias_method :read_access_inherited?, :read_access_inherited
      
        # The IDs of advertisers with read access to the guaranteed order. This field
        # must not include the advertiser assigned to read_write_advertiser_id if it is
        # set. All advertisers in this field must belong to read_write_partner_id or the
        # same partner as read_write_advertiser_id.
        # Corresponds to the JSON property `readAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :read_advertiser_ids
      
        # The advertiser with read/write access to the guaranteed order. This is also
        # the default advertiser of the guaranteed order.
        # Corresponds to the JSON property `readWriteAdvertiserId`
        # @return [Fixnum]
        attr_accessor :read_write_advertiser_id
      
        # The partner with read/write access to the guaranteed order.
        # Corresponds to the JSON property `readWritePartnerId`
        # @return [Fixnum]
        attr_accessor :read_write_partner_id
      
        # The status settings of the guaranteed order.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DisplayvideoV3::GuaranteedOrderStatus]
        attr_accessor :status
      
        # Output only. The timestamp when the guaranteed order was last updated.
        # Assigned by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_advertiser_id = args[:default_advertiser_id] if args.key?(:default_advertiser_id)
          @default_campaign_id = args[:default_campaign_id] if args.key?(:default_campaign_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exchange = args[:exchange] if args.key?(:exchange)
          @guaranteed_order_id = args[:guaranteed_order_id] if args.key?(:guaranteed_order_id)
          @legacy_guaranteed_order_id = args[:legacy_guaranteed_order_id] if args.key?(:legacy_guaranteed_order_id)
          @name = args[:name] if args.key?(:name)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @read_access_inherited = args[:read_access_inherited] if args.key?(:read_access_inherited)
          @read_advertiser_ids = args[:read_advertiser_ids] if args.key?(:read_advertiser_ids)
          @read_write_advertiser_id = args[:read_write_advertiser_id] if args.key?(:read_write_advertiser_id)
          @read_write_partner_id = args[:read_write_partner_id] if args.key?(:read_write_partner_id)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The status settings of the guaranteed order.
      class GuaranteedOrderStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The configuration status of the guaranteed order. Acceptable
        # values are `PENDING` and `COMPLETED`. A guaranteed order must be configured (
        # fill in the required fields, choose creatives, and select a default campaign)
        # before it can serve. Currently the configuration action can only be performed
        # via UI.
        # Corresponds to the JSON property `configStatus`
        # @return [String]
        attr_accessor :config_status
      
        # The user-provided reason for pausing this guaranteed order. Must be UTF-8
        # encoded with a maximum length of 100 bytes. Only applicable when entity_status
        # is set to `ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `entityPauseReason`
        # @return [String]
        attr_accessor :entity_pause_reason
      
        # Whether or not the guaranteed order is servable. Acceptable values are `
        # ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`.
        # Default value is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_status = args[:config_status] if args.key?(:config_status)
          @entity_pause_reason = args[:entity_pause_reason] if args.key?(:entity_pause_reason)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
        end
      end
      
      # Details for assigned household income targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_HOUSEHOLD_INCOME`.
      class HouseholdIncomeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The household income of the audience.
        # Corresponds to the JSON property `householdIncome`
        # @return [String]
        attr_accessor :household_income
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @household_income = args[:household_income] if args.key?(:household_income)
        end
      end
      
      # Represents a targetable household income. This will be populated in the
      # household_income_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_HOUSEHOLD_INCOME`.
      class HouseholdIncomeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The household income of an audience.
        # Corresponds to the JSON property `householdIncome`
        # @return [String]
        attr_accessor :household_income
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @household_income = args[:household_income] if args.key?(:household_income)
        end
      end
      
      # A filtering option that filters entities by their entity IDs.
      class IdFilter
        include Google::Apis::Core::Hashable
      
        # YouTube Ads to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupAdIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ad_ids
      
        # YouTube Ad Groups to download by ID. All IDs must belong to the same
        # Advertiser or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ids
      
        # Optional. YouTube Ad Groups, by ID, to download in QA format. All IDs must
        # belong to the same Advertiser or Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupQaIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_qa_ids
      
        # Campaigns to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `campaignIds`
        # @return [Array<Fixnum>]
        attr_accessor :campaign_ids
      
        # Insertion Orders to download by ID. All IDs must belong to the same Advertiser
        # or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `insertionOrderIds`
        # @return [Array<Fixnum>]
        attr_accessor :insertion_order_ids
      
        # Line Items to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # Optional. Line Items, by ID, to download in QA format. All IDs must belong to
        # the same Advertiser or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `lineItemQaIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_qa_ids
      
        # Media Products to download by ID. All IDs must belong to the same Advertiser
        # or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `mediaProductIds`
        # @return [Array<Fixnum>]
        attr_accessor :media_product_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ad_ids = args[:ad_group_ad_ids] if args.key?(:ad_group_ad_ids)
          @ad_group_ids = args[:ad_group_ids] if args.key?(:ad_group_ids)
          @ad_group_qa_ids = args[:ad_group_qa_ids] if args.key?(:ad_group_qa_ids)
          @campaign_ids = args[:campaign_ids] if args.key?(:campaign_ids)
          @insertion_order_ids = args[:insertion_order_ids] if args.key?(:insertion_order_ids)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @line_item_qa_ids = args[:line_item_qa_ids] if args.key?(:line_item_qa_ids)
          @media_product_ids = args[:media_product_ids] if args.key?(:media_product_ids)
        end
      end
      
      # Meta data of an image asset.
      class ImageAsset
        include Google::Apis::Core::Hashable
      
        # File size of the image asset in bytes.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # Dimensions.
        # Corresponds to the JSON property `fullSize`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :full_size
      
        # MIME type of the image asset.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_size = args[:file_size] if args.key?(:file_size)
          @full_size = args[:full_size] if args.key?(:full_size)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Details for an in-stream ad.
      class InStreamAd
        include Google::Apis::Core::Hashable
      
        # Common attributes for in-stream, non-skippable and bumper ads.
        # Corresponds to the JSON property `commonInStreamAttribute`
        # @return [Google::Apis::DisplayvideoV3::CommonInStreamAttribute]
        attr_accessor :common_in_stream_attribute
      
        # The custom parameters to pass custom values to tracking URL template.
        # Corresponds to the JSON property `customParameters`
        # @return [Hash<String,String>]
        attr_accessor :custom_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_in_stream_attribute = args[:common_in_stream_attribute] if args.key?(:common_in_stream_attribute)
          @custom_parameters = args[:custom_parameters] if args.key?(:custom_parameters)
        end
      end
      
      # A single insertion order.
      class InsertionOrder
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the insertion order belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that control the bid strategy. Bid strategy determines the bid price.
        # Corresponds to the JSON property `bidStrategy`
        # @return [Google::Apis::DisplayvideoV3::BiddingStrategy]
        attr_accessor :bid_strategy
      
        # Settings that control how insertion order budget is allocated.
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::DisplayvideoV3::InsertionOrderBudget]
        attr_accessor :budget
      
        # Required. Immutable. The unique ID of the campaign that the insertion order
        # belongs to.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Required. The display name of the insertion order. Must be UTF-8 encoded with
        # a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the insertion order can spend its budget and
        # bid on inventory. * For CreateInsertionOrder method, only `ENTITY_STATUS_DRAFT`
        # is allowed. To activate an insertion order, use UpdateInsertionOrder method
        # and update the status to `ENTITY_STATUS_ACTIVE` after creation. * An insertion
        # order cannot be changed back to `ENTITY_STATUS_DRAFT` status from any other
        # status. * An insertion order cannot be set to `ENTITY_STATUS_ACTIVE` if its
        # parent campaign is not active.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV3::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Output only. The unique ID of the insertion order. Assigned by the system.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [Fixnum]
        attr_accessor :insertion_order_id
      
        # Optional. The type of insertion order. If this field is unspecified in
        # creation, the value defaults to `RTB`.
        # Corresponds to the JSON property `insertionOrderType`
        # @return [String]
        attr_accessor :insertion_order_type
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV3::IntegrationDetails]
        attr_accessor :integration_details
      
        # Settings that control the key performance indicator, or KPI, of an insertion
        # order.
        # Corresponds to the JSON property `kpi`
        # @return [Google::Apis::DisplayvideoV3::Kpi]
        attr_accessor :kpi
      
        # Output only. The resource name of the insertion order.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Required. The optimization objective of the insertion order.
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # Settings that control the rate at which a budget is spent.
        # Corresponds to the JSON property `pacing`
        # @return [Google::Apis::DisplayvideoV3::Pacing]
        attr_accessor :pacing
      
        # Optional. The partner costs associated with the insertion order. If absent or
        # empty in CreateInsertionOrder method, the newly created insertion order will
        # inherit partner costs from the partner settings.
        # Corresponds to the JSON property `partnerCosts`
        # @return [Array<Google::Apis::DisplayvideoV3::PartnerCost>]
        attr_accessor :partner_costs
      
        # Output only. The reservation type of the insertion order.
        # Corresponds to the JSON property `reservationType`
        # @return [String]
        attr_accessor :reservation_type
      
        # Output only. The timestamp when the insertion order was last updated. Assigned
        # by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @bid_strategy = args[:bid_strategy] if args.key?(:bid_strategy)
          @budget = args[:budget] if args.key?(:budget)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @insertion_order_id = args[:insertion_order_id] if args.key?(:insertion_order_id)
          @insertion_order_type = args[:insertion_order_type] if args.key?(:insertion_order_type)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @kpi = args[:kpi] if args.key?(:kpi)
          @name = args[:name] if args.key?(:name)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @pacing = args[:pacing] if args.key?(:pacing)
          @partner_costs = args[:partner_costs] if args.key?(:partner_costs)
          @reservation_type = args[:reservation_type] if args.key?(:reservation_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings that control how insertion order budget is allocated.
      class InsertionOrderBudget
        include Google::Apis::Core::Hashable
      
        # Optional. The type of automation used to manage bid and budget for the
        # insertion order. If this field is unspecified in creation, the value defaults
        # to `INSERTION_ORDER_AUTOMATION_TYPE_NONE`.
        # Corresponds to the JSON property `automationType`
        # @return [String]
        attr_accessor :automation_type
      
        # Required. The list of budget segments. Use a budget segment to specify a
        # specific budget for a given period of time an insertion order is running.
        # Corresponds to the JSON property `budgetSegments`
        # @return [Array<Google::Apis::DisplayvideoV3::InsertionOrderBudgetSegment>]
        attr_accessor :budget_segments
      
        # Required. Immutable. The budget unit specifies whether the budget is currency
        # based or impression based.
        # Corresponds to the JSON property `budgetUnit`
        # @return [String]
        attr_accessor :budget_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automation_type = args[:automation_type] if args.key?(:automation_type)
          @budget_segments = args[:budget_segments] if args.key?(:budget_segments)
          @budget_unit = args[:budget_unit] if args.key?(:budget_unit)
        end
      end
      
      # Settings that control the budget of a single budget segment.
      class InsertionOrderBudgetSegment
        include Google::Apis::Core::Hashable
      
        # Required. The budget amount the insertion order will spend for the given
        # date_range. The amount is in micros. Must be greater than 0. For example,
        # 500000000 represents 500 standard units of the currency.
        # Corresponds to the JSON property `budgetAmountMicros`
        # @return [Fixnum]
        attr_accessor :budget_amount_micros
      
        # Optional. The budget_id of the campaign budget that this insertion order
        # budget segment is a part of.
        # Corresponds to the JSON property `campaignBudgetId`
        # @return [Fixnum]
        attr_accessor :campaign_budget_id
      
        # A date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DisplayvideoV3::DateRange]
        attr_accessor :date_range
      
        # Optional. The budget segment description. It can be used to enter Purchase
        # Order information for each budget segment and have that information printed on
        # the invoices. Must be UTF-8 encoded.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_amount_micros = args[:budget_amount_micros] if args.key?(:budget_amount_micros)
          @campaign_budget_id = args[:campaign_budget_id] if args.key?(:campaign_budget_id)
          @date_range = args[:date_range] if args.key?(:date_range)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Details of Integral Ad Science settings.
      class IntegralAdScience
        include Google::Apis::Core::Hashable
      
        # The custom segment ID provided by Integral Ad Science. The ID must be between `
        # 1000001` and `1999999` or `3000001` and `3999999`, inclusive.
        # Corresponds to the JSON property `customSegmentId`
        # @return [Array<Fixnum>]
        attr_accessor :custom_segment_id
      
        # Display Viewability section (applicable to display line items only).
        # Corresponds to the JSON property `displayViewability`
        # @return [String]
        attr_accessor :display_viewability
      
        # Brand Safety - **Unrateable**.
        # Corresponds to the JSON property `excludeUnrateable`
        # @return [Boolean]
        attr_accessor :exclude_unrateable
        alias_method :exclude_unrateable?, :exclude_unrateable
      
        # Ad Fraud settings.
        # Corresponds to the JSON property `excludedAdFraudRisk`
        # @return [String]
        attr_accessor :excluded_ad_fraud_risk
      
        # Brand Safety - **Adult content**.
        # Corresponds to the JSON property `excludedAdultRisk`
        # @return [String]
        attr_accessor :excluded_adult_risk
      
        # Brand Safety - **Alcohol**.
        # Corresponds to the JSON property `excludedAlcoholRisk`
        # @return [String]
        attr_accessor :excluded_alcohol_risk
      
        # Brand Safety - **Drugs**.
        # Corresponds to the JSON property `excludedDrugsRisk`
        # @return [String]
        attr_accessor :excluded_drugs_risk
      
        # Brand Safety - **Gambling**.
        # Corresponds to the JSON property `excludedGamblingRisk`
        # @return [String]
        attr_accessor :excluded_gambling_risk
      
        # Brand Safety - **Hate speech**.
        # Corresponds to the JSON property `excludedHateSpeechRisk`
        # @return [String]
        attr_accessor :excluded_hate_speech_risk
      
        # Brand Safety - **Illegal downloads**.
        # Corresponds to the JSON property `excludedIllegalDownloadsRisk`
        # @return [String]
        attr_accessor :excluded_illegal_downloads_risk
      
        # Brand Safety - **Offensive language**.
        # Corresponds to the JSON property `excludedOffensiveLanguageRisk`
        # @return [String]
        attr_accessor :excluded_offensive_language_risk
      
        # Brand Safety - **Violence**.
        # Corresponds to the JSON property `excludedViolenceRisk`
        # @return [String]
        attr_accessor :excluded_violence_risk
      
        # Optional. The quality sync custom segment ID provided by Integral Ad Science.
        # The ID must be between `3000000` and `4999999`, inclusive.
        # Corresponds to the JSON property `qualitySyncCustomSegmentId`
        # @return [Array<Fixnum>]
        attr_accessor :quality_sync_custom_segment_id
      
        # True advertising quality (applicable to Display line items only).
        # Corresponds to the JSON property `traqScoreOption`
        # @return [String]
        attr_accessor :traq_score_option
      
        # Video Viewability Section (applicable to video line items only).
        # Corresponds to the JSON property `videoViewability`
        # @return [String]
        attr_accessor :video_viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_segment_id = args[:custom_segment_id] if args.key?(:custom_segment_id)
          @display_viewability = args[:display_viewability] if args.key?(:display_viewability)
          @exclude_unrateable = args[:exclude_unrateable] if args.key?(:exclude_unrateable)
          @excluded_ad_fraud_risk = args[:excluded_ad_fraud_risk] if args.key?(:excluded_ad_fraud_risk)
          @excluded_adult_risk = args[:excluded_adult_risk] if args.key?(:excluded_adult_risk)
          @excluded_alcohol_risk = args[:excluded_alcohol_risk] if args.key?(:excluded_alcohol_risk)
          @excluded_drugs_risk = args[:excluded_drugs_risk] if args.key?(:excluded_drugs_risk)
          @excluded_gambling_risk = args[:excluded_gambling_risk] if args.key?(:excluded_gambling_risk)
          @excluded_hate_speech_risk = args[:excluded_hate_speech_risk] if args.key?(:excluded_hate_speech_risk)
          @excluded_illegal_downloads_risk = args[:excluded_illegal_downloads_risk] if args.key?(:excluded_illegal_downloads_risk)
          @excluded_offensive_language_risk = args[:excluded_offensive_language_risk] if args.key?(:excluded_offensive_language_risk)
          @excluded_violence_risk = args[:excluded_violence_risk] if args.key?(:excluded_violence_risk)
          @quality_sync_custom_segment_id = args[:quality_sync_custom_segment_id] if args.key?(:quality_sync_custom_segment_id)
          @traq_score_option = args[:traq_score_option] if args.key?(:traq_score_option)
          @video_viewability = args[:video_viewability] if args.key?(:video_viewability)
        end
      end
      
      # Integration details of an entry.
      class IntegrationDetails
        include Google::Apis::Core::Hashable
      
        # Additional details of the entry in string format. Must be UTF-8 encoded with a
        # length of no more than 1000 characters.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # An external identifier to be associated with the entry. The integration code
        # will show up together with the entry in many places in the system, for example,
        # reporting. Must be UTF-8 encoded with a length of no more than 500 characters.
        # Corresponds to the JSON property `integrationCode`
        # @return [String]
        attr_accessor :integration_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @integration_code = args[:integration_code] if args.key?(:integration_code)
        end
      end
      
      # An inventory source.
      class InventorySource
        include Google::Apis::Core::Hashable
      
        # Whether the inventory source has a guaranteed or non-guaranteed delivery.
        # Corresponds to the JSON property `commitment`
        # @return [String]
        attr_accessor :commitment
      
        # The creative requirements of the inventory source. Not applicable for auction
        # packages.
        # Corresponds to the JSON property `creativeConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::CreativeConfig>]
        attr_accessor :creative_configs
      
        # The ID in the exchange space that uniquely identifies the inventory source.
        # Must be unique across buyers within each exchange but not necessarily unique
        # across exchanges.
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # The delivery method of the inventory source. * For non-guaranteed inventory
        # sources, the only acceptable value is `
        # INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`. * For guaranteed inventory
        # sources, acceptable values are `INVENTORY_SOURCE_DELIVERY_METHOD_TAG` and `
        # INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`.
        # Corresponds to the JSON property `deliveryMethod`
        # @return [String]
        attr_accessor :delivery_method
      
        # The display name of the inventory source. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The exchange to which the inventory source belongs.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Immutable. The ID of the guaranteed order that this inventory source belongs
        # to. Only applicable when commitment is `INVENTORY_SOURCE_COMMITMENT_GUARANTEED`
        # .
        # Corresponds to the JSON property `guaranteedOrderId`
        # @return [String]
        attr_accessor :guaranteed_order_id
      
        # Output only. The unique ID of the inventory source. Assigned by the system.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [Fixnum]
        attr_accessor :inventory_source_id
      
        # Output only. The product type of the inventory source, denoting the way
        # through which it sells inventory.
        # Corresponds to the JSON property `inventorySourceProductType`
        # @return [String]
        attr_accessor :inventory_source_product_type
      
        # Denotes the type of the inventory source.
        # Corresponds to the JSON property `inventorySourceType`
        # @return [String]
        attr_accessor :inventory_source_type
      
        # Output only. The resource name of the inventory source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The publisher/seller name of the inventory source.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # The rate related settings of the inventory source.
        # Corresponds to the JSON property `rateDetails`
        # @return [Google::Apis::DisplayvideoV3::RateDetails]
        attr_accessor :rate_details
      
        # Output only. The IDs of advertisers with read-only access to the inventory
        # source.
        # Corresponds to the JSON property `readAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :read_advertiser_ids
      
        # Output only. The IDs of partners with read-only access to the inventory source.
        # All advertisers of partners in this field inherit read-only access to the
        # inventory source.
        # Corresponds to the JSON property `readPartnerIds`
        # @return [Array<Fixnum>]
        attr_accessor :read_partner_ids
      
        # The partner or advertisers with access to the inventory source.
        # Corresponds to the JSON property `readWriteAccessors`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceAccessors]
        attr_accessor :read_write_accessors
      
        # The status related settings of the inventory source.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceStatus]
        attr_accessor :status
      
        # A time range.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::DisplayvideoV3::TimeRange]
        attr_accessor :time_range
      
        # Output only. The timestamp when the inventory source was last updated.
        # Assigned by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment = args[:commitment] if args.key?(:commitment)
          @creative_configs = args[:creative_configs] if args.key?(:creative_configs)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @delivery_method = args[:delivery_method] if args.key?(:delivery_method)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exchange = args[:exchange] if args.key?(:exchange)
          @guaranteed_order_id = args[:guaranteed_order_id] if args.key?(:guaranteed_order_id)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
          @inventory_source_product_type = args[:inventory_source_product_type] if args.key?(:inventory_source_product_type)
          @inventory_source_type = args[:inventory_source_type] if args.key?(:inventory_source_type)
          @name = args[:name] if args.key?(:name)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @rate_details = args[:rate_details] if args.key?(:rate_details)
          @read_advertiser_ids = args[:read_advertiser_ids] if args.key?(:read_advertiser_ids)
          @read_partner_ids = args[:read_partner_ids] if args.key?(:read_partner_ids)
          @read_write_accessors = args[:read_write_accessors] if args.key?(:read_write_accessors)
          @status = args[:status] if args.key?(:status)
          @time_range = args[:time_range] if args.key?(:time_range)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The partner or advertisers with access to the inventory source.
      class InventorySourceAccessors
        include Google::Apis::Core::Hashable
      
        # The advertisers with access to the inventory source.
        # Corresponds to the JSON property `advertisers`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceAccessorsAdvertiserAccessors]
        attr_accessor :advertisers
      
        # The partner with access to the inventory source.
        # Corresponds to the JSON property `partner`
        # @return [Google::Apis::DisplayvideoV3::InventorySourceAccessorsPartnerAccessor]
        attr_accessor :partner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers = args[:advertisers] if args.key?(:advertisers)
          @partner = args[:partner] if args.key?(:partner)
        end
      end
      
      # The advertisers with access to the inventory source.
      class InventorySourceAccessorsAdvertiserAccessors
        include Google::Apis::Core::Hashable
      
        # The IDs of the advertisers.
        # Corresponds to the JSON property `advertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :advertiser_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_ids = args[:advertiser_ids] if args.key?(:advertiser_ids)
        end
      end
      
      # The partner with access to the inventory source.
      class InventorySourceAccessorsPartnerAccessor
        include Google::Apis::Core::Hashable
      
        # The ID of the partner.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Targeting details for inventory source. This will be populated in the details
      # field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_INVENTORY_SOURCE`.
      class InventorySourceAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the inventory source. Should refer to the inventory_source_id
        # field of an InventorySource resource.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [Fixnum]
        attr_accessor :inventory_source_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
        end
      end
      
      # The configuration for display creatives.
      class InventorySourceDisplayCreativeConfig
        include Google::Apis::Core::Hashable
      
        # Dimensions.
        # Corresponds to the JSON property `creativeSize`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :creative_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_size = args[:creative_size] if args.key?(:creative_size)
        end
      end
      
      # A filtering option for filtering on Inventory Source entities.
      class InventorySourceFilter
        include Google::Apis::Core::Hashable
      
        # Inventory Sources to download by ID. All IDs must belong to the same
        # Advertiser or Partner specified in CreateSdfDownloadTaskRequest. Leave empty
        # to download all Inventory Sources for the selected Advertiser or Partner.
        # Corresponds to the JSON property `inventorySourceIds`
        # @return [Array<Fixnum>]
        attr_accessor :inventory_source_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_ids = args[:inventory_source_ids] if args.key?(:inventory_source_ids)
        end
      end
      
      # A collection of targetable inventory sources.
      class InventorySourceGroup
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the inventory source group. Must be UTF-8
        # encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the inventory source group. Assigned by the
        # system.
        # Corresponds to the JSON property `inventorySourceGroupId`
        # @return [Fixnum]
        attr_accessor :inventory_source_group_id
      
        # Output only. The resource name of the inventory source group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @inventory_source_group_id = args[:inventory_source_group_id] if args.key?(:inventory_source_group_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Targeting details for inventory source group. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
      class InventorySourceGroupAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the inventory source group. Should refer to the
        # inventory_source_group_id field of an InventorySourceGroup resource.
        # Corresponds to the JSON property `inventorySourceGroupId`
        # @return [Fixnum]
        attr_accessor :inventory_source_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_group_id = args[:inventory_source_group_id] if args.key?(:inventory_source_group_id)
        end
      end
      
      # The status related settings of the inventory source.
      class InventorySourceStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The configuration status of the inventory source. Only applicable
        # for guaranteed inventory sources. Acceptable values are `
        # INVENTORY_SOURCE_CONFIG_STATUS_PENDING` and `
        # INVENTORY_SOURCE_CONFIG_STATUS_COMPLETED`. An inventory source must be
        # configured (fill in the required fields, choose creatives, and select a
        # default campaign) before it can serve.
        # Corresponds to the JSON property `configStatus`
        # @return [String]
        attr_accessor :config_status
      
        # The user-provided reason for pausing this inventory source. Must not exceed
        # 100 characters. Only applicable when entity_status is set to `
        # ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `entityPauseReason`
        # @return [String]
        attr_accessor :entity_pause_reason
      
        # Whether or not the inventory source is servable. Acceptable values are `
        # ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`.
        # Default value is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Output only. The seller-provided reason for pausing this inventory source.
        # Only applicable for inventory sources synced directly from the publishers and
        # when seller_status is set to `ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `sellerPauseReason`
        # @return [String]
        attr_accessor :seller_pause_reason
      
        # Output only. The status set by the seller for the inventory source. Only
        # applicable for inventory sources synced directly from the publishers.
        # Acceptable values are `ENTITY_STATUS_ACTIVE` and `ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `sellerStatus`
        # @return [String]
        attr_accessor :seller_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_status = args[:config_status] if args.key?(:config_status)
          @entity_pause_reason = args[:entity_pause_reason] if args.key?(:entity_pause_reason)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @seller_pause_reason = args[:seller_pause_reason] if args.key?(:seller_pause_reason)
          @seller_status = args[:seller_status] if args.key?(:seller_status)
        end
      end
      
      # The configuration for video creatives.
      class InventorySourceVideoCreativeConfig
        include Google::Apis::Core::Hashable
      
        # The duration requirements for the video creatives that can be assigned to the
        # inventory source.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # A single invoice.
      class Invoice
        include Google::Apis::Core::Hashable
      
        # The budget grouping ID for this invoice. This field will only be set if the
        # invoice level of the corresponding billing profile was set to "Budget invoice
        # grouping ID".
        # Corresponds to the JSON property `budgetInvoiceGroupingId`
        # @return [String]
        attr_accessor :budget_invoice_grouping_id
      
        # The list of summarized information for each budget associated with this
        # invoice. This field will only be set if the invoice detail level of the
        # corresponding billing profile was set to "Budget level PO".
        # Corresponds to the JSON property `budgetSummaries`
        # @return [Array<Google::Apis::DisplayvideoV3::BudgetSummary>]
        attr_accessor :budget_summaries
      
        # The ID of the original invoice being adjusted by this invoice, if applicable.
        # May appear on the invoice PDF as `Reference invoice number`. If
        # replaced_invoice_ids is set, this field will be empty.
        # Corresponds to the JSON property `correctedInvoiceId`
        # @return [String]
        attr_accessor :corrected_invoice_id
      
        # The currency used in the invoice in ISO 4217 format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The display name of the invoice.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dueDate`
        # @return [Google::Apis::DisplayvideoV3::Date]
        attr_accessor :due_date
      
        # The unique ID of the invoice.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # The type of invoice document.
        # Corresponds to the JSON property `invoiceType`
        # @return [String]
        attr_accessor :invoice_type
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `issueDate`
        # @return [Google::Apis::DisplayvideoV3::Date]
        attr_accessor :issue_date
      
        # The resource name of the invoice.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The total amount of costs or adjustments not tied to a particular budget, in
        # micros of the invoice's currency. For example, if currency_code is `USD`, then
        # 1000000 represents one US dollar.
        # Corresponds to the JSON property `nonBudgetMicros`
        # @return [Fixnum]
        attr_accessor :non_budget_micros
      
        # The ID of the payments account the invoice belongs to. Appears on the invoice
        # PDF as `Billing Account Number`.
        # Corresponds to the JSON property `paymentsAccountId`
        # @return [String]
        attr_accessor :payments_account_id
      
        # The ID of the payments profile the invoice belongs to. Appears on the invoice
        # PDF as `Billing ID`.
        # Corresponds to the JSON property `paymentsProfileId`
        # @return [String]
        attr_accessor :payments_profile_id
      
        # The URL to download a PDF copy of the invoice. This URL is user specific and
        # requires a valid OAuth 2.0 access token to access. The access token must be
        # provided in an `Authorization: Bearer` HTTP header and be authorized for one
        # of the following scopes: * `https://www.googleapis.com/auth/display-video-
        # mediaplanning` * `https://www.googleapis.com/auth/display-video` The URL will
        # be valid for 7 days after retrieval of this invoice object or until this
        # invoice is retrieved again.
        # Corresponds to the JSON property `pdfUrl`
        # @return [String]
        attr_accessor :pdf_url
      
        # Purchase order number associated with the invoice.
        # Corresponds to the JSON property `purchaseOrderNumber`
        # @return [String]
        attr_accessor :purchase_order_number
      
        # The ID(s) of any originally issued invoice that is being cancelled by this
        # invoice, if applicable. Multiple invoices may be listed if those invoices are
        # being consolidated into a single invoice. May appear on invoice PDF as `
        # Replaced invoice numbers`. If corrected_invoice_id is set, this field will be
        # empty.
        # Corresponds to the JSON property `replacedInvoiceIds`
        # @return [Array<String>]
        attr_accessor :replaced_invoice_ids
      
        # A date range.
        # Corresponds to the JSON property `serviceDateRange`
        # @return [Google::Apis::DisplayvideoV3::DateRange]
        attr_accessor :service_date_range
      
        # The pre-tax subtotal amount, in micros of the invoice's currency. For example,
        # if currency_code is `USD`, then 1000000 represents one US dollar.
        # Corresponds to the JSON property `subtotalAmountMicros`
        # @return [Fixnum]
        attr_accessor :subtotal_amount_micros
      
        # The invoice total amount, in micros of the invoice's currency. For example, if
        # currency_code is `USD`, then 1000000 represents one US dollar.
        # Corresponds to the JSON property `totalAmountMicros`
        # @return [Fixnum]
        attr_accessor :total_amount_micros
      
        # The sum of all taxes in invoice, in micros of the invoice's currency. For
        # example, if currency_code is `USD`, then 1000000 represents one US dollar.
        # Corresponds to the JSON property `totalTaxAmountMicros`
        # @return [Fixnum]
        attr_accessor :total_tax_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_invoice_grouping_id = args[:budget_invoice_grouping_id] if args.key?(:budget_invoice_grouping_id)
          @budget_summaries = args[:budget_summaries] if args.key?(:budget_summaries)
          @corrected_invoice_id = args[:corrected_invoice_id] if args.key?(:corrected_invoice_id)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @display_name = args[:display_name] if args.key?(:display_name)
          @due_date = args[:due_date] if args.key?(:due_date)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @invoice_type = args[:invoice_type] if args.key?(:invoice_type)
          @issue_date = args[:issue_date] if args.key?(:issue_date)
          @name = args[:name] if args.key?(:name)
          @non_budget_micros = args[:non_budget_micros] if args.key?(:non_budget_micros)
          @payments_account_id = args[:payments_account_id] if args.key?(:payments_account_id)
          @payments_profile_id = args[:payments_profile_id] if args.key?(:payments_profile_id)
          @pdf_url = args[:pdf_url] if args.key?(:pdf_url)
          @purchase_order_number = args[:purchase_order_number] if args.key?(:purchase_order_number)
          @replaced_invoice_ids = args[:replaced_invoice_ids] if args.key?(:replaced_invoice_ids)
          @service_date_range = args[:service_date_range] if args.key?(:service_date_range)
          @subtotal_amount_micros = args[:subtotal_amount_micros] if args.key?(:subtotal_amount_micros)
          @total_amount_micros = args[:total_amount_micros] if args.key?(:total_amount_micros)
          @total_tax_amount_micros = args[:total_tax_amount_micros] if args.key?(:total_tax_amount_micros)
        end
      end
      
      # Details for assigned keyword targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_KEYWORD`.
      class KeywordAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The keyword, for example `car insurance`. Positive keyword cannot be
        # offensive word. Must be UTF-8 encoded with a maximum size of 255 bytes.
        # Maximum number of characters is 80. Maximum number of words is 10.
        # Corresponds to the JSON property `keyword`
        # @return [String]
        attr_accessor :keyword
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyword = args[:keyword] if args.key?(:keyword)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Settings that control the key performance indicator, or KPI, of an insertion
      # order.
      class Kpi
        include Google::Apis::Core::Hashable
      
        # Optional. Custom Bidding Algorithm ID associated with
        # KPI_CUSTOM_IMPRESSION_VALUE_OVER_COST. This field is ignored if the proper KPI
        # is not selected.
        # Corresponds to the JSON property `kpiAlgorithmId`
        # @return [Fixnum]
        attr_accessor :kpi_algorithm_id
      
        # The goal amount, in micros of the advertiser's currency. Applicable when
        # kpi_type is one of: * `KPI_TYPE_CPM` * `KPI_TYPE_CPC` * `KPI_TYPE_CPA` * `
        # KPI_TYPE_CPIAVC` * `KPI_TYPE_VCPM` For example: 1500000 represents 1.5
        # standard units of the currency.
        # Corresponds to the JSON property `kpiAmountMicros`
        # @return [Fixnum]
        attr_accessor :kpi_amount_micros
      
        # The decimal representation of the goal percentage in micros. Applicable when
        # kpi_type is one of: * `KPI_TYPE_CTR` * `KPI_TYPE_VIEWABILITY` * `
        # KPI_TYPE_CLICK_CVR` * `KPI_TYPE_IMPRESSION_CVR` * `KPI_TYPE_VTR` * `
        # KPI_TYPE_AUDIO_COMPLETION_RATE` * `KPI_TYPE_VIDEO_COMPLETION_RATE` For example:
        # 70000 represents 7% (decimal 0.07).
        # Corresponds to the JSON property `kpiPercentageMicros`
        # @return [Fixnum]
        attr_accessor :kpi_percentage_micros
      
        # A KPI string, which can be empty. Must be UTF-8 encoded with a length of no
        # more than 100 characters. Applicable when kpi_type is `KPI_TYPE_OTHER`.
        # Corresponds to the JSON property `kpiString`
        # @return [String]
        attr_accessor :kpi_string
      
        # Required. The type of KPI.
        # Corresponds to the JSON property `kpiType`
        # @return [String]
        attr_accessor :kpi_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kpi_algorithm_id = args[:kpi_algorithm_id] if args.key?(:kpi_algorithm_id)
          @kpi_amount_micros = args[:kpi_amount_micros] if args.key?(:kpi_amount_micros)
          @kpi_percentage_micros = args[:kpi_percentage_micros] if args.key?(:kpi_percentage_micros)
          @kpi_string = args[:kpi_string] if args.key?(:kpi_string)
          @kpi_type = args[:kpi_type] if args.key?(:kpi_type)
        end
      end
      
      # Details for assigned language targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_LANGUAGE`.
      class LanguageAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the language (e.g., "French").
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned language
        # targeting options on the same resource must have the same value for this field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable language. This will be populated in the
      # language_details field when targeting_type is `TARGETING_TYPE_LANGUAGE`.
      class LanguageTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the language (e.g., "French").
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single line item.
      class LineItem
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the line item belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that control the bid strategy. Bid strategy determines the bid price.
        # Corresponds to the JSON property `bidStrategy`
        # @return [Google::Apis::DisplayvideoV3::BiddingStrategy]
        attr_accessor :bid_strategy
      
        # Settings that control how budget is allocated.
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::DisplayvideoV3::LineItemBudget]
        attr_accessor :budget
      
        # Output only. The unique ID of the campaign that the line item belongs to.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Settings that control how conversions are counted. All post-click conversions
        # will be counted. A percentage value can be set for post-view conversions
        # counting.
        # Corresponds to the JSON property `conversionCounting`
        # @return [Google::Apis::DisplayvideoV3::ConversionCountingConfig]
        attr_accessor :conversion_counting
      
        # The IDs of the creatives associated with the line item.
        # Corresponds to the JSON property `creativeIds`
        # @return [Array<Fixnum>]
        attr_accessor :creative_ids
      
        # Required. The display name of the line item. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the line item can spend its budget and bid
        # on inventory. * For CreateLineItem method, only `ENTITY_STATUS_DRAFT` is
        # allowed. To activate a line item, use UpdateLineItem method and update the
        # status to `ENTITY_STATUS_ACTIVE` after creation. * A line item cannot be
        # changed back to `ENTITY_STATUS_DRAFT` status from any other status. * If the
        # line item's parent insertion order is not active, the line item can't spend
        # its budget even if its own status is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Whether to exclude new exchanges from automatically being targeted by the line
        # item. This field is false by default.
        # Corresponds to the JSON property `excludeNewExchanges`
        # @return [Boolean]
        attr_accessor :exclude_new_exchanges
        alias_method :exclude_new_exchanges?, :exclude_new_exchanges
      
        # Settings that control the active duration of a line item.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::DisplayvideoV3::LineItemFlight]
        attr_accessor :flight
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV3::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Required. Immutable. The unique ID of the insertion order that the line item
        # belongs to.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [Fixnum]
        attr_accessor :insertion_order_id
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV3::IntegrationDetails]
        attr_accessor :integration_details
      
        # Output only. The unique ID of the line item. Assigned by the system.
        # Corresponds to the JSON property `lineItemId`
        # @return [Fixnum]
        attr_accessor :line_item_id
      
        # Required. Immutable. The type of the line item.
        # Corresponds to the JSON property `lineItemType`
        # @return [String]
        attr_accessor :line_item_type
      
        # A mobile app promoted by a mobile app install line item.
        # Corresponds to the JSON property `mobileApp`
        # @return [Google::Apis::DisplayvideoV3::MobileApp]
        attr_accessor :mobile_app
      
        # Output only. The resource name of the line item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings that control the rate at which a budget is spent.
        # Corresponds to the JSON property `pacing`
        # @return [Google::Apis::DisplayvideoV3::Pacing]
        attr_accessor :pacing
      
        # The partner costs associated with the line item. If absent or empty in
        # CreateLineItem method, the newly created line item will inherit partner costs
        # from its parent insertion order.
        # Corresponds to the JSON property `partnerCosts`
        # @return [Array<Google::Apis::DisplayvideoV3::PartnerCost>]
        attr_accessor :partner_costs
      
        # Settings that control how partner revenue is calculated.
        # Corresponds to the JSON property `partnerRevenueModel`
        # @return [Google::Apis::DisplayvideoV3::PartnerRevenueModel]
        attr_accessor :partner_revenue_model
      
        # Output only. The reservation type of the line item.
        # Corresponds to the JSON property `reservationType`
        # @return [String]
        attr_accessor :reservation_type
      
        # Settings that control the [optimized targeting](//support.google.com/
        # displayvideo/answer/12060859) settings of the line item.
        # Corresponds to the JSON property `targetingExpansion`
        # @return [Google::Apis::DisplayvideoV3::TargetingExpansionConfig]
        attr_accessor :targeting_expansion
      
        # Output only. The timestamp when the line item was last updated. Assigned by
        # the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The warning messages generated by the line item. These warnings
        # do not block saving the line item, but some may block the line item from
        # running.
        # Corresponds to the JSON property `warningMessages`
        # @return [Array<String>]
        attr_accessor :warning_messages
      
        # Settings for YouTube and Partners line items.
        # Corresponds to the JSON property `youtubeAndPartnersSettings`
        # @return [Google::Apis::DisplayvideoV3::YoutubeAndPartnersSettings]
        attr_accessor :youtube_and_partners_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @bid_strategy = args[:bid_strategy] if args.key?(:bid_strategy)
          @budget = args[:budget] if args.key?(:budget)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @conversion_counting = args[:conversion_counting] if args.key?(:conversion_counting)
          @creative_ids = args[:creative_ids] if args.key?(:creative_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @exclude_new_exchanges = args[:exclude_new_exchanges] if args.key?(:exclude_new_exchanges)
          @flight = args[:flight] if args.key?(:flight)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @insertion_order_id = args[:insertion_order_id] if args.key?(:insertion_order_id)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @line_item_type = args[:line_item_type] if args.key?(:line_item_type)
          @mobile_app = args[:mobile_app] if args.key?(:mobile_app)
          @name = args[:name] if args.key?(:name)
          @pacing = args[:pacing] if args.key?(:pacing)
          @partner_costs = args[:partner_costs] if args.key?(:partner_costs)
          @partner_revenue_model = args[:partner_revenue_model] if args.key?(:partner_revenue_model)
          @reservation_type = args[:reservation_type] if args.key?(:reservation_type)
          @targeting_expansion = args[:targeting_expansion] if args.key?(:targeting_expansion)
          @update_time = args[:update_time] if args.key?(:update_time)
          @warning_messages = args[:warning_messages] if args.key?(:warning_messages)
          @youtube_and_partners_settings = args[:youtube_and_partners_settings] if args.key?(:youtube_and_partners_settings)
        end
      end
      
      # Wrapper object associating an assigned_targeting_option resource and the line
      # item it is assigned to.
      class LineItemAssignedTargetingOption
        include Google::Apis::Core::Hashable
      
        # A single assigned targeting option, which defines the state of a targeting
        # option for an entity with targeting settings.
        # Corresponds to the JSON property `assignedTargetingOption`
        # @return [Google::Apis::DisplayvideoV3::AssignedTargetingOption]
        attr_accessor :assigned_targeting_option
      
        # The ID of the line item the assigned targeting option is assigned to.
        # Corresponds to the JSON property `lineItemId`
        # @return [Fixnum]
        attr_accessor :line_item_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_option = args[:assigned_targeting_option] if args.key?(:assigned_targeting_option)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
        end
      end
      
      # Settings that control how budget is allocated.
      class LineItemBudget
        include Google::Apis::Core::Hashable
      
        # Required. The type of the budget allocation. `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only applicable when automatic
        # budget allocation is enabled for the parent insertion order.
        # Corresponds to the JSON property `budgetAllocationType`
        # @return [String]
        attr_accessor :budget_allocation_type
      
        # Output only. The budget unit specifies whether the budget is currency based or
        # impression based. This value is inherited from the parent insertion order.
        # Corresponds to the JSON property `budgetUnit`
        # @return [String]
        attr_accessor :budget_unit
      
        # The maximum budget amount the line item will spend. Must be greater than 0.
        # When budget_allocation_type is: * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC`,
        # this field is immutable and is set by the system. * `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED`, if budget_unit is: - `
        # BUDGET_UNIT_CURRENCY`, this field represents maximum budget amount to spend,
        # in micros of the advertiser's currency. For example, 1500000 represents 1.5
        # standard units of the currency. - `BUDGET_UNIT_IMPRESSIONS`, this field
        # represents the maximum number of impressions to serve. * `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNLIMITED`, this field is not applicable and
        # will be ignored by the system.
        # Corresponds to the JSON property `maxAmount`
        # @return [Fixnum]
        attr_accessor :max_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_allocation_type = args[:budget_allocation_type] if args.key?(:budget_allocation_type)
          @budget_unit = args[:budget_unit] if args.key?(:budget_unit)
          @max_amount = args[:max_amount] if args.key?(:max_amount)
        end
      end
      
      # Settings that control the active duration of a line item.
      class LineItemFlight
        include Google::Apis::Core::Hashable
      
        # A date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DisplayvideoV3::DateRange]
        attr_accessor :date_range
      
        # Required. The type of the line item's flight dates.
        # Corresponds to the JSON property `flightDateType`
        # @return [String]
        attr_accessor :flight_date_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @flight_date_type = args[:flight_date_type] if args.key?(:flight_date_type)
        end
      end
      
      # 
      class ListAdGroupAdsResponse
        include Google::Apis::Core::Hashable
      
        # The list of ad group ads. This list will be absent if empty.
        # Corresponds to the JSON property `adGroupAds`
        # @return [Array<Google::Apis::DisplayvideoV3::AdGroupAd>]
        attr_accessor :ad_group_ads
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAdGroupAds` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ads = args[:ad_group_ads] if args.key?(:ad_group_ads)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAdGroupAssignedTargetingOptions.
      class ListAdGroupAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListAdGroupAssignedTargetingOptionsRequest to
        # fetch the next page of results. This token will be absent if there are no more
        # AssignedTargetingOption resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListAdGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of ad groups. This list will be absent if empty.
        # Corresponds to the JSON property `adGroups`
        # @return [Array<Google::Apis::DisplayvideoV3::AdGroup>]
        attr_accessor :ad_groups
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAdGroups` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_groups = args[:ad_groups] if args.key?(:ad_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAdvertiserAssignedTargetingOptions.
      class ListAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListAdvertiserAssignedTargetingOptionsRequest
        # to fetch the next page of results. This token will be absent if there are no
        # more assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListAdvertisersResponse
        include Google::Apis::Core::Hashable
      
        # The list of advertisers. This list will be absent if empty.
        # Corresponds to the JSON property `advertisers`
        # @return [Array<Google::Apis::DisplayvideoV3::Advertiser>]
        attr_accessor :advertisers
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAdvertisers` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers = args[:advertisers] if args.key?(:advertisers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AssignedInventorySourceService.
      # ListAssignedInventorySources.
      class ListAssignedInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned inventory sources. This list will be absent if empty.
        # Corresponds to the JSON property `assignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedInventorySource>]
        attr_accessor :assigned_inventory_sources
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAssignedInventorySources`
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_sources = args[:assigned_inventory_sources] if args.key?(:assigned_inventory_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AssignedLocationService.ListAssignedLocations.
      class ListAssignedLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned locations. This list will be absent if empty.
        # Corresponds to the JSON property `assignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedLocation>]
        attr_accessor :assigned_locations
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAssignedLocations` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_locations = args[:assigned_locations] if args.key?(:assigned_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListCampaignAssignedTargetingOptions.
      class ListCampaignAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListCampaignAssignedTargetingOptionsRequest
        # to fetch the next page of results. This token will be absent if there are no
        # more assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCampaignsResponse
        include Google::Apis::Core::Hashable
      
        # The list of campaigns. This list will be absent if empty.
        # Corresponds to the JSON property `campaigns`
        # @return [Array<Google::Apis::DisplayvideoV3::Campaign>]
        attr_accessor :campaigns
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCampaigns` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaigns = args[:campaigns] if args.key?(:campaigns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of channels. This list will be absent if empty.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::DisplayvideoV3::Channel>]
        attr_accessor :channels
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListChannels` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCombinedAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of combined audiences. This list will be absent if empty.
        # Corresponds to the JSON property `combinedAudiences`
        # @return [Array<Google::Apis::DisplayvideoV3::CombinedAudience>]
        attr_accessor :combined_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCombinedAudiences` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audiences = args[:combined_audiences] if args.key?(:combined_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The list of creatives. This list will be absent if empty.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::DisplayvideoV3::Creative>]
        attr_accessor :creatives
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCreativesRequest` method to
        # retrieve the next page of results. If this field is null, it means this is the
        # last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creatives = args[:creatives] if args.key?(:creatives)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomBiddingAlgorithmRulesResponse
        include Google::Apis::Core::Hashable
      
        # The list of CustomBiddingAlgorithmRules resources. This list will be absent if
        # empty.
        # Corresponds to the JSON property `customBiddingRules`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRules>]
        attr_accessor :custom_bidding_rules
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `
        # ListCustomBiddingAlgorithmRulesRequest` method to retrieve the next page of
        # results. If this field is null, it means this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_rules = args[:custom_bidding_rules] if args.key?(:custom_bidding_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomBiddingAlgorithmsResponse
        include Google::Apis::Core::Hashable
      
        # The list of custom bidding algorithms. This list will be absent if empty.
        # Corresponds to the JSON property `customBiddingAlgorithms`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomBiddingAlgorithm>]
        attr_accessor :custom_bidding_algorithms
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCustomBiddingAlgorithmsRequest`
        # method to retrieve the next page of results. If this field is null, it means
        # this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithms = args[:custom_bidding_algorithms] if args.key?(:custom_bidding_algorithms)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomBiddingScriptsResponse
        include Google::Apis::Core::Hashable
      
        # The list of custom bidding scripts. This list will be absent if empty.
        # Corresponds to the JSON property `customBiddingScripts`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomBiddingScript>]
        attr_accessor :custom_bidding_scripts
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCustomBiddingScriptsRequest`
        # method to retrieve the next page of results. If this field is null, it means
        # this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_scripts = args[:custom_bidding_scripts] if args.key?(:custom_bidding_scripts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of custom lists. This list will be absent if empty.
        # Corresponds to the JSON property `customLists`
        # @return [Array<Google::Apis::DisplayvideoV3::CustomList>]
        attr_accessor :custom_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCustomLists` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_lists = args[:custom_lists] if args.key?(:custom_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListFirstAndThirdPartyAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of first and third party audiences. Audience size properties will not
        # be included. This list will be absent if empty.
        # Corresponds to the JSON property `firstAndThirdPartyAudiences`
        # @return [Array<Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudience>]
        attr_accessor :first_and_third_party_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListFirstAndThirdPartyAudiences`
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_and_third_party_audiences = args[:first_and_third_party_audiences] if args.key?(:first_and_third_party_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListFloodlightActivitiesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Floodlight activities. This list will be absent if empty.
        # Corresponds to the JSON property `floodlightActivities`
        # @return [Array<Google::Apis::DisplayvideoV3::FloodlightActivity>]
        attr_accessor :floodlight_activities
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListFloodlightActivities` method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activities = args[:floodlight_activities] if args.key?(:floodlight_activities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListGoogleAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Google audiences. This list will be absent if empty.
        # Corresponds to the JSON property `googleAudiences`
        # @return [Array<Google::Apis::DisplayvideoV3::GoogleAudience>]
        attr_accessor :google_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListGoogleAudiences` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_audiences = args[:google_audiences] if args.key?(:google_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListGuaranteedOrdersResponse
        include Google::Apis::Core::Hashable
      
        # The list of guaranteed orders. This list will be absent if empty.
        # Corresponds to the JSON property `guaranteedOrders`
        # @return [Array<Google::Apis::DisplayvideoV3::GuaranteedOrder>]
        attr_accessor :guaranteed_orders
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListGuaranteedOrders` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guaranteed_orders = args[:guaranteed_orders] if args.key?(:guaranteed_orders)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInsertionOrderAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # ListInsertionOrderAssignedTargetingOptionsRequest to fetch the next page of
        # results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInsertionOrdersResponse
        include Google::Apis::Core::Hashable
      
        # The list of insertion orders. This list will be absent if empty.
        # Corresponds to the JSON property `insertionOrders`
        # @return [Array<Google::Apis::DisplayvideoV3::InsertionOrder>]
        attr_accessor :insertion_orders
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInsertionOrders` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insertion_orders = args[:insertion_orders] if args.key?(:insertion_orders)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for InventorySourceGroupService.ListInventorySourceGroups.
      class ListInventorySourceGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of inventory source groups. This list will be absent if empty.
        # Corresponds to the JSON property `inventorySourceGroups`
        # @return [Array<Google::Apis::DisplayvideoV3::InventorySourceGroup>]
        attr_accessor :inventory_source_groups
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInventorySourceGroups` method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_groups = args[:inventory_source_groups] if args.key?(:inventory_source_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of inventory sources. This list will be absent if empty.
        # Corresponds to the JSON property `inventorySources`
        # @return [Array<Google::Apis::DisplayvideoV3::InventorySource>]
        attr_accessor :inventory_sources
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInventorySources` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_sources = args[:inventory_sources] if args.key?(:inventory_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInvoicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of invoices. This list will be absent if empty.
        # Corresponds to the JSON property `invoices`
        # @return [Array<Google::Apis::DisplayvideoV3::Invoice>]
        attr_accessor :invoices
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInvoices` method to retrieve
        # the next page of results. This token will be absent if there are no more
        # invoices to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoices = args[:invoices] if args.key?(:invoices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListLineItemAssignedTargetingOptions.
      class ListLineItemAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListLineItemAssignedTargetingOptionsRequest
        # to fetch the next page of results. This token will be absent if there are no
        # more assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # The list of line items. This list will be absent if empty.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::DisplayvideoV3::LineItem>]
        attr_accessor :line_items
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListLineItems` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_items = args[:line_items] if args.key?(:line_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListLocationListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of location lists. This list will be absent if empty.
        # Corresponds to the JSON property `locationLists`
        # @return [Array<Google::Apis::DisplayvideoV3::LocationList>]
        attr_accessor :location_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListLocationLists` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_lists = args[:location_lists] if args.key?(:location_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for NegativeKeywordListService.ListNegativeKeywordLists.
      class ListNegativeKeywordListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keyword lists. This list will be absent if empty.
        # Corresponds to the JSON property `negativeKeywordLists`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeywordList>]
        attr_accessor :negative_keyword_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListNegativeKeywordLists` method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keyword_lists = args[:negative_keyword_lists] if args.key?(:negative_keyword_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for NegativeKeywordService.ListNegativeKeywords.
      class ListNegativeKeywordsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keywords. This list will be absent if empty.
        # Corresponds to the JSON property `negativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeyword>]
        attr_accessor :negative_keywords
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListNegativeKeywords` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keywords = args[:negative_keywords] if args.key?(:negative_keywords)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListPartnerAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListPartnerAssignedTargetingOptionsRequest to
        # fetch the next page of results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListPartnersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListPartners` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of partners. This list will be absent if empty.
        # Corresponds to the JSON property `partners`
        # @return [Array<Google::Apis::DisplayvideoV3::Partner>]
        attr_accessor :partners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partners = args[:partners] if args.key?(:partners)
        end
      end
      
      # Response message for SiteService.ListSites.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListSites` method to retrieve the
        # next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of sites. This list will be absent if empty.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DisplayvideoV3::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Response message for ListTargetingOptions.
      class ListTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListTargetingOptions` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `targetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::TargetingOption>]
        attr_accessor :targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @targeting_options = args[:targeting_options] if args.key?(:targeting_options)
        end
      end
      
      # 
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListUsers` method to retrieve the
        # next page of results. This token will be absent if there are no more results
        # to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of users. This list will be absent if empty.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::DisplayvideoV3::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A list of locations used for targeting.
      class LocationList
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The unique ID of the advertiser the location list belongs
        # to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Required. The display name of the location list. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the location list. Assigned by the system.
        # Corresponds to the JSON property `locationListId`
        # @return [Fixnum]
        attr_accessor :location_list_id
      
        # Required. Immutable. The type of location. All locations in the list will
        # share this type.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        # Output only. The resource name of the location list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location_list_id = args[:location_list_id] if args.key?(:location_list_id)
          @location_type = args[:location_type] if args.key?(:location_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Specifies how many days into the past to look when determining whether to
      # record a conversion.
      class LookbackWindow
        include Google::Apis::Core::Hashable
      
        # Lookback window, in days, from the last time a given user clicked on one of
        # your ads.
        # Corresponds to the JSON property `clickDays`
        # @return [Fixnum]
        attr_accessor :click_days
      
        # Lookback window, in days, from the last time a given user viewed one of your
        # ads.
        # Corresponds to the JSON property `impressionDays`
        # @return [Fixnum]
        attr_accessor :impression_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_days = args[:click_days] if args.key?(:click_days)
          @impression_days = args[:impression_days] if args.key?(:impression_days)
        end
      end
      
      # 
      class LookupInvoiceCurrencyResponse
        include Google::Apis::Core::Hashable
      
        # Currency used by the advertiser in ISO 4217 format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
        end
      end
      
      # Details for a Masthead Ad.
      class MastheadAd
        include Google::Apis::Core::Hashable
      
        # The duration of time the video will autoplay.
        # Corresponds to the JSON property `autoplayVideoDuration`
        # @return [String]
        attr_accessor :autoplay_video_duration
      
        # The amount of time in milliseconds after which the video will start to play.
        # Corresponds to the JSON property `autoplayVideoStartMillisecond`
        # @return [Fixnum]
        attr_accessor :autoplay_video_start_millisecond
      
        # The text on the call-to-action button.
        # Corresponds to the JSON property `callToActionButtonLabel`
        # @return [String]
        attr_accessor :call_to_action_button_label
      
        # The destination URL for the call-to-action button.
        # Corresponds to the JSON property `callToActionFinalUrl`
        # @return [String]
        attr_accessor :call_to_action_final_url
      
        # The tracking URL for the call-to-action button.
        # Corresponds to the JSON property `callToActionTrackingUrl`
        # @return [String]
        attr_accessor :call_to_action_tracking_url
      
        # The videos that appear next to the Masthead Ad on desktop. Can be no more than
        # two.
        # Corresponds to the JSON property `companionYoutubeVideos`
        # @return [Array<Google::Apis::DisplayvideoV3::YoutubeVideoDetails>]
        attr_accessor :companion_youtube_videos
      
        # The description of the ad.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The headline of the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # Whether to show a background or banner that appears at the top of a YouTube
        # page.
        # Corresponds to the JSON property `showChannelArt`
        # @return [Boolean]
        attr_accessor :show_channel_art
        alias_method :show_channel_art?, :show_channel_art
      
        # Details of a YouTube video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::DisplayvideoV3::YoutubeVideoDetails]
        attr_accessor :video
      
        # The aspect ratio of the autoplaying YouTube video on the Masthead.
        # Corresponds to the JSON property `videoAspectRatio`
        # @return [String]
        attr_accessor :video_aspect_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoplay_video_duration = args[:autoplay_video_duration] if args.key?(:autoplay_video_duration)
          @autoplay_video_start_millisecond = args[:autoplay_video_start_millisecond] if args.key?(:autoplay_video_start_millisecond)
          @call_to_action_button_label = args[:call_to_action_button_label] if args.key?(:call_to_action_button_label)
          @call_to_action_final_url = args[:call_to_action_final_url] if args.key?(:call_to_action_final_url)
          @call_to_action_tracking_url = args[:call_to_action_tracking_url] if args.key?(:call_to_action_tracking_url)
          @companion_youtube_videos = args[:companion_youtube_videos] if args.key?(:companion_youtube_videos)
          @description = args[:description] if args.key?(:description)
          @headline = args[:headline] if args.key?(:headline)
          @show_channel_art = args[:show_channel_art] if args.key?(:show_channel_art)
          @video = args[:video] if args.key?(:video)
          @video_aspect_ratio = args[:video_aspect_ratio] if args.key?(:video_aspect_ratio)
        end
      end
      
      # A strategy that automatically adjusts the bid to optimize a specified
      # performance goal while spending the full budget.
      class MaximizeSpendBidStrategy
        include Google::Apis::Core::Hashable
      
        # The ID of the Custom Bidding Algorithm used by this strategy. Only applicable
        # when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`. Assigning a custom
        # bidding algorithm that uses floodlight activities not identified in
        # floodlightActivityConfigs will return an error.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # The maximum average CPM that may be bid, in micros of the advertiser's
        # currency. Must be greater than or equal to a billable unit of the given
        # currency. For example, 1500000 represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `maxAverageCpmBidAmountMicros`
        # @return [Fixnum]
        attr_accessor :max_average_cpm_bid_amount_micros
      
        # Required. The type of the performance goal that the bidding strategy tries to
        # minimize while spending the full budget. `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` is not supported for this
        # strategy.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        # Whether the strategy takes deal floor prices into account.
        # Corresponds to the JSON property `raiseBidForDeals`
        # @return [Boolean]
        attr_accessor :raise_bid_for_deals
        alias_method :raise_bid_for_deals?, :raise_bid_for_deals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @max_average_cpm_bid_amount_micros = args[:max_average_cpm_bid_amount_micros] if args.key?(:max_average_cpm_bid_amount_micros)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
          @raise_bid_for_deals = args[:raise_bid_for_deals] if args.key?(:raise_bid_for_deals)
        end
      end
      
      # Measurement settings of a partner.
      class MeasurementConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not to report DV360 cost to CM360.
        # Corresponds to the JSON property `dv360ToCmCostReportingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_cost_reporting_enabled
        alias_method :dv360_to_cm_cost_reporting_enabled?, :dv360_to_cm_cost_reporting_enabled
      
        # Whether or not to include DV360 data in CM360 data transfer reports.
        # Corresponds to the JSON property `dv360ToCmDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_data_sharing_enabled
        alias_method :dv360_to_cm_data_sharing_enabled?, :dv360_to_cm_data_sharing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dv360_to_cm_cost_reporting_enabled = args[:dv360_to_cm_cost_reporting_enabled] if args.key?(:dv360_to_cm_cost_reporting_enabled)
          @dv360_to_cm_data_sharing_enabled = args[:dv360_to_cm_data_sharing_enabled] if args.key?(:dv360_to_cm_data_sharing_enabled)
        end
      end
      
      # A mobile app promoted by a mobile app install line item.
      class MobileApp
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the app provided by the platform store. Android apps are
        # identified by the bundle ID used by Android's Play store, such as `com.google.
        # android.gm`. iOS apps are identified by a nine-digit app ID used by Apple's
        # App store, such as `422689480`.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Output only. The app name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The app platform.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Output only. The app publisher.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @platform = args[:platform] if args.key?(:platform)
          @publisher = args[:publisher] if args.key?(:publisher)
        end
      end
      
      # Wrapper message for a list of mobile device IDs defining Customer Match
      # audience members.
      class MobileDeviceIdList
        include Google::Apis::Core::Hashable
      
        # User consent status.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DisplayvideoV3::Consent]
        attr_accessor :consent
      
        # A list of mobile device IDs defining Customer Match audience members. The size
        # of mobile_device_ids mustn't be greater than 500,000.
        # Corresponds to the JSON property `mobileDeviceIds`
        # @return [Array<String>]
        attr_accessor :mobile_device_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @mobile_device_ids = args[:mobile_device_ids] if args.key?(:mobile_device_ids)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Details for native content position assigned targeting option. This will be
      # populated in the native_content_position_details field when targeting_type is `
      # TARGETING_TYPE_NATIVE_CONTENT_POSITION`. Explicitly targeting all options is
      # not supported. Remove all native content position targeting options to achieve
      # this effect.
      class NativeContentPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The content position.
        # Corresponds to the JSON property `contentPosition`
        # @return [String]
        attr_accessor :content_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_position = args[:content_position] if args.key?(:content_position)
        end
      end
      
      # Represents a targetable native content position. This will be populated in the
      # native_content_position_details field when targeting_type is `
      # TARGETING_TYPE_NATIVE_CONTENT_POSITION`.
      class NativeContentPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content position.
        # Corresponds to the JSON property `contentPosition`
        # @return [String]
        attr_accessor :content_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_position = args[:content_position] if args.key?(:content_position)
        end
      end
      
      # A negatively targeted keyword that belongs to a negative keyword list.
      class NegativeKeyword
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The negatively targeted keyword, for example `car
        # insurance`. Must be UTF-8 encoded with a maximum size of 255 bytes. Maximum
        # number of characters is 80. Maximum number of words is 10. Valid characters
        # are restricted to ASCII characters only. The only URL-escaping permitted is
        # for representing whitespace between words. Leading or trailing whitespace is
        # ignored.
        # Corresponds to the JSON property `keywordValue`
        # @return [String]
        attr_accessor :keyword_value
      
        # Output only. The resource name of the negative keyword.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyword_value = args[:keyword_value] if args.key?(:keyword_value)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A list of negative keywords used for targeting.
      class NegativeKeywordList
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the negative keyword list belongs
        # to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Required. The display name of the negative keyword list. Must be UTF-8 encoded
        # with a maximum size of 255 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the negative keyword list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the negative keyword list. Assigned by the
        # system.
        # Corresponds to the JSON property `negativeKeywordListId`
        # @return [Fixnum]
        attr_accessor :negative_keyword_list_id
      
        # Output only. Number of line items that are directly targeting this negative
        # keyword list.
        # Corresponds to the JSON property `targetedLineItemCount`
        # @return [Fixnum]
        attr_accessor :targeted_line_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @negative_keyword_list_id = args[:negative_keyword_list_id] if args.key?(:negative_keyword_list_id)
          @targeted_line_item_count = args[:targeted_line_item_count] if args.key?(:targeted_line_item_count)
        end
      end
      
      # Targeting details for negative keyword list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.
      class NegativeKeywordListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the negative keyword list. Should refer to the
        # negative_keyword_list_id field of a NegativeKeywordList resource.
        # Corresponds to the JSON property `negativeKeywordListId`
        # @return [Fixnum]
        attr_accessor :negative_keyword_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keyword_list_id = args[:negative_keyword_list_id] if args.key?(:negative_keyword_list_id)
        end
      end
      
      # Details for a non-skippable ad.
      class NonSkippableAd
        include Google::Apis::Core::Hashable
      
        # Common attributes for in-stream, non-skippable and bumper ads.
        # Corresponds to the JSON property `commonInStreamAttribute`
        # @return [Google::Apis::DisplayvideoV3::CommonInStreamAttribute]
        attr_accessor :common_in_stream_attribute
      
        # The custom parameters to pass custom values to tracking URL template.
        # Corresponds to the JSON property `customParameters`
        # @return [Hash<String,String>]
        attr_accessor :custom_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_in_stream_attribute = args[:common_in_stream_attribute] if args.key?(:common_in_stream_attribute)
          @custom_parameters = args[:custom_parameters] if args.key?(:custom_parameters)
        end
      end
      
      # OBA Icon for a Creative
      class ObaIcon
        include Google::Apis::Core::Hashable
      
        # Required. The click tracking URL of the OBA icon. Only URLs of the following
        # domains are allowed: * `https://info.evidon.com` * `https://l.betrad.com`
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :dimensions
      
        # Required. The landing page URL of the OBA icon. Only URLs of the following
        # domains are allowed: * `https://info.evidon.com` * `https://l.betrad.com`
        # Corresponds to the JSON property `landingPageUrl`
        # @return [String]
        attr_accessor :landing_page_url
      
        # Optional. The position of the OBA icon on the creative.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # Optional. The program of the OBA icon. For example: “AdChoices”.
        # Corresponds to the JSON property `program`
        # @return [String]
        attr_accessor :program
      
        # Optional. The MIME type of the OBA icon resource.
        # Corresponds to the JSON property `resourceMimeType`
        # @return [String]
        attr_accessor :resource_mime_type
      
        # Optional. The URL of the OBA icon resource.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # Required. The view tracking URL of the OBA icon. Only URLs of the following
        # domains are allowed: * `https://info.evidon.com` * `https://l.betrad.com`
        # Corresponds to the JSON property `viewTrackingUrl`
        # @return [String]
        attr_accessor :view_tracking_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @landing_page_url = args[:landing_page_url] if args.key?(:landing_page_url)
          @position = args[:position] if args.key?(:position)
          @program = args[:program] if args.key?(:program)
          @resource_mime_type = args[:resource_mime_type] if args.key?(:resource_mime_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @view_tracking_url = args[:view_tracking_url] if args.key?(:view_tracking_url)
        end
      end
      
      # Represents a targetable Open Measurement enabled inventory type. This will be
      # populated in the details field of an AssignedTargetingOption when
      # targeting_type is `TARGETING_TYPE_OMID`.
      class OmidAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The type of Open Measurement enabled inventory.
        # Corresponds to the JSON property `omid`
        # @return [String]
        attr_accessor :omid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @omid = args[:omid] if args.key?(:omid)
        end
      end
      
      # Represents a targetable Open Measurement enabled inventory type. This will be
      # populated in the omid_details field when targeting_type is `
      # TARGETING_TYPE_OMID`.
      class OmidTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The type of Open Measurement enabled inventory.
        # Corresponds to the JSON property `omid`
        # @return [String]
        attr_accessor :omid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @omid = args[:omid] if args.key?(:omid)
        end
      end
      
      # On screen position targeting option details. This will be populated in the
      # on_screen_position_details field when targeting_type is `
      # TARGETING_TYPE_ON_SCREEN_POSITION`.
      class OnScreenPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The ad type to target. Only applicable to insertion order
        # targeting and new line items supporting the specified ad type will inherit
        # this targeting option by default. Possible values are: * `AD_TYPE_DISPLAY`,
        # the setting will be inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_DISPLAY_DEFAULT`. * `AD_TYPE_VIDEO`, the setting will be
        # inherited by new line item when line_item_type is `
        # LINE_ITEM_TYPE_VIDEO_DEFAULT`.
        # Corresponds to the JSON property `adType`
        # @return [String]
        attr_accessor :ad_type
      
        # Output only. The on screen position.
        # Corresponds to the JSON property `onScreenPosition`
        # @return [String]
        attr_accessor :on_screen_position
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_type = args[:ad_type] if args.key?(:ad_type)
          @on_screen_position = args[:on_screen_position] if args.key?(:on_screen_position)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable on screen position, which could be used by display and
      # video ads. This will be populated in the on_screen_position_details field when
      # targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
      class OnScreenPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The on screen position.
        # Corresponds to the JSON property `onScreenPosition`
        # @return [String]
        attr_accessor :on_screen_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_screen_position = args[:on_screen_position] if args.key?(:on_screen_position)
        end
      end
      
      # Assigned operating system targeting option details. This will be populated in
      # the operating_system_details field when targeting_type is `
      # TARGETING_TYPE_OPERATING_SYSTEM`.
      class OperatingSystemAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the operating system.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting option ID populated in targeting_option_id field when
        # targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable operating system. This will be populated in the
      # operating_system_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_OPERATING_SYSTEM`.
      class OperatingSystemTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the operating system.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::DisplayvideoV3::Status]
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
      
      # Settings that control the rate at which a budget is spent.
      class Pacing
        include Google::Apis::Core::Hashable
      
        # Maximum number of impressions to serve every day. Applicable when the budget
        # is impression based. Must be greater than 0.
        # Corresponds to the JSON property `dailyMaxImpressions`
        # @return [Fixnum]
        attr_accessor :daily_max_impressions
      
        # Maximum currency amount to spend every day in micros of advertiser's currency.
        # Applicable when the budget is currency based. Must be greater than 0. For
        # example, for 1.5 standard unit of the currency, set this field to 1500000. The
        # value assigned will be rounded to whole billable units for the relevant
        # currency by the following rules: any positive value less than a single
        # billable unit will be rounded up to one billable unit and any value larger
        # than a single billable unit will be rounded down to the nearest billable value.
        # For example, if the currency's billable unit is 0.01, and this field is set
        # to 10257770, it will round down to 10250000, a value of 10.25. If set to 505,
        # it will round up to 10000, a value of 0.01.
        # Corresponds to the JSON property `dailyMaxMicros`
        # @return [Fixnum]
        attr_accessor :daily_max_micros
      
        # Required. The time period in which the pacing budget will be spent. When
        # automatic budget allocation is enabled at the insertion order via
        # automationType, this field is output only and defaults to `
        # PACING_PERIOD_FLIGHT`.
        # Corresponds to the JSON property `pacingPeriod`
        # @return [String]
        attr_accessor :pacing_period
      
        # Required. The type of pacing that defines how the budget amount will be spent
        # across the pacing_period. `PACING_TYPE_ASAP` is not compatible with
        # pacing_period `PACING_PERIOD_FLIGHT` for insertion orders.
        # Corresponds to the JSON property `pacingType`
        # @return [String]
        attr_accessor :pacing_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_max_impressions = args[:daily_max_impressions] if args.key?(:daily_max_impressions)
          @daily_max_micros = args[:daily_max_micros] if args.key?(:daily_max_micros)
          @pacing_period = args[:pacing_period] if args.key?(:pacing_period)
          @pacing_type = args[:pacing_type] if args.key?(:pacing_type)
        end
      end
      
      # A filtering option that filters on selected file types belonging to a chosen
      # set of filter entities.
      class ParentEntityFilter
        include Google::Apis::Core::Hashable
      
        # Required. File types that will be returned.
        # Corresponds to the JSON property `fileType`
        # @return [Array<String>]
        attr_accessor :file_type
      
        # The IDs of the specified filter type. This is used to filter entities to fetch.
        # If filter type is not `FILTER_TYPE_NONE`, at least one ID must be specified.
        # Corresponds to the JSON property `filterIds`
        # @return [Array<Fixnum>]
        attr_accessor :filter_ids
      
        # Required. Filter type used to filter fetched entities.
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_type = args[:file_type] if args.key?(:file_type)
          @filter_ids = args[:filter_ids] if args.key?(:filter_ids)
          @filter_type = args[:filter_type] if args.key?(:filter_type)
        end
      end
      
      # Details for assigned parental status targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_PARENTAL_STATUS`.
      class ParentalStatusAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The parental status of the audience.
        # Corresponds to the JSON property `parentalStatus`
        # @return [String]
        attr_accessor :parental_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parental_status = args[:parental_status] if args.key?(:parental_status)
        end
      end
      
      # Represents a targetable parental status. This will be populated in the
      # parental_status_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_PARENTAL_STATUS`.
      class ParentalStatusTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The parental status of an audience.
        # Corresponds to the JSON property `parentalStatus`
        # @return [String]
        attr_accessor :parental_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parental_status = args[:parental_status] if args.key?(:parental_status)
        end
      end
      
      # A single partner in Display & Video 360 (DV360).
      class Partner
        include Google::Apis::Core::Hashable
      
        # Ad server related settings of a partner.
        # Corresponds to the JSON property `adServerConfig`
        # @return [Google::Apis::DisplayvideoV3::PartnerAdServerConfig]
        attr_accessor :ad_server_config
      
        # Billing related settings of a partner.
        # Corresponds to the JSON property `billingConfig`
        # @return [Google::Apis::DisplayvideoV3::PartnerBillingConfig]
        attr_accessor :billing_config
      
        # Settings that control how partner related data may be accessed.
        # Corresponds to the JSON property `dataAccessConfig`
        # @return [Google::Apis::DisplayvideoV3::PartnerDataAccessConfig]
        attr_accessor :data_access_config
      
        # The display name of the partner. Must be UTF-8 encoded with a maximum size of
        # 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The status of the partner.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control which exchanges are enabled for a partner.
        # Corresponds to the JSON property `exchangeConfig`
        # @return [Google::Apis::DisplayvideoV3::ExchangeConfig]
        attr_accessor :exchange_config
      
        # General settings of a partner.
        # Corresponds to the JSON property `generalConfig`
        # @return [Google::Apis::DisplayvideoV3::PartnerGeneralConfig]
        attr_accessor :general_config
      
        # Output only. The resource name of the partner.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the partner. Assigned by the system.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Output only. The timestamp when the partner was last updated. Assigned by the
        # system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_server_config = args[:ad_server_config] if args.key?(:ad_server_config)
          @billing_config = args[:billing_config] if args.key?(:billing_config)
          @data_access_config = args[:data_access_config] if args.key?(:data_access_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @exchange_config = args[:exchange_config] if args.key?(:exchange_config)
          @general_config = args[:general_config] if args.key?(:general_config)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Ad server related settings of a partner.
      class PartnerAdServerConfig
        include Google::Apis::Core::Hashable
      
        # Measurement settings of a partner.
        # Corresponds to the JSON property `measurementConfig`
        # @return [Google::Apis::DisplayvideoV3::MeasurementConfig]
        attr_accessor :measurement_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @measurement_config = args[:measurement_config] if args.key?(:measurement_config)
        end
      end
      
      # Billing related settings of a partner.
      class PartnerBillingConfig
        include Google::Apis::Core::Hashable
      
        # The ID of a partner default billing profile.
        # Corresponds to the JSON property `billingProfileId`
        # @return [Fixnum]
        attr_accessor :billing_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_profile_id = args[:billing_profile_id] if args.key?(:billing_profile_id)
        end
      end
      
      # Settings that control a partner cost. A partner cost is any type of expense
      # involved in running a campaign, other than the costs of purchasing impressions
      # (which is called the media cost) and using third-party audience segment data (
      # data fee). Some examples of partner costs include the fees for using DV360, a
      # third-party ad server, or a third-party ad serving verification service.
      class PartnerCost
        include Google::Apis::Core::Hashable
      
        # Required. The type of the partner cost.
        # Corresponds to the JSON property `costType`
        # @return [String]
        attr_accessor :cost_type
      
        # The CPM fee amount in micros of advertiser's currency. Applicable when the
        # fee_type is `PARTNER_FEE_TYPE_CPM_FEE`. Must be greater than or equal to 0.
        # For example, for 1.5 standard unit of the advertiser's currency, set this
        # field to 1500000.
        # Corresponds to the JSON property `feeAmount`
        # @return [Fixnum]
        attr_accessor :fee_amount
      
        # The media fee percentage in millis (1/1000 of a percent). Applicable when the
        # fee_type is `PARTNER_FEE_TYPE_MEDIA_FEE`. Must be greater than or equal to 0.
        # For example: 100 represents 0.1%.
        # Corresponds to the JSON property `feePercentageMillis`
        # @return [Fixnum]
        attr_accessor :fee_percentage_millis
      
        # Required. The fee type for this partner cost.
        # Corresponds to the JSON property `feeType`
        # @return [String]
        attr_accessor :fee_type
      
        # The invoice type for this partner cost. * Required when cost_type is one of: -
        # `PARTNER_COST_TYPE_ADLOOX` - `PARTNER_COST_TYPE_DOUBLE_VERIFY` - `
        # PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE`. * Output only for other types.
        # Corresponds to the JSON property `invoiceType`
        # @return [String]
        attr_accessor :invoice_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_type = args[:cost_type] if args.key?(:cost_type)
          @fee_amount = args[:fee_amount] if args.key?(:fee_amount)
          @fee_percentage_millis = args[:fee_percentage_millis] if args.key?(:fee_percentage_millis)
          @fee_type = args[:fee_type] if args.key?(:fee_type)
          @invoice_type = args[:invoice_type] if args.key?(:invoice_type)
        end
      end
      
      # Settings that control how partner related data may be accessed.
      class PartnerDataAccessConfig
        include Google::Apis::Core::Hashable
      
        # Structured Data File (SDF) related settings.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV3::SdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # General settings of a partner.
      class PartnerGeneralConfig
        include Google::Apis::Core::Hashable
      
        # Immutable. Partner's currency in ISO 4217 format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Immutable. The standard TZ database name of the partner's time zone. For
        # example, `America/New_York`. See more at: https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Settings that control how partner revenue is calculated.
      class PartnerRevenueModel
        include Google::Apis::Core::Hashable
      
        # Required. The markup amount of the partner revenue model. Must be greater than
        # or equal to 0. * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM`, this field represents the CPM markup
        # in micros of advertiser's currency. For example, 1500000 represents 1.5
        # standard units of the currency. * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_MEDIA_COST_MARKUP`, this field represents
        # the media cost percent markup in millis. For example, 100 represents 0.1% (
        # decimal 0.001). * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_TOTAL_MEDIA_COST_MARKUP`, this field
        # represents the total media cost percent markup in millis. For example, 100
        # represents 0.1% (decimal 0.001).
        # Corresponds to the JSON property `markupAmount`
        # @return [Fixnum]
        attr_accessor :markup_amount
      
        # Required. The markup type of the partner revenue model.
        # Corresponds to the JSON property `markupType`
        # @return [String]
        attr_accessor :markup_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @markup_amount = args[:markup_amount] if args.key?(:markup_amount)
          @markup_type = args[:markup_type] if args.key?(:markup_type)
        end
      end
      
      # Settings that control the performance goal of a campaign.
      class PerformanceGoal
        include Google::Apis::Core::Hashable
      
        # The goal amount, in micros of the advertiser's currency. Applicable when
        # performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CPM` * `
        # PERFORMANCE_GOAL_TYPE_CPC` * `PERFORMANCE_GOAL_TYPE_CPA` * `
        # PERFORMANCE_GOAL_TYPE_CPIAVC` * `PERFORMANCE_GOAL_TYPE_VCPM` For example
        # 1500000 represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `performanceGoalAmountMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_amount_micros
      
        # The decimal representation of the goal percentage in micros. Applicable when
        # performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CTR` * `
        # PERFORMANCE_GOAL_TYPE_VIEWABILITY` * `PERFORMANCE_GOAL_TYPE_CLICK_CVR` * `
        # PERFORMANCE_GOAL_TYPE_IMPRESSION_CVR` * `PERFORMANCE_GOAL_TYPE_VTR` * `
        # PERFORMANCE_GOAL_TYPE_AUDIO_COMPLETION_RATE` * `
        # PERFORMANCE_GOAL_TYPE_VIDEO_COMPLETION_RATE` For example, 70000 represents 7% (
        # decimal 0.07).
        # Corresponds to the JSON property `performanceGoalPercentageMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_percentage_micros
      
        # A key performance indicator (KPI) string, which can be empty. Must be UTF-8
        # encoded with a length of no more than 100 characters. Applicable when
        # performance_goal_type is set to `PERFORMANCE_GOAL_TYPE_OTHER`.
        # Corresponds to the JSON property `performanceGoalString`
        # @return [String]
        attr_accessor :performance_goal_string
      
        # Required. The type of the performance goal.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @performance_goal_amount_micros = args[:performance_goal_amount_micros] if args.key?(:performance_goal_amount_micros)
          @performance_goal_percentage_micros = args[:performance_goal_percentage_micros] if args.key?(:performance_goal_percentage_micros)
          @performance_goal_string = args[:performance_goal_string] if args.key?(:performance_goal_string)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
        end
      end
      
      # A strategy that automatically adjusts the bid to meet or beat a specified
      # performance goal.
      class PerformanceGoalBidStrategy
        include Google::Apis::Core::Hashable
      
        # The ID of the Custom Bidding Algorithm used by this strategy. Only applicable
        # when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`. Assigning a custom
        # bidding algorithm that uses floodlight activities not identified in
        # floodlightActivityConfigs will return an error.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # The maximum average CPM that may be bid, in micros of the advertiser's
        # currency. Must be greater than or equal to a billable unit of the given
        # currency. Not applicable when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`. For example, 1500000
        # represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `maxAverageCpmBidAmountMicros`
        # @return [Fixnum]
        attr_accessor :max_average_cpm_bid_amount_micros
      
        # Required. The performance goal the bidding strategy will attempt to meet or
        # beat, in micros of the advertiser's currency or in micro of the ROAS (Return
        # On Advertising Spend) value which is also based on advertiser's currency. Must
        # be greater than or equal to a billable unit of the given currency and smaller
        # or equal to upper bounds. Each performance_goal_type has its upper bound: *
        # when performance_goal_type is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`,
        # upper bound is 10000.00 USD. * when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`, upper bound is 1000.00 USD. *
        # when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, upper bound is 1000.00
        # USD. * when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`, upper bound is 1000.00
        # and lower bound is 0.01. Example: If set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, the bid price will be
        # based on the probability that each available impression will be viewable. For
        # example, if viewable CPM target is $2 and an impression is 40% likely to be
        # viewable, the bid price will be $0.80 CPM (40% of $2). For example, 1500000
        # represents 1.5 standard units of the currency or ROAS value.
        # Corresponds to the JSON property `performanceGoalAmountMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_amount_micros
      
        # Required. The type of the performance goal that the bidding strategy will try
        # to meet or beat. For line item level usage, the value must be one of: * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @max_average_cpm_bid_amount_micros = args[:max_average_cpm_bid_amount_micros] if args.key?(:max_average_cpm_bid_amount_micros)
          @performance_goal_amount_micros = args[:performance_goal_amount_micros] if args.key?(:performance_goal_amount_micros)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
        end
      end
      
      # Details for assigned POI targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_POI`.
      class PoiAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of a POI, e.g. "Times Square", "Space Needle",
        # followed by its full address if available.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Latitude of the POI rounding to 6th decimal place.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Output only. Longitude of the POI rounding to 6th decimal place.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        # Required. The radius of the area around the POI that will be targeted. The
        # units of the radius are specified by proximity_radius_unit. Must be 1 to 800
        # if unit is `DISTANCE_UNIT_KILOMETERS` and 1 to 500 if unit is `
        # DISTANCE_UNIT_MILES`.
        # Corresponds to the JSON property `proximityRadiusAmount`
        # @return [Float]
        attr_accessor :proximity_radius_amount
      
        # Required. The unit of distance by which the targeting radius is measured.
        # Corresponds to the JSON property `proximityRadiusUnit`
        # @return [String]
        attr_accessor :proximity_radius_unit
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_POI`. Accepted POI targeting option IDs can be retrieved using `
        # targetingTypes.targetingOptions.search`. If targeting a specific latitude/
        # longitude coordinate removed from an address or POI name, you can generate the
        # necessary targeting option ID by rounding the desired coordinate values to the
        # 6th decimal place, removing the decimals, and concatenating the string values
        # separated by a semicolon. For example, you can target the latitude/longitude
        # pair of 40.7414691, -74.003387 using the targeting option ID "40741469;-
        # 74003387". **Upon** **creation, this field value will be updated to append a
        # semicolon and** **alphanumerical hash value if only latitude/longitude
        # coordinates are** **provided.**
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
          @proximity_radius_amount = args[:proximity_radius_amount] if args.key?(:proximity_radius_amount)
          @proximity_radius_unit = args[:proximity_radius_unit] if args.key?(:proximity_radius_unit)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Search terms for POI targeting options.
      class PoiSearchTerms
        include Google::Apis::Core::Hashable
      
        # The search query for the desired POI name, street address, or coordinate of
        # the desired POI. The query can be a prefix, e.g. "Times squar", "40.7505045,-
        # 73.99562", "315 W 44th St", etc.
        # Corresponds to the JSON property `poiQuery`
        # @return [String]
        attr_accessor :poi_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @poi_query = args[:poi_query] if args.key?(:poi_query)
        end
      end
      
      # Represents a targetable point of interest(POI). This will be populated in the
      # poi_details field when targeting_type is `TARGETING_TYPE_POI`.
      class PoiTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of a POI(e.g. "Times Square", "Space Needle"),
        # followed by its full address if available.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Latitude of the POI rounding to 6th decimal place.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Output only. Longitude of the POI rounding to 6th decimal place.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # Settings specific to the Mediaocean Prisma tool.
      class PrismaConfig
        include Google::Apis::Core::Hashable
      
        # Google Payments Center supports searching and filtering on the component
        # fields of this code.
        # Corresponds to the JSON property `prismaCpeCode`
        # @return [Google::Apis::DisplayvideoV3::PrismaCpeCode]
        attr_accessor :prisma_cpe_code
      
        # Required. The Prisma type.
        # Corresponds to the JSON property `prismaType`
        # @return [String]
        attr_accessor :prisma_type
      
        # Required. The entity allocated this budget (DSP, site, etc.).
        # Corresponds to the JSON property `supplier`
        # @return [String]
        attr_accessor :supplier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prisma_cpe_code = args[:prisma_cpe_code] if args.key?(:prisma_cpe_code)
          @prisma_type = args[:prisma_type] if args.key?(:prisma_type)
          @supplier = args[:supplier] if args.key?(:supplier)
        end
      end
      
      # Google Payments Center supports searching and filtering on the component
      # fields of this code.
      class PrismaCpeCode
        include Google::Apis::Core::Hashable
      
        # The Prisma client code.
        # Corresponds to the JSON property `prismaClientCode`
        # @return [String]
        attr_accessor :prisma_client_code
      
        # The Prisma estimate code.
        # Corresponds to the JSON property `prismaEstimateCode`
        # @return [String]
        attr_accessor :prisma_estimate_code
      
        # The Prisma product code.
        # Corresponds to the JSON property `prismaProductCode`
        # @return [String]
        attr_accessor :prisma_product_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prisma_client_code = args[:prisma_client_code] if args.key?(:prisma_client_code)
          @prisma_estimate_code = args[:prisma_estimate_code] if args.key?(:prisma_estimate_code)
          @prisma_product_code = args[:prisma_product_code] if args.key?(:prisma_product_code)
        end
      end
      
      # The details of product feed.
      class ProductFeedData
        include Google::Apis::Core::Hashable
      
        # Whether the product feed has opted-out of showing products.
        # Corresponds to the JSON property `isFeedDisabled`
        # @return [Boolean]
        attr_accessor :is_feed_disabled
        alias_method :is_feed_disabled?, :is_feed_disabled
      
        # A list of dimensions used to match products.
        # Corresponds to the JSON property `productMatchDimensions`
        # @return [Array<Google::Apis::DisplayvideoV3::ProductMatchDimension>]
        attr_accessor :product_match_dimensions
      
        # How products are selected by the product feed.
        # Corresponds to the JSON property `productMatchType`
        # @return [String]
        attr_accessor :product_match_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_feed_disabled = args[:is_feed_disabled] if args.key?(:is_feed_disabled)
          @product_match_dimensions = args[:product_match_dimensions] if args.key?(:product_match_dimensions)
          @product_match_type = args[:product_match_type] if args.key?(:product_match_type)
        end
      end
      
      # A dimension used to match products.
      class ProductMatchDimension
        include Google::Apis::Core::Hashable
      
        # The key and value of a custom label.
        # Corresponds to the JSON property `customLabel`
        # @return [Google::Apis::DisplayvideoV3::CustomLabel]
        attr_accessor :custom_label
      
        # The ID of the product offer to match with a product with the same offer ID.
        # Corresponds to the JSON property `productOfferId`
        # @return [String]
        attr_accessor :product_offer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_label = args[:custom_label] if args.key?(:custom_label)
          @product_offer_id = args[:product_offer_id] if args.key?(:product_offer_id)
        end
      end
      
      # Targeting details for proximity location list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
      class ProximityLocationListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the proximity location list. Should refer to the
        # location_list_id field of a LocationList resource whose type is `
        # TARGETING_LOCATION_TYPE_PROXIMITY`.
        # Corresponds to the JSON property `proximityLocationListId`
        # @return [Fixnum]
        attr_accessor :proximity_location_list_id
      
        # Required. Radius expressed in the distance units set in proximity_radius_unit.
        # This represents the size of the area around a chosen location that will be
        # targeted. Radius should be between 1 and 500 miles or 800 kilometers.
        # Corresponds to the JSON property `proximityRadius`
        # @return [Float]
        attr_accessor :proximity_radius
      
        # Required. Radius distance units.
        # Corresponds to the JSON property `proximityRadiusUnit`
        # @return [String]
        attr_accessor :proximity_radius_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proximity_location_list_id = args[:proximity_location_list_id] if args.key?(:proximity_location_list_id)
          @proximity_radius = args[:proximity_radius] if args.key?(:proximity_radius)
          @proximity_radius_unit = args[:proximity_radius_unit] if args.key?(:proximity_radius_unit)
        end
      end
      
      # Publisher review status for the creative.
      class PublisherReviewStatus
        include Google::Apis::Core::Hashable
      
        # The publisher reviewing the creative.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # Status of the publisher review.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The rate related settings of the inventory source.
      class RateDetails
        include Google::Apis::Core::Hashable
      
        # The rate type. Acceptable values are `INVENTORY_SOURCE_RATE_TYPE_CPM_FIXED`, `
        # INVENTORY_SOURCE_RATE_TYPE_CPM_FLOOR`, and `INVENTORY_SOURCE_RATE_TYPE_CPD`.
        # Corresponds to the JSON property `inventorySourceRateType`
        # @return [String]
        attr_accessor :inventory_source_rate_type
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minimumSpend`
        # @return [Google::Apis::DisplayvideoV3::Money]
        attr_accessor :minimum_spend
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::DisplayvideoV3::Money]
        attr_accessor :rate
      
        # Required for guaranteed inventory sources. The number of impressions
        # guaranteed by the seller.
        # Corresponds to the JSON property `unitsPurchased`
        # @return [Fixnum]
        attr_accessor :units_purchased
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_rate_type = args[:inventory_source_rate_type] if args.key?(:inventory_source_rate_type)
          @minimum_spend = args[:minimum_spend] if args.key?(:minimum_spend)
          @rate = args[:rate] if args.key?(:rate)
          @units_purchased = args[:units_purchased] if args.key?(:units_purchased)
        end
      end
      
      # Targeting details for regional location list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
      class RegionalLocationListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. ID of the regional location list. Should refer to the
        # location_list_id field of a LocationList resource whose type is `
        # TARGETING_LOCATION_TYPE_REGIONAL`.
        # Corresponds to the JSON property `regionalLocationListId`
        # @return [Fixnum]
        attr_accessor :regional_location_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative = args[:negative] if args.key?(:negative)
          @regional_location_list_id = args[:regional_location_list_id] if args.key?(:regional_location_list_id)
        end
      end
      
      # Settings that control the whether remarketing is enabled for the given
      # identified advertiser.
      class RemarketingConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the advertiser.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. Whether the Floodlight activity remarketing user list is
        # available to the identified advertiser.
        # Corresponds to the JSON property `remarketingEnabled`
        # @return [Boolean]
        attr_accessor :remarketing_enabled
        alias_method :remarketing_enabled?, :remarketing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @remarketing_enabled = args[:remarketing_enabled] if args.key?(:remarketing_enabled)
        end
      end
      
      # Request message for NegativeKeywordService.ReplaceNegativeKeywords.
      class ReplaceNegativeKeywordsRequest
        include Google::Apis::Core::Hashable
      
        # The negative keywords that will replace the existing keywords in the negative
        # keyword list, specified as a list of NegativeKeywords.
        # Corresponds to the JSON property `newNegativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeyword>]
        attr_accessor :new_negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_negative_keywords = args[:new_negative_keywords] if args.key?(:new_negative_keywords)
        end
      end
      
      # Response message for NegativeKeywordService.ReplaceNegativeKeywords.
      class ReplaceNegativeKeywordsResponse
        include Google::Apis::Core::Hashable
      
        # The full list of negative keywords now present in the negative keyword list.
        # Corresponds to the JSON property `negativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV3::NegativeKeyword>]
        attr_accessor :negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keywords = args[:negative_keywords] if args.key?(:negative_keywords)
        end
      end
      
      # Request message for SiteService.ReplaceSites.
      class ReplaceSitesRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the parent channel.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The sites that will replace the existing sites assigned to the channel,
        # specified as a list of Sites.
        # Corresponds to the JSON property `newSites`
        # @return [Array<Google::Apis::DisplayvideoV3::Site>]
        attr_accessor :new_sites
      
        # The ID of the partner that owns the parent channel.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @new_sites = args[:new_sites] if args.key?(:new_sites)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Response message for SiteService.ReplaceSites.
      class ReplaceSitesResponse
        include Google::Apis::Core::Hashable
      
        # The list of sites in the channel after replacing.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DisplayvideoV3::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Review statuses for the creative.
      class ReviewStatusInfo
        include Google::Apis::Core::Hashable
      
        # Represents the basic approval needed for a creative to begin serving. Summary
        # of creative_and_landing_page_review_status and
        # content_and_policy_review_status.
        # Corresponds to the JSON property `approvalStatus`
        # @return [String]
        attr_accessor :approval_status
      
        # Content and policy review status for the creative.
        # Corresponds to the JSON property `contentAndPolicyReviewStatus`
        # @return [String]
        attr_accessor :content_and_policy_review_status
      
        # Creative and landing page review status for the creative.
        # Corresponds to the JSON property `creativeAndLandingPageReviewStatus`
        # @return [String]
        attr_accessor :creative_and_landing_page_review_status
      
        # Exchange review statuses for the creative.
        # Corresponds to the JSON property `exchangeReviewStatuses`
        # @return [Array<Google::Apis::DisplayvideoV3::ExchangeReviewStatus>]
        attr_accessor :exchange_review_statuses
      
        # Publisher review statuses for the creative.
        # Corresponds to the JSON property `publisherReviewStatuses`
        # @return [Array<Google::Apis::DisplayvideoV3::PublisherReviewStatus>]
        attr_accessor :publisher_review_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_status = args[:approval_status] if args.key?(:approval_status)
          @content_and_policy_review_status = args[:content_and_policy_review_status] if args.key?(:content_and_policy_review_status)
          @creative_and_landing_page_review_status = args[:creative_and_landing_page_review_status] if args.key?(:creative_and_landing_page_review_status)
          @exchange_review_statuses = args[:exchange_review_statuses] if args.key?(:exchange_review_statuses)
          @publisher_review_statuses = args[:publisher_review_statuses] if args.key?(:publisher_review_statuses)
        end
      end
      
      # An error message for a custom bidding script.
      class ScriptError
        include Google::Apis::Core::Hashable
      
        # The column number in the script where the error was thrown.
        # Corresponds to the JSON property `column`
        # @return [Fixnum]
        attr_accessor :column
      
        # The type of error.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # The detailed error message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The line number in the script where the error was thrown.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Structured Data File (SDF) related settings.
      class SdfConfig
        include Google::Apis::Core::Hashable
      
        # An administrator email address to which the SDF processing status reports will
        # be sent.
        # Corresponds to the JSON property `adminEmail`
        # @return [String]
        attr_accessor :admin_email
      
        # Required. The version of SDF being used.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_email = args[:admin_email] if args.key?(:admin_email)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Type for the response returned by SdfDownloadTaskService.CreateSdfDownloadTask.
      class SdfDownloadTask
        include Google::Apis::Core::Hashable
      
        # A resource name to be used in media.download to Download the prepared files.
        # Resource names have the format `download/sdfdownloadtasks/media/`media_id``. `
        # media_id` will be made available by the long running operation service once
        # the task status is done.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Type for the metadata returned by SdfDownloadTaskService.CreateSdfDownloadTask.
      class SdfDownloadTaskMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when execution was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The SDF version used to execute this download task.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for SearchTargetingOptions.
      class SearchTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Advertiser this request is being made in the context of.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Search terms for Business Chain targeting options. At least one of the field
        # should be populated.
        # Corresponds to the JSON property `businessChainSearchTerms`
        # @return [Google::Apis::DisplayvideoV3::BusinessChainSearchTerms]
        attr_accessor :business_chain_search_terms
      
        # Search terms for geo region targeting options.
        # Corresponds to the JSON property `geoRegionSearchTerms`
        # @return [Google::Apis::DisplayvideoV3::GeoRegionSearchTerms]
        attr_accessor :geo_region_search_terms
      
        # Requested page size. Must be between `1` and `200`. If unspecified will
        # default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is
        # specified.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A token identifying a page of results the server should return. Typically,
        # this is the value of next_page_token returned from the previous call to `
        # SearchTargetingOptions` method. If not specified, the first page of results
        # will be returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Search terms for POI targeting options.
        # Corresponds to the JSON property `poiSearchTerms`
        # @return [Google::Apis::DisplayvideoV3::PoiSearchTerms]
        attr_accessor :poi_search_terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @business_chain_search_terms = args[:business_chain_search_terms] if args.key?(:business_chain_search_terms)
          @geo_region_search_terms = args[:geo_region_search_terms] if args.key?(:geo_region_search_terms)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @poi_search_terms = args[:poi_search_terms] if args.key?(:poi_search_terms)
        end
      end
      
      # Response message for SearchTargetingOptions.
      class SearchTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `SearchTargetingOptions` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of targeting options that match the search criteria. This list will
        # be absent if empty.
        # Corresponds to the JSON property `targetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV3::TargetingOption>]
        attr_accessor :targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @targeting_options = args[:targeting_options] if args.key?(:targeting_options)
        end
      end
      
      # Targeting details for sensitive category. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
      class SensitiveCategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. An enum for the DV360 Sensitive category content classified to be
        # EXCLUDED.
        # Corresponds to the JSON property `excludedSensitiveCategory`
        # @return [String]
        attr_accessor :excluded_sensitive_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_sensitive_category = args[:excluded_sensitive_category] if args.key?(:excluded_sensitive_category)
        end
      end
      
      # Represents a targetable sensitive category. This will be populated in the
      # sensitive_category_details field of the TargetingOption when targeting_type is
      # `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
      class SensitiveCategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the DV360 Sensitive category content classifier.
        # Corresponds to the JSON property `sensitiveCategory`
        # @return [String]
        attr_accessor :sensitive_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive_category = args[:sensitive_category] if args.key?(:sensitive_category)
        end
      end
      
      # Details for session position assigned targeting option. This will be populated
      # in the session_position_details field when targeting_type is `
      # TARGETING_TYPE_SESSION_POSITION`.
      class SessionPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # The position where the ad will show in a session.
        # Corresponds to the JSON property `sessionPosition`
        # @return [String]
        attr_accessor :session_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_position = args[:session_position] if args.key?(:session_position)
        end
      end
      
      # A single site. Sites are apps or websites belonging to a channel.
      class Site
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the site.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The app ID or URL of the site. Must be UTF-8 encoded with a maximum
        # length of 240 bytes.
        # Corresponds to the JSON property `urlOrAppId`
        # @return [String]
        attr_accessor :url_or_app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url_or_app_id = args[:url_or_app_id] if args.key?(:url_or_app_id)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # Details for assigned sub-exchange targeting option. This will be populated in
      # the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_SUB_EXCHANGE`.
      class SubExchangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable sub-exchange. This will be populated in the
      # sub_exchange_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_SUB_EXCHANGE`.
      class SubExchangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the sub-exchange.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Setting that controls the average number of times the ads will show to the
      # same person over a certain period of time.
      class TargetFrequency
        include Google::Apis::Core::Hashable
      
        # The target number of times, on average, the ads will be shown to the same
        # person in the timespan dictated by time_unit and time_unit_count.
        # Corresponds to the JSON property `targetCount`
        # @return [Fixnum]
        attr_accessor :target_count
      
        # The unit of time in which the target frequency will be applied. The following
        # time unit is applicable: * `TIME_UNIT_WEEKS`
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        # The number of time_unit the target frequency will last. The following
        # restrictions apply based on the value of time_unit: * `TIME_UNIT_WEEKS` - must
        # be 1
        # Corresponds to the JSON property `timeUnitCount`
        # @return [Fixnum]
        attr_accessor :time_unit_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_count = args[:target_count] if args.key?(:target_count)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @time_unit_count = args[:time_unit_count] if args.key?(:time_unit_count)
        end
      end
      
      # Settings that control the [optimized targeting](//support.google.com/
      # displayvideo/answer/12060859) settings of the line item.
      class TargetingExpansionConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Magnitude of expansion for eligible first-party user lists under
        # this ad group. This field only applies to YouTube and Partners line item and
        # ad group resources.
        # Corresponds to the JSON property `audienceExpansionLevel`
        # @return [String]
        attr_accessor :audience_expansion_level
      
        # Output only. Whether to exclude seed list for audience expansion. This field
        # only applies to YouTube and Partners line item and ad group resources.
        # Corresponds to the JSON property `audienceExpansionSeedListExcluded`
        # @return [Boolean]
        attr_accessor :audience_expansion_seed_list_excluded
        alias_method :audience_expansion_seed_list_excluded?, :audience_expansion_seed_list_excluded
      
        # Required. Whether to enable Optimized Targeting for the line item. Optimized
        # targeting is not compatible with all bid strategies. Attempting to set this
        # field to `true` for a line item using the BiddingStrategy field fixed_bid or
        # one of the following combinations of BiddingStrategy fields and
        # BiddingStrategyPerformanceGoalType will result in an error:
        # maximize_auto_spend_bid: * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED` performance_goal_auto_bid: *
        # `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`
        # Corresponds to the JSON property `enableOptimizedTargeting`
        # @return [Boolean]
        attr_accessor :enable_optimized_targeting
        alias_method :enable_optimized_targeting?, :enable_optimized_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_expansion_level = args[:audience_expansion_level] if args.key?(:audience_expansion_level)
          @audience_expansion_seed_list_excluded = args[:audience_expansion_seed_list_excluded] if args.key?(:audience_expansion_seed_list_excluded)
          @enable_optimized_targeting = args[:enable_optimized_targeting] if args.key?(:enable_optimized_targeting)
        end
      end
      
      # Represents a single targeting option, which is a targetable concept in DV360.
      class TargetingOption
        include Google::Apis::Core::Hashable
      
        # Represents a targetable age range. This will be populated in the
        # age_range_details field when targeting_type is `TARGETING_TYPE_AGE_RANGE`.
        # Corresponds to the JSON property `ageRangeDetails`
        # @return [Google::Apis::DisplayvideoV3::AgeRangeTargetingOptionDetails]
        attr_accessor :age_range_details
      
        # Represents a targetable collection of apps. A collection lets you target
        # dynamic groups of related apps that are maintained by the platform, for
        # example `All Apps/Google Play/Games`. This will be populated in the
        # app_category_details field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`
        # .
        # Corresponds to the JSON property `appCategoryDetails`
        # @return [Google::Apis::DisplayvideoV3::AppCategoryTargetingOptionDetails]
        attr_accessor :app_category_details
      
        # Represents a targetable audio content type. This will be populated in the
        # audio_content_type_details field when targeting_type is `
        # TARGETING_TYPE_AUDIO_CONTENT_TYPE`.
        # Corresponds to the JSON property `audioContentTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::AudioContentTypeTargetingOptionDetails]
        attr_accessor :audio_content_type_details
      
        # Represents a targetable authorized seller status. This will be populated in
        # the authorized_seller_status_details field when targeting_type is `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
        # Corresponds to the JSON property `authorizedSellerStatusDetails`
        # @return [Google::Apis::DisplayvideoV3::AuthorizedSellerStatusTargetingOptionDetails]
        attr_accessor :authorized_seller_status_details
      
        # Represents a targetable browser. This will be populated in the browser_details
        # field when targeting_type is `TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `browserDetails`
        # @return [Google::Apis::DisplayvideoV3::BrowserTargetingOptionDetails]
        attr_accessor :browser_details
      
        # Represents a targetable business chain within a geo region. This will be
        # populated in the business_chain_details field when targeting_type is `
        # TARGETING_TYPE_BUSINESS_CHAIN`.
        # Corresponds to the JSON property `businessChainDetails`
        # @return [Google::Apis::DisplayvideoV3::BusinessChainTargetingOptionDetails]
        attr_accessor :business_chain_details
      
        # Represents a targetable carrier or ISP. This will be populated in the
        # carrier_and_isp_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `carrierAndIspDetails`
        # @return [Google::Apis::DisplayvideoV3::CarrierAndIspTargetingOptionDetails]
        attr_accessor :carrier_and_isp_details
      
        # Represents a targetable category. This will be populated in the
        # category_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `categoryDetails`
        # @return [Google::Apis::DisplayvideoV3::CategoryTargetingOptionDetails]
        attr_accessor :category_details
      
        # Represents a targetable content duration. This will be populated in the
        # content_duration_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_DURATION`.
        # Corresponds to the JSON property `contentDurationDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentDurationTargetingOptionDetails]
        attr_accessor :content_duration_details
      
        # Represents a targetable content genre. This will be populated in the
        # content_genre_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_GENRE`.
        # Corresponds to the JSON property `contentGenreDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentGenreTargetingOptionDetails]
        attr_accessor :content_genre_details
      
        # Represents a targetable content instream position, which could be used by
        # video and audio ads. This will be populated in the
        # content_instream_position_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
        # Corresponds to the JSON property `contentInstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentInstreamPositionTargetingOptionDetails]
        attr_accessor :content_instream_position_details
      
        # Represents a targetable content outstream position, which could be used by
        # display and video ads. This will be populated in the
        # content_outstream_position_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
        # Corresponds to the JSON property `contentOutstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentOutstreamPositionTargetingOptionDetails]
        attr_accessor :content_outstream_position_details
      
        # Represents a targetable content stream type. This will be populated in the
        # content_stream_type_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_STREAM_TYPE`.
        # Corresponds to the JSON property `contentStreamTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentStreamTypeTargetingOptionDetails]
        attr_accessor :content_stream_type_details
      
        # Represents a targetable content theme. This will be populated in the
        # content_theme_details field of the TargetingOption when targeting_type is `
        # TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.
        # Corresponds to the JSON property `contentThemeDetails`
        # @return [Google::Apis::DisplayvideoV3::ContentThemeTargetingOptionDetails]
        attr_accessor :content_theme_details
      
        # Represents a targetable device make and model. This will be populated in the
        # device_make_model_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `deviceMakeModelDetails`
        # @return [Google::Apis::DisplayvideoV3::DeviceMakeModelTargetingOptionDetails]
        attr_accessor :device_make_model_details
      
        # Represents a targetable device type. This will be populated in the
        # device_type_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_TYPE`.
        # Corresponds to the JSON property `deviceTypeDetails`
        # @return [Google::Apis::DisplayvideoV3::DeviceTypeTargetingOptionDetails]
        attr_accessor :device_type_details
      
        # Represents a targetable digital content label rating tier. This will be
        # populated in the digital_content_label_details field of the TargetingOption
        # when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
        # Corresponds to the JSON property `digitalContentLabelDetails`
        # @return [Google::Apis::DisplayvideoV3::DigitalContentLabelTargetingOptionDetails]
        attr_accessor :digital_content_label_details
      
        # Represents a targetable environment. This will be populated in the
        # environment_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_ENVIRONMENT`.
        # Corresponds to the JSON property `environmentDetails`
        # @return [Google::Apis::DisplayvideoV3::EnvironmentTargetingOptionDetails]
        attr_accessor :environment_details
      
        # Represents a targetable exchange. This will be populated in the
        # exchange_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_EXCHANGE`.
        # Corresponds to the JSON property `exchangeDetails`
        # @return [Google::Apis::DisplayvideoV3::ExchangeTargetingOptionDetails]
        attr_accessor :exchange_details
      
        # Represents a targetable gender. This will be populated in the gender_details
        # field of a TargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.
        # Corresponds to the JSON property `genderDetails`
        # @return [Google::Apis::DisplayvideoV3::GenderTargetingOptionDetails]
        attr_accessor :gender_details
      
        # Represents a targetable geographic region. This will be populated in the
        # geo_region_details field when targeting_type is `TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `geoRegionDetails`
        # @return [Google::Apis::DisplayvideoV3::GeoRegionTargetingOptionDetails]
        attr_accessor :geo_region_details
      
        # Represents a targetable household income. This will be populated in the
        # household_income_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_HOUSEHOLD_INCOME`.
        # Corresponds to the JSON property `householdIncomeDetails`
        # @return [Google::Apis::DisplayvideoV3::HouseholdIncomeTargetingOptionDetails]
        attr_accessor :household_income_details
      
        # Represents a targetable language. This will be populated in the
        # language_details field when targeting_type is `TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `languageDetails`
        # @return [Google::Apis::DisplayvideoV3::LanguageTargetingOptionDetails]
        attr_accessor :language_details
      
        # Output only. The resource name for this targeting option.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a targetable native content position. This will be populated in the
        # native_content_position_details field when targeting_type is `
        # TARGETING_TYPE_NATIVE_CONTENT_POSITION`.
        # Corresponds to the JSON property `nativeContentPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::NativeContentPositionTargetingOptionDetails]
        attr_accessor :native_content_position_details
      
        # Represents a targetable Open Measurement enabled inventory type. This will be
        # populated in the omid_details field when targeting_type is `
        # TARGETING_TYPE_OMID`.
        # Corresponds to the JSON property `omidDetails`
        # @return [Google::Apis::DisplayvideoV3::OmidTargetingOptionDetails]
        attr_accessor :omid_details
      
        # Represents a targetable on screen position, which could be used by display and
        # video ads. This will be populated in the on_screen_position_details field when
        # targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `onScreenPositionDetails`
        # @return [Google::Apis::DisplayvideoV3::OnScreenPositionTargetingOptionDetails]
        attr_accessor :on_screen_position_details
      
        # Represents a targetable operating system. This will be populated in the
        # operating_system_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `operatingSystemDetails`
        # @return [Google::Apis::DisplayvideoV3::OperatingSystemTargetingOptionDetails]
        attr_accessor :operating_system_details
      
        # Represents a targetable parental status. This will be populated in the
        # parental_status_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_PARENTAL_STATUS`.
        # Corresponds to the JSON property `parentalStatusDetails`
        # @return [Google::Apis::DisplayvideoV3::ParentalStatusTargetingOptionDetails]
        attr_accessor :parental_status_details
      
        # Represents a targetable point of interest(POI). This will be populated in the
        # poi_details field when targeting_type is `TARGETING_TYPE_POI`.
        # Corresponds to the JSON property `poiDetails`
        # @return [Google::Apis::DisplayvideoV3::PoiTargetingOptionDetails]
        attr_accessor :poi_details
      
        # Represents a targetable sensitive category. This will be populated in the
        # sensitive_category_details field of the TargetingOption when targeting_type is
        # `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
        # Corresponds to the JSON property `sensitiveCategoryDetails`
        # @return [Google::Apis::DisplayvideoV3::SensitiveCategoryTargetingOptionDetails]
        attr_accessor :sensitive_category_details
      
        # Represents a targetable sub-exchange. This will be populated in the
        # sub_exchange_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `subExchangeDetails`
        # @return [Google::Apis::DisplayvideoV3::SubExchangeTargetingOptionDetails]
        attr_accessor :sub_exchange_details
      
        # Output only. A unique identifier for this targeting option. The tuple ``
        # targeting_type`, `targeting_option_id`` will be unique.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. The type of this targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        # Represents a targetable user rewarded content status for video ads only. This
        # will be populated in the user_rewarded_content_details field when
        # targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `userRewardedContentDetails`
        # @return [Google::Apis::DisplayvideoV3::UserRewardedContentTargetingOptionDetails]
        attr_accessor :user_rewarded_content_details
      
        # Represents a targetable video player size. This will be populated in the
        # video_player_size_details field when targeting_type is `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
        # Corresponds to the JSON property `videoPlayerSizeDetails`
        # @return [Google::Apis::DisplayvideoV3::VideoPlayerSizeTargetingOptionDetails]
        attr_accessor :video_player_size_details
      
        # Represents a targetable viewability. This will be populated in the
        # viewability_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_VIEWABILITY`.
        # Corresponds to the JSON property `viewabilityDetails`
        # @return [Google::Apis::DisplayvideoV3::ViewabilityTargetingOptionDetails]
        attr_accessor :viewability_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range_details = args[:age_range_details] if args.key?(:age_range_details)
          @app_category_details = args[:app_category_details] if args.key?(:app_category_details)
          @audio_content_type_details = args[:audio_content_type_details] if args.key?(:audio_content_type_details)
          @authorized_seller_status_details = args[:authorized_seller_status_details] if args.key?(:authorized_seller_status_details)
          @browser_details = args[:browser_details] if args.key?(:browser_details)
          @business_chain_details = args[:business_chain_details] if args.key?(:business_chain_details)
          @carrier_and_isp_details = args[:carrier_and_isp_details] if args.key?(:carrier_and_isp_details)
          @category_details = args[:category_details] if args.key?(:category_details)
          @content_duration_details = args[:content_duration_details] if args.key?(:content_duration_details)
          @content_genre_details = args[:content_genre_details] if args.key?(:content_genre_details)
          @content_instream_position_details = args[:content_instream_position_details] if args.key?(:content_instream_position_details)
          @content_outstream_position_details = args[:content_outstream_position_details] if args.key?(:content_outstream_position_details)
          @content_stream_type_details = args[:content_stream_type_details] if args.key?(:content_stream_type_details)
          @content_theme_details = args[:content_theme_details] if args.key?(:content_theme_details)
          @device_make_model_details = args[:device_make_model_details] if args.key?(:device_make_model_details)
          @device_type_details = args[:device_type_details] if args.key?(:device_type_details)
          @digital_content_label_details = args[:digital_content_label_details] if args.key?(:digital_content_label_details)
          @environment_details = args[:environment_details] if args.key?(:environment_details)
          @exchange_details = args[:exchange_details] if args.key?(:exchange_details)
          @gender_details = args[:gender_details] if args.key?(:gender_details)
          @geo_region_details = args[:geo_region_details] if args.key?(:geo_region_details)
          @household_income_details = args[:household_income_details] if args.key?(:household_income_details)
          @language_details = args[:language_details] if args.key?(:language_details)
          @name = args[:name] if args.key?(:name)
          @native_content_position_details = args[:native_content_position_details] if args.key?(:native_content_position_details)
          @omid_details = args[:omid_details] if args.key?(:omid_details)
          @on_screen_position_details = args[:on_screen_position_details] if args.key?(:on_screen_position_details)
          @operating_system_details = args[:operating_system_details] if args.key?(:operating_system_details)
          @parental_status_details = args[:parental_status_details] if args.key?(:parental_status_details)
          @poi_details = args[:poi_details] if args.key?(:poi_details)
          @sensitive_category_details = args[:sensitive_category_details] if args.key?(:sensitive_category_details)
          @sub_exchange_details = args[:sub_exchange_details] if args.key?(:sub_exchange_details)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
          @user_rewarded_content_details = args[:user_rewarded_content_details] if args.key?(:user_rewarded_content_details)
          @video_player_size_details = args[:video_player_size_details] if args.key?(:video_player_size_details)
          @viewability_details = args[:viewability_details] if args.key?(:viewability_details)
        end
      end
      
      # Settings that control what third-party vendors are measuring specific line
      # item metrics.
      class ThirdPartyMeasurementConfigs
        include Google::Apis::Core::Hashable
      
        # Optional. The third-party vendors measuring brand lift. The following third-
        # party vendors are applicable: * `THIRD_PARTY_VENDOR_DYNATA` * `
        # THIRD_PARTY_VENDOR_KANTAR` * `THIRD_PARTY_VENDOR_KANTAR_MILLWARD_BROWN` * `
        # THIRD_PARTY_VENDOR_GOOGLE_INTERNAL` * `THIRD_PARTY_VENDOR_INTAGE` * `
        # THIRD_PARTY_VENDOR_NIELSEN` * `THIRD_PARTY_VENDOR_MACROMILL`
        # Corresponds to the JSON property `brandLiftVendorConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig>]
        attr_accessor :brand_lift_vendor_configs
      
        # Optional. The third-party vendors measuring brand safety. The following third-
        # party vendors are applicable: * `THIRD_PARTY_VENDOR_ZERF` * `
        # THIRD_PARTY_VENDOR_DOUBLE_VERIFY` * `THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE` *
        # `THIRD_PARTY_VENDOR_GOOGLE_INTERNAL` * `THIRD_PARTY_VENDOR_ZEFR`
        # Corresponds to the JSON property `brandSafetyVendorConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig>]
        attr_accessor :brand_safety_vendor_configs
      
        # Optional. The third-party vendors measuring reach. The following third-party
        # vendors are applicable: * `THIRD_PARTY_VENDOR_NIELSEN` * `
        # THIRD_PARTY_VENDOR_COMSCORE` * `THIRD_PARTY_VENDOR_KANTAR` * `
        # THIRD_PARTY_VENDOR_GOOGLE_INTERNAL` * `
        # THIRD_PARTY_VENDOR_KANTAR_MILLWARD_BROWN` * `THIRD_PARTY_VENDOR_VIDEO_RESEARCH`
        # * `THIRD_PARTY_VENDOR_MEDIA_SCOPE` * `THIRD_PARTY_VENDOR_AUDIENCE_PROJECT` * `
        # THIRD_PARTY_VENDOR_VIDEO_AMP` * `THIRD_PARTY_VENDOR_ISPOT_TV`
        # Corresponds to the JSON property `reachVendorConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig>]
        attr_accessor :reach_vendor_configs
      
        # Optional. The third-party vendors measuring viewability. The following third-
        # party vendors are applicable: * `THIRD_PARTY_VENDOR_MOAT` * `
        # THIRD_PARTY_VENDOR_DOUBLE_VERIFY` * `THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE` *
        # `THIRD_PARTY_VENDOR_COMSCORE` * `THIRD_PARTY_VENDOR_TELEMETRY` * `
        # THIRD_PARTY_VENDOR_MEETRICS` * `THIRD_PARTY_VENDOR_GOOGLE_INTERNAL`
        # Corresponds to the JSON property `viewabilityVendorConfigs`
        # @return [Array<Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig>]
        attr_accessor :viewability_vendor_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand_lift_vendor_configs = args[:brand_lift_vendor_configs] if args.key?(:brand_lift_vendor_configs)
          @brand_safety_vendor_configs = args[:brand_safety_vendor_configs] if args.key?(:brand_safety_vendor_configs)
          @reach_vendor_configs = args[:reach_vendor_configs] if args.key?(:reach_vendor_configs)
          @viewability_vendor_configs = args[:viewability_vendor_configs] if args.key?(:viewability_vendor_configs)
        end
      end
      
      # Settings for advertisers that use third-party ad servers only.
      class ThirdPartyOnlyConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not order ID reporting for pixels is enabled. This value cannot be
        # changed once set to `true`.
        # Corresponds to the JSON property `pixelOrderIdReportingEnabled`
        # @return [Boolean]
        attr_accessor :pixel_order_id_reporting_enabled
        alias_method :pixel_order_id_reporting_enabled?, :pixel_order_id_reporting_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pixel_order_id_reporting_enabled = args[:pixel_order_id_reporting_enabled] if args.key?(:pixel_order_id_reporting_enabled)
        end
      end
      
      # Tracking URLs from third parties to track interactions with an audio or a
      # video creative.
      class ThirdPartyUrl
        include Google::Apis::Core::Hashable
      
        # Optional. The type of interaction needs to be tracked by the tracking URL
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. Tracking URL used to track the interaction. Provide a URL with
        # optional path or query string, beginning with `https:`. For example, `https://
        # www.example.com/path`
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Settings that control how third-party measurement vendors are configured.
      class ThirdPartyVendorConfig
        include Google::Apis::Core::Hashable
      
        # The ID used by the platform of the third-party vendor to identify the line
        # item.
        # Corresponds to the JSON property `placementId`
        # @return [String]
        attr_accessor :placement_id
      
        # The third-party measurement vendor.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @placement_id = args[:placement_id] if args.key?(:placement_id)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # Assigned third party verifier targeting option details. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
      class ThirdPartyVerifierAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Details of Scope3 (previously known as Adloox) brand safety settings.
        # Corresponds to the JSON property `adloox`
        # @return [Google::Apis::DisplayvideoV3::Adloox]
        attr_accessor :adloox
      
        # Details of DoubleVerify settings.
        # Corresponds to the JSON property `doubleVerify`
        # @return [Google::Apis::DisplayvideoV3::DoubleVerify]
        attr_accessor :double_verify
      
        # Details of Integral Ad Science settings.
        # Corresponds to the JSON property `integralAdScience`
        # @return [Google::Apis::DisplayvideoV3::IntegralAdScience]
        attr_accessor :integral_ad_science
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adloox = args[:adloox] if args.key?(:adloox)
          @double_verify = args[:double_verify] if args.key?(:double_verify)
          @integral_ad_science = args[:integral_ad_science] if args.key?(:integral_ad_science)
        end
      end
      
      # A time range.
      class TimeRange
        include Google::Apis::Core::Hashable
      
        # Required. The upper bound of a time range, inclusive.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The lower bound of a time range, inclusive.
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
      
      # Timer event of the creative.
      class TimerEvent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the timer event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name used to identify this timer event in reports.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
        end
      end
      
      # Settings that control the behavior of a single Floodlight activity config.
      class TrackingFloodlightActivityConfig
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the Floodlight activity.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [Fixnum]
        attr_accessor :floodlight_activity_id
      
        # Required. The number of days after an ad has been clicked in which a
        # conversion may be counted. Must be between 0 and 90 inclusive.
        # Corresponds to the JSON property `postClickLookbackWindowDays`
        # @return [Fixnum]
        attr_accessor :post_click_lookback_window_days
      
        # Required. The number of days after an ad has been viewed in which a conversion
        # may be counted. Must be between 0 and 90 inclusive.
        # Corresponds to the JSON property `postViewLookbackWindowDays`
        # @return [Fixnum]
        attr_accessor :post_view_lookback_window_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_id = args[:floodlight_activity_id] if args.key?(:floodlight_activity_id)
          @post_click_lookback_window_days = args[:post_click_lookback_window_days] if args.key?(:post_click_lookback_window_days)
          @post_view_lookback_window_days = args[:post_view_lookback_window_days] if args.key?(:post_view_lookback_window_days)
        end
      end
      
      # Represents information about the transcoded audio or video file.
      class Transcode
        include Google::Apis::Core::Hashable
      
        # Optional. The bit rate for the audio stream of the transcoded video, or the
        # bit rate for the transcoded audio, in kilobits per second.
        # Corresponds to the JSON property `audioBitRateKbps`
        # @return [Fixnum]
        attr_accessor :audio_bit_rate_kbps
      
        # Optional. The sample rate for the audio stream of the transcoded video, or the
        # sample rate for the transcoded audio, in hertz.
        # Corresponds to the JSON property `audioSampleRateHz`
        # @return [Fixnum]
        attr_accessor :audio_sample_rate_hz
      
        # Optional. The transcoding bit rate of the transcoded video, in kilobits per
        # second.
        # Corresponds to the JSON property `bitRateKbps`
        # @return [Fixnum]
        attr_accessor :bit_rate_kbps
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV3::Dimensions]
        attr_accessor :dimensions
      
        # Optional. The size of the transcoded file, in bytes.
        # Corresponds to the JSON property `fileSizeBytes`
        # @return [Fixnum]
        attr_accessor :file_size_bytes
      
        # Optional. The frame rate of the transcoded video, in frames per second.
        # Corresponds to the JSON property `frameRate`
        # @return [Float]
        attr_accessor :frame_rate
      
        # Optional. The MIME type of the transcoded file.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The name of the transcoded file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Indicates if the transcoding was successful.
        # Corresponds to the JSON property `transcoded`
        # @return [Boolean]
        attr_accessor :transcoded
        alias_method :transcoded?, :transcoded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_bit_rate_kbps = args[:audio_bit_rate_kbps] if args.key?(:audio_bit_rate_kbps)
          @audio_sample_rate_hz = args[:audio_sample_rate_hz] if args.key?(:audio_sample_rate_hz)
          @bit_rate_kbps = args[:bit_rate_kbps] if args.key?(:bit_rate_kbps)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @file_size_bytes = args[:file_size_bytes] if args.key?(:file_size_bytes)
          @frame_rate = args[:frame_rate] if args.key?(:frame_rate)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @transcoded = args[:transcoded] if args.key?(:transcoded)
        end
      end
      
      # A creative identifier provided by a registry that is unique across all
      # platforms. This is part of the VAST 4.0 standard.
      class UniversalAdId
        include Google::Apis::Core::Hashable
      
        # Optional. The unique creative identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. The registry provides unique creative identifiers.
        # Corresponds to the JSON property `registry`
        # @return [String]
        attr_accessor :registry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @registry = args[:registry] if args.key?(:registry)
        end
      end
      
      # Details for assigned URL targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_URL`.
      class UrlAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The URL, for example `example.com`. DV360 supports two levels of
        # subdirectory targeting, for example `www.example.com/one-subdirectory-level/
        # second-level`, and five levels of subdomain targeting, for example `five.four.
        # three.two.one.example.com`.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative = args[:negative] if args.key?(:negative)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A single user in Display & Video 360.
      class User
        include Google::Apis::Core::Hashable
      
        # The assigned user roles. Required in CreateUser. Output only in UpdateUser.
        # Can only be updated through BulkEditAssignedUserRoles.
        # Corresponds to the JSON property `assignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV3::AssignedUserRole>]
        attr_accessor :assigned_user_roles
      
        # Required. The display name of the user. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Immutable. The email address used to identify the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The timestamp when the user last logged in DV360 UI.
        # Corresponds to the JSON property `lastLoginTime`
        # @return [String]
        attr_accessor :last_login_time
      
        # Output only. The resource name of the user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the user. Assigned by the system.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_user_roles = args[:assigned_user_roles] if args.key?(:assigned_user_roles)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @last_login_time = args[:last_login_time] if args.key?(:last_login_time)
          @name = args[:name] if args.key?(:name)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # User rewarded content targeting option details. This will be populated in the
      # user_rewarded_content_details field when targeting_type is `
      # TARGETING_TYPE_USER_REWARDED_CONTENT`.
      class UserRewardedContentAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. User rewarded content status for video ads.
        # Corresponds to the JSON property `userRewardedContent`
        # @return [String]
        attr_accessor :user_rewarded_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @user_rewarded_content = args[:user_rewarded_content] if args.key?(:user_rewarded_content)
        end
      end
      
      # Represents a targetable user rewarded content status for video ads only. This
      # will be populated in the user_rewarded_content_details field when
      # targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
      class UserRewardedContentTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. User rewarded content status for video ads.
        # Corresponds to the JSON property `userRewardedContent`
        # @return [String]
        attr_accessor :user_rewarded_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_rewarded_content = args[:user_rewarded_content] if args.key?(:user_rewarded_content)
        end
      end
      
      # The video ad inventory control used in certain YouTube line item types.
      class VideoAdInventoryControl
        include Google::Apis::Core::Hashable
      
        # Optional. Whether ads can serve as in-feed format.
        # Corresponds to the JSON property `allowInFeed`
        # @return [Boolean]
        attr_accessor :allow_in_feed
        alias_method :allow_in_feed?, :allow_in_feed
      
        # Optional. Whether ads can serve as in-stream format.
        # Corresponds to the JSON property `allowInStream`
        # @return [Boolean]
        attr_accessor :allow_in_stream
        alias_method :allow_in_stream?, :allow_in_stream
      
        # Optional. Whether ads can serve as shorts format.
        # Corresponds to the JSON property `allowShorts`
        # @return [Boolean]
        attr_accessor :allow_shorts
        alias_method :allow_shorts?, :allow_shorts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_in_feed = args[:allow_in_feed] if args.key?(:allow_in_feed)
          @allow_in_stream = args[:allow_in_stream] if args.key?(:allow_in_stream)
          @allow_shorts = args[:allow_shorts] if args.key?(:allow_shorts)
        end
      end
      
      # Settings related to VideoAdSequence.
      class VideoAdSequenceSettings
        include Google::Apis::Core::Hashable
      
        # The minimum time interval before the same user sees this sequence again.
        # Corresponds to the JSON property `minimumDuration`
        # @return [String]
        attr_accessor :minimum_duration
      
        # The steps of which the sequence consists.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::DisplayvideoV3::VideoAdSequenceStep>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_duration = args[:minimum_duration] if args.key?(:minimum_duration)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # The detail of a single step in a VideoAdSequence.
      class VideoAdSequenceStep
        include Google::Apis::Core::Hashable
      
        # The ID of the corresponding ad group of the step.
        # Corresponds to the JSON property `adGroupId`
        # @return [Fixnum]
        attr_accessor :ad_group_id
      
        # The interaction on the previous step that will lead the viewer to this step.
        # The first step does not have interaction_type.
        # Corresponds to the JSON property `interactionType`
        # @return [String]
        attr_accessor :interaction_type
      
        # The ID of the previous step. The first step does not have previous step.
        # Corresponds to the JSON property `previousStepId`
        # @return [Fixnum]
        attr_accessor :previous_step_id
      
        # The ID of the step.
        # Corresponds to the JSON property `stepId`
        # @return [Fixnum]
        attr_accessor :step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_id = args[:ad_group_id] if args.key?(:ad_group_id)
          @interaction_type = args[:interaction_type] if args.key?(:interaction_type)
          @previous_step_id = args[:previous_step_id] if args.key?(:previous_step_id)
          @step_id = args[:step_id] if args.key?(:step_id)
        end
      end
      
      # Details for a video discovery ad.
      class VideoDiscoveryAd
        include Google::Apis::Core::Hashable
      
        # First text line for the ad.
        # Corresponds to the JSON property `description1`
        # @return [String]
        attr_accessor :description1
      
        # Second text line for the ad.
        # Corresponds to the JSON property `description2`
        # @return [String]
        attr_accessor :description2
      
        # The headline of ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # Thumbnail image used in the ad.
        # Corresponds to the JSON property `thumbnail`
        # @return [String]
        attr_accessor :thumbnail
      
        # Details of a YouTube video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::DisplayvideoV3::YoutubeVideoDetails]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description1 = args[:description1] if args.key?(:description1)
          @description2 = args[:description2] if args.key?(:description2)
          @headline = args[:headline] if args.key?(:headline)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # Details for a video performance ad.
      class VideoPerformanceAd
        include Google::Apis::Core::Hashable
      
        # The list of text assets shown on the call-to-action button.
        # Corresponds to the JSON property `actionButtonLabels`
        # @return [Array<String>]
        attr_accessor :action_button_labels
      
        # The list of companion banners used by this ad.
        # Corresponds to the JSON property `companionBanners`
        # @return [Array<Google::Apis::DisplayvideoV3::ImageAsset>]
        attr_accessor :companion_banners
      
        # The custom parameters to pass custom values to tracking URL template.
        # Corresponds to the JSON property `customParameters`
        # @return [Hash<String,String>]
        attr_accessor :custom_parameters
      
        # The list of descriptions shown on the call-to-action banner.
        # Corresponds to the JSON property `descriptions`
        # @return [Array<String>]
        attr_accessor :descriptions
      
        # The first piece after the domain in the display URL.
        # Corresponds to the JSON property `displayUrlBreadcrumb1`
        # @return [String]
        attr_accessor :display_url_breadcrumb1
      
        # The second piece after the domain in the display URL.
        # Corresponds to the JSON property `displayUrlBreadcrumb2`
        # @return [String]
        attr_accessor :display_url_breadcrumb2
      
        # The domain of the display URL.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The URL address of the webpage that people reach after they click the ad.
        # Corresponds to the JSON property `finalUrl`
        # @return [String]
        attr_accessor :final_url
      
        # The list of headlines shown on the call-to-action banner.
        # Corresponds to the JSON property `headlines`
        # @return [Array<String>]
        attr_accessor :headlines
      
        # The list of lone headlines shown on the call-to-action banner.
        # Corresponds to the JSON property `longHeadlines`
        # @return [Array<String>]
        attr_accessor :long_headlines
      
        # The URL address loaded in the background for tracking purposes.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        # The list of YouTube video assets used by this ad.
        # Corresponds to the JSON property `videos`
        # @return [Array<Google::Apis::DisplayvideoV3::YoutubeVideoDetails>]
        attr_accessor :videos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_button_labels = args[:action_button_labels] if args.key?(:action_button_labels)
          @companion_banners = args[:companion_banners] if args.key?(:companion_banners)
          @custom_parameters = args[:custom_parameters] if args.key?(:custom_parameters)
          @descriptions = args[:descriptions] if args.key?(:descriptions)
          @display_url_breadcrumb1 = args[:display_url_breadcrumb1] if args.key?(:display_url_breadcrumb1)
          @display_url_breadcrumb2 = args[:display_url_breadcrumb2] if args.key?(:display_url_breadcrumb2)
          @domain = args[:domain] if args.key?(:domain)
          @final_url = args[:final_url] if args.key?(:final_url)
          @headlines = args[:headlines] if args.key?(:headlines)
          @long_headlines = args[:long_headlines] if args.key?(:long_headlines)
          @tracking_url = args[:tracking_url] if args.key?(:tracking_url)
          @videos = args[:videos] if args.key?(:videos)
        end
      end
      
      # Video player size targeting option details. This will be populated in the
      # video_player_size_details field when targeting_type is `
      # TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not
      # supported. Remove all video player size targeting options to achieve this
      # effect.
      class VideoPlayerSizeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The video player size.
        # Corresponds to the JSON property `videoPlayerSize`
        # @return [String]
        attr_accessor :video_player_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_player_size = args[:video_player_size] if args.key?(:video_player_size)
        end
      end
      
      # Represents a targetable video player size. This will be populated in the
      # video_player_size_details field when targeting_type is `
      # TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
      class VideoPlayerSizeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The video player size.
        # Corresponds to the JSON property `videoPlayerSize`
        # @return [String]
        attr_accessor :video_player_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_player_size = args[:video_player_size] if args.key?(:video_player_size)
        end
      end
      
      # Assigned viewability targeting option details. This will be populated in the
      # viewability_details field of an AssignedTargetingOption when targeting_type is
      # `TARGETING_TYPE_VIEWABILITY`.
      class ViewabilityAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The predicted viewability percentage.
        # Corresponds to the JSON property `viewability`
        # @return [String]
        attr_accessor :viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @viewability = args[:viewability] if args.key?(:viewability)
        end
      end
      
      # Represents a targetable viewability. This will be populated in the
      # viewability_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_VIEWABILITY`.
      class ViewabilityTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The predicted viewability percentage.
        # Corresponds to the JSON property `viewability`
        # @return [String]
        attr_accessor :viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @viewability = args[:viewability] if args.key?(:viewability)
        end
      end
      
      # Settings that control the bid strategy for YouTube and Partners resources.
      class YoutubeAndPartnersBiddingStrategy
        include Google::Apis::Core::Hashable
      
        # Output only. Source of the effective target CPA value for ad group.
        # Corresponds to the JSON property `adGroupEffectiveTargetCpaSource`
        # @return [String]
        attr_accessor :ad_group_effective_target_cpa_source
      
        # Output only. The effective target CPA for ad group, in micros of advertiser's
        # currency.
        # Corresponds to the JSON property `adGroupEffectiveTargetCpaValue`
        # @return [Fixnum]
        attr_accessor :ad_group_effective_target_cpa_value
      
        # The type of the bidding strategy.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value used by the bidding strategy. When the bidding strategy is assigned
        # at the line item level, this field is only applicable for the following
        # strategy types: * `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_ROAS` When the bidding
        # strategy is assigned at the ad group level, this field is only applicable for
        # the following strategy types: * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPM` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPV` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPM` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_RESERVE_CPM` * `
        # YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_ROAS` If not using an
        # applicable strategy, the value of this field will be 0.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_effective_target_cpa_source = args[:ad_group_effective_target_cpa_source] if args.key?(:ad_group_effective_target_cpa_source)
          @ad_group_effective_target_cpa_value = args[:ad_group_effective_target_cpa_value] if args.key?(:ad_group_effective_target_cpa_value)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Settings that control what YouTube related inventories the YouTube and
      # Partners line item will target.
      class YoutubeAndPartnersInventorySourceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to target inventory in video apps available with Google TV.
        # Corresponds to the JSON property `includeGoogleTv`
        # @return [Boolean]
        attr_accessor :include_google_tv
        alias_method :include_google_tv?, :include_google_tv
      
        # Optional. Whether to target inventory on YouTube. This includes both search,
        # channels and videos.
        # Corresponds to the JSON property `includeYoutube`
        # @return [Boolean]
        attr_accessor :include_youtube
        alias_method :include_youtube?, :include_youtube
      
        # Whether to target inventory on a collection of partner sites and apps that
        # follow the same brand safety standards as YouTube.
        # Corresponds to the JSON property `includeYoutubeVideoPartners`
        # @return [Boolean]
        attr_accessor :include_youtube_video_partners
        alias_method :include_youtube_video_partners?, :include_youtube_video_partners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_google_tv = args[:include_google_tv] if args.key?(:include_google_tv)
          @include_youtube = args[:include_youtube] if args.key?(:include_youtube)
          @include_youtube_video_partners = args[:include_youtube_video_partners] if args.key?(:include_youtube_video_partners)
        end
      end
      
      # Settings for YouTube and Partners line items.
      class YoutubeAndPartnersSettings
        include Google::Apis::Core::Hashable
      
        # Output only. The kind of content on which the YouTube and Partners ads will be
        # shown. *Warning*: This field will be removed in the near future. Use
        # effective_content_category instead.
        # Corresponds to the JSON property `contentCategory`
        # @return [String]
        attr_accessor :content_category
      
        # Output only. The content category which takes effect when serving the line
        # item. When content category is set in both line item and advertiser, the
        # stricter one will take effect when serving the line item. New line items will
        # only inherit the advertiser level setting.
        # Corresponds to the JSON property `effectiveContentCategory`
        # @return [String]
        attr_accessor :effective_content_category
      
        # Settings that control what YouTube related inventories the YouTube and
        # Partners line item will target.
        # Corresponds to the JSON property `inventorySourceSettings`
        # @return [Google::Apis::DisplayvideoV3::YoutubeAndPartnersInventorySourceConfig]
        attr_accessor :inventory_source_settings
      
        # Optional. The ID of the form to generate leads.
        # Corresponds to the JSON property `leadFormId`
        # @return [Fixnum]
        attr_accessor :lead_form_id
      
        # Optional. The ID of the merchant which is linked to the line item for product
        # feed.
        # Corresponds to the JSON property `linkedMerchantId`
        # @return [Fixnum]
        attr_accessor :linked_merchant_id
      
        # Optional. The IDs of the videos appear below the primary video ad when the ad
        # is playing in the YouTube app on mobile devices.
        # Corresponds to the JSON property `relatedVideoIds`
        # @return [Array<String>]
        attr_accessor :related_video_ids
      
        # Setting that controls the average number of times the ads will show to the
        # same person over a certain period of time.
        # Corresponds to the JSON property `targetFrequency`
        # @return [Google::Apis::DisplayvideoV3::TargetFrequency]
        attr_accessor :target_frequency
      
        # Settings that control what third-party vendors are measuring specific line
        # item metrics.
        # Corresponds to the JSON property `thirdPartyMeasurementConfigs`
        # @return [Google::Apis::DisplayvideoV3::ThirdPartyMeasurementConfigs]
        attr_accessor :third_party_measurement_configs
      
        # The video ad inventory control used in certain YouTube line item types.
        # Corresponds to the JSON property `videoAdInventoryControl`
        # @return [Google::Apis::DisplayvideoV3::VideoAdInventoryControl]
        attr_accessor :video_ad_inventory_control
      
        # Settings related to VideoAdSequence.
        # Corresponds to the JSON property `videoAdSequenceSettings`
        # @return [Google::Apis::DisplayvideoV3::VideoAdSequenceSettings]
        attr_accessor :video_ad_sequence_settings
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `viewFrequencyCap`
        # @return [Google::Apis::DisplayvideoV3::FrequencyCap]
        attr_accessor :view_frequency_cap
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_category = args[:content_category] if args.key?(:content_category)
          @effective_content_category = args[:effective_content_category] if args.key?(:effective_content_category)
          @inventory_source_settings = args[:inventory_source_settings] if args.key?(:inventory_source_settings)
          @lead_form_id = args[:lead_form_id] if args.key?(:lead_form_id)
          @linked_merchant_id = args[:linked_merchant_id] if args.key?(:linked_merchant_id)
          @related_video_ids = args[:related_video_ids] if args.key?(:related_video_ids)
          @target_frequency = args[:target_frequency] if args.key?(:target_frequency)
          @third_party_measurement_configs = args[:third_party_measurement_configs] if args.key?(:third_party_measurement_configs)
          @video_ad_inventory_control = args[:video_ad_inventory_control] if args.key?(:video_ad_inventory_control)
          @video_ad_sequence_settings = args[:video_ad_sequence_settings] if args.key?(:video_ad_sequence_settings)
          @view_frequency_cap = args[:view_frequency_cap] if args.key?(:view_frequency_cap)
        end
      end
      
      # Details for YouTube channel assigned targeting option. This will be populated
      # in the youtube_channel_details field when targeting_type is `
      # TARGETING_TYPE_YOUTUBE_CHANNEL`.
      class YoutubeChannelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # The YouTube uploader channel id or the channel code of a YouTube channel.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Details for YouTube video assigned targeting option. This will be populated in
      # the youtube_video_details field when targeting_type is `
      # TARGETING_TYPE_YOUTUBE_VIDEO`.
      class YoutubeVideoAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # YouTube video id as it appears on the YouTube watch page.
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative = args[:negative] if args.key?(:negative)
          @video_id = args[:video_id] if args.key?(:video_id)
        end
      end
      
      # Details of a YouTube video.
      class YoutubeVideoDetails
        include Google::Apis::Core::Hashable
      
        # The YouTube video ID which can be searched on YouTube webpage.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The reason why the video data is not available.
        # Corresponds to the JSON property `unavailableReason`
        # @return [String]
        attr_accessor :unavailable_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @unavailable_reason = args[:unavailable_reason] if args.key?(:unavailable_reason)
        end
      end
    end
  end
end
