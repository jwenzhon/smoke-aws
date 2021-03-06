// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// CloudformationModelTypes.swift
// CloudformationModel
//

import Foundation

/**
 Type definition for the Account field.
 */
public typealias Account = String

/**
 Enumeration restricting the values of the AccountGateStatus field.
 */
public enum AccountGateStatus: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case skipped = "SKIPPED"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AccountGateStatus = .failed
}

/**
 Type definition for the AccountGateStatusReason field.
 */
public typealias AccountGateStatusReason = String

/**
 Type definition for the AccountLimitList field.
 */
public typealias AccountLimitList = [AccountLimit]

/**
 Type definition for the AccountList field.
 */
public typealias AccountList = [Account]

/**
 Type definition for the AllowedValue field.
 */
public typealias AllowedValue = String

/**
 Type definition for the AllowedValues field.
 */
public typealias AllowedValues = [AllowedValue]

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Type definition for the AutoDeploymentNullable field.
 */
public typealias AutoDeploymentNullable = Bool

/**
 Type definition for the BoxedInteger field.
 */
public typealias BoxedInteger = Int

/**
 Type definition for the BoxedMaxResults field.
 */
public typealias BoxedMaxResults = Int

/**
 Type definition for the Capabilities field.
 */
public typealias Capabilities = [Capability]

/**
 Type definition for the CapabilitiesReason field.
 */
public typealias CapabilitiesReason = String

/**
 Enumeration restricting the values of the Capability field.
 */
public enum Capability: String, Codable, CustomStringConvertible {
    case capabilityAutoExpand = "CAPABILITY_AUTO_EXPAND"
    case capabilityIam = "CAPABILITY_IAM"
    case capabilityNamedIam = "CAPABILITY_NAMED_IAM"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Capability = .capabilityAutoExpand
}

/**
 Type definition for the CausingEntity field.
 */
public typealias CausingEntity = String

/**
 Enumeration restricting the values of the ChangeAction field.
 */
public enum ChangeAction: String, Codable, CustomStringConvertible {
    case add = "Add"
    case `import` = "Import"
    case modify = "Modify"
    case remove = "Remove"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChangeAction = .add
}

/**
 Type definition for the ChangeSetId field.
 */
public typealias ChangeSetId = String

/**
 Type definition for the ChangeSetName field.
 */
public typealias ChangeSetName = String

/**
 Type definition for the ChangeSetNameOrId field.
 */
public typealias ChangeSetNameOrId = String

/**
 Enumeration restricting the values of the ChangeSetStatus field.
 */
public enum ChangeSetStatus: String, Codable, CustomStringConvertible {
    case createComplete = "CREATE_COMPLETE"
    case createInProgress = "CREATE_IN_PROGRESS"
    case createPending = "CREATE_PENDING"
    case deleteComplete = "DELETE_COMPLETE"
    case failed = "FAILED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChangeSetStatus = .createComplete
}

/**
 Type definition for the ChangeSetStatusReason field.
 */
public typealias ChangeSetStatusReason = String

/**
 Type definition for the ChangeSetSummaries field.
 */
public typealias ChangeSetSummaries = [ChangeSetSummary]

/**
 Enumeration restricting the values of the ChangeSetType field.
 */
public enum ChangeSetType: String, Codable, CustomStringConvertible {
    case create = "CREATE"
    case `import` = "IMPORT"
    case update = "UPDATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChangeSetType = .create
}

/**
 Enumeration restricting the values of the ChangeSource field.
 */
public enum ChangeSource: String, Codable, CustomStringConvertible {
    case automatic = "Automatic"
    case directModification = "DirectModification"
    case parameterReference = "ParameterReference"
    case resourceAttribute = "ResourceAttribute"
    case resourceReference = "ResourceReference"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChangeSource = .automatic
}

/**
 Enumeration restricting the values of the ChangeType field.
 */
public enum ChangeType: String, Codable, CustomStringConvertible {
    case resource = "Resource"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChangeType = .resource
}

/**
 Type definition for the Changes field.
 */
public typealias Changes = [Change]

/**
 Type definition for the ClientRequestToken field.
 */
public typealias ClientRequestToken = String

/**
 Type definition for the ClientToken field.
 */
public typealias ClientToken = String

/**
 Type definition for the CreationTime field.
 */
public typealias CreationTime = String

/**
 Type definition for the DeletionTime field.
 */
public typealias DeletionTime = String

/**
 Enumeration restricting the values of the DeprecatedStatus field.
 */
public enum DeprecatedStatus: String, Codable, CustomStringConvertible {
    case deprecated = "DEPRECATED"
    case live = "LIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeprecatedStatus = .deprecated
}

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Enumeration restricting the values of the DifferenceType field.
 */
public enum DifferenceType: String, Codable, CustomStringConvertible {
    case add = "ADD"
    case notEqual = "NOT_EQUAL"
    case remove = "REMOVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DifferenceType = .add
}

/**
 Type definition for the DisableRollback field.
 */
public typealias DisableRollback = Bool

/**
 Type definition for the DriftedStackInstancesCount field.
 */
public typealias DriftedStackInstancesCount = Int

/**
 Type definition for the EnableTerminationProtection field.
 */
public typealias EnableTerminationProtection = Bool

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Enumeration restricting the values of the EvaluationType field.
 */
public enum EvaluationType: String, Codable, CustomStringConvertible {
    case dynamic = "Dynamic"
    case `static` = "Static"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EvaluationType = .dynamic
}

/**
 Type definition for the EventId field.
 */
public typealias EventId = String

/**
 Type definition for the ExecutionRoleName field.
 */
public typealias ExecutionRoleName = String

/**
 Enumeration restricting the values of the ExecutionStatus field.
 */
public enum ExecutionStatus: String, Codable, CustomStringConvertible {
    case available = "AVAILABLE"
    case executeComplete = "EXECUTE_COMPLETE"
    case executeFailed = "EXECUTE_FAILED"
    case executeInProgress = "EXECUTE_IN_PROGRESS"
    case obsolete = "OBSOLETE"
    case unavailable = "UNAVAILABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExecutionStatus = .available
}

/**
 Type definition for the ExportName field.
 */
public typealias ExportName = String

/**
 Type definition for the ExportValue field.
 */
public typealias ExportValue = String

/**
 Type definition for the Exports field.
 */
public typealias Exports = [Export]

/**
 Type definition for the FailedStackInstancesCount field.
 */
public typealias FailedStackInstancesCount = Int

/**
 Type definition for the FailureToleranceCount field.
 */
public typealias FailureToleranceCount = Int

/**
 Type definition for the FailureTolerancePercentage field.
 */
public typealias FailureTolerancePercentage = Int

/**
 Enumeration restricting the values of the HandlerErrorCode field.
 */
public enum HandlerErrorCode: String, Codable, CustomStringConvertible {
    case accessDenied = "AccessDenied"
    case alreadyExists = "AlreadyExists"
    case generalServiceException = "GeneralServiceException"
    case internalFailure = "InternalFailure"
    case invalidCredentials = "InvalidCredentials"
    case invalidRequest = "InvalidRequest"
    case networkFailure = "NetworkFailure"
    case notFound = "NotFound"
    case notStabilized = "NotStabilized"
    case notUpdatable = "NotUpdatable"
    case resourceConflict = "ResourceConflict"
    case serviceInternalError = "ServiceInternalError"
    case serviceLimitExceeded = "ServiceLimitExceeded"
    case throttling = "Throttling"

    public var description: String {
        return rawValue
    }
    
    public static let __default: HandlerErrorCode = .accessDenied
}

/**
 Type definition for the Imports field.
 */
public typealias Imports = [StackName]

/**
 Type definition for the InProgressStackInstancesCount field.
 */
public typealias InProgressStackInstancesCount = Int

/**
 Type definition for the InSyncStackInstancesCount field.
 */
public typealias InSyncStackInstancesCount = Int

/**
 Type definition for the Key field.
 */
public typealias Key = String

/**
 Type definition for the LastUpdatedTime field.
 */
public typealias LastUpdatedTime = String

/**
 Type definition for the LimitName field.
 */
public typealias LimitName = String

/**
 Type definition for the LimitValue field.
 */
public typealias LimitValue = Int

/**
 Type definition for the LogGroupName field.
 */
public typealias LogGroupName = String

/**
 Type definition for the LogicalResourceId field.
 */
public typealias LogicalResourceId = String

/**
 Type definition for the LogicalResourceIds field.
 */
public typealias LogicalResourceIds = [LogicalResourceId]

/**
 Type definition for the MaxConcurrentCount field.
 */
public typealias MaxConcurrentCount = Int

/**
 Type definition for the MaxConcurrentPercentage field.
 */
public typealias MaxConcurrentPercentage = Int

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the Metadata field.
 */
public typealias Metadata = String

/**
 Type definition for the MonitoringTimeInMinutes field.
 */
public typealias MonitoringTimeInMinutes = Int

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the NoEcho field.
 */
public typealias NoEcho = Bool

/**
 Type definition for the NotificationARN field.
 */
public typealias NotificationARN = String

/**
 Type definition for the NotificationARNs field.
 */
public typealias NotificationARNs = [NotificationARN]

/**
 Enumeration restricting the values of the OnFailure field.
 */
public enum OnFailure: String, Codable, CustomStringConvertible {
    case delete = "DELETE"
    case doNothing = "DO_NOTHING"
    case rollback = "ROLLBACK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OnFailure = .delete
}

/**
 Enumeration restricting the values of the OperationStatus field.
 */
public enum OperationStatus: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case pending = "PENDING"
    case success = "SUCCESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OperationStatus = .failed
}

/**
 Type definition for the OptionalSecureUrl field.
 */
public typealias OptionalSecureUrl = String

/**
 Type definition for the OrganizationalUnitId field.
 */
public typealias OrganizationalUnitId = String

/**
 Type definition for the OrganizationalUnitIdList field.
 */
public typealias OrganizationalUnitIdList = [OrganizationalUnitId]

/**
 Type definition for the OutputKey field.
 */
public typealias OutputKey = String

/**
 Type definition for the OutputValue field.
 */
public typealias OutputValue = String

/**
 Type definition for the Outputs field.
 */
public typealias Outputs = [Output]

/**
 Type definition for the ParameterDeclarations field.
 */
public typealias ParameterDeclarations = [ParameterDeclaration]

/**
 Type definition for the ParameterKey field.
 */
public typealias ParameterKey = String

/**
 Type definition for the ParameterType field.
 */
public typealias ParameterType = String

/**
 Type definition for the ParameterValue field.
 */
public typealias ParameterValue = String

/**
 Type definition for the Parameters field.
 */
public typealias Parameters = [Parameter]

/**
 Enumeration restricting the values of the PermissionModels field.
 */
public enum PermissionModels: String, Codable, CustomStringConvertible {
    case selfManaged = "SELF_MANAGED"
    case serviceManaged = "SERVICE_MANAGED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PermissionModels = .selfManaged
}

/**
 Type definition for the PhysicalResourceId field.
 */
public typealias PhysicalResourceId = String

/**
 Type definition for the PhysicalResourceIdContext field.
 */
public typealias PhysicalResourceIdContext = [PhysicalResourceIdContextKeyValuePair]

/**
 Type definition for the PrivateTypeArn field.
 */
public typealias PrivateTypeArn = String

/**
 Type definition for the Properties field.
 */
public typealias Properties = String

/**
 Type definition for the PropertyDifferences field.
 */
public typealias PropertyDifferences = [PropertyDifference]

/**
 Type definition for the PropertyName field.
 */
public typealias PropertyName = String

/**
 Type definition for the PropertyPath field.
 */
public typealias PropertyPath = String

/**
 Type definition for the PropertyValue field.
 */
public typealias PropertyValue = String

/**
 Enumeration restricting the values of the ProvisioningType field.
 */
public enum ProvisioningType: String, Codable, CustomStringConvertible {
    case fullyMutable = "FULLY_MUTABLE"
    case immutable = "IMMUTABLE"
    case nonProvisionable = "NON_PROVISIONABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProvisioningType = .fullyMutable
}

/**
 Type definition for the Reason field.
 */
public typealias Reason = String

/**
 Type definition for the Region field.
 */
public typealias Region = String

/**
 Type definition for the RegionList field.
 */
public typealias RegionList = [Region]

/**
 Enumeration restricting the values of the RegistrationStatus field.
 */
public enum RegistrationStatus: String, Codable, CustomStringConvertible {
    case complete = "COMPLETE"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RegistrationStatus = .complete
}

/**
 Type definition for the RegistrationToken field.
 */
public typealias RegistrationToken = String

/**
 Type definition for the RegistrationTokenList field.
 */
public typealias RegistrationTokenList = [RegistrationToken]

/**
 Enumeration restricting the values of the RegistryType field.
 */
public enum RegistryType: String, Codable, CustomStringConvertible {
    case resource = "RESOURCE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RegistryType = .resource
}

/**
 Enumeration restricting the values of the Replacement field.
 */
public enum Replacement: String, Codable, CustomStringConvertible {
    case conditional = "Conditional"
    case `false` = "False"
    case `true` = "True"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Replacement = .conditional
}

/**
 Type definition for the RequestToken field.
 */
public typealias RequestToken = String

/**
 Enumeration restricting the values of the RequiresRecreation field.
 */
public enum RequiresRecreation: String, Codable, CustomStringConvertible {
    case always = "Always"
    case conditionally = "Conditionally"
    case never = "Never"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RequiresRecreation = .always
}

/**
 Enumeration restricting the values of the ResourceAttribute field.
 */
public enum ResourceAttribute: String, Codable, CustomStringConvertible {
    case creationPolicy = "CreationPolicy"
    case deletionPolicy = "DeletionPolicy"
    case metadata = "Metadata"
    case properties = "Properties"
    case tags = "Tags"
    case updatePolicy = "UpdatePolicy"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceAttribute = .creationPolicy
}

/**
 Type definition for the ResourceChangeDetails field.
 */
public typealias ResourceChangeDetails = [ResourceChangeDetail]

/**
 Type definition for the ResourceIdentifierProperties field.
 */
public typealias ResourceIdentifierProperties = [ResourceIdentifierPropertyKey: ResourceIdentifierPropertyValue]

/**
 Type definition for the ResourceIdentifierPropertyKey field.
 */
public typealias ResourceIdentifierPropertyKey = String

/**
 Type definition for the ResourceIdentifierPropertyValue field.
 */
public typealias ResourceIdentifierPropertyValue = String

/**
 Type definition for the ResourceIdentifierSummaries field.
 */
public typealias ResourceIdentifierSummaries = [ResourceIdentifierSummary]

/**
 Type definition for the ResourceIdentifiers field.
 */
public typealias ResourceIdentifiers = [ResourceIdentifierPropertyKey]

/**
 Type definition for the ResourceModel field.
 */
public typealias ResourceModel = String

/**
 Type definition for the ResourceProperties field.
 */
public typealias ResourceProperties = String

/**
 Enumeration restricting the values of the ResourceSignalStatus field.
 */
public enum ResourceSignalStatus: String, Codable, CustomStringConvertible {
    case failure = "FAILURE"
    case success = "SUCCESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceSignalStatus = .failure
}

/**
 Type definition for the ResourceSignalUniqueId field.
 */
public typealias ResourceSignalUniqueId = String

/**
 Enumeration restricting the values of the ResourceStatus field.
 */
public enum ResourceStatus: String, Codable, CustomStringConvertible {
    case createComplete = "CREATE_COMPLETE"
    case createFailed = "CREATE_FAILED"
    case createInProgress = "CREATE_IN_PROGRESS"
    case deleteComplete = "DELETE_COMPLETE"
    case deleteFailed = "DELETE_FAILED"
    case deleteInProgress = "DELETE_IN_PROGRESS"
    case deleteSkipped = "DELETE_SKIPPED"
    case importComplete = "IMPORT_COMPLETE"
    case importFailed = "IMPORT_FAILED"
    case importInProgress = "IMPORT_IN_PROGRESS"
    case importRollbackComplete = "IMPORT_ROLLBACK_COMPLETE"
    case importRollbackFailed = "IMPORT_ROLLBACK_FAILED"
    case importRollbackInProgress = "IMPORT_ROLLBACK_IN_PROGRESS"
    case updateComplete = "UPDATE_COMPLETE"
    case updateFailed = "UPDATE_FAILED"
    case updateInProgress = "UPDATE_IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceStatus = .createComplete
}

/**
 Type definition for the ResourceStatusReason field.
 */
public typealias ResourceStatusReason = String

/**
 Type definition for the ResourceToSkip field.
 */
public typealias ResourceToSkip = String

/**
 Type definition for the ResourceType field.
 */
public typealias ResourceType = String

/**
 Type definition for the ResourceTypes field.
 */
public typealias ResourceTypes = [ResourceType]

/**
 Type definition for the ResourcesToImport field.
 */
public typealias ResourcesToImport = [ResourceToImport]

/**
 Type definition for the ResourcesToSkip field.
 */
public typealias ResourcesToSkip = [ResourceToSkip]

/**
 Type definition for the RetainResources field.
 */
public typealias RetainResources = [LogicalResourceId]

/**
 Type definition for the RetainStacks field.
 */
public typealias RetainStacks = Bool

/**
 Type definition for the RetainStacksNullable field.
 */
public typealias RetainStacksNullable = Bool

/**
 Type definition for the RetainStacksOnAccountRemovalNullable field.
 */
public typealias RetainStacksOnAccountRemovalNullable = Bool

/**
 Type definition for the RoleARN field.
 */
public typealias RoleARN = String

/**
 Type definition for the RoleArn field.
 */
public typealias RoleArn = String

/**
 Type definition for the RollbackTriggers field.
 */
public typealias RollbackTriggers = [RollbackTrigger]

/**
 Type definition for the S3Url field.
 */
public typealias S3Url = String

/**
 Type definition for the Scope field.
 */
public typealias Scope = [ResourceAttribute]

/**
 Type definition for the StackDriftDetectionId field.
 */
public typealias StackDriftDetectionId = String

/**
 Enumeration restricting the values of the StackDriftDetectionStatus field.
 */
public enum StackDriftDetectionStatus: String, Codable, CustomStringConvertible {
    case detectionComplete = "DETECTION_COMPLETE"
    case detectionFailed = "DETECTION_FAILED"
    case detectionInProgress = "DETECTION_IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackDriftDetectionStatus = .detectionComplete
}

/**
 Type definition for the StackDriftDetectionStatusReason field.
 */
public typealias StackDriftDetectionStatusReason = String

/**
 Enumeration restricting the values of the StackDriftStatus field.
 */
public enum StackDriftStatus: String, Codable, CustomStringConvertible {
    case drifted = "DRIFTED"
    case inSync = "IN_SYNC"
    case notChecked = "NOT_CHECKED"
    case unknown = "UNKNOWN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackDriftStatus = .drifted
}

/**
 Type definition for the StackEvents field.
 */
public typealias StackEvents = [StackEvent]

/**
 Type definition for the StackId field.
 */
public typealias StackId = String

/**
 Enumeration restricting the values of the StackInstanceStatus field.
 */
public enum StackInstanceStatus: String, Codable, CustomStringConvertible {
    case current = "CURRENT"
    case inoperable = "INOPERABLE"
    case outdated = "OUTDATED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackInstanceStatus = .current
}

/**
 Type definition for the StackInstanceSummaries field.
 */
public typealias StackInstanceSummaries = [StackInstanceSummary]

/**
 Type definition for the StackName field.
 */
public typealias StackName = String

/**
 Type definition for the StackNameOrId field.
 */
public typealias StackNameOrId = String

/**
 Type definition for the StackPolicyBody field.
 */
public typealias StackPolicyBody = String

/**
 Type definition for the StackPolicyDuringUpdateBody field.
 */
public typealias StackPolicyDuringUpdateBody = String

/**
 Type definition for the StackPolicyDuringUpdateURL field.
 */
public typealias StackPolicyDuringUpdateURL = String

/**
 Type definition for the StackPolicyURL field.
 */
public typealias StackPolicyURL = String

/**
 Enumeration restricting the values of the StackResourceDriftStatus field.
 */
public enum StackResourceDriftStatus: String, Codable, CustomStringConvertible {
    case deleted = "DELETED"
    case inSync = "IN_SYNC"
    case modified = "MODIFIED"
    case notChecked = "NOT_CHECKED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackResourceDriftStatus = .deleted
}

/**
 Type definition for the StackResourceDriftStatusFilters field.
 */
public typealias StackResourceDriftStatusFilters = [StackResourceDriftStatus]

/**
 Type definition for the StackResourceDrifts field.
 */
public typealias StackResourceDrifts = [StackResourceDrift]

/**
 Type definition for the StackResourceSummaries field.
 */
public typealias StackResourceSummaries = [StackResourceSummary]

/**
 Type definition for the StackResources field.
 */
public typealias StackResources = [StackResource]

/**
 Type definition for the StackSetARN field.
 */
public typealias StackSetARN = String

/**
 Enumeration restricting the values of the StackSetDriftDetectionStatus field.
 */
public enum StackSetDriftDetectionStatus: String, Codable, CustomStringConvertible {
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case partialSuccess = "PARTIAL_SUCCESS"
    case stopped = "STOPPED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetDriftDetectionStatus = .completed
}

/**
 Enumeration restricting the values of the StackSetDriftStatus field.
 */
public enum StackSetDriftStatus: String, Codable, CustomStringConvertible {
    case drifted = "DRIFTED"
    case inSync = "IN_SYNC"
    case notChecked = "NOT_CHECKED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetDriftStatus = .drifted
}

/**
 Type definition for the StackSetId field.
 */
public typealias StackSetId = String

/**
 Type definition for the StackSetName field.
 */
public typealias StackSetName = String

/**
 Type definition for the StackSetNameOrId field.
 */
public typealias StackSetNameOrId = String

/**
 Enumeration restricting the values of the StackSetOperationAction field.
 */
public enum StackSetOperationAction: String, Codable, CustomStringConvertible {
    case create = "CREATE"
    case delete = "DELETE"
    case detectDrift = "DETECT_DRIFT"
    case update = "UPDATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetOperationAction = .create
}

/**
 Enumeration restricting the values of the StackSetOperationResultStatus field.
 */
public enum StackSetOperationResultStatus: String, Codable, CustomStringConvertible {
    case cancelled = "CANCELLED"
    case failed = "FAILED"
    case pending = "PENDING"
    case running = "RUNNING"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetOperationResultStatus = .cancelled
}

/**
 Type definition for the StackSetOperationResultSummaries field.
 */
public typealias StackSetOperationResultSummaries = [StackSetOperationResultSummary]

/**
 Enumeration restricting the values of the StackSetOperationStatus field.
 */
public enum StackSetOperationStatus: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case queued = "QUEUED"
    case running = "RUNNING"
    case stopped = "STOPPED"
    case stopping = "STOPPING"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetOperationStatus = .failed
}

/**
 Type definition for the StackSetOperationSummaries field.
 */
public typealias StackSetOperationSummaries = [StackSetOperationSummary]

/**
 Enumeration restricting the values of the StackSetStatus field.
 */
public enum StackSetStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deleted = "DELETED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackSetStatus = .active
}

/**
 Type definition for the StackSetSummaries field.
 */
public typealias StackSetSummaries = [StackSetSummary]

/**
 Enumeration restricting the values of the StackStatus field.
 */
public enum StackStatus: String, Codable, CustomStringConvertible {
    case createComplete = "CREATE_COMPLETE"
    case createFailed = "CREATE_FAILED"
    case createInProgress = "CREATE_IN_PROGRESS"
    case deleteComplete = "DELETE_COMPLETE"
    case deleteFailed = "DELETE_FAILED"
    case deleteInProgress = "DELETE_IN_PROGRESS"
    case importComplete = "IMPORT_COMPLETE"
    case importInProgress = "IMPORT_IN_PROGRESS"
    case importRollbackComplete = "IMPORT_ROLLBACK_COMPLETE"
    case importRollbackFailed = "IMPORT_ROLLBACK_FAILED"
    case importRollbackInProgress = "IMPORT_ROLLBACK_IN_PROGRESS"
    case reviewInProgress = "REVIEW_IN_PROGRESS"
    case rollbackComplete = "ROLLBACK_COMPLETE"
    case rollbackFailed = "ROLLBACK_FAILED"
    case rollbackInProgress = "ROLLBACK_IN_PROGRESS"
    case updateComplete = "UPDATE_COMPLETE"
    case updateCompleteCleanupInProgress = "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"
    case updateInProgress = "UPDATE_IN_PROGRESS"
    case updateRollbackComplete = "UPDATE_ROLLBACK_COMPLETE"
    case updateRollbackCompleteCleanupInProgress = "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"
    case updateRollbackFailed = "UPDATE_ROLLBACK_FAILED"
    case updateRollbackInProgress = "UPDATE_ROLLBACK_IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StackStatus = .createComplete
}

/**
 Type definition for the StackStatusFilter field.
 */
public typealias StackStatusFilter = [StackStatus]

/**
 Type definition for the StackStatusReason field.
 */
public typealias StackStatusReason = String

/**
 Type definition for the StackSummaries field.
 */
public typealias StackSummaries = [StackSummary]

/**
 Type definition for the Stacks field.
 */
public typealias Stacks = [Stack]

/**
 Type definition for the StageList field.
 */
public typealias StageList = [TemplateStage]

/**
 Type definition for the StatusMessage field.
 */
public typealias StatusMessage = String

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Tags field.
 */
public typealias Tags = [Tag]

/**
 Type definition for the TemplateBody field.
 */
public typealias TemplateBody = String

/**
 Type definition for the TemplateDescription field.
 */
public typealias TemplateDescription = String

/**
 Type definition for the TemplateParameters field.
 */
public typealias TemplateParameters = [TemplateParameter]

/**
 Enumeration restricting the values of the TemplateStage field.
 */
public enum TemplateStage: String, Codable, CustomStringConvertible {
    case original = "Original"
    case processed = "Processed"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TemplateStage = .original
}

/**
 Type definition for the TemplateURL field.
 */
public typealias TemplateURL = String

/**
 Type definition for the TimeoutMinutes field.
 */
public typealias TimeoutMinutes = Int

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

/**
 Type definition for the TotalStackInstancesCount field.
 */
public typealias TotalStackInstancesCount = Int

/**
 Type definition for the TransformName field.
 */
public typealias TransformName = String

/**
 Type definition for the TransformsList field.
 */
public typealias TransformsList = [TransformName]

/**
 Type definition for the Type field.
 */
public typealias Type = String

/**
 Type definition for the TypeArn field.
 */
public typealias TypeArn = String

/**
 Type definition for the TypeName field.
 */
public typealias TypeName = String

/**
 Type definition for the TypeSchema field.
 */
public typealias TypeSchema = String

/**
 Type definition for the TypeSummaries field.
 */
public typealias TypeSummaries = [TypeSummary]

/**
 Type definition for the TypeVersionId field.
 */
public typealias TypeVersionId = String

/**
 Type definition for the TypeVersionSummaries field.
 */
public typealias TypeVersionSummaries = [TypeVersionSummary]

/**
 Type definition for the Url field.
 */
public typealias Url = String

/**
 Type definition for the UsePreviousTemplate field.
 */
public typealias UsePreviousTemplate = Bool

/**
 Type definition for the UsePreviousValue field.
 */
public typealias UsePreviousValue = Bool

/**
 Type definition for the Value field.
 */
public typealias Value = String

/**
 Type definition for the Version field.
 */
public typealias Version = String

/**
 Enumeration restricting the values of the Visibility field.
 */
public enum Visibility: String, Codable, CustomStringConvertible {
    case `private` = "PRIVATE"
    case `public` = "PUBLIC"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Visibility = .`private`
}

/**
 Validation for the Account field.
*/
extension CloudformationModel.Account {
    public func validateAsAccount() throws {
        guard let matchingRange = self.range(of: "^[0-9]{12}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to Account violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BoxedMaxResults field.
*/
extension CloudformationModel.BoxedMaxResults {
    public func validateAsBoxedMaxResults() throws {
        if self < 1 {
            throw CloudformationError.validationError(reason: "The provided value to BoxedMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudformationError.validationError(reason: "The provided value to BoxedMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ChangeSetId field.
*/
extension CloudformationModel.ChangeSetId {
    public func validateAsChangeSetId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ChangeSetId violated the minimum length constraint.")
        }


        guard let matchingRange = self.range(of: "arn:[-a-zA-Z0-9:/]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ChangeSetId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ChangeSetName field.
*/
extension CloudformationModel.ChangeSetName {
    public func validateAsChangeSetName() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ChangeSetName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to ChangeSetName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z][-a-zA-Z0-9]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ChangeSetName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ChangeSetNameOrId field.
*/
extension CloudformationModel.ChangeSetNameOrId {
    public func validateAsChangeSetNameOrId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ChangeSetNameOrId violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw CloudformationError.validationError(reason: "The provided value to ChangeSetNameOrId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ChangeSetNameOrId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientRequestToken field.
*/
extension CloudformationModel.ClientRequestToken {
    public func validateAsClientRequestToken() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ClientRequestToken violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to ClientRequestToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9][-a-zA-Z0-9]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ClientRequestToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientToken field.
*/
extension CloudformationModel.ClientToken {
    public func validateAsClientToken() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ClientToken violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to ClientToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension CloudformationModel.Description {
    public func validateAsDescription() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to Description violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DriftedStackInstancesCount field.
*/
extension CloudformationModel.DriftedStackInstancesCount {
    public func validateAsDriftedStackInstancesCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to DriftedStackInstancesCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ErrorMessage field.
*/
extension CloudformationModel.ErrorMessage {
    public func validateAsErrorMessage() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ErrorMessage violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudformationError.validationError(reason: "The provided value to ErrorMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ExecutionRoleName field.
*/
extension CloudformationModel.ExecutionRoleName {
    public func validateAsExecutionRoleName() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ExecutionRoleName violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw CloudformationError.validationError(reason: "The provided value to ExecutionRoleName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z_0-9+=,.@-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ExecutionRoleName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the FailedStackInstancesCount field.
*/
extension CloudformationModel.FailedStackInstancesCount {
    public func validateAsFailedStackInstancesCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to FailedStackInstancesCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the FailureToleranceCount field.
*/
extension CloudformationModel.FailureToleranceCount {
    public func validateAsFailureToleranceCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to FailureToleranceCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the FailureTolerancePercentage field.
*/
extension CloudformationModel.FailureTolerancePercentage {
    public func validateAsFailureTolerancePercentage() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to FailureTolerancePercentage violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudformationError.validationError(reason: "The provided value to FailureTolerancePercentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the InProgressStackInstancesCount field.
*/
extension CloudformationModel.InProgressStackInstancesCount {
    public func validateAsInProgressStackInstancesCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to InProgressStackInstancesCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the InSyncStackInstancesCount field.
*/
extension CloudformationModel.InSyncStackInstancesCount {
    public func validateAsInSyncStackInstancesCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to InSyncStackInstancesCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the LogGroupName field.
*/
extension CloudformationModel.LogGroupName {
    public func validateAsLogGroupName() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to LogGroupName violated the minimum length constraint.")
        }

        if self.count > 512 {
            throw CloudformationError.validationError(reason: "The provided value to LogGroupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\.\\-_/#A-Za-z0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to LogGroupName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the LogicalResourceIds field.
*/
extension Array where Element == CloudformationModel.LogicalResourceId {
    public func validateAsLogicalResourceIds() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to LogicalResourceIds violated the minimum length constraint.")
        }

        if self.count > 200 {
            throw CloudformationError.validationError(reason: "The provided value to LogicalResourceIds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MaxConcurrentCount field.
*/
extension CloudformationModel.MaxConcurrentCount {
    public func validateAsMaxConcurrentCount() throws {
        if self < 1 {
            throw CloudformationError.validationError(reason: "The provided value to MaxConcurrentCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the MaxConcurrentPercentage field.
*/
extension CloudformationModel.MaxConcurrentPercentage {
    public func validateAsMaxConcurrentPercentage() throws {
        if self < 1 {
            throw CloudformationError.validationError(reason: "The provided value to MaxConcurrentPercentage violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudformationError.validationError(reason: "The provided value to MaxConcurrentPercentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension CloudformationModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw CloudformationError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudformationError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MonitoringTimeInMinutes field.
*/
extension CloudformationModel.MonitoringTimeInMinutes {
    public func validateAsMonitoringTimeInMinutes() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to MonitoringTimeInMinutes violated the minimum range constraint.")
        }

        if self > 180 {
            throw CloudformationError.validationError(reason: "The provided value to MonitoringTimeInMinutes violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension CloudformationModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NotificationARNs field.
*/
extension Array where Element == CloudformationModel.NotificationARN {
    public func validateAsNotificationARNs() throws {

        if self.count > 5 {
            throw CloudformationError.validationError(reason: "The provided value to NotificationARNs violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the OptionalSecureUrl field.
*/
extension CloudformationModel.OptionalSecureUrl {
    public func validateAsOptionalSecureUrl() throws {

        if self.count > 4096 {
            throw CloudformationError.validationError(reason: "The provided value to OptionalSecureUrl violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the OrganizationalUnitId field.
*/
extension CloudformationModel.OrganizationalUnitId {
    public func validateAsOrganizationalUnitId() throws {
        guard let matchingRange = self.range(of: "^(ou-[a-z0-9]{4,32}-[a-z0-9]{8,32}|r-[a-z0-9]{4,32})$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to OrganizationalUnitId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PhysicalResourceIdContext field.
*/
extension Array where Element == CloudformationModel.PhysicalResourceIdContextKeyValuePair {
    public func validateAsPhysicalResourceIdContext() throws {

        if self.count > 5 {
            throw CloudformationError.validationError(reason: "The provided value to PhysicalResourceIdContext violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PrivateTypeArn field.
*/
extension CloudformationModel.PrivateTypeArn {
    public func validateAsPrivateTypeArn() throws {

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to PrivateTypeArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:[0-9]{12}:type/.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to PrivateTypeArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Region field.
*/
extension CloudformationModel.Region {
    public func validateAsRegion() throws {
        guard let matchingRange = self.range(of: "^[a-zA-Z0-9-]{1,128}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to Region violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RegistrationToken field.
*/
extension CloudformationModel.RegistrationToken {
    public func validateAsRegistrationToken() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to RegistrationToken violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to RegistrationToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9][-a-zA-Z0-9]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to RegistrationToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RequestToken field.
*/
extension CloudformationModel.RequestToken {
    public func validateAsRequestToken() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to RequestToken violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to RequestToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9][-a-zA-Z0-9]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to RequestToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ResourceIdentifierPropertyKey field.
*/
extension CloudformationModel.ResourceIdentifierPropertyKey {
    public func validateAsResourceIdentifierPropertyKey() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceIdentifierPropertyKey violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceIdentifierPropertyKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceIdentifierPropertyValue field.
*/
extension CloudformationModel.ResourceIdentifierPropertyValue {
    public func validateAsResourceIdentifierPropertyValue() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceIdentifierPropertyValue violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceIdentifierPropertyValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceModel field.
*/
extension CloudformationModel.ResourceModel {
    public func validateAsResourceModel() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceModel violated the minimum length constraint.")
        }

        if self.count > 16384 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceModel violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceSignalUniqueId field.
*/
extension CloudformationModel.ResourceSignalUniqueId {
    public func validateAsResourceSignalUniqueId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceSignalUniqueId violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceSignalUniqueId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceToSkip field.
*/
extension CloudformationModel.ResourceToSkip {
    public func validateAsResourceToSkip() throws {
        guard let matchingRange = self.range(of: "[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*\\.[a-zA-Z0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to ResourceToSkip violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ResourceType field.
*/
extension CloudformationModel.ResourceType {
    public func validateAsResourceType() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceType violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CloudformationError.validationError(reason: "The provided value to ResourceType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourcesToImport field.
*/
extension Array where Element == CloudformationModel.ResourceToImport {
    public func validateAsResourcesToImport() throws {

        if self.count > 200 {
            throw CloudformationError.validationError(reason: "The provided value to ResourcesToImport violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RoleARN field.
*/
extension CloudformationModel.RoleARN {
    public func validateAsRoleARN() throws {
        if self.count < 20 {
            throw CloudformationError.validationError(reason: "The provided value to RoleARN violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CloudformationError.validationError(reason: "The provided value to RoleARN violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RoleArn field.
*/
extension CloudformationModel.RoleArn {
    public func validateAsRoleArn() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to RoleArn violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CloudformationError.validationError(reason: "The provided value to RoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:.+:iam::[0-9]{12}:role/.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to RoleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RollbackTriggers field.
*/
extension Array where Element == CloudformationModel.RollbackTrigger {
    public func validateAsRollbackTriggers() throws {

        if self.count > 5 {
            throw CloudformationError.validationError(reason: "The provided value to RollbackTriggers violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the S3Url field.
*/
extension CloudformationModel.S3Url {
    public func validateAsS3Url() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to S3Url violated the minimum length constraint.")
        }

        if self.count > 4096 {
            throw CloudformationError.validationError(reason: "The provided value to S3Url violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackDriftDetectionId field.
*/
extension CloudformationModel.StackDriftDetectionId {
    public func validateAsStackDriftDetectionId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackDriftDetectionId violated the minimum length constraint.")
        }

        if self.count > 36 {
            throw CloudformationError.validationError(reason: "The provided value to StackDriftDetectionId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackNameOrId field.
*/
extension CloudformationModel.StackNameOrId {
    public func validateAsStackNameOrId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackNameOrId violated the minimum length constraint.")
        }


        guard let matchingRange = self.range(of: "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to StackNameOrId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StackPolicyBody field.
*/
extension CloudformationModel.StackPolicyBody {
    public func validateAsStackPolicyBody() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyBody violated the minimum length constraint.")
        }

        if self.count > 16384 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyBody violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackPolicyDuringUpdateBody field.
*/
extension CloudformationModel.StackPolicyDuringUpdateBody {
    public func validateAsStackPolicyDuringUpdateBody() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyDuringUpdateBody violated the minimum length constraint.")
        }

        if self.count > 16384 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyDuringUpdateBody violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackPolicyDuringUpdateURL field.
*/
extension CloudformationModel.StackPolicyDuringUpdateURL {
    public func validateAsStackPolicyDuringUpdateURL() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyDuringUpdateURL violated the minimum length constraint.")
        }

        if self.count > 1350 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyDuringUpdateURL violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackPolicyURL field.
*/
extension CloudformationModel.StackPolicyURL {
    public func validateAsStackPolicyURL() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyURL violated the minimum length constraint.")
        }

        if self.count > 1350 {
            throw CloudformationError.validationError(reason: "The provided value to StackPolicyURL violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackResourceDriftStatusFilters field.
*/
extension Array where Element == CloudformationModel.StackResourceDriftStatus {
    public func validateAsStackResourceDriftStatusFilters() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to StackResourceDriftStatusFilters violated the minimum length constraint.")
        }

        if self.count > 4 {
            throw CloudformationError.validationError(reason: "The provided value to StackResourceDriftStatusFilters violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StackSetNameOrId field.
*/
extension CloudformationModel.StackSetNameOrId {
    public func validateAsStackSetNameOrId() throws {
        guard let matchingRange = self.range(of: "[a-zA-Z][-a-zA-Z0-9]*(?::[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12})?", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to StackSetNameOrId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StatusMessage field.
*/
extension CloudformationModel.StatusMessage {
    public func validateAsStatusMessage() throws {

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to StatusMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension CloudformationModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension CloudformationModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CloudformationError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Tags field.
*/
extension Array where Element == CloudformationModel.Tag {
    public func validateAsTags() throws {

        if self.count > 50 {
            throw CloudformationError.validationError(reason: "The provided value to Tags violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TemplateBody field.
*/
extension CloudformationModel.TemplateBody {
    public func validateAsTemplateBody() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TemplateBody violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the TemplateURL field.
*/
extension CloudformationModel.TemplateURL {
    public func validateAsTemplateURL() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TemplateURL violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to TemplateURL violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TimeoutMinutes field.
*/
extension CloudformationModel.TimeoutMinutes {
    public func validateAsTimeoutMinutes() throws {
        if self < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TimeoutMinutes violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the TotalStackInstancesCount field.
*/
extension CloudformationModel.TotalStackInstancesCount {
    public func validateAsTotalStackInstancesCount() throws {
        if self < 0 {
            throw CloudformationError.validationError(reason: "The provided value to TotalStackInstancesCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the TypeArn field.
*/
extension CloudformationModel.TypeArn {
    public func validateAsTypeArn() throws {

        if self.count > 1024 {
            throw CloudformationError.validationError(reason: "The provided value to TypeArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to TypeArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TypeName field.
*/
extension CloudformationModel.TypeName {
    public func validateAsTypeName() throws {
        if self.count < 10 {
            throw CloudformationError.validationError(reason: "The provided value to TypeName violated the minimum length constraint.")
        }

        if self.count > 196 {
            throw CloudformationError.validationError(reason: "The provided value to TypeName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to TypeName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TypeSchema field.
*/
extension CloudformationModel.TypeSchema {
    public func validateAsTypeSchema() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TypeSchema violated the minimum length constraint.")
        }

        if self.count > 16777216 {
            throw CloudformationError.validationError(reason: "The provided value to TypeSchema violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TypeVersionId field.
*/
extension CloudformationModel.TypeVersionId {
    public func validateAsTypeVersionId() throws {
        if self.count < 1 {
            throw CloudformationError.validationError(reason: "The provided value to TypeVersionId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudformationError.validationError(reason: "The provided value to TypeVersionId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudformationError.validationError(
                    reason: "The provided value to TypeVersionId violated the regular expression constraint.")
        }
    }
}
