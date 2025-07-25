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
    module DataformV1beta1
      
      class ActionErrorTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionIncrementalLoadMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionLoadConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionSimpleLoadMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionSqlDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assertion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelWorkflowInvocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelWorkflowInvocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodeCompilationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitAuthor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRepositoryChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRepositoryChangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitWorkspaceChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitWorkspaceChangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationResultAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeRepositoryAccessTokenStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataEncryptionState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataPreparation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataPreparationAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Declaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DirectoryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DirectorySearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchFileDiffResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchFileGitStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitAheadBehindResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchRemoteBranchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchRepositoryHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitRemoteSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyOverrideView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncrementalLoadMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncrementalTableConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallNpmPackagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallNpmPackagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InvocationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompilationResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReleaseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkflowConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkflowInvocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkspacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MakeDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MakeDirectoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveDirectoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotebookAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotebookRuntimeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullGitCommitsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullGitCommitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushGitCommitsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushGitCommitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryCompilationResultActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDirectoryContentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRepositoryDirectoryContentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryWorkflowInvocationActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadRepositoryFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Relation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDirectoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetWorkspaceChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetWorkspaceChangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledExecutionRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledReleaseRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleLoadMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshAuthenticationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Target
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UncommittedFileChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowInvocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowInvocationAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workspace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkspaceCompilationOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionErrorTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_days, as: 'retentionDays'
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class ActionIncrementalLoadMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
        end
      end
      
      class ActionLoadConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append, as: 'append', class: Google::Apis::DataformV1beta1::ActionSimpleLoadMode, decorator: Google::Apis::DataformV1beta1::ActionSimpleLoadMode::Representation
      
          property :maximum, as: 'maximum', class: Google::Apis::DataformV1beta1::ActionIncrementalLoadMode, decorator: Google::Apis::DataformV1beta1::ActionIncrementalLoadMode::Representation
      
          property :replace, as: 'replace', class: Google::Apis::DataformV1beta1::ActionSimpleLoadMode, decorator: Google::Apis::DataformV1beta1::ActionSimpleLoadMode::Representation
      
          property :unique, as: 'unique', class: Google::Apis::DataformV1beta1::ActionIncrementalLoadMode, decorator: Google::Apis::DataformV1beta1::ActionIncrementalLoadMode::Representation
      
        end
      end
      
      class ActionSimpleLoadMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ActionSqlDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_table, as: 'errorTable', class: Google::Apis::DataformV1beta1::ActionErrorTable, decorator: Google::Apis::DataformV1beta1::ActionErrorTable::Representation
      
          property :load_config, as: 'loadConfig', class: Google::Apis::DataformV1beta1::ActionLoadConfig, decorator: Google::Apis::DataformV1beta1::ActionLoadConfig::Representation
      
          property :query, as: 'query'
        end
      end
      
      class Assertion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :parent_action, as: 'parentAction', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          property :select_query, as: 'selectQuery'
          collection :tags, as: 'tags'
        end
      end
      
      class BigQueryAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :sql_script, as: 'sqlScript'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DataformV1beta1::Expr, decorator: Google::Apis::DataformV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelWorkflowInvocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelWorkflowInvocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CodeCompilationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion_schema, as: 'assertionSchema'
          property :builtin_assertion_name_prefix, as: 'builtinAssertionNamePrefix'
          property :database_suffix, as: 'databaseSuffix'
          property :default_database, as: 'defaultDatabase'
          property :default_location, as: 'defaultLocation'
          property :default_notebook_runtime_options, as: 'defaultNotebookRuntimeOptions', class: Google::Apis::DataformV1beta1::NotebookRuntimeOptions, decorator: Google::Apis::DataformV1beta1::NotebookRuntimeOptions::Representation
      
          property :default_schema, as: 'defaultSchema'
          property :schema_suffix, as: 'schemaSuffix'
          property :table_prefix, as: 'tablePrefix'
          hash :vars, as: 'vars'
        end
      end
      
      class ColumnDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_policy_tags, as: 'bigqueryPolicyTags'
          property :description, as: 'description'
          collection :path, as: 'path'
        end
      end
      
      class CommitAuthor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class CommitLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
          property :commit_sha, as: 'commitSha'
          property :commit_time, as: 'commitTime'
        end
      end
      
      class CommitMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
        end
      end
      
      class CommitRepositoryChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_metadata, as: 'commitMetadata', class: Google::Apis::DataformV1beta1::CommitMetadata, decorator: Google::Apis::DataformV1beta1::CommitMetadata::Representation
      
          hash :file_operations, as: 'fileOperations', class: Google::Apis::DataformV1beta1::FileOperation, decorator: Google::Apis::DataformV1beta1::FileOperation::Representation
      
          property :required_head_commit_sha, as: 'requiredHeadCommitSha'
        end
      end
      
      class CommitRepositoryChangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_sha, as: 'commitSha'
        end
      end
      
      class CommitWorkspaceChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
          collection :paths, as: 'paths'
        end
      end
      
      class CommitWorkspaceChangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompilationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_target, as: 'actionTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :message, as: 'message'
          property :path, as: 'path'
          property :stack, as: 'stack'
        end
      end
      
      class CompilationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_compilation_config, as: 'codeCompilationConfig', class: Google::Apis::DataformV1beta1::CodeCompilationConfig, decorator: Google::Apis::DataformV1beta1::CodeCompilationConfig::Representation
      
          collection :compilation_errors, as: 'compilationErrors', class: Google::Apis::DataformV1beta1::CompilationError, decorator: Google::Apis::DataformV1beta1::CompilationError::Representation
      
          property :create_time, as: 'createTime'
          property :data_encryption_state, as: 'dataEncryptionState', class: Google::Apis::DataformV1beta1::DataEncryptionState, decorator: Google::Apis::DataformV1beta1::DataEncryptionState::Representation
      
          property :dataform_core_version, as: 'dataformCoreVersion'
          property :git_commitish, as: 'gitCommitish'
          property :internal_metadata, as: 'internalMetadata'
          property :name, as: 'name'
          property :release_config, as: 'releaseConfig'
          property :resolved_git_commit_sha, as: 'resolvedGitCommitSha'
          property :workspace, as: 'workspace'
        end
      end
      
      class CompilationResultAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion, as: 'assertion', class: Google::Apis::DataformV1beta1::Assertion, decorator: Google::Apis::DataformV1beta1::Assertion::Representation
      
          property :canonical_target, as: 'canonicalTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :data_preparation, as: 'dataPreparation', class: Google::Apis::DataformV1beta1::DataPreparation, decorator: Google::Apis::DataformV1beta1::DataPreparation::Representation
      
          property :declaration, as: 'declaration', class: Google::Apis::DataformV1beta1::Declaration, decorator: Google::Apis::DataformV1beta1::Declaration::Representation
      
          property :file_path, as: 'filePath'
          property :internal_metadata, as: 'internalMetadata'
          property :notebook, as: 'notebook', class: Google::Apis::DataformV1beta1::Notebook, decorator: Google::Apis::DataformV1beta1::Notebook::Representation
      
          property :operations, as: 'operations', class: Google::Apis::DataformV1beta1::Operations, decorator: Google::Apis::DataformV1beta1::Operations::Representation
      
          property :relation, as: 'relation', class: Google::Apis::DataformV1beta1::Relation, decorator: Google::Apis::DataformV1beta1::Relation::Representation
      
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class ComputeRepositoryAccessTokenStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_status, as: 'tokenStatus'
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_kms_key_name, as: 'defaultKmsKeyName'
          property :name, as: 'name'
        end
      end
      
      class DataEncryptionState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_version_name, as: 'kmsKeyVersionName'
        end
      end
      
      class DataPreparation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents_sql, as: 'contentsSql', class: Google::Apis::DataformV1beta1::SqlDefinition, decorator: Google::Apis::DataformV1beta1::SqlDefinition::Representation
      
          property :contents_yaml, as: 'contentsYaml'
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          collection :tags, as: 'tags'
        end
      end
      
      class DataPreparationAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents_sql, as: 'contentsSql', class: Google::Apis::DataformV1beta1::ActionSqlDefinition, decorator: Google::Apis::DataformV1beta1::ActionSqlDefinition::Representation
      
          property :contents_yaml, as: 'contentsYaml'
          property :generated_sql, as: 'generatedSql'
          property :job_id, as: 'jobId'
        end
      end
      
      class Declaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
        end
      end
      
      class DeleteFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DirectoryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory, as: 'directory'
          property :file, as: 'file'
        end
      end
      
      class DirectorySearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ErrorTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_days, as: 'retentionDays'
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class FetchFileDiffResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_diff, as: 'formattedDiff'
        end
      end
      
      class FetchFileGitStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uncommitted_file_changes, as: 'uncommittedFileChanges', class: Google::Apis::DataformV1beta1::UncommittedFileChange, decorator: Google::Apis::DataformV1beta1::UncommittedFileChange::Representation
      
        end
      end
      
      class FetchGitAheadBehindResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commits_ahead, as: 'commitsAhead'
          property :commits_behind, as: 'commitsBehind'
        end
      end
      
      class FetchRemoteBranchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :branches, as: 'branches'
        end
      end
      
      class FetchRepositoryHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commits, as: 'commits', class: Google::Apis::DataformV1beta1::CommitLogEntry, decorator: Google::Apis::DataformV1beta1::CommitLogEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FileOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_file, as: 'deleteFile', class: Google::Apis::DataformV1beta1::DeleteFile, decorator: Google::Apis::DataformV1beta1::DeleteFile::Representation
      
          property :write_file, as: 'writeFile', class: Google::Apis::DataformV1beta1::WriteFile, decorator: Google::Apis::DataformV1beta1::WriteFile::Representation
      
        end
      end
      
      class FileSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GitRemoteSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_token_secret_version, as: 'authenticationTokenSecretVersion'
          property :default_branch, as: 'defaultBranch'
          property :ssh_authentication_config, as: 'sshAuthenticationConfig', class: Google::Apis::DataformV1beta1::SshAuthenticationConfig, decorator: Google::Apis::DataformV1beta1::SshAuthenticationConfig::Representation
      
          property :token_status, as: 'tokenStatus'
          property :url, as: 'url'
        end
      end
      
      class IamPolicyOverrideView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam_policy_name, as: 'iamPolicyName', class: Google::Apis::DataformV1beta1::PolicyName, decorator: Google::Apis::DataformV1beta1::PolicyName::Representation
      
          property :is_active, as: 'isActive'
        end
      end
      
      class IncrementalLoadMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
        end
      end
      
      class IncrementalTableConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :incremental_post_operations, as: 'incrementalPostOperations'
          collection :incremental_pre_operations, as: 'incrementalPreOperations'
          property :incremental_select_query, as: 'incrementalSelectQuery'
          property :refresh_disabled, as: 'refreshDisabled'
          collection :unique_key_parts, as: 'uniqueKeyParts'
          property :update_partition_filter, as: 'updatePartitionFilter'
        end
      end
      
      class InstallNpmPackagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InstallNpmPackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class InvocationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_refresh_incremental_tables_enabled, as: 'fullyRefreshIncrementalTablesEnabled'
          collection :included_tags, as: 'includedTags'
          collection :included_targets, as: 'includedTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :service_account, as: 'serviceAccount'
          property :transitive_dependencies_included, as: 'transitiveDependenciesIncluded'
          property :transitive_dependents_included, as: 'transitiveDependentsIncluded'
        end
      end
      
      class ListCompilationResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compilation_results, as: 'compilationResults', class: Google::Apis::DataformV1beta1::CompilationResult, decorator: Google::Apis::DataformV1beta1::CompilationResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DataformV1beta1::Location, decorator: Google::Apis::DataformV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReleaseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :release_configs, as: 'releaseConfigs', class: Google::Apis::DataformV1beta1::ReleaseConfig, decorator: Google::Apis::DataformV1beta1::ReleaseConfig::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::DataformV1beta1::Repository, decorator: Google::Apis::DataformV1beta1::Repository::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListWorkflowConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workflow_configs, as: 'workflowConfigs', class: Google::Apis::DataformV1beta1::WorkflowConfig, decorator: Google::Apis::DataformV1beta1::WorkflowConfig::Representation
      
        end
      end
      
      class ListWorkflowInvocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workflow_invocations, as: 'workflowInvocations', class: Google::Apis::DataformV1beta1::WorkflowInvocation, decorator: Google::Apis::DataformV1beta1::WorkflowInvocation::Representation
      
        end
      end
      
      class ListWorkspacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workspaces, as: 'workspaces', class: Google::Apis::DataformV1beta1::Workspace, decorator: Google::Apis::DataformV1beta1::Workspace::Representation
      
        end
      end
      
      class LoadConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append, as: 'append', class: Google::Apis::DataformV1beta1::SimpleLoadMode, decorator: Google::Apis::DataformV1beta1::SimpleLoadMode::Representation
      
          property :maximum, as: 'maximum', class: Google::Apis::DataformV1beta1::IncrementalLoadMode, decorator: Google::Apis::DataformV1beta1::IncrementalLoadMode::Representation
      
          property :replace, as: 'replace', class: Google::Apis::DataformV1beta1::SimpleLoadMode, decorator: Google::Apis::DataformV1beta1::SimpleLoadMode::Representation
      
          property :unique, as: 'unique', class: Google::Apis::DataformV1beta1::IncrementalLoadMode, decorator: Google::Apis::DataformV1beta1::IncrementalLoadMode::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MakeDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class MakeDirectoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MoveDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_path, as: 'newPath'
          property :path, as: 'path'
        end
      end
      
      class MoveDirectoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MoveFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_path, as: 'newPath'
          property :path, as: 'path'
        end
      end
      
      class MoveFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Notebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          collection :tags, as: 'tags'
        end
      end
      
      class NotebookAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :job_id, as: 'jobId'
        end
      end
      
      class NotebookRuntimeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ai_platform_notebook_runtime_template, as: 'aiPlatformNotebookRuntimeTemplate'
          property :gcs_output_bucket, as: 'gcsOutputBucket'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Operations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :has_output, as: 'hasOutput'
          collection :queries, as: 'queries'
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          collection :tags, as: 'tags'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DataformV1beta1::Binding, decorator: Google::Apis::DataformV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :region, as: 'region'
          property :type, as: 'type'
        end
      end
      
      class PullGitCommitsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :remote_branch, as: 'remoteBranch'
        end
      end
      
      class PullGitCommitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PushGitCommitsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remote_branch, as: 'remoteBranch'
        end
      end
      
      class PushGitCommitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class QueryCompilationResultActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compilation_result_actions, as: 'compilationResultActions', class: Google::Apis::DataformV1beta1::CompilationResultAction, decorator: Google::Apis::DataformV1beta1::CompilationResultAction::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryDirectoryContentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_entries, as: 'directoryEntries', class: Google::Apis::DataformV1beta1::DirectoryEntry, decorator: Google::Apis::DataformV1beta1::DirectoryEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryRepositoryDirectoryContentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_entries, as: 'directoryEntries', class: Google::Apis::DataformV1beta1::DirectoryEntry, decorator: Google::Apis::DataformV1beta1::DirectoryEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryWorkflowInvocationActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workflow_invocation_actions, as: 'workflowInvocationActions', class: Google::Apis::DataformV1beta1::WorkflowInvocationAction, decorator: Google::Apis::DataformV1beta1::WorkflowInvocationAction::Representation
      
        end
      end
      
      class ReadFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_contents, :base64 => true, as: 'fileContents'
        end
      end
      
      class ReadRepositoryFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
        end
      end
      
      class Relation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_options, as: 'additionalOptions'
          collection :cluster_expressions, as: 'clusterExpressions'
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :incremental_table_config, as: 'incrementalTableConfig', class: Google::Apis::DataformV1beta1::IncrementalTableConfig, decorator: Google::Apis::DataformV1beta1::IncrementalTableConfig::Representation
      
          property :partition_expiration_days, as: 'partitionExpirationDays'
          property :partition_expression, as: 'partitionExpression'
          collection :post_operations, as: 'postOperations'
          collection :pre_operations, as: 'preOperations'
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          property :relation_type, as: 'relationType'
          property :require_partition_filter, as: 'requirePartitionFilter'
          property :select_query, as: 'selectQuery'
          collection :tags, as: 'tags'
        end
      end
      
      class RelationDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :bigquery_labels, as: 'bigqueryLabels'
          collection :columns, as: 'columns', class: Google::Apis::DataformV1beta1::ColumnDescriptor, decorator: Google::Apis::DataformV1beta1::ColumnDescriptor::Representation
      
          property :description, as: 'description'
        end
      end
      
      class ReleaseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_compilation_config, as: 'codeCompilationConfig', class: Google::Apis::DataformV1beta1::CodeCompilationConfig, decorator: Google::Apis::DataformV1beta1::CodeCompilationConfig::Representation
      
          property :cron_schedule, as: 'cronSchedule'
          property :disabled, as: 'disabled'
          property :git_commitish, as: 'gitCommitish'
          property :internal_metadata, as: 'internalMetadata'
          property :name, as: 'name'
          collection :recent_scheduled_release_records, as: 'recentScheduledReleaseRecords', class: Google::Apis::DataformV1beta1::ScheduledReleaseRecord, decorator: Google::Apis::DataformV1beta1::ScheduledReleaseRecord::Representation
      
          property :release_compilation_result, as: 'releaseCompilationResult'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class RemoveDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class RemoveDirectoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RemoveFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class RemoveFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Repository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_encryption_state, as: 'dataEncryptionState', class: Google::Apis::DataformV1beta1::DataEncryptionState, decorator: Google::Apis::DataformV1beta1::DataEncryptionState::Representation
      
          property :display_name, as: 'displayName'
          property :git_remote_settings, as: 'gitRemoteSettings', class: Google::Apis::DataformV1beta1::GitRemoteSettings, decorator: Google::Apis::DataformV1beta1::GitRemoteSettings::Representation
      
          property :internal_metadata, as: 'internalMetadata'
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :npmrc_environment_variables_secret_version, as: 'npmrcEnvironmentVariablesSecretVersion'
          property :service_account, as: 'serviceAccount'
          property :set_authenticated_user_admin, as: 'setAuthenticatedUserAdmin'
          property :workspace_compilation_overrides, as: 'workspaceCompilationOverrides', class: Google::Apis::DataformV1beta1::WorkspaceCompilationOverrides, decorator: Google::Apis::DataformV1beta1::WorkspaceCompilationOverrides::Representation
      
        end
      end
      
      class ResetWorkspaceChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clean, as: 'clean'
          collection :paths, as: 'paths'
        end
      end
      
      class ResetWorkspaceChangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ScheduledExecutionRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_status, as: 'errorStatus', class: Google::Apis::DataformV1beta1::Status, decorator: Google::Apis::DataformV1beta1::Status::Representation
      
          property :execution_time, as: 'executionTime'
          property :workflow_invocation, as: 'workflowInvocation'
        end
      end
      
      class ScheduledReleaseRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compilation_result, as: 'compilationResult'
          property :error_status, as: 'errorStatus', class: Google::Apis::DataformV1beta1::Status, decorator: Google::Apis::DataformV1beta1::Status::Representation
      
          property :release_time, as: 'releaseTime'
        end
      end
      
      class SearchFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :search_results, as: 'searchResults', class: Google::Apis::DataformV1beta1::SearchResult, decorator: Google::Apis::DataformV1beta1::SearchResult::Representation
      
        end
      end
      
      class SearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory, as: 'directory', class: Google::Apis::DataformV1beta1::DirectorySearchResult, decorator: Google::Apis::DataformV1beta1::DirectorySearchResult::Representation
      
          property :file, as: 'file', class: Google::Apis::DataformV1beta1::FileSearchResult, decorator: Google::Apis::DataformV1beta1::FileSearchResult::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DataformV1beta1::Policy, decorator: Google::Apis::DataformV1beta1::Policy::Representation
      
        end
      end
      
      class SimpleLoadMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SqlDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_table, as: 'errorTable', class: Google::Apis::DataformV1beta1::ErrorTable, decorator: Google::Apis::DataformV1beta1::ErrorTable::Representation
      
          property :load, as: 'load', class: Google::Apis::DataformV1beta1::LoadConfig, decorator: Google::Apis::DataformV1beta1::LoadConfig::Representation
      
          property :query, as: 'query'
        end
      end
      
      class SshAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_public_key, as: 'hostPublicKey'
          property :user_private_key_secret_version, as: 'userPrivateKeySecretVersion'
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
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :name, as: 'name'
          property :schema, as: 'schema'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UncommittedFileChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :state, as: 'state'
        end
      end
      
      class WorkflowConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :cron_schedule, as: 'cronSchedule'
          property :disabled, as: 'disabled'
          property :internal_metadata, as: 'internalMetadata'
          property :invocation_config, as: 'invocationConfig', class: Google::Apis::DataformV1beta1::InvocationConfig, decorator: Google::Apis::DataformV1beta1::InvocationConfig::Representation
      
          property :name, as: 'name'
          collection :recent_scheduled_execution_records, as: 'recentScheduledExecutionRecords', class: Google::Apis::DataformV1beta1::ScheduledExecutionRecord, decorator: Google::Apis::DataformV1beta1::ScheduledExecutionRecord::Representation
      
          property :release_config, as: 'releaseConfig'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class WorkflowInvocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compilation_result, as: 'compilationResult'
          property :data_encryption_state, as: 'dataEncryptionState', class: Google::Apis::DataformV1beta1::DataEncryptionState, decorator: Google::Apis::DataformV1beta1::DataEncryptionState::Representation
      
          property :internal_metadata, as: 'internalMetadata'
          property :invocation_config, as: 'invocationConfig', class: Google::Apis::DataformV1beta1::InvocationConfig, decorator: Google::Apis::DataformV1beta1::InvocationConfig::Representation
      
          property :invocation_timing, as: 'invocationTiming', class: Google::Apis::DataformV1beta1::Interval, decorator: Google::Apis::DataformV1beta1::Interval::Representation
      
          property :name, as: 'name'
          property :resolved_compilation_result, as: 'resolvedCompilationResult'
          property :state, as: 'state'
          property :workflow_config, as: 'workflowConfig'
        end
      end
      
      class WorkflowInvocationAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_action, as: 'bigqueryAction', class: Google::Apis::DataformV1beta1::BigQueryAction, decorator: Google::Apis::DataformV1beta1::BigQueryAction::Representation
      
          property :canonical_target, as: 'canonicalTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :data_preparation_action, as: 'dataPreparationAction', class: Google::Apis::DataformV1beta1::DataPreparationAction, decorator: Google::Apis::DataformV1beta1::DataPreparationAction::Representation
      
          property :failure_reason, as: 'failureReason'
          property :internal_metadata, as: 'internalMetadata'
          property :invocation_timing, as: 'invocationTiming', class: Google::Apis::DataformV1beta1::Interval, decorator: Google::Apis::DataformV1beta1::Interval::Representation
      
          property :notebook_action, as: 'notebookAction', class: Google::Apis::DataformV1beta1::NotebookAction, decorator: Google::Apis::DataformV1beta1::NotebookAction::Representation
      
          property :state, as: 'state'
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class Workspace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_encryption_state, as: 'dataEncryptionState', class: Google::Apis::DataformV1beta1::DataEncryptionState, decorator: Google::Apis::DataformV1beta1::DataEncryptionState::Representation
      
          property :internal_metadata, as: 'internalMetadata'
          property :name, as: 'name'
        end
      end
      
      class WorkspaceCompilationOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_database, as: 'defaultDatabase'
          property :schema_suffix, as: 'schemaSuffix'
          property :table_prefix, as: 'tablePrefix'
        end
      end
      
      class WriteFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
        end
      end
      
      class WriteFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :path, as: 'path'
        end
      end
      
      class WriteFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
