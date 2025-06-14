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
    module StoragetransferV1
      
      # Represents an agent pool.
      class AgentPool
        include Google::Apis::Core::Hashable
      
        # Specifies a bandwidth limit for an agent pool.
        # Corresponds to the JSON property `bandwidthLimit`
        # @return [Google::Apis::StoragetransferV1::BandwidthLimit]
        attr_accessor :bandwidth_limit
      
        # Specifies the client-specified AgentPool description.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Specifies a unique string that identifies the agent pool. Format: `
        # projects/`project_id`/agentPools/`agent_pool_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies the state of the AgentPool.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth_limit = args[:bandwidth_limit] if args.key?(:bandwidth_limit)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/
      # general/latest/gr/aws-security-credentials.html)). For information on our data
      # retention policy for user credentials, see [User credentials](/storage-
      # transfer/docs/data-retention#user-credentials).
      class AwsAccessKey
        include Google::Apis::Core::Hashable
      
        # Required. AWS access key ID.
        # Corresponds to the JSON property `accessKeyId`
        # @return [String]
        attr_accessor :access_key_id
      
        # Required. AWS secret access key. This field is not returned in RPC responses.
        # Corresponds to the JSON property `secretAccessKey`
        # @return [String]
        attr_accessor :secret_access_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_key_id = args[:access_key_id] if args.key?(:access_key_id)
          @secret_access_key = args[:secret_access_key] if args.key?(:secret_access_key)
        end
      end
      
      # An AwsS3CompatibleData resource.
      class AwsS3CompatibleData
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the name of the bucket.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Required. Specifies the endpoint of the storage service.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Specifies the root path to transfer objects. Must be an empty string or full
        # path name that ends with a '/'. This field is treated as an object prefix. As
        # such, it should generally not begin with a '/'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Specifies the region to sign requests with. This can be left blank if requests
        # should be signed with an empty region.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # S3CompatibleMetadata contains the metadata fields that apply to the basic
        # types of S3-compatible data providers.
        # Corresponds to the JSON property `s3Metadata`
        # @return [Google::Apis::StoragetransferV1::S3CompatibleMetadata]
        attr_accessor :s3_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @path = args[:path] if args.key?(:path)
          @region = args[:region] if args.key?(:region)
          @s3_metadata = args[:s3_metadata] if args.key?(:s3_metadata)
        end
      end
      
      # An AwsS3Data resource can be a data source, but not a data sink. In an
      # AwsS3Data resource, an object's name is the S3 object's key name.
      class AwsS3Data
        include Google::Apis::Core::Hashable
      
        # AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/
        # general/latest/gr/aws-security-credentials.html)). For information on our data
        # retention policy for user credentials, see [User credentials](/storage-
        # transfer/docs/data-retention#user-credentials).
        # Corresponds to the JSON property `awsAccessKey`
        # @return [Google::Apis::StoragetransferV1::AwsAccessKey]
        attr_accessor :aws_access_key
      
        # Required. S3 Bucket name (see [Creating a bucket](https://docs.aws.amazon.com/
        # AmazonS3/latest/dev/create-bucket-get-location-example.html)).
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Optional. The CloudFront distribution domain name pointing to this bucket, to
        # use when fetching. See [Transfer from S3 via CloudFront](https://cloud.google.
        # com/storage-transfer/docs/s3-cloudfront) for more information. Format: `https:/
        # /`id`.cloudfront.net` or any valid custom domain. Must begin with `https://`.
        # Corresponds to the JSON property `cloudfrontDomain`
        # @return [String]
        attr_accessor :cloudfront_domain
      
        # Optional. The Resource name of a secret in Secret Manager. AWS credentials
        # must be stored in Secret Manager in JSON format: ` "access_key_id": "
        # ACCESS_KEY_ID", "secret_access_key": "SECRET_ACCESS_KEY" `
        # GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for
        # the resource. See [Configure access to a source: Amazon S3] (https://cloud.
        # google.com/storage-transfer/docs/source-amazon-s3#secret_manager) for more
        # information. If `credentials_secret` is specified, do not specify role_arn or
        # aws_access_key. Format: `projects/`project_number`/secrets/`secret_name``
        # Corresponds to the JSON property `credentialsSecret`
        # @return [String]
        attr_accessor :credentials_secret
      
        # Egress bytes over a Google-managed private network. This network is shared
        # between other users of Storage Transfer Service.
        # Corresponds to the JSON property `managedPrivateNetwork`
        # @return [Boolean]
        attr_accessor :managed_private_network
        alias_method :managed_private_network?, :managed_private_network
      
        # Root path to transfer objects. Must be an empty string or full path name that
        # ends with a '/'. This field is treated as an object prefix. As such, it should
        # generally not begin with a '/'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The Amazon Resource Name (ARN) of the role to support temporary credentials
        # via `AssumeRoleWithWebIdentity`. For more information about ARNs, see [IAM
        # ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.
        # html#identifiers-arns). When a role ARN is provided, Transfer Service fetches
        # temporary credentials for the session using a `AssumeRoleWithWebIdentity` call
        # for the provided role using the GoogleServiceAccount for this project.
        # Corresponds to the JSON property `roleArn`
        # @return [String]
        attr_accessor :role_arn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_access_key = args[:aws_access_key] if args.key?(:aws_access_key)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @cloudfront_domain = args[:cloudfront_domain] if args.key?(:cloudfront_domain)
          @credentials_secret = args[:credentials_secret] if args.key?(:credentials_secret)
          @managed_private_network = args[:managed_private_network] if args.key?(:managed_private_network)
          @path = args[:path] if args.key?(:path)
          @role_arn = args[:role_arn] if args.key?(:role_arn)
        end
      end
      
      # An AzureBlobStorageData resource can be a data source, but not a data sink. An
      # AzureBlobStorageData resource represents one Azure container. The storage
      # account determines the [Azure endpoint](https://docs.microsoft.com/en-us/azure/
      # storage/common/storage-create-storage-account#storage-account-endpoints). In
      # an AzureBlobStorageData resource, a blobs's name is the [Azure Blob Storage
      # blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/
      # naming-and-referencing-containers--blobs--and-metadata#blob-names).
      class AzureBlobStorageData
        include Google::Apis::Core::Hashable
      
        # Azure credentials For information on our data retention policy for user
        # credentials, see [User credentials](/storage-transfer/docs/data-retention#user-
        # credentials).
        # Corresponds to the JSON property `azureCredentials`
        # @return [Google::Apis::StoragetransferV1::AzureCredentials]
        attr_accessor :azure_credentials
      
        # Required. The container to transfer from the Azure Storage account.
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # Optional. The Resource name of a secret in Secret Manager. The Azure SAS token
        # must be stored in Secret Manager in JSON format: ` "sas_token" : "SAS_TOKEN" `
        # GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for
        # the resource. See [Configure access to a source: Microsoft Azure Blob Storage]
        # (https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#
        # secret_manager) for more information. If `credentials_secret` is specified, do
        # not specify azure_credentials. Format: `projects/`project_number`/secrets/`
        # secret_name``
        # Corresponds to the JSON property `credentialsSecret`
        # @return [String]
        attr_accessor :credentials_secret
      
        # The identity of an Azure application through which Storage Transfer Service
        # can authenticate requests using Azure workload identity federation. Storage
        # Transfer Service can issue requests to Azure Storage through registered Azure
        # applications, eliminating the need to pass credentials to Storage Transfer
        # Service directly. To configure federated identity, see [Configure access to
        # Microsoft Azure Storage](https://cloud.google.com/storage-transfer/docs/source-
        # microsoft-azure#option_3_authenticate_using_federated_identity).
        # Corresponds to the JSON property `federatedIdentityConfig`
        # @return [Google::Apis::StoragetransferV1::FederatedIdentityConfig]
        attr_accessor :federated_identity_config
      
        # Root path to transfer objects. Must be an empty string or full path name that
        # ends with a '/'. This field is treated as an object prefix. As such, it should
        # generally not begin with a '/'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. The name of the Azure Storage account.
        # Corresponds to the JSON property `storageAccount`
        # @return [String]
        attr_accessor :storage_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azure_credentials = args[:azure_credentials] if args.key?(:azure_credentials)
          @container = args[:container] if args.key?(:container)
          @credentials_secret = args[:credentials_secret] if args.key?(:credentials_secret)
          @federated_identity_config = args[:federated_identity_config] if args.key?(:federated_identity_config)
          @path = args[:path] if args.key?(:path)
          @storage_account = args[:storage_account] if args.key?(:storage_account)
        end
      end
      
      # Azure credentials For information on our data retention policy for user
      # credentials, see [User credentials](/storage-transfer/docs/data-retention#user-
      # credentials).
      class AzureCredentials
        include Google::Apis::Core::Hashable
      
        # Required. Azure shared access signature (SAS). For more information about SAS,
        # see [Grant limited access to Azure Storage resources using shared access
        # signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/
        # storage-sas-overview).
        # Corresponds to the JSON property `sasToken`
        # @return [String]
        attr_accessor :sas_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sas_token = args[:sas_token] if args.key?(:sas_token)
        end
      end
      
      # Specifies a bandwidth limit for an agent pool.
      class BandwidthLimit
        include Google::Apis::Core::Hashable
      
        # Bandwidth rate in megabytes per second, distributed across all the agents in
        # the pool.
        # Corresponds to the JSON property `limitMbps`
        # @return [Fixnum]
        attr_accessor :limit_mbps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limit_mbps = args[:limit_mbps] if args.key?(:limit_mbps)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # An entry describing an error that has occurred.
      class ErrorLogEntry
        include Google::Apis::Core::Hashable
      
        # A list of messages that carry the error details.
        # Corresponds to the JSON property `errorDetails`
        # @return [Array<String>]
        attr_accessor :error_details
      
        # Required. A URL that refers to the target (a data source, a data sink, or an
        # object) with which the error is associated.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_details = args[:error_details] if args.key?(:error_details)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A summary of errors by error code, plus a count and sample error log entries.
      class ErrorSummary
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Required. Count of this type of error.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # Error samples. At most 5 error log entries are recorded for a given error code
        # for a single transfer operation.
        # Corresponds to the JSON property `errorLogEntries`
        # @return [Array<Google::Apis::StoragetransferV1::ErrorLogEntry>]
        attr_accessor :error_log_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_count = args[:error_count] if args.key?(:error_count)
          @error_log_entries = args[:error_log_entries] if args.key?(:error_log_entries)
        end
      end
      
      # Specifies the Event-driven transfer options. Event-driven transfers listen to
      # an event stream to transfer updated files.
      class EventStream
        include Google::Apis::Core::Hashable
      
        # Specifies the data and time at which Storage Transfer Service stops listening
        # for events from this stream. After this time, any transfers in progress will
        # complete, but no new transfers are initiated.
        # Corresponds to the JSON property `eventStreamExpirationTime`
        # @return [String]
        attr_accessor :event_stream_expiration_time
      
        # Specifies the date and time that Storage Transfer Service starts listening for
        # events from this stream. If no start time is specified or start time is in the
        # past, Storage Transfer Service starts listening immediately.
        # Corresponds to the JSON property `eventStreamStartTime`
        # @return [String]
        attr_accessor :event_stream_start_time
      
        # Required. Specifies a unique name of the resource such as AWS SQS ARN in the
        # form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription
        # resource name in the form 'projects/`project`/subscriptions/`sub`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_stream_expiration_time = args[:event_stream_expiration_time] if args.key?(:event_stream_expiration_time)
          @event_stream_start_time = args[:event_stream_start_time] if args.key?(:event_stream_start_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The identity of an Azure application through which Storage Transfer Service
      # can authenticate requests using Azure workload identity federation. Storage
      # Transfer Service can issue requests to Azure Storage through registered Azure
      # applications, eliminating the need to pass credentials to Storage Transfer
      # Service directly. To configure federated identity, see [Configure access to
      # Microsoft Azure Storage](https://cloud.google.com/storage-transfer/docs/source-
      # microsoft-azure#option_3_authenticate_using_federated_identity).
      class FederatedIdentityConfig
        include Google::Apis::Core::Hashable
      
        # Required. The client (application) ID of the application with federated
        # credentials.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Required. The tenant (directory) ID of the application with federated
        # credentials.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # In a GcsData resource, an object's name is the Cloud Storage object's name and
      # its "last modification time" refers to the object's `updated` property of
      # Cloud Storage objects, which changes when the content or the metadata of the
      # object is updated.
      class GcsData
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage bucket name. Must meet [Bucket Name Requirements](/
        # storage/docs/naming#requirements).
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Preview. Enables the transfer of managed folders between Cloud Storage buckets.
        # Set this option on the gcs_data_source. If set to true: - Managed folders in
        # the source bucket are transferred to the destination bucket. - Managed folders
        # in the destination bucket are overwritten. Other OVERWRITE options are not
        # supported. See [Transfer Cloud Storage managed folders](/storage-transfer/docs/
        # managed-folders).
        # Corresponds to the JSON property `managedFolderTransferEnabled`
        # @return [Boolean]
        attr_accessor :managed_folder_transfer_enabled
        alias_method :managed_folder_transfer_enabled?, :managed_folder_transfer_enabled
      
        # Root path to transfer objects. Must be an empty string or full path name that
        # ends with a '/'. This field is treated as an object prefix. As such, it should
        # generally not begin with a '/'. The root path value must meet [Object Name
        # Requirements](/storage/docs/naming#objectnames).
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @managed_folder_transfer_enabled = args[:managed_folder_transfer_enabled] if args.key?(:managed_folder_transfer_enabled)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Google service account
      class GoogleServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `accountEmail`
        # @return [String]
        attr_accessor :account_email
      
        # Unique identifier for the service account.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_email = args[:account_email] if args.key?(:account_email)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # An HdfsData resource specifies a path within an HDFS entity (e.g. a cluster).
      # All cluster-specific settings, such as namenodes and ports, are configured on
      # the transfer agents servicing requests, so HdfsData only contains the root
      # path to the data in our transfer.
      class HdfsData
        include Google::Apis::Core::Hashable
      
        # Root path to transfer files.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # An HttpData resource specifies a list of objects on the web to be transferred
      # over HTTP. The information of the objects to be transferred is contained in a
      # file referenced by a URL. The first line in the file must be `"TsvHttpData-1.0"
      # `, which specifies the format of the file. Subsequent lines specify the
      # information of the list of objects, one object per list entry. Each entry has
      # the following tab-delimited fields: * **HTTP URL** — The location of the
      # object. * **Length** — The size of the object in bytes. * **MD5** — The base64-
      # encoded MD5 hash of the object. For an example of a valid TSV file, see [
      # Transferring data from URLs](https://cloud.google.com/storage-transfer/docs/
      # create-url-list). When transferring data based on a URL list, keep the
      # following in mind: * When an object located at `http(s)://hostname:port/` is
      # transferred to a data sink, the name of the object at the data sink is `/`. *
      # If the specified size of an object does not match the actual size of the
      # object fetched, the object is not transferred. * If the specified MD5 does not
      # match the MD5 computed from the transferred bytes, the object transfer fails. *
      # Ensure that each URL you specify is publicly accessible. For example, in
      # Cloud Storage you can [share an object publicly] (/storage/docs/cloud-console#
      # _sharingdata) and get a link to it. * Storage Transfer Service obeys `robots.
      # txt` rules and requires the source HTTP server to support `Range` requests and
      # to return a `Content-Length` header in each response. * ObjectConditions have
      # no effect when filtering objects to transfer.
      class HttpData
        include Google::Apis::Core::Hashable
      
        # Required. The URL that points to the file that stores the object list entries.
        # This file must allow public access. The URL is either an HTTP/HTTPS address (e.
        # g. `https://example.com/urllist.tsv`) or a Cloud Storage path (e.g. `gs://my-
        # bucket/urllist.tsv`).
        # Corresponds to the JSON property `listUrl`
        # @return [String]
        attr_accessor :list_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_url = args[:list_url] if args.key?(:list_url)
        end
      end
      
      # Response from ListAgentPools.
      class ListAgentPoolsResponse
        include Google::Apis::Core::Hashable
      
        # A list of agent pools.
        # Corresponds to the JSON property `agentPools`
        # @return [Array<Google::Apis::StoragetransferV1::AgentPool>]
        attr_accessor :agent_pools
      
        # The list next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_pools = args[:agent_pools] if args.key?(:agent_pools)
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
        # @return [Array<Google::Apis::StoragetransferV1::Operation>]
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
      
      # Response from ListTransferJobs.
      class ListTransferJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of transfer jobs.
        # Corresponds to the JSON property `transferJobs`
        # @return [Array<Google::Apis::StoragetransferV1::TransferJob>]
        attr_accessor :transfer_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transfer_jobs = args[:transfer_jobs] if args.key?(:transfer_jobs)
        end
      end
      
      # Specifies the logging behavior for transfer operations. Logs can be sent to
      # Cloud Logging for all transfer types. See [Read transfer logs](https://cloud.
      # google.com/storage-transfer/docs/read-transfer-logs) for details.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # For PosixFilesystem transfers, enables [file system transfer logs](https://
        # cloud.google.com/storage-transfer/docs/on-prem-transfer-log-format) instead of,
        # or in addition to, Cloud Logging. This option ignores [LoggableAction] and [
        # LoggableActionState]. If these are set, Cloud Logging will also be enabled for
        # this transfer.
        # Corresponds to the JSON property `enableOnpremGcsTransferLogs`
        # @return [Boolean]
        attr_accessor :enable_onprem_gcs_transfer_logs
        alias_method :enable_onprem_gcs_transfer_logs?, :enable_onprem_gcs_transfer_logs
      
        # States in which `log_actions` are logged. If empty, no logs are generated.
        # Corresponds to the JSON property `logActionStates`
        # @return [Array<String>]
        attr_accessor :log_action_states
      
        # Specifies the actions to be logged. If empty, no logs are generated.
        # Corresponds to the JSON property `logActions`
        # @return [Array<String>]
        attr_accessor :log_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_onprem_gcs_transfer_logs = args[:enable_onprem_gcs_transfer_logs] if args.key?(:enable_onprem_gcs_transfer_logs)
          @log_action_states = args[:log_action_states] if args.key?(:log_action_states)
          @log_actions = args[:log_actions] if args.key?(:log_actions)
        end
      end
      
      # Specifies the metadata options for running a transfer.
      class MetadataOptions
        include Google::Apis::Core::Hashable
      
        # Specifies how each object's ACLs should be preserved for transfers between
        # Google Cloud Storage buckets. If unspecified, the default behavior is the same
        # as ACL_DESTINATION_BUCKET_DEFAULT.
        # Corresponds to the JSON property `acl`
        # @return [String]
        attr_accessor :acl
      
        # Specifies how each file's POSIX group ID (GID) attribute should be handled by
        # the transfer. By default, GID is not preserved. Only applicable to transfers
        # involving POSIX file systems, and ignored for other transfers.
        # Corresponds to the JSON property `gid`
        # @return [String]
        attr_accessor :gid
      
        # Specifies how each object's Cloud KMS customer-managed encryption key (CMEK)
        # is preserved for transfers between Google Cloud Storage buckets. If
        # unspecified, the default behavior is the same as
        # KMS_KEY_DESTINATION_BUCKET_DEFAULT.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Specifies how each file's mode attribute should be handled by the transfer. By
        # default, mode is not preserved. Only applicable to transfers involving POSIX
        # file systems, and ignored for other transfers.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Specifies the storage class to set on objects being transferred to Google
        # Cloud Storage buckets. If unspecified, the default behavior is the same as
        # STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        # Specifies how symlinks should be handled by the transfer. By default, symlinks
        # are not preserved. Only applicable to transfers involving POSIX file systems,
        # and ignored for other transfers.
        # Corresponds to the JSON property `symlink`
        # @return [String]
        attr_accessor :symlink
      
        # Specifies how each object's temporary hold status should be preserved for
        # transfers between Google Cloud Storage buckets. If unspecified, the default
        # behavior is the same as TEMPORARY_HOLD_PRESERVE.
        # Corresponds to the JSON property `temporaryHold`
        # @return [String]
        attr_accessor :temporary_hold
      
        # Specifies how each object's `timeCreated` metadata is preserved for transfers.
        # If unspecified, the default behavior is the same as TIME_CREATED_SKIP. This
        # behavior is supported for transfers to Cloud Storage buckets from Cloud
        # Storage, Amazon S3, S3-compatible storage, and Azure sources.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # Specifies how each file's POSIX user ID (UID) attribute should be handled by
        # the transfer. By default, UID is not preserved. Only applicable to transfers
        # involving POSIX file systems, and ignored for other transfers.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl = args[:acl] if args.key?(:acl)
          @gid = args[:gid] if args.key?(:gid)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @mode = args[:mode] if args.key?(:mode)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
          @symlink = args[:symlink] if args.key?(:symlink)
          @temporary_hold = args[:temporary_hold] if args.key?(:temporary_hold)
          @time_created = args[:time_created] if args.key?(:time_created)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Specification to configure notifications published to Pub/Sub. Notifications
      # are published to the customer-provided topic using the following `
      # PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"
      # payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the
      # project_id of the `TransferOperation` * `"transferJobName"`: the
      # transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the
      # name of the `TransferOperation` The `PubsubMessage.data` contains a
      # TransferOperation resource formatted according to the specified `PayloadFormat`
      # .
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # Event types for which a notification is desired. If empty, send notifications
        # for all event types.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<String>]
        attr_accessor :event_types
      
        # Required. The desired format of the notification message payloads.
        # Corresponds to the JSON property `payloadFormat`
        # @return [String]
        attr_accessor :payload_format
      
        # Required. The `Topic.name` of the Pub/Sub topic to which to publish
        # notifications. Must be of the format: `projects/`project`/topics/`topic``. Not
        # matching this format results in an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_types = args[:event_types] if args.key?(:event_types)
          @payload_format = args[:payload_format] if args.key?(:payload_format)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # Conditions that determine which objects are transferred. Applies only to Cloud
      # Data Sources such as S3, Azure, and Cloud Storage. The "last modification time"
      # refers to the time of the last change to the object's content or metadata —
      # specifically, this is the `updated` property of Cloud Storage objects, the `
      # LastModified` field of S3 objects, and the `Last-Modified` header of Azure
      # blobs. For S3 objects, the `LastModified` value is the time the object begins
      # uploading. If the object meets your "last modification time" criteria, but has
      # not finished uploading, the object is not transferred. See [Transfer from
      # Amazon S3 to Cloud Storage](https://cloud.google.com/storage-transfer/docs/
      # create-transfers/agentless/s3#transfer_options) for more information.
      # Transfers with a PosixFilesystem source or destination don't support `
      # ObjectConditions`.
      class ObjectConditions
        include Google::Apis::Core::Hashable
      
        # If you specify `exclude_prefixes`, Storage Transfer Service uses the items in
        # the `exclude_prefixes` array to determine which objects to exclude from a
        # transfer. Objects must not start with one of the matching `exclude_prefixes`
        # for inclusion in a transfer. The following are requirements of `
        # exclude_prefixes`: * Each exclude-prefix can contain any sequence of Unicode
        # characters, to a max length of 1024 bytes when UTF8-encoded, and must not
        # contain Carriage Return or Line Feed characters. Wildcard matching and regular
        # expression matching are not supported. * Each exclude-prefix must omit the
        # leading slash. For example, to exclude the object `s3://my-aws-bucket/logs/y=
        # 2015/requests.gz`, specify the exclude-prefix as `logs/y=2015/requests.gz`. *
        # None of the exclude-prefix values can be empty, if specified. * Each exclude-
        # prefix must exclude a distinct portion of the object namespace. No exclude-
        # prefix may be a prefix of another exclude-prefix. * If include_prefixes is
        # specified, then each exclude-prefix must start with the value of a path
        # explicitly included by `include_prefixes`. The max size of `exclude_prefixes`
        # is 1000. For more information, see [Filtering objects from transfers](/storage-
        # transfer/docs/filtering-objects-from-transfers).
        # Corresponds to the JSON property `excludePrefixes`
        # @return [Array<String>]
        attr_accessor :exclude_prefixes
      
        # If you specify `include_prefixes`, Storage Transfer Service uses the items in
        # the `include_prefixes` array to determine which objects to include in a
        # transfer. Objects must start with one of the matching `include_prefixes` for
        # inclusion in the transfer. If exclude_prefixes is specified, objects must not
        # start with any of the `exclude_prefixes` specified for inclusion in the
        # transfer. The following are requirements of `include_prefixes`: * Each include-
        # prefix can contain any sequence of Unicode characters, to a max length of 1024
        # bytes when UTF8-encoded, and must not contain Carriage Return or Line Feed
        # characters. Wildcard matching and regular expression matching are not
        # supported. * Each include-prefix must omit the leading slash. For example, to
        # include the object `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the
        # include-prefix as `logs/y=2015/requests.gz`. * None of the include-prefix
        # values can be empty, if specified. * Each include-prefix must include a
        # distinct portion of the object namespace. No include-prefix may be a prefix of
        # another include-prefix. The max size of `include_prefixes` is 1000. For more
        # information, see [Filtering objects from transfers](/storage-transfer/docs/
        # filtering-objects-from-transfers).
        # Corresponds to the JSON property `includePrefixes`
        # @return [Array<String>]
        attr_accessor :include_prefixes
      
        # If specified, only objects with a "last modification time" before this
        # timestamp and objects that don't have a "last modification time" are
        # transferred.
        # Corresponds to the JSON property `lastModifiedBefore`
        # @return [String]
        attr_accessor :last_modified_before
      
        # If specified, only objects with a "last modification time" on or after this
        # timestamp and objects that don't have a "last modification time" are
        # transferred. The `last_modified_since` and `last_modified_before` fields can
        # be used together for chunked data processing. For example, consider a script
        # that processes each day's worth of data at a time. For that you'd set each of
        # the fields as follows: * `last_modified_since` to the start of the day * `
        # last_modified_before` to the end of the day
        # Corresponds to the JSON property `lastModifiedSince`
        # @return [String]
        attr_accessor :last_modified_since
      
        # Ensures that objects are not transferred if a specific maximum time has
        # elapsed since the "last modification time". When a TransferOperation begins,
        # objects with a "last modification time" are transferred only if the elapsed
        # time between the start_time of the `TransferOperation`and the "last
        # modification time" of the object is less than the value of
        # max_time_elapsed_since_last_modification`. Objects that do not have a "last
        # modification time" are also transferred.
        # Corresponds to the JSON property `maxTimeElapsedSinceLastModification`
        # @return [String]
        attr_accessor :max_time_elapsed_since_last_modification
      
        # Ensures that objects are not transferred until a specific minimum time has
        # elapsed after the "last modification time". When a TransferOperation begins,
        # objects with a "last modification time" are transferred only if the elapsed
        # time between the start_time of the `TransferOperation` and the "last
        # modification time" of the object is equal to or greater than the value of
        # min_time_elapsed_since_last_modification`. Objects that do not have a "last
        # modification time" are also transferred.
        # Corresponds to the JSON property `minTimeElapsedSinceLastModification`
        # @return [String]
        attr_accessor :min_time_elapsed_since_last_modification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_prefixes = args[:exclude_prefixes] if args.key?(:exclude_prefixes)
          @include_prefixes = args[:include_prefixes] if args.key?(:include_prefixes)
          @last_modified_before = args[:last_modified_before] if args.key?(:last_modified_before)
          @last_modified_since = args[:last_modified_since] if args.key?(:last_modified_since)
          @max_time_elapsed_since_last_modification = args[:max_time_elapsed_since_last_modification] if args.key?(:max_time_elapsed_since_last_modification)
          @min_time_elapsed_since_last_modification = args[:min_time_elapsed_since_last_modification] if args.key?(:min_time_elapsed_since_last_modification)
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
        # @return [Google::Apis::StoragetransferV1::Status]
        attr_accessor :error
      
        # Represents the transfer operation object. To request a TransferOperation
        # object, use transferOperations.get.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned unique name. The format of `name` is `transferOperations/
        # some/unique/name`.
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
      
      # Request passed to PauseTransferOperation.
      class PauseTransferOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A POSIX filesystem resource.
      class PosixFilesystem
        include Google::Apis::Core::Hashable
      
        # Root directory path to the filesystem.
        # Corresponds to the JSON property `rootDirectory`
        # @return [String]
        attr_accessor :root_directory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @root_directory = args[:root_directory] if args.key?(:root_directory)
        end
      end
      
      # Specifies the configuration for a cross-bucket replication job. Cross-bucket
      # replication copies new or updated objects from a source Cloud Storage bucket
      # to a destination Cloud Storage bucket. Existing objects in the source bucket
      # are not copied by a new cross-bucket replication job.
      class ReplicationSpec
        include Google::Apis::Core::Hashable
      
        # In a GcsData resource, an object's name is the Cloud Storage object's name and
        # its "last modification time" refers to the object's `updated` property of
        # Cloud Storage objects, which changes when the content or the metadata of the
        # object is updated.
        # Corresponds to the JSON property `gcsDataSink`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_sink
      
        # In a GcsData resource, an object's name is the Cloud Storage object's name and
        # its "last modification time" refers to the object's `updated` property of
        # Cloud Storage objects, which changes when the content or the metadata of the
        # object is updated.
        # Corresponds to the JSON property `gcsDataSource`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_source
      
        # Conditions that determine which objects are transferred. Applies only to Cloud
        # Data Sources such as S3, Azure, and Cloud Storage. The "last modification time"
        # refers to the time of the last change to the object's content or metadata —
        # specifically, this is the `updated` property of Cloud Storage objects, the `
        # LastModified` field of S3 objects, and the `Last-Modified` header of Azure
        # blobs. For S3 objects, the `LastModified` value is the time the object begins
        # uploading. If the object meets your "last modification time" criteria, but has
        # not finished uploading, the object is not transferred. See [Transfer from
        # Amazon S3 to Cloud Storage](https://cloud.google.com/storage-transfer/docs/
        # create-transfers/agentless/s3#transfer_options) for more information.
        # Transfers with a PosixFilesystem source or destination don't support `
        # ObjectConditions`.
        # Corresponds to the JSON property `objectConditions`
        # @return [Google::Apis::StoragetransferV1::ObjectConditions]
        attr_accessor :object_conditions
      
        # TransferOptions define the actions to be performed on objects in a transfer.
        # Corresponds to the JSON property `transferOptions`
        # @return [Google::Apis::StoragetransferV1::TransferOptions]
        attr_accessor :transfer_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_data_sink = args[:gcs_data_sink] if args.key?(:gcs_data_sink)
          @gcs_data_source = args[:gcs_data_source] if args.key?(:gcs_data_source)
          @object_conditions = args[:object_conditions] if args.key?(:object_conditions)
          @transfer_options = args[:transfer_options] if args.key?(:transfer_options)
        end
      end
      
      # Request passed to ResumeTransferOperation.
      class ResumeTransferOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request passed to RunTransferJob.
      class RunTransferJobRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the Google Cloud project that owns the transfer job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # S3CompatibleMetadata contains the metadata fields that apply to the basic
      # types of S3-compatible data providers.
      class S3CompatibleMetadata
        include Google::Apis::Core::Hashable
      
        # Specifies the authentication and authorization method used by the storage
        # service. When not specified, Transfer Service will attempt to determine right
        # auth method to use.
        # Corresponds to the JSON property `authMethod`
        # @return [String]
        attr_accessor :auth_method
      
        # The Listing API to use for discovering objects. When not specified, Transfer
        # Service will attempt to determine the right API to use.
        # Corresponds to the JSON property `listApi`
        # @return [String]
        attr_accessor :list_api
      
        # Specifies the network protocol of the agent. When not specified, the default
        # value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Specifies the API request model used to call the storage service. When not
        # specified, the default value of RequestModel
        # REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
        # Corresponds to the JSON property `requestModel`
        # @return [String]
        attr_accessor :request_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_method = args[:auth_method] if args.key?(:auth_method)
          @list_api = args[:list_api] if args.key?(:list_api)
          @protocol = args[:protocol] if args.key?(:protocol)
          @request_model = args[:request_model] if args.key?(:request_model)
        end
      end
      
      # Transfers can be scheduled to recur or to run just once.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endTimeOfDay`
        # @return [Google::Apis::StoragetransferV1::TimeOfDay]
        attr_accessor :end_time_of_day
      
        # Interval between the start of each scheduled TransferOperation. If unspecified,
        # the default value is 24 hours. This value may not be less than 1 hour.
        # Corresponds to the JSON property `repeatInterval`
        # @return [String]
        attr_accessor :repeat_interval
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `scheduleEndDate`
        # @return [Google::Apis::StoragetransferV1::Date]
        attr_accessor :schedule_end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `scheduleStartDate`
        # @return [Google::Apis::StoragetransferV1::Date]
        attr_accessor :schedule_start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTimeOfDay`
        # @return [Google::Apis::StoragetransferV1::TimeOfDay]
        attr_accessor :start_time_of_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_of_day = args[:end_time_of_day] if args.key?(:end_time_of_day)
          @repeat_interval = args[:repeat_interval] if args.key?(:repeat_interval)
          @schedule_end_date = args[:schedule_end_date] if args.key?(:schedule_end_date)
          @schedule_start_date = args[:schedule_start_date] if args.key?(:schedule_start_date)
          @start_time_of_day = args[:start_time_of_day] if args.key?(:start_time_of_day)
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # A collection of counters that report the progress of a transfer operation.
      class TransferCounters
        include Google::Apis::Core::Hashable
      
        # Bytes that are copied to the data sink.
        # Corresponds to the JSON property `bytesCopiedToSink`
        # @return [Fixnum]
        attr_accessor :bytes_copied_to_sink
      
        # Bytes that are deleted from the data sink.
        # Corresponds to the JSON property `bytesDeletedFromSink`
        # @return [Fixnum]
        attr_accessor :bytes_deleted_from_sink
      
        # Bytes that are deleted from the data source.
        # Corresponds to the JSON property `bytesDeletedFromSource`
        # @return [Fixnum]
        attr_accessor :bytes_deleted_from_source
      
        # Bytes that failed to be deleted from the data sink.
        # Corresponds to the JSON property `bytesFailedToDeleteFromSink`
        # @return [Fixnum]
        attr_accessor :bytes_failed_to_delete_from_sink
      
        # Bytes found in the data source that are scheduled to be transferred, excluding
        # any that are filtered based on object conditions or skipped due to sync.
        # Corresponds to the JSON property `bytesFoundFromSource`
        # @return [Fixnum]
        attr_accessor :bytes_found_from_source
      
        # Bytes found only in the data sink that are scheduled to be deleted.
        # Corresponds to the JSON property `bytesFoundOnlyFromSink`
        # @return [Fixnum]
        attr_accessor :bytes_found_only_from_sink
      
        # Bytes in the data source that failed to be transferred or that failed to be
        # deleted after being transferred.
        # Corresponds to the JSON property `bytesFromSourceFailed`
        # @return [Fixnum]
        attr_accessor :bytes_from_source_failed
      
        # Bytes in the data source that are not transferred because they already exist
        # in the data sink.
        # Corresponds to the JSON property `bytesFromSourceSkippedBySync`
        # @return [Fixnum]
        attr_accessor :bytes_from_source_skipped_by_sync
      
        # For transfers involving PosixFilesystem only. Number of listing failures for
        # each directory found at the source. Potential failures when listing a
        # directory include permission failure or block failure. If listing a directory
        # fails, no files in the directory are transferred.
        # Corresponds to the JSON property `directoriesFailedToListFromSource`
        # @return [Fixnum]
        attr_accessor :directories_failed_to_list_from_source
      
        # For transfers involving PosixFilesystem only. Number of directories found
        # while listing. For example, if the root directory of the transfer is `base/`
        # and there are two other directories, `a/` and `b/` under this directory, the
        # count after listing `base/`, `base/a/` and `base/b/` is 3.
        # Corresponds to the JSON property `directoriesFoundFromSource`
        # @return [Fixnum]
        attr_accessor :directories_found_from_source
      
        # For transfers involving PosixFilesystem only. Number of successful listings
        # for each directory found at the source.
        # Corresponds to the JSON property `directoriesSuccessfullyListedFromSource`
        # @return [Fixnum]
        attr_accessor :directories_successfully_listed_from_source
      
        # Number of successfully cleaned up intermediate objects.
        # Corresponds to the JSON property `intermediateObjectsCleanedUp`
        # @return [Fixnum]
        attr_accessor :intermediate_objects_cleaned_up
      
        # Number of intermediate objects failed cleaned up.
        # Corresponds to the JSON property `intermediateObjectsFailedCleanedUp`
        # @return [Fixnum]
        attr_accessor :intermediate_objects_failed_cleaned_up
      
        # Objects that are copied to the data sink.
        # Corresponds to the JSON property `objectsCopiedToSink`
        # @return [Fixnum]
        attr_accessor :objects_copied_to_sink
      
        # Objects that are deleted from the data sink.
        # Corresponds to the JSON property `objectsDeletedFromSink`
        # @return [Fixnum]
        attr_accessor :objects_deleted_from_sink
      
        # Objects that are deleted from the data source.
        # Corresponds to the JSON property `objectsDeletedFromSource`
        # @return [Fixnum]
        attr_accessor :objects_deleted_from_source
      
        # Objects that failed to be deleted from the data sink.
        # Corresponds to the JSON property `objectsFailedToDeleteFromSink`
        # @return [Fixnum]
        attr_accessor :objects_failed_to_delete_from_sink
      
        # Objects found in the data source that are scheduled to be transferred,
        # excluding any that are filtered based on object conditions or skipped due to
        # sync.
        # Corresponds to the JSON property `objectsFoundFromSource`
        # @return [Fixnum]
        attr_accessor :objects_found_from_source
      
        # Objects found only in the data sink that are scheduled to be deleted.
        # Corresponds to the JSON property `objectsFoundOnlyFromSink`
        # @return [Fixnum]
        attr_accessor :objects_found_only_from_sink
      
        # Objects in the data source that failed to be transferred or that failed to be
        # deleted after being transferred.
        # Corresponds to the JSON property `objectsFromSourceFailed`
        # @return [Fixnum]
        attr_accessor :objects_from_source_failed
      
        # Objects in the data source that are not transferred because they already exist
        # in the data sink.
        # Corresponds to the JSON property `objectsFromSourceSkippedBySync`
        # @return [Fixnum]
        attr_accessor :objects_from_source_skipped_by_sync
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_copied_to_sink = args[:bytes_copied_to_sink] if args.key?(:bytes_copied_to_sink)
          @bytes_deleted_from_sink = args[:bytes_deleted_from_sink] if args.key?(:bytes_deleted_from_sink)
          @bytes_deleted_from_source = args[:bytes_deleted_from_source] if args.key?(:bytes_deleted_from_source)
          @bytes_failed_to_delete_from_sink = args[:bytes_failed_to_delete_from_sink] if args.key?(:bytes_failed_to_delete_from_sink)
          @bytes_found_from_source = args[:bytes_found_from_source] if args.key?(:bytes_found_from_source)
          @bytes_found_only_from_sink = args[:bytes_found_only_from_sink] if args.key?(:bytes_found_only_from_sink)
          @bytes_from_source_failed = args[:bytes_from_source_failed] if args.key?(:bytes_from_source_failed)
          @bytes_from_source_skipped_by_sync = args[:bytes_from_source_skipped_by_sync] if args.key?(:bytes_from_source_skipped_by_sync)
          @directories_failed_to_list_from_source = args[:directories_failed_to_list_from_source] if args.key?(:directories_failed_to_list_from_source)
          @directories_found_from_source = args[:directories_found_from_source] if args.key?(:directories_found_from_source)
          @directories_successfully_listed_from_source = args[:directories_successfully_listed_from_source] if args.key?(:directories_successfully_listed_from_source)
          @intermediate_objects_cleaned_up = args[:intermediate_objects_cleaned_up] if args.key?(:intermediate_objects_cleaned_up)
          @intermediate_objects_failed_cleaned_up = args[:intermediate_objects_failed_cleaned_up] if args.key?(:intermediate_objects_failed_cleaned_up)
          @objects_copied_to_sink = args[:objects_copied_to_sink] if args.key?(:objects_copied_to_sink)
          @objects_deleted_from_sink = args[:objects_deleted_from_sink] if args.key?(:objects_deleted_from_sink)
          @objects_deleted_from_source = args[:objects_deleted_from_source] if args.key?(:objects_deleted_from_source)
          @objects_failed_to_delete_from_sink = args[:objects_failed_to_delete_from_sink] if args.key?(:objects_failed_to_delete_from_sink)
          @objects_found_from_source = args[:objects_found_from_source] if args.key?(:objects_found_from_source)
          @objects_found_only_from_sink = args[:objects_found_only_from_sink] if args.key?(:objects_found_only_from_sink)
          @objects_from_source_failed = args[:objects_from_source_failed] if args.key?(:objects_from_source_failed)
          @objects_from_source_skipped_by_sync = args[:objects_from_source_skipped_by_sync] if args.key?(:objects_from_source_skipped_by_sync)
        end
      end
      
      # This resource represents the configuration of a transfer job that runs
      # periodically.
      class TransferJob
        include Google::Apis::Core::Hashable
      
        # Output only. The time that the transfer job was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. The time that the transfer job was deleted.
        # Corresponds to the JSON property `deletionTime`
        # @return [String]
        attr_accessor :deletion_time
      
        # A description provided by the user for the job. Its max length is 1024 bytes
        # when Unicode-encoded.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specifies the Event-driven transfer options. Event-driven transfers listen to
        # an event stream to transfer updated files.
        # Corresponds to the JSON property `eventStream`
        # @return [Google::Apis::StoragetransferV1::EventStream]
        attr_accessor :event_stream
      
        # Output only. The time that the transfer job was last modified.
        # Corresponds to the JSON property `lastModificationTime`
        # @return [String]
        attr_accessor :last_modification_time
      
        # The name of the most recently started TransferOperation of this JobConfig.
        # Present if a TransferOperation has been created for this JobConfig.
        # Corresponds to the JSON property `latestOperationName`
        # @return [String]
        attr_accessor :latest_operation_name
      
        # Specifies the logging behavior for transfer operations. Logs can be sent to
        # Cloud Logging for all transfer types. See [Read transfer logs](https://cloud.
        # google.com/storage-transfer/docs/read-transfer-logs) for details.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::StoragetransferV1::LoggingConfig]
        attr_accessor :logging_config
      
        # A unique name (within the transfer project) assigned when the job is created.
        # If this field is empty in a CreateTransferJobRequest, Storage Transfer Service
        # assigns a unique name. Otherwise, the specified name is used as the unique
        # name for this job. If the specified name is in use by a job, the creation
        # request fails with an ALREADY_EXISTS error. This name must start with `"
        # transferJobs/"` prefix and end with a letter or a number, and should be no
        # more than 128 characters. For transfers involving PosixFilesystem, this name
        # must start with `transferJobs/OPI` specifically. For all other transfer types,
        # this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example:
        # `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example:
        # `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely
        # on the enforcement of naming requirements involving OPI. Invalid job names
        # fail with an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specification to configure notifications published to Pub/Sub. Notifications
        # are published to the customer-provided topic using the following `
        # PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"
        # payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the
        # project_id of the `TransferOperation` * `"transferJobName"`: the
        # transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the
        # name of the `TransferOperation` The `PubsubMessage.data` contains a
        # TransferOperation resource formatted according to the specified `PayloadFormat`
        # .
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::StoragetransferV1::NotificationConfig]
        attr_accessor :notification_config
      
        # The ID of the Google Cloud project that owns the job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Specifies the configuration for a cross-bucket replication job. Cross-bucket
        # replication copies new or updated objects from a source Cloud Storage bucket
        # to a destination Cloud Storage bucket. Existing objects in the source bucket
        # are not copied by a new cross-bucket replication job.
        # Corresponds to the JSON property `replicationSpec`
        # @return [Google::Apis::StoragetransferV1::ReplicationSpec]
        attr_accessor :replication_spec
      
        # Transfers can be scheduled to recur or to run just once.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::StoragetransferV1::Schedule]
        attr_accessor :schedule
      
        # Optional. The user-managed service account to which to delegate service agent
        # permissions. You can grant Cloud Storage bucket permissions to this service
        # account instead of to the Transfer Service service agent. Format is `projects/-
        # /serviceAccounts/ACCOUNT_EMAIL_OR_UNIQUEID` Either the service account email (`
        # SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com`) or the unique ID (`
        # 123456789012345678901`) are accepted in the string. The `-` wildcard character
        # is required; replacing it with a project ID is invalid. See https://cloud.
        # google.com//storage-transfer/docs/delegate-service-agent-permissions for
        # required permissions.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Status of the job. This value MUST be specified for `CreateTransferJobRequests`
        # . **Note:** The effect of the new job status takes place during a subsequent
        # job run. For example, if you change the job status from ENABLED to DISABLED,
        # and an operation spawned by the transfer is running, the status change would
        # not affect the current operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Configuration for running a transfer.
        # Corresponds to the JSON property `transferSpec`
        # @return [Google::Apis::StoragetransferV1::TransferSpec]
        attr_accessor :transfer_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @deletion_time = args[:deletion_time] if args.key?(:deletion_time)
          @description = args[:description] if args.key?(:description)
          @event_stream = args[:event_stream] if args.key?(:event_stream)
          @last_modification_time = args[:last_modification_time] if args.key?(:last_modification_time)
          @latest_operation_name = args[:latest_operation_name] if args.key?(:latest_operation_name)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @project_id = args[:project_id] if args.key?(:project_id)
          @replication_spec = args[:replication_spec] if args.key?(:replication_spec)
          @schedule = args[:schedule] if args.key?(:schedule)
          @service_account = args[:service_account] if args.key?(:service_account)
          @status = args[:status] if args.key?(:status)
          @transfer_spec = args[:transfer_spec] if args.key?(:transfer_spec)
        end
      end
      
      # Specifies where the manifest is located.
      class TransferManifest
        include Google::Apis::Core::Hashable
      
        # Specifies the path to the manifest in Cloud Storage. The Google-managed
        # service account for the transfer must have `storage.objects.get` permission
        # for this object. An example path is `gs://bucket_name/path/manifest.csv`.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # A description of the execution of a transfer.
      class TransferOperation
        include Google::Apis::Core::Hashable
      
        # A collection of counters that report the progress of a transfer operation.
        # Corresponds to the JSON property `counters`
        # @return [Google::Apis::StoragetransferV1::TransferCounters]
        attr_accessor :counters
      
        # End time of this transfer execution.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Summarizes errors encountered with sample error log entries.
        # Corresponds to the JSON property `errorBreakdowns`
        # @return [Array<Google::Apis::StoragetransferV1::ErrorSummary>]
        attr_accessor :error_breakdowns
      
        # Specifies the logging behavior for transfer operations. Logs can be sent to
        # Cloud Logging for all transfer types. See [Read transfer logs](https://cloud.
        # google.com/storage-transfer/docs/read-transfer-logs) for details.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::StoragetransferV1::LoggingConfig]
        attr_accessor :logging_config
      
        # A globally unique ID assigned by the system.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specification to configure notifications published to Pub/Sub. Notifications
        # are published to the customer-provided topic using the following `
        # PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"
        # payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the
        # project_id of the `TransferOperation` * `"transferJobName"`: the
        # transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the
        # name of the `TransferOperation` The `PubsubMessage.data` contains a
        # TransferOperation resource formatted according to the specified `PayloadFormat`
        # .
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::StoragetransferV1::NotificationConfig]
        attr_accessor :notification_config
      
        # The ID of the Google Cloud project that owns the operation.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Start time of this transfer execution.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the transfer operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The name of the transfer job that triggers this transfer operation.
        # Corresponds to the JSON property `transferJobName`
        # @return [String]
        attr_accessor :transfer_job_name
      
        # Configuration for running a transfer.
        # Corresponds to the JSON property `transferSpec`
        # @return [Google::Apis::StoragetransferV1::TransferSpec]
        attr_accessor :transfer_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counters = args[:counters] if args.key?(:counters)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_breakdowns = args[:error_breakdowns] if args.key?(:error_breakdowns)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @project_id = args[:project_id] if args.key?(:project_id)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @transfer_job_name = args[:transfer_job_name] if args.key?(:transfer_job_name)
          @transfer_spec = args[:transfer_spec] if args.key?(:transfer_spec)
        end
      end
      
      # TransferOptions define the actions to be performed on objects in a transfer.
      class TransferOptions
        include Google::Apis::Core::Hashable
      
        # Whether objects should be deleted from the source after they are transferred
        # to the sink. **Note:** This option and delete_objects_unique_in_sink are
        # mutually exclusive.
        # Corresponds to the JSON property `deleteObjectsFromSourceAfterTransfer`
        # @return [Boolean]
        attr_accessor :delete_objects_from_source_after_transfer
        alias_method :delete_objects_from_source_after_transfer?, :delete_objects_from_source_after_transfer
      
        # Whether objects that exist only in the sink should be deleted. **Note:** This
        # option and delete_objects_from_source_after_transfer are mutually exclusive.
        # Corresponds to the JSON property `deleteObjectsUniqueInSink`
        # @return [Boolean]
        attr_accessor :delete_objects_unique_in_sink
        alias_method :delete_objects_unique_in_sink?, :delete_objects_unique_in_sink
      
        # Specifies the metadata options for running a transfer.
        # Corresponds to the JSON property `metadataOptions`
        # @return [Google::Apis::StoragetransferV1::MetadataOptions]
        attr_accessor :metadata_options
      
        # When to overwrite objects that already exist in the sink. The default is that
        # only objects that are different from the source are overwritten. If true, all
        # objects in the sink whose name matches an object in the source are overwritten
        # with the source object.
        # Corresponds to the JSON property `overwriteObjectsAlreadyExistingInSink`
        # @return [Boolean]
        attr_accessor :overwrite_objects_already_existing_in_sink
        alias_method :overwrite_objects_already_existing_in_sink?, :overwrite_objects_already_existing_in_sink
      
        # When to overwrite objects that already exist in the sink. If not set,
        # overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
        # Corresponds to the JSON property `overwriteWhen`
        # @return [String]
        attr_accessor :overwrite_when
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_objects_from_source_after_transfer = args[:delete_objects_from_source_after_transfer] if args.key?(:delete_objects_from_source_after_transfer)
          @delete_objects_unique_in_sink = args[:delete_objects_unique_in_sink] if args.key?(:delete_objects_unique_in_sink)
          @metadata_options = args[:metadata_options] if args.key?(:metadata_options)
          @overwrite_objects_already_existing_in_sink = args[:overwrite_objects_already_existing_in_sink] if args.key?(:overwrite_objects_already_existing_in_sink)
          @overwrite_when = args[:overwrite_when] if args.key?(:overwrite_when)
        end
      end
      
      # Configuration for running a transfer.
      class TransferSpec
        include Google::Apis::Core::Hashable
      
        # An AwsS3CompatibleData resource.
        # Corresponds to the JSON property `awsS3CompatibleDataSource`
        # @return [Google::Apis::StoragetransferV1::AwsS3CompatibleData]
        attr_accessor :aws_s3_compatible_data_source
      
        # An AwsS3Data resource can be a data source, but not a data sink. In an
        # AwsS3Data resource, an object's name is the S3 object's key name.
        # Corresponds to the JSON property `awsS3DataSource`
        # @return [Google::Apis::StoragetransferV1::AwsS3Data]
        attr_accessor :aws_s3_data_source
      
        # An AzureBlobStorageData resource can be a data source, but not a data sink. An
        # AzureBlobStorageData resource represents one Azure container. The storage
        # account determines the [Azure endpoint](https://docs.microsoft.com/en-us/azure/
        # storage/common/storage-create-storage-account#storage-account-endpoints). In
        # an AzureBlobStorageData resource, a blobs's name is the [Azure Blob Storage
        # blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/
        # naming-and-referencing-containers--blobs--and-metadata#blob-names).
        # Corresponds to the JSON property `azureBlobStorageDataSource`
        # @return [Google::Apis::StoragetransferV1::AzureBlobStorageData]
        attr_accessor :azure_blob_storage_data_source
      
        # In a GcsData resource, an object's name is the Cloud Storage object's name and
        # its "last modification time" refers to the object's `updated` property of
        # Cloud Storage objects, which changes when the content or the metadata of the
        # object is updated.
        # Corresponds to the JSON property `gcsDataSink`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_sink
      
        # In a GcsData resource, an object's name is the Cloud Storage object's name and
        # its "last modification time" refers to the object's `updated` property of
        # Cloud Storage objects, which changes when the content or the metadata of the
        # object is updated.
        # Corresponds to the JSON property `gcsDataSource`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_source
      
        # In a GcsData resource, an object's name is the Cloud Storage object's name and
        # its "last modification time" refers to the object's `updated` property of
        # Cloud Storage objects, which changes when the content or the metadata of the
        # object is updated.
        # Corresponds to the JSON property `gcsIntermediateDataLocation`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_intermediate_data_location
      
        # An HdfsData resource specifies a path within an HDFS entity (e.g. a cluster).
        # All cluster-specific settings, such as namenodes and ports, are configured on
        # the transfer agents servicing requests, so HdfsData only contains the root
        # path to the data in our transfer.
        # Corresponds to the JSON property `hdfsDataSource`
        # @return [Google::Apis::StoragetransferV1::HdfsData]
        attr_accessor :hdfs_data_source
      
        # An HttpData resource specifies a list of objects on the web to be transferred
        # over HTTP. The information of the objects to be transferred is contained in a
        # file referenced by a URL. The first line in the file must be `"TsvHttpData-1.0"
        # `, which specifies the format of the file. Subsequent lines specify the
        # information of the list of objects, one object per list entry. Each entry has
        # the following tab-delimited fields: * **HTTP URL** — The location of the
        # object. * **Length** — The size of the object in bytes. * **MD5** — The base64-
        # encoded MD5 hash of the object. For an example of a valid TSV file, see [
        # Transferring data from URLs](https://cloud.google.com/storage-transfer/docs/
        # create-url-list). When transferring data based on a URL list, keep the
        # following in mind: * When an object located at `http(s)://hostname:port/` is
        # transferred to a data sink, the name of the object at the data sink is `/`. *
        # If the specified size of an object does not match the actual size of the
        # object fetched, the object is not transferred. * If the specified MD5 does not
        # match the MD5 computed from the transferred bytes, the object transfer fails. *
        # Ensure that each URL you specify is publicly accessible. For example, in
        # Cloud Storage you can [share an object publicly] (/storage/docs/cloud-console#
        # _sharingdata) and get a link to it. * Storage Transfer Service obeys `robots.
        # txt` rules and requires the source HTTP server to support `Range` requests and
        # to return a `Content-Length` header in each response. * ObjectConditions have
        # no effect when filtering objects to transfer.
        # Corresponds to the JSON property `httpDataSource`
        # @return [Google::Apis::StoragetransferV1::HttpData]
        attr_accessor :http_data_source
      
        # Conditions that determine which objects are transferred. Applies only to Cloud
        # Data Sources such as S3, Azure, and Cloud Storage. The "last modification time"
        # refers to the time of the last change to the object's content or metadata —
        # specifically, this is the `updated` property of Cloud Storage objects, the `
        # LastModified` field of S3 objects, and the `Last-Modified` header of Azure
        # blobs. For S3 objects, the `LastModified` value is the time the object begins
        # uploading. If the object meets your "last modification time" criteria, but has
        # not finished uploading, the object is not transferred. See [Transfer from
        # Amazon S3 to Cloud Storage](https://cloud.google.com/storage-transfer/docs/
        # create-transfers/agentless/s3#transfer_options) for more information.
        # Transfers with a PosixFilesystem source or destination don't support `
        # ObjectConditions`.
        # Corresponds to the JSON property `objectConditions`
        # @return [Google::Apis::StoragetransferV1::ObjectConditions]
        attr_accessor :object_conditions
      
        # A POSIX filesystem resource.
        # Corresponds to the JSON property `posixDataSink`
        # @return [Google::Apis::StoragetransferV1::PosixFilesystem]
        attr_accessor :posix_data_sink
      
        # A POSIX filesystem resource.
        # Corresponds to the JSON property `posixDataSource`
        # @return [Google::Apis::StoragetransferV1::PosixFilesystem]
        attr_accessor :posix_data_source
      
        # Specifies the agent pool name associated with the posix data sink. When
        # unspecified, the default name is used.
        # Corresponds to the JSON property `sinkAgentPoolName`
        # @return [String]
        attr_accessor :sink_agent_pool_name
      
        # Specifies the agent pool name associated with the posix data source. When
        # unspecified, the default name is used.
        # Corresponds to the JSON property `sourceAgentPoolName`
        # @return [String]
        attr_accessor :source_agent_pool_name
      
        # Specifies where the manifest is located.
        # Corresponds to the JSON property `transferManifest`
        # @return [Google::Apis::StoragetransferV1::TransferManifest]
        attr_accessor :transfer_manifest
      
        # TransferOptions define the actions to be performed on objects in a transfer.
        # Corresponds to the JSON property `transferOptions`
        # @return [Google::Apis::StoragetransferV1::TransferOptions]
        attr_accessor :transfer_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_s3_compatible_data_source = args[:aws_s3_compatible_data_source] if args.key?(:aws_s3_compatible_data_source)
          @aws_s3_data_source = args[:aws_s3_data_source] if args.key?(:aws_s3_data_source)
          @azure_blob_storage_data_source = args[:azure_blob_storage_data_source] if args.key?(:azure_blob_storage_data_source)
          @gcs_data_sink = args[:gcs_data_sink] if args.key?(:gcs_data_sink)
          @gcs_data_source = args[:gcs_data_source] if args.key?(:gcs_data_source)
          @gcs_intermediate_data_location = args[:gcs_intermediate_data_location] if args.key?(:gcs_intermediate_data_location)
          @hdfs_data_source = args[:hdfs_data_source] if args.key?(:hdfs_data_source)
          @http_data_source = args[:http_data_source] if args.key?(:http_data_source)
          @object_conditions = args[:object_conditions] if args.key?(:object_conditions)
          @posix_data_sink = args[:posix_data_sink] if args.key?(:posix_data_sink)
          @posix_data_source = args[:posix_data_source] if args.key?(:posix_data_source)
          @sink_agent_pool_name = args[:sink_agent_pool_name] if args.key?(:sink_agent_pool_name)
          @source_agent_pool_name = args[:source_agent_pool_name] if args.key?(:source_agent_pool_name)
          @transfer_manifest = args[:transfer_manifest] if args.key?(:transfer_manifest)
          @transfer_options = args[:transfer_options] if args.key?(:transfer_options)
        end
      end
      
      # Request passed to UpdateTransferJob.
      class UpdateTransferJobRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the Google Cloud project that owns the job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # This resource represents the configuration of a transfer job that runs
        # periodically.
        # Corresponds to the JSON property `transferJob`
        # @return [Google::Apis::StoragetransferV1::TransferJob]
        attr_accessor :transfer_job
      
        # The field mask of the fields in `transferJob` that are to be updated in this
        # request. Fields in `transferJob` that can be updated are: description,
        # transfer_spec, notification_config, logging_config, and status. To update the `
        # transfer_spec` of the job, a complete transfer specification must be provided.
        # An incomplete specification missing any required fields is rejected with the
        # error INVALID_ARGUMENT.
        # Corresponds to the JSON property `updateTransferJobFieldMask`
        # @return [String]
        attr_accessor :update_transfer_job_field_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @transfer_job = args[:transfer_job] if args.key?(:transfer_job)
          @update_transfer_job_field_mask = args[:update_transfer_job_field_mask] if args.key?(:update_transfer_job_field_mask)
        end
      end
    end
  end
end
