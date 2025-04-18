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
    module DomainsV1
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DomainsV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Defines an authorization code.
      class AuthorizationCode
        include Google::Apis::Core::Hashable
      
        # The Authorization Code in ASCII. It can be used to transfer the domain to or
        # from another registrar.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DomainsV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request for the `ConfigureContactSettings` method.
      class ConfigureContactSettingsRequest
        include Google::Apis::Core::Hashable
      
        # The list of contact notices that the caller acknowledges. The notices needed
        # here depend on the values specified in `contact_settings`.
        # Corresponds to the JSON property `contactNotices`
        # @return [Array<String>]
        attr_accessor :contact_notices
      
        # Defines the contact information associated with a `Registration`. [ICANN](
        # https://icann.org/) requires all domain names to have associated contact
        # information. The `registrant_contact` is considered the domain's legal owner,
        # and often the other contacts are identical.
        # Corresponds to the JSON property `contactSettings`
        # @return [Google::Apis::DomainsV1::ContactSettings]
        attr_accessor :contact_settings
      
        # Required. The field mask describing which fields to update as a comma-
        # separated list. For example, if only the registrant contact is being updated,
        # the `update_mask` is `"registrant_contact"`.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Validate the request without actually updating the contact settings.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_notices = args[:contact_notices] if args.key?(:contact_notices)
          @contact_settings = args[:contact_settings] if args.key?(:contact_settings)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Request for the `ConfigureDnsSettings` method.
      class ConfigureDnsSettingsRequest
        include Google::Apis::Core::Hashable
      
        # Defines the DNS configuration of a `Registration`, including name servers,
        # DNSSEC, and glue records.
        # Corresponds to the JSON property `dnsSettings`
        # @return [Google::Apis::DomainsV1::DnsSettings]
        attr_accessor :dns_settings
      
        # Required. The field mask describing which fields to update as a comma-
        # separated list. For example, if only the name servers are being updated for an
        # existing Custom DNS configuration, the `update_mask` is `"custom_dns.
        # name_servers"`. When changing the DNS provider from one type to another, pass
        # the new provider's field name as part of the field mask. For example, when
        # changing from a Google Domains DNS configuration to a Custom DNS configuration,
        # the `update_mask` is `"custom_dns"`. //
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Validate the request without actually updating the DNS settings.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_settings = args[:dns_settings] if args.key?(:dns_settings)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Request for the `ConfigureManagementSettings` method.
      class ConfigureManagementSettingsRequest
        include Google::Apis::Core::Hashable
      
        # Defines renewal, billing, and transfer settings for a `Registration`.
        # Corresponds to the JSON property `managementSettings`
        # @return [Google::Apis::DomainsV1::ManagementSettings]
        attr_accessor :management_settings
      
        # Required. The field mask describing which fields to update as a comma-
        # separated list. For example, if only the transfer lock is being updated, the `
        # update_mask` is `"transfer_lock_state"`.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_settings = args[:management_settings] if args.key?(:management_settings)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Details required for a contact associated with a `Registration`.
      class Contact
        include Google::Apis::Core::Hashable
      
        # Required. Email address of the contact.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Fax number of the contact in international format. For example, `"+1-800-555-
        # 0123"`.
        # Corresponds to the JSON property `faxNumber`
        # @return [String]
        attr_accessor :fax_number
      
        # Required. Phone number of the contact in international format. For example, `"+
        # 1-800-555-0123"`.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Represents a postal address. For example for postal delivery or payments
        # addresses. Given a postal address, a postal service can deliver items to a
        # premise, P.O. Box or similar. It is not intended to model geographical
        # locations (roads, towns, mountains). In typical usage an address would be
        # created by user input or from importing existing data, depending on the type
        # of process. Advice on address input / editing: - Use an internationalization-
        # ready address widget such as https://github.com/google/libaddressinput) -
        # Users should not be presented with UI elements for input or editing of fields
        # outside countries where that field is used. For more guidance on how to use
        # this schema, see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::DomainsV1::PostalAddress]
        attr_accessor :postal_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @fax_number = args[:fax_number] if args.key?(:fax_number)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
        end
      end
      
      # Defines the contact information associated with a `Registration`. [ICANN](
      # https://icann.org/) requires all domain names to have associated contact
      # information. The `registrant_contact` is considered the domain's legal owner,
      # and often the other contacts are identical.
      class ContactSettings
        include Google::Apis::Core::Hashable
      
        # Details required for a contact associated with a `Registration`.
        # Corresponds to the JSON property `adminContact`
        # @return [Google::Apis::DomainsV1::Contact]
        attr_accessor :admin_contact
      
        # Required. Privacy setting for the contacts associated with the `Registration`.
        # Corresponds to the JSON property `privacy`
        # @return [String]
        attr_accessor :privacy
      
        # Details required for a contact associated with a `Registration`.
        # Corresponds to the JSON property `registrantContact`
        # @return [Google::Apis::DomainsV1::Contact]
        attr_accessor :registrant_contact
      
        # Details required for a contact associated with a `Registration`.
        # Corresponds to the JSON property `technicalContact`
        # @return [Google::Apis::DomainsV1::Contact]
        attr_accessor :technical_contact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_contact = args[:admin_contact] if args.key?(:admin_contact)
          @privacy = args[:privacy] if args.key?(:privacy)
          @registrant_contact = args[:registrant_contact] if args.key?(:registrant_contact)
          @technical_contact = args[:technical_contact] if args.key?(:technical_contact)
        end
      end
      
      # Configuration for an arbitrary DNS provider.
      class CustomDns
        include Google::Apis::Core::Hashable
      
        # The list of DS records for this domain, which are used to enable DNSSEC. The
        # domain's DNS provider can provide the values to set here. If this field is
        # empty, DNSSEC is disabled.
        # Corresponds to the JSON property `dsRecords`
        # @return [Array<Google::Apis::DomainsV1::DsRecord>]
        attr_accessor :ds_records
      
        # Required. A list of name servers that store the DNS zone for this domain. Each
        # name server is a domain name, with Unicode domain names expressed in Punycode
        # format.
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ds_records = args[:ds_records] if args.key?(:ds_records)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
        end
      end
      
      # Defines the DNS configuration of a `Registration`, including name servers,
      # DNSSEC, and glue records.
      class DnsSettings
        include Google::Apis::Core::Hashable
      
        # Configuration for an arbitrary DNS provider.
        # Corresponds to the JSON property `customDns`
        # @return [Google::Apis::DomainsV1::CustomDns]
        attr_accessor :custom_dns
      
        # The list of glue records for this `Registration`. Commonly empty.
        # Corresponds to the JSON property `glueRecords`
        # @return [Array<Google::Apis::DomainsV1::GlueRecord>]
        attr_accessor :glue_records
      
        # Deprecated: For more information, see [Cloud Domains feature deprecation](
        # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
        # Configuration for using the free DNS zone provided by Google Domains as a `
        # Registration`'s `dns_provider`. You cannot configure the DNS zone itself using
        # the API. To configure the DNS zone, go to [Google Domains](https://domains.
        # google/).
        # Corresponds to the JSON property `googleDomainsDns`
        # @return [Google::Apis::DomainsV1::GoogleDomainsDns]
        attr_accessor :google_domains_dns
      
        # Output only. Indicates if this `Registration` has configured one of the
        # following deprecated Google Domains DNS features: * Domain forwarding (HTTP `
        # 301` and `302` response status codes), * Email forwarding. See https://cloud.
        # google.com/domains/docs/deprecations/feature-deprecations for more details. If
        # any of these features is enabled call the `
        # RetrieveGoogleDomainsForwardingConfig` method to get details about the feature'
        # s configuration. A forwarding configuration might not work correctly if
        # required DNS records are not present in the domain's authoritative DNS Zone.
        # Corresponds to the JSON property `googleDomainsRedirectsDataAvailable`
        # @return [Boolean]
        attr_accessor :google_domains_redirects_data_available
        alias_method :google_domains_redirects_data_available?, :google_domains_redirects_data_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_dns = args[:custom_dns] if args.key?(:custom_dns)
          @glue_records = args[:glue_records] if args.key?(:glue_records)
          @google_domains_dns = args[:google_domains_dns] if args.key?(:google_domains_dns)
          @google_domains_redirects_data_available = args[:google_domains_redirects_data_available] if args.key?(:google_domains_redirects_data_available)
        end
      end
      
      # A domain that the calling user manages in Google Domains.
      class Domain
        include Google::Apis::Core::Hashable
      
        # The domain name. Unicode domain names are expressed in Punycode format.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # The state of this domain as a `Registration` resource.
        # Corresponds to the JSON property `resourceState`
        # @return [String]
        attr_accessor :resource_state
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @resource_state = args[:resource_state] if args.key?(:resource_state)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # Domain forwarding configuration.
      class DomainForwarding
        include Google::Apis::Core::Hashable
      
        # If true, forwards the path after the domain name to the same path at the new
        # address.
        # Corresponds to the JSON property `pathForwarding`
        # @return [Boolean]
        attr_accessor :path_forwarding
        alias_method :path_forwarding?, :path_forwarding
      
        # The PEM-encoded certificate chain.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        # The redirect type.
        # Corresponds to the JSON property `redirectType`
        # @return [String]
        attr_accessor :redirect_type
      
        # If true, the forwarding works also over HTTPS.
        # Corresponds to the JSON property `sslEnabled`
        # @return [Boolean]
        attr_accessor :ssl_enabled
        alias_method :ssl_enabled?, :ssl_enabled
      
        # The subdomain of the registered domain that is being forwarded. E.g. `www.
        # example.com`, `example.com` (i.e. the registered domain itself) or `*.example.
        # com` (i.e. all subdomains).
        # Corresponds to the JSON property `subdomain`
        # @return [String]
        attr_accessor :subdomain
      
        # The target of the domain forwarding, i.e. the path to redirect the `subdomain`
        # to.
        # Corresponds to the JSON property `targetUri`
        # @return [String]
        attr_accessor :target_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path_forwarding = args[:path_forwarding] if args.key?(:path_forwarding)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
          @redirect_type = args[:redirect_type] if args.key?(:redirect_type)
          @ssl_enabled = args[:ssl_enabled] if args.key?(:ssl_enabled)
          @subdomain = args[:subdomain] if args.key?(:subdomain)
          @target_uri = args[:target_uri] if args.key?(:target_uri)
        end
      end
      
      # Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for
      # a domain. It contains a digest (hash) of a DNSKEY record that must be present
      # in the domain's DNS zone.
      class DsRecord
        include Google::Apis::Core::Hashable
      
        # The algorithm used to generate the referenced DNSKEY.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The digest generated from the referenced DNSKEY.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # The hash function used to generate the digest of the referenced DNSKEY.
        # Corresponds to the JSON property `digestType`
        # @return [String]
        attr_accessor :digest_type
      
        # The key tag of the record. Must be set in range 0 -- 65535.
        # Corresponds to the JSON property `keyTag`
        # @return [Fixnum]
        attr_accessor :key_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @digest = args[:digest] if args.key?(:digest)
          @digest_type = args[:digest_type] if args.key?(:digest_type)
          @key_tag = args[:key_tag] if args.key?(:key_tag)
        end
      end
      
      # Email forwarding configuration.
      class EmailForwarding
        include Google::Apis::Core::Hashable
      
        # An alias recipient email that forwards emails to the `target_email_address`.
        # For example, `admin@example.com` or `*@example.com` (wildcard alias forwards
        # all the emails under the registered domain).
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Target email that receives emails sent to the `alias`.
        # Corresponds to the JSON property `targetEmailAddress`
        # @return [String]
        attr_accessor :target_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @target_email_address = args[:target_email_address] if args.key?(:target_email_address)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Request for the `ExportRegistration` method.
      class ExportRegistrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Configures a `RRSetRoutingPolicy` that routes based on the geo location of the
      # querying user.
      class GeoPolicy
        include Google::Apis::Core::Hashable
      
        # Without fencing, if health check fails for all configured items in the current
        # geo bucket, we failover to the next nearest geo bucket. With fencing, if
        # health checking is enabled, as long as some targets in the current geo bucket
        # are healthy, we return only the healthy targets. However, if all targets are
        # unhealthy, we don't failover to the next nearest bucket; instead, we return
        # all the items in the current bucket even when all targets are unhealthy.
        # Corresponds to the JSON property `enableFencing`
        # @return [Boolean]
        attr_accessor :enable_fencing
        alias_method :enable_fencing?, :enable_fencing
      
        # The primary geo routing configuration. If there are multiple items with the
        # same location, an error is returned instead.
        # Corresponds to the JSON property `item`
        # @return [Array<Google::Apis::DomainsV1::GeoPolicyItem>]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_fencing = args[:enable_fencing] if args.key?(:enable_fencing)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # ResourceRecordSet data for one geo location.
      class GeoPolicyItem
        include Google::Apis::Core::Hashable
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response. Set either `internal_load_balancer` or `external_endpoints`. Do not
        # set both.
        # Corresponds to the JSON property `healthCheckedTargets`
        # @return [Google::Apis::DomainsV1::HealthCheckTargets]
        attr_accessor :health_checked_targets
      
        # The geo-location granularity is a GCP region. This location string should
        # correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1"
        # , etc.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `rrdata`
        # @return [Array<String>]
        attr_accessor :rrdata
      
        # DNSSEC generated signatures for all the `rrdata` within this item. When using
        # health-checked targets for DNSSEC-enabled zones, you can only use at most one
        # health-checked IP address per item.
        # Corresponds to the JSON property `signatureRrdata`
        # @return [Array<String>]
        attr_accessor :signature_rrdata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checked_targets = args[:health_checked_targets] if args.key?(:health_checked_targets)
          @location = args[:location] if args.key?(:location)
          @rrdata = args[:rrdata] if args.key?(:rrdata)
          @signature_rrdata = args[:signature_rrdata] if args.key?(:signature_rrdata)
        end
      end
      
      # Defines a host on your domain that is a DNS name server for your domain and/or
      # other domains. Glue records are a way of making the IP address of a name
      # server known, even when it serves DNS queries for its parent domain. For
      # example, when `ns.example.com` is a name server for `example.com`, the host `
      # ns.example.com` must have a glue record to break the circular DNS reference.
      class GlueRecord
        include Google::Apis::Core::Hashable
      
        # Required. Domain name of the host in Punycode format.
        # Corresponds to the JSON property `hostName`
        # @return [String]
        attr_accessor :host_name
      
        # List of IPv4 addresses corresponding to this host in the standard decimal
        # format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address`
        # must be set.
        # Corresponds to the JSON property `ipv4Addresses`
        # @return [Array<String>]
        attr_accessor :ipv4_addresses
      
        # List of IPv6 addresses corresponding to this host in the standard hexadecimal
        # format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address`
        # must be set.
        # Corresponds to the JSON property `ipv6Addresses`
        # @return [Array<String>]
        attr_accessor :ipv6_addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_name = args[:host_name] if args.key?(:host_name)
          @ipv4_addresses = args[:ipv4_addresses] if args.key?(:ipv4_addresses)
          @ipv6_addresses = args[:ipv6_addresses] if args.key?(:ipv6_addresses)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Configuration for using the free DNS zone provided by Google Domains as a `
      # Registration`'s `dns_provider`. You cannot configure the DNS zone itself using
      # the API. To configure the DNS zone, go to [Google Domains](https://domains.
      # google/).
      class GoogleDomainsDns
        include Google::Apis::Core::Hashable
      
        # Output only. The list of DS records published for this domain. The list is
        # automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise
        # it remains empty.
        # Corresponds to the JSON property `dsRecords`
        # @return [Array<Google::Apis::DomainsV1::DsRecord>]
        attr_accessor :ds_records
      
        # Required. The state of DS records for this domain. Used to enable or disable
        # automatic DNSSEC.
        # Corresponds to the JSON property `dsState`
        # @return [String]
        attr_accessor :ds_state
      
        # Output only. A list of name servers that store the DNS zone for this domain.
        # Each name server is a domain name, with Unicode domain names expressed in
        # Punycode format. This field is automatically populated with the name servers
        # assigned to the Google Domains DNS zone.
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ds_records = args[:ds_records] if args.key?(:ds_records)
          @ds_state = args[:ds_state] if args.key?(:ds_state)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
        end
      end
      
      # HealthCheckTargets describes endpoints to health-check when responding to
      # Routing Policy queries. Only the healthy endpoints will be included in the
      # response. Set either `internal_load_balancer` or `external_endpoints`. Do not
      # set both.
      class HealthCheckTargets
        include Google::Apis::Core::Hashable
      
        # The Internet IP addresses to be health checked. The format matches the format
        # of ResourceRecordSet.rrdata as defined in RFC 1035 (section 5) and RFC 1034 (
        # section 3.6.1)
        # Corresponds to the JSON property `externalEndpoints`
        # @return [Array<String>]
        attr_accessor :external_endpoints
      
        # Configuration for internal load balancers to be health checked.
        # Corresponds to the JSON property `internalLoadBalancer`
        # @return [Array<Google::Apis::DomainsV1::LoadBalancerTarget>]
        attr_accessor :internal_load_balancer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_endpoints = args[:external_endpoints] if args.key?(:external_endpoints)
          @internal_load_balancer = args[:internal_load_balancer] if args.key?(:internal_load_balancer)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Request for the `ImportDomain` method.
      class ImportDomainRequest
        include Google::Apis::Core::Hashable
      
        # Required. The domain name. Unicode domain names must be expressed in Punycode
        # format.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Set of labels associated with the `Registration`.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Request for the `InitiatePushTransfer` method.
      class InitiatePushTransferRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Tag of the new registrar. Can be found at [List of registrars](
        # https://nominet.uk/registrar-list/).
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DomainsV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DomainsV1::Operation>]
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
      
      # Response for the `ListRegistrations` method.
      class ListRegistrationsResponse
        include Google::Apis::Core::Hashable
      
        # When present, there are more results to retrieve. Set `page_token` to this
        # value on a subsequent call to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of `Registration`s.
        # Corresponds to the JSON property `registrations`
        # @return [Array<Google::Apis::DomainsV1::Registration>]
        attr_accessor :registrations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @registrations = args[:registrations] if args.key?(:registrations)
        end
      end
      
      # The configuration for an individual load balancer to health check.
      class LoadBalancerTarget
        include Google::Apis::Core::Hashable
      
        # The frontend IP address of the load balancer to health check.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The protocol of the load balancer to health check.
        # Corresponds to the JSON property `ipProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # The type of load balancer specified by this target. This value must match the
        # configuration of the load balancer located at the LoadBalancerTarget's IP
        # address, port, and region. Use the following: - *regionalL4ilb*: for a
        # regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a
        # regional internal Application Load Balancer. - *globalL7ilb*: for a global
        # internal Application Load Balancer.
        # Corresponds to the JSON property `loadBalancerType`
        # @return [String]
        attr_accessor :load_balancer_type
      
        # The fully qualified URL of the network that the load balancer is attached to.
        # This should be formatted like `https://www.googleapis.com/compute/v1/projects/`
        # project`/global/networks/`network``.
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        # The configured port of the load balancer.
        # Corresponds to the JSON property `port`
        # @return [String]
        attr_accessor :port
      
        # The project ID in which the load balancer is located.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The region in which the load balancer is located.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @load_balancer_type = args[:load_balancer_type] if args.key?(:load_balancer_type)
          @network_url = args[:network_url] if args.key?(:network_url)
          @port = args[:port] if args.key?(:port)
          @project = args[:project] if args.key?(:project)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Defines renewal, billing, and transfer settings for a `Registration`.
      class ManagementSettings
        include Google::Apis::Core::Hashable
      
        # Output only. The actual transfer lock state for this `Registration`.
        # Corresponds to the JSON property `effectiveTransferLockState`
        # @return [String]
        attr_accessor :effective_transfer_lock_state
      
        # Optional. The desired renewal method for this `Registration`. The actual `
        # renewal_method` is automatically updated to reflect this choice. If unset or
        # equal to `RENEWAL_METHOD_UNSPECIFIED`, the actual `renewalMethod` is treated
        # as if it were set to `AUTOMATIC_RENEWAL`. You cannot use `RENEWAL_DISABLED`
        # during resource creation, and you can update the renewal status only when the `
        # Registration` resource has state `ACTIVE` or `SUSPENDED`. When `
        # preferred_renewal_method` is set to `AUTOMATIC_RENEWAL`, the actual `
        # renewal_method` can be set to `RENEWAL_DISABLED` in case of problems with the
        # billing account or reported domain abuse. In such cases, check the `issues`
        # field on the `Registration`. After the problem is resolved, the `
        # renewal_method` is automatically updated to `preferred_renewal_method` in a
        # few hours.
        # Corresponds to the JSON property `preferredRenewalMethod`
        # @return [String]
        attr_accessor :preferred_renewal_method
      
        # Output only. The actual renewal method for this `Registration`. When `
        # preferred_renewal_method` is set to `AUTOMATIC_RENEWAL`, the actual `
        # renewal_method` can be equal to `RENEWAL_DISABLED`—for example, when there are
        # problems with the billing account or reported domain abuse. In such cases,
        # check the `issues` field on the `Registration`. After the problem is resolved,
        # the `renewal_method` is automatically updated to `preferred_renewal_method` in
        # a few hours.
        # Corresponds to the JSON property `renewalMethod`
        # @return [String]
        attr_accessor :renewal_method
      
        # This is the desired transfer lock state for this `Registration`. A transfer
        # lock controls whether the domain can be transferred to another registrar. The
        # transfer lock state of the domain is returned in the `
        # effective_transfer_lock_state` property. The transfer lock state values might
        # be different for the following reasons: * `transfer_lock_state` was updated
        # only a short time ago. * Domains with the `
        # TRANSFER_LOCK_UNSUPPORTED_BY_REGISTRY` state are in the list of `
        # domain_properties`. These domains are always in the `UNLOCKED` state.
        # Corresponds to the JSON property `transferLockState`
        # @return [String]
        attr_accessor :transfer_lock_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_transfer_lock_state = args[:effective_transfer_lock_state] if args.key?(:effective_transfer_lock_state)
          @preferred_renewal_method = args[:preferred_renewal_method] if args.key?(:preferred_renewal_method)
          @renewal_method = args[:renewal_method] if args.key?(:renewal_method)
          @transfer_lock_state = args[:transfer_lock_state] if args.key?(:transfer_lock_state)
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
        # @return [Google::Apis::DomainsV1::Status]
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
      
      # Represents the metadata of the long-running operation. Output only.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DomainsV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DomainsV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents a postal address. For example for postal delivery or payments
      # addresses. Given a postal address, a postal service can deliver items to a
      # premise, P.O. Box or similar. It is not intended to model geographical
      # locations (roads, towns, mountains). In typical usage an address would be
      # created by user input or from importing existing data, depending on the type
      # of process. Advice on address input / editing: - Use an internationalization-
      # ready address widget such as https://github.com/google/libaddressinput) -
      # Users should not be presented with UI elements for input or editing of fields
      # outside countries where that field is used. For more guidance on how to use
      # this schema, see: https://support.google.com/business/answer/6397478
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (For example "Austin, TX"), it is important
        # that the line order is clear. The order of address lines should be "envelope
        # order" for the country/region of the address. In places where this can vary (
        # For example Japan), address_language is used to make it explicit (For example "
        # ja" for large-to-small ordering and "ja-Latn" or "en" for small-to-large).
        # This way, the most specific line of an address can be selected based on the
        # language. The minimum permitted structural representation of an address
        # consists of a region_code with all remaining information placed in the
        # address_lines. It would be possible to format such an address very
        # approximately without geocoding, but no semantic reasoning could be made about
        # any of the address components until it was at least partially resolved.
        # Creating an address only containing a region_code and address_lines, and then
        # geocoding is the recommended way to handle completely unstructured addresses (
        # as opposed to guessing which parts of the address should be localities or
        # administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (For example "Barcelona" and not "Catalonia").
        # Many countries don't use an administrative area in postal addresses. For
        # example in Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (For example state/zip validation
        # in the U.S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (For example "CEDEX 7"), or just a number
        # alone, representing the "sector code" (Jamaica), "delivery area indicator" (
        # Malawi) or "post office indicator" (For example Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Configures a RRSetRoutingPolicy such that all queries are responded with the
      # primary_targets if they are healthy. And if all of them are unhealthy, then we
      # fallback to a geo localized policy.
      class PrimaryBackupPolicy
        include Google::Apis::Core::Hashable
      
        # Configures a `RRSetRoutingPolicy` that routes based on the geo location of the
        # querying user.
        # Corresponds to the JSON property `backupGeoTargets`
        # @return [Google::Apis::DomainsV1::GeoPolicy]
        attr_accessor :backup_geo_targets
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response. Set either `internal_load_balancer` or `external_endpoints`. Do not
        # set both.
        # Corresponds to the JSON property `primaryTargets`
        # @return [Google::Apis::DomainsV1::HealthCheckTargets]
        attr_accessor :primary_targets
      
        # When serving state is `PRIMARY`, this field provides the option of sending a
        # small percentage of the traffic to the backup targets.
        # Corresponds to the JSON property `trickleTraffic`
        # @return [Float]
        attr_accessor :trickle_traffic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_geo_targets = args[:backup_geo_targets] if args.key?(:backup_geo_targets)
          @primary_targets = args[:primary_targets] if args.key?(:primary_targets)
          @trickle_traffic = args[:trickle_traffic] if args.key?(:trickle_traffic)
        end
      end
      
      # A RRSetRoutingPolicy represents ResourceRecordSet data that is returned
      # dynamically with the response varying based on configured properties such as
      # geolocation or by weighted random selection.
      class RrSetRoutingPolicy
        include Google::Apis::Core::Hashable
      
        # Configures a `RRSetRoutingPolicy` that routes based on the geo location of the
        # querying user.
        # Corresponds to the JSON property `geo`
        # @return [Google::Apis::DomainsV1::GeoPolicy]
        attr_accessor :geo
      
        # Configures a `RRSetRoutingPolicy` that routes based on the geo location of the
        # querying user.
        # Corresponds to the JSON property `geoPolicy`
        # @return [Google::Apis::DomainsV1::GeoPolicy]
        attr_accessor :geo_policy
      
        # The fully qualified URL of the HealthCheck to use for this RRSetRoutingPolicy.
        # Format this URL like `https://www.googleapis.com/compute/v1/projects/`project`/
        # global/healthChecks/`healthCheck``. https://cloud.google.com/compute/docs/
        # reference/rest/v1/healthChecks
        # Corresponds to the JSON property `healthCheck`
        # @return [String]
        attr_accessor :health_check
      
        # Configures a RRSetRoutingPolicy such that all queries are responded with the
        # primary_targets if they are healthy. And if all of them are unhealthy, then we
        # fallback to a geo localized policy.
        # Corresponds to the JSON property `primaryBackup`
        # @return [Google::Apis::DomainsV1::PrimaryBackupPolicy]
        attr_accessor :primary_backup
      
        # Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
        # Corresponds to the JSON property `wrr`
        # @return [Google::Apis::DomainsV1::WrrPolicy]
        attr_accessor :wrr
      
        # Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
        # Corresponds to the JSON property `wrrPolicy`
        # @return [Google::Apis::DomainsV1::WrrPolicy]
        attr_accessor :wrr_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo = args[:geo] if args.key?(:geo)
          @geo_policy = args[:geo_policy] if args.key?(:geo_policy)
          @health_check = args[:health_check] if args.key?(:health_check)
          @primary_backup = args[:primary_backup] if args.key?(:primary_backup)
          @wrr = args[:wrr] if args.key?(:wrr)
          @wrr_policy = args[:wrr_policy] if args.key?(:wrr_policy)
        end
      end
      
      # Request for the `RegisterDomain` method.
      class RegisterDomainRequest
        include Google::Apis::Core::Hashable
      
        # The list of contact notices that the caller acknowledges. The notices needed
        # here depend on the values specified in `registration.contact_settings`.
        # Corresponds to the JSON property `contactNotices`
        # @return [Array<String>]
        attr_accessor :contact_notices
      
        # The list of domain notices that you acknowledge. Call `
        # RetrieveRegisterParameters` to see the notices that need acknowledgement.
        # Corresponds to the JSON property `domainNotices`
        # @return [Array<String>]
        attr_accessor :domain_notices
      
        # The `Registration` resource facilitates managing and configuring domain name
        # registrations. There are several ways to create a new `Registration` resource:
        # To create a new `Registration` resource, find a suitable domain name by
        # calling the `SearchDomains` method with a query to see available domain name
        # options. After choosing a name, call `RetrieveRegisterParameters` to ensure
        # availability and obtain information like pricing, which is needed to build a
        # call to `RegisterDomain`. Another way to create a new `Registration` is to
        # transfer an existing domain from another registrar (Deprecated: For more
        # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
        # domains/docs/deprecations/feature-deprecations)). First, go to the current
        # registrar to unlock the domain for transfer and retrieve the domain's transfer
        # authorization code. Then call `RetrieveTransferParameters` to confirm that the
        # domain is unlocked and to get values needed to build a call to `TransferDomain`
        # . Finally, you can create a new `Registration` by importing an existing domain
        # managed with [Google Domains](https://domains.google/) (Deprecated: For more
        # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
        # domains/docs/deprecations/feature-deprecations)). First, call `
        # RetrieveImportableDomains` to list domains to which the calling user has
        # sufficient access. Then call `ImportDomain` on any domain names you want to
        # use with Cloud Domains.
        # Corresponds to the JSON property `registration`
        # @return [Google::Apis::DomainsV1::Registration]
        attr_accessor :registration
      
        # When true, only validation is performed, without actually registering the
        # domain. Follows: https://cloud.google.com/apis/design/design_patterns#
        # request_validation
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_notices = args[:contact_notices] if args.key?(:contact_notices)
          @domain_notices = args[:domain_notices] if args.key?(:domain_notices)
          @registration = args[:registration] if args.key?(:registration)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # Parameters required to register a new domain.
      class RegisterParameters
        include Google::Apis::Core::Hashable
      
        # Indicates whether the domain is available for registration. This value is
        # accurate when obtained by calling `RetrieveRegisterParameters`, but is
        # approximate when obtained by calling `SearchDomains`.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The domain name. Unicode domain names are expressed in Punycode format.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Notices about special properties of the domain.
        # Corresponds to the JSON property `domainNotices`
        # @return [Array<String>]
        attr_accessor :domain_notices
      
        # Contact privacy options that the domain supports.
        # Corresponds to the JSON property `supportedPrivacy`
        # @return [Array<String>]
        attr_accessor :supported_privacy
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @domain_notices = args[:domain_notices] if args.key?(:domain_notices)
          @supported_privacy = args[:supported_privacy] if args.key?(:supported_privacy)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # The `Registration` resource facilitates managing and configuring domain name
      # registrations. There are several ways to create a new `Registration` resource:
      # To create a new `Registration` resource, find a suitable domain name by
      # calling the `SearchDomains` method with a query to see available domain name
      # options. After choosing a name, call `RetrieveRegisterParameters` to ensure
      # availability and obtain information like pricing, which is needed to build a
      # call to `RegisterDomain`. Another way to create a new `Registration` is to
      # transfer an existing domain from another registrar (Deprecated: For more
      # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
      # domains/docs/deprecations/feature-deprecations)). First, go to the current
      # registrar to unlock the domain for transfer and retrieve the domain's transfer
      # authorization code. Then call `RetrieveTransferParameters` to confirm that the
      # domain is unlocked and to get values needed to build a call to `TransferDomain`
      # . Finally, you can create a new `Registration` by importing an existing domain
      # managed with [Google Domains](https://domains.google/) (Deprecated: For more
      # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
      # domains/docs/deprecations/feature-deprecations)). First, call `
      # RetrieveImportableDomains` to list domains to which the calling user has
      # sufficient access. Then call `ImportDomain` on any domain names you want to
      # use with Cloud Domains.
      class Registration
        include Google::Apis::Core::Hashable
      
        # Defines the contact information associated with a `Registration`. [ICANN](
        # https://icann.org/) requires all domain names to have associated contact
        # information. The `registrant_contact` is considered the domain's legal owner,
        # and often the other contacts are identical.
        # Corresponds to the JSON property `contactSettings`
        # @return [Google::Apis::DomainsV1::ContactSettings]
        attr_accessor :contact_settings
      
        # Output only. The creation timestamp of the `Registration` resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Defines the DNS configuration of a `Registration`, including name servers,
        # DNSSEC, and glue records.
        # Corresponds to the JSON property `dnsSettings`
        # @return [Google::Apis::DomainsV1::DnsSettings]
        attr_accessor :dns_settings
      
        # Required. Immutable. The domain name. Unicode domain names must be expressed
        # in Punycode format.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Output only. Special properties of the domain.
        # Corresponds to the JSON property `domainProperties`
        # @return [Array<String>]
        attr_accessor :domain_properties
      
        # Output only. The expiration timestamp of the `Registration`.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The set of issues with the `Registration` that require attention.
        # Corresponds to the JSON property `issues`
        # @return [Array<String>]
        attr_accessor :issues
      
        # Set of labels associated with the `Registration`.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Defines renewal, billing, and transfer settings for a `Registration`.
        # Corresponds to the JSON property `managementSettings`
        # @return [Google::Apis::DomainsV1::ManagementSettings]
        attr_accessor :management_settings
      
        # Output only. Name of the `Registration` resource, in the format `projects/*/
        # locations/*/registrations/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines the contact information associated with a `Registration`. [ICANN](
        # https://icann.org/) requires all domain names to have associated contact
        # information. The `registrant_contact` is considered the domain's legal owner,
        # and often the other contacts are identical.
        # Corresponds to the JSON property `pendingContactSettings`
        # @return [Google::Apis::DomainsV1::ContactSettings]
        attr_accessor :pending_contact_settings
      
        # Output only. The reason the domain registration failed. Only set for domains
        # in REGISTRATION_FAILED state.
        # Corresponds to the JSON property `registerFailureReason`
        # @return [String]
        attr_accessor :register_failure_reason
      
        # Output only. The state of the `Registration`
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Set of options for the `contact_settings.privacy` field that this
        # `Registration` supports.
        # Corresponds to the JSON property `supportedPrivacy`
        # @return [Array<String>]
        attr_accessor :supported_privacy
      
        # Output only. Deprecated: For more information, see [Cloud Domains feature
        # deprecation](https://cloud.google.com/domains/docs/deprecations/feature-
        # deprecations). The reason the domain transfer failed. Only set for domains in
        # TRANSFER_FAILED state.
        # Corresponds to the JSON property `transferFailureReason`
        # @return [String]
        attr_accessor :transfer_failure_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_settings = args[:contact_settings] if args.key?(:contact_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dns_settings = args[:dns_settings] if args.key?(:dns_settings)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @domain_properties = args[:domain_properties] if args.key?(:domain_properties)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @issues = args[:issues] if args.key?(:issues)
          @labels = args[:labels] if args.key?(:labels)
          @management_settings = args[:management_settings] if args.key?(:management_settings)
          @name = args[:name] if args.key?(:name)
          @pending_contact_settings = args[:pending_contact_settings] if args.key?(:pending_contact_settings)
          @register_failure_reason = args[:register_failure_reason] if args.key?(:register_failure_reason)
          @state = args[:state] if args.key?(:state)
          @supported_privacy = args[:supported_privacy] if args.key?(:supported_privacy)
          @transfer_failure_reason = args[:transfer_failure_reason] if args.key?(:transfer_failure_reason)
        end
      end
      
      # Request for the `RenewDomain` method.
      class RenewDomainRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When true, only validation is performed, without actually renewing
        # the domain. For more information, see [Request validation](https://cloud.
        # google.com/apis/design/design_patterns#request_validation)
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # Request for the `ResetAuthorizationCode` method.
      class ResetAuthorizationCodeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A unit of data that is returned by the DNS servers.
      class ResourceRecordSet
        include Google::Apis::Core::Hashable
      
        # For example, www.example.com.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A RRSetRoutingPolicy represents ResourceRecordSet data that is returned
        # dynamically with the response varying based on configured properties such as
        # geolocation or by weighted random selection.
        # Corresponds to the JSON property `routingPolicy`
        # @return [Google::Apis::DomainsV1::RrSetRoutingPolicy]
        attr_accessor :routing_policy
      
        # As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see
        # examples.
        # Corresponds to the JSON property `rrdata`
        # @return [Array<String>]
        attr_accessor :rrdata
      
        # As defined in RFC 4034 (section 3.2).
        # Corresponds to the JSON property `signatureRrdata`
        # @return [Array<String>]
        attr_accessor :signature_rrdata
      
        # Number of seconds that this `ResourceRecordSet` can be cached by resolvers.
        # Corresponds to the JSON property `ttl`
        # @return [Fixnum]
        attr_accessor :ttl
      
        # The identifier of a supported record type. See the list of Supported DNS
        # record types.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @routing_policy = args[:routing_policy] if args.key?(:routing_policy)
          @rrdata = args[:rrdata] if args.key?(:rrdata)
          @signature_rrdata = args[:signature_rrdata] if args.key?(:signature_rrdata)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response for the `RetrieveGoogleDomainsDnsRecords` method.
      class RetrieveGoogleDomainsDnsRecordsResponse
        include Google::Apis::Core::Hashable
      
        # When present, there are more results to retrieve. Set `page_token` to this
        # value on a subsequent call to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resource record set resources (DNS Zone records).
        # Corresponds to the JSON property `rrset`
        # @return [Array<Google::Apis::DomainsV1::ResourceRecordSet>]
        attr_accessor :rrset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rrset = args[:rrset] if args.key?(:rrset)
        end
      end
      
      # Response for the `RetrieveGoogleDomainsForwardingConfig` method.
      class RetrieveGoogleDomainsForwardingConfigResponse
        include Google::Apis::Core::Hashable
      
        # The list of domain forwarding configurations. A forwarding configuration might
        # not work correctly if the required DNS records are not present in the domain's
        # authoritative DNS zone.
        # Corresponds to the JSON property `domainForwardings`
        # @return [Array<Google::Apis::DomainsV1::DomainForwarding>]
        attr_accessor :domain_forwardings
      
        # The list of email forwarding configurations. A forwarding configuration might
        # not work correctly if the required DNS records are not present in the domain's
        # authoritative DNS zone.
        # Corresponds to the JSON property `emailForwardings`
        # @return [Array<Google::Apis::DomainsV1::EmailForwarding>]
        attr_accessor :email_forwardings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_forwardings = args[:domain_forwardings] if args.key?(:domain_forwardings)
          @email_forwardings = args[:email_forwardings] if args.key?(:email_forwardings)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Response for the `RetrieveImportableDomains` method.
      class RetrieveImportableDomainsResponse
        include Google::Apis::Core::Hashable
      
        # A list of domains that the calling user manages in Google Domains.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::DomainsV1::Domain>]
        attr_accessor :domains
      
        # When present, there are more results to retrieve. Set `page_token` to this
        # value on a subsequent call to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the `RetrieveRegisterParameters` method.
      class RetrieveRegisterParametersResponse
        include Google::Apis::Core::Hashable
      
        # Parameters required to register a new domain.
        # Corresponds to the JSON property `registerParameters`
        # @return [Google::Apis::DomainsV1::RegisterParameters]
        attr_accessor :register_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @register_parameters = args[:register_parameters] if args.key?(:register_parameters)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Response for the `RetrieveTransferParameters` method.
      class RetrieveTransferParametersResponse
        include Google::Apis::Core::Hashable
      
        # Deprecated: For more information, see [Cloud Domains feature deprecation](
        # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
        # Parameters required to transfer a domain from another registrar.
        # Corresponds to the JSON property `transferParameters`
        # @return [Google::Apis::DomainsV1::TransferParameters]
        attr_accessor :transfer_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transfer_parameters = args[:transfer_parameters] if args.key?(:transfer_parameters)
        end
      end
      
      # Response for the `SearchDomains` method.
      class SearchDomainsResponse
        include Google::Apis::Core::Hashable
      
        # Results of the domain name search.
        # Corresponds to the JSON property `registerParameters`
        # @return [Array<Google::Apis::DomainsV1::RegisterParameters>]
        attr_accessor :register_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @register_parameters = args[:register_parameters] if args.key?(:register_parameters)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DomainsV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Request for the `TransferDomain` method.
      class TransferDomainRequest
        include Google::Apis::Core::Hashable
      
        # Defines an authorization code.
        # Corresponds to the JSON property `authorizationCode`
        # @return [Google::Apis::DomainsV1::AuthorizationCode]
        attr_accessor :authorization_code
      
        # The list of contact notices that you acknowledge. The notices needed here
        # depend on the values specified in `registration.contact_settings`.
        # Corresponds to the JSON property `contactNotices`
        # @return [Array<String>]
        attr_accessor :contact_notices
      
        # The `Registration` resource facilitates managing and configuring domain name
        # registrations. There are several ways to create a new `Registration` resource:
        # To create a new `Registration` resource, find a suitable domain name by
        # calling the `SearchDomains` method with a query to see available domain name
        # options. After choosing a name, call `RetrieveRegisterParameters` to ensure
        # availability and obtain information like pricing, which is needed to build a
        # call to `RegisterDomain`. Another way to create a new `Registration` is to
        # transfer an existing domain from another registrar (Deprecated: For more
        # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
        # domains/docs/deprecations/feature-deprecations)). First, go to the current
        # registrar to unlock the domain for transfer and retrieve the domain's transfer
        # authorization code. Then call `RetrieveTransferParameters` to confirm that the
        # domain is unlocked and to get values needed to build a call to `TransferDomain`
        # . Finally, you can create a new `Registration` by importing an existing domain
        # managed with [Google Domains](https://domains.google/) (Deprecated: For more
        # information, see [Cloud Domains feature deprecation](https://cloud.google.com/
        # domains/docs/deprecations/feature-deprecations)). First, call `
        # RetrieveImportableDomains` to list domains to which the calling user has
        # sufficient access. Then call `ImportDomain` on any domain names you want to
        # use with Cloud Domains.
        # Corresponds to the JSON property `registration`
        # @return [Google::Apis::DomainsV1::Registration]
        attr_accessor :registration
      
        # Validate the request without actually transferring the domain.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_code = args[:authorization_code] if args.key?(:authorization_code)
          @contact_notices = args[:contact_notices] if args.key?(:contact_notices)
          @registration = args[:registration] if args.key?(:registration)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # Deprecated: For more information, see [Cloud Domains feature deprecation](
      # https://cloud.google.com/domains/docs/deprecations/feature-deprecations).
      # Parameters required to transfer a domain from another registrar.
      class TransferParameters
        include Google::Apis::Core::Hashable
      
        # The registrar that currently manages the domain.
        # Corresponds to the JSON property `currentRegistrar`
        # @return [String]
        attr_accessor :current_registrar
      
        # The URL of the registrar that currently manages the domain.
        # Corresponds to the JSON property `currentRegistrarUri`
        # @return [String]
        attr_accessor :current_registrar_uri
      
        # The domain name. Unicode domain names are expressed in Punycode format.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # The name servers that currently store the configuration of the domain.
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        # Contact privacy options that the domain supports.
        # Corresponds to the JSON property `supportedPrivacy`
        # @return [Array<String>]
        attr_accessor :supported_privacy
      
        # Indicates whether the domain is protected by a transfer lock. For a transfer
        # to succeed, this must show `UNLOCKED`. To unlock a domain, go to its current
        # registrar.
        # Corresponds to the JSON property `transferLockState`
        # @return [String]
        attr_accessor :transfer_lock_state
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `yearlyPrice`
        # @return [Google::Apis::DomainsV1::Money]
        attr_accessor :yearly_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_registrar = args[:current_registrar] if args.key?(:current_registrar)
          @current_registrar_uri = args[:current_registrar_uri] if args.key?(:current_registrar_uri)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
          @supported_privacy = args[:supported_privacy] if args.key?(:supported_privacy)
          @transfer_lock_state = args[:transfer_lock_state] if args.key?(:transfer_lock_state)
          @yearly_price = args[:yearly_price] if args.key?(:yearly_price)
        end
      end
      
      # Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
      class WrrPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `item`
        # @return [Array<Google::Apis::DomainsV1::WrrPolicyItem>]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # A routing block which contains the routing information for one WRR item.
      class WrrPolicyItem
        include Google::Apis::Core::Hashable
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response. Set either `internal_load_balancer` or `external_endpoints`. Do not
        # set both.
        # Corresponds to the JSON property `healthCheckedTargets`
        # @return [Google::Apis::DomainsV1::HealthCheckTargets]
        attr_accessor :health_checked_targets
      
        # 
        # Corresponds to the JSON property `rrdata`
        # @return [Array<String>]
        attr_accessor :rrdata
      
        # DNSSEC generated signatures for all the `rrdata` within this item. When using
        # health-checked targets for DNSSEC-enabled zones, you can only use at most one
        # health-checked IP address per item.
        # Corresponds to the JSON property `signatureRrdata`
        # @return [Array<String>]
        attr_accessor :signature_rrdata
      
        # The weight corresponding to this `WrrPolicyItem` object. When multiple `
        # WrrPolicyItem` objects are configured, the probability of returning an `
        # WrrPolicyItem` object's data is proportional to its weight relative to the sum
        # of weights configured for all items. This weight must be non-negative.
        # Corresponds to the JSON property `weight`
        # @return [Float]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checked_targets = args[:health_checked_targets] if args.key?(:health_checked_targets)
          @rrdata = args[:rrdata] if args.key?(:rrdata)
          @signature_rrdata = args[:signature_rrdata] if args.key?(:signature_rrdata)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
    end
  end
end
