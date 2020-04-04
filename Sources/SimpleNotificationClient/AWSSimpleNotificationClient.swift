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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SimpleNotificationClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

internal extension SimpleNotificationError {
    func isRetriable() -> Bool {
        switch self {
        case .filterPolicyLimitExceeded, .kMSThrottling, .subscriptionLimitExceeded, .throttled, .topicLimitExceeded:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? SimpleNotificationError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the SimpleNotification service.
 */
public struct AWSSimpleNotificationClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SimpleNotificationClientProtocol {
    let httpClient: HTTPOperationsClient
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: SimpleNotificationOperationsReporting
    let invocationsReporting: SimpleNotificationInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "sns",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-03-31",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleNotificationModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleNotificationModelOperations>() ) {
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleNotificationError>()

        self.httpClient = HTTPOperationsClient(endpointHostName: endpointHostName,
                                               endpointPort: endpointPort,
                                               contentType: contentType,
                                               clientDelegate: clientDelegate,
                                               connectionTimeoutSeconds: connectionTimeoutSeconds,
                                               eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SimpleNotificationOperationsReporting(clientName: "AWSSimpleNotificationClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleNotificationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                retryOnErrorProvider: @escaping (Swift.Error) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleNotificationOperationsReporting) {
        self.httpClient = httpClient
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SimpleNotificationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        try httpClient.close()
    }

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionAsync(
            input: SimpleNotificationModel.AddPermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.addPermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.addPermission.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionSync(
            input: SimpleNotificationModel.AddPermissionInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.addPermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.addPermission.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutAsync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.checkIfPhoneNumberIsOptedOut,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CheckIfPhoneNumberIsOptedOutOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.checkIfPhoneNumberIsOptedOut.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutSync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.checkIfPhoneNumberIsOptedOut,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CheckIfPhoneNumberIsOptedOutOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.checkIfPhoneNumberIsOptedOut.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionAsync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.confirmSubscription,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ConfirmSubscriptionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.confirmSubscription.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionSync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.confirmSubscription,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ConfirmSubscriptionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.confirmSubscription.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationAsync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreatePlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createPlatformApplication.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationSync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreatePlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createPlatformApplication.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointAsync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPlatformEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreatePlatformEndpointOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createPlatformEndpoint.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointSync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPlatformEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreatePlatformEndpointOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createPlatformEndpoint.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicAsync(
            input: SimpleNotificationModel.CreateTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createTopic.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicSync(
            input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.createTopic.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointAsync(
            input: SimpleNotificationModel.DeleteEndpointInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteEndpointOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deleteEndpoint.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointSync(
            input: SimpleNotificationModel.DeleteEndpointInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteEndpointOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deleteEndpoint.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationAsync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deletePlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeletePlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deletePlatformApplication.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationSync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deletePlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeletePlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deletePlatformApplication.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicAsync(
            input: SimpleNotificationModel.DeleteTopicInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deleteTopic.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicSync(
            input: SimpleNotificationModel.DeleteTopicInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.deleteTopic.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesAsync(
            input: SimpleNotificationModel.GetEndpointAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getEndpointAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetEndpointAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getEndpointAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesSync(
            input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getEndpointAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetEndpointAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getEndpointAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPlatformApplicationAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getPlatformApplicationAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPlatformApplicationAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getPlatformApplicationAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesAsync(
            input: SimpleNotificationModel.GetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSMSAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSMSAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getSMSAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesSync(
            input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSMSAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSMSAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getSMSAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesAsync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSubscriptionAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSubscriptionAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getSubscriptionAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesSync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSubscriptionAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSubscriptionAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getSubscriptionAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesAsync(
            input: SimpleNotificationModel.GetTopicAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTopicAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTopicAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getTopicAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesSync(
            input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTopicAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTopicAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.getTopicAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationAsync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listEndpointsByPlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListEndpointsByPlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listEndpointsByPlatformApplication.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationSync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listEndpointsByPlatformApplication,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListEndpointsByPlatformApplicationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listEndpointsByPlatformApplication.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutAsync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPhoneNumbersOptedOut,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListPhoneNumbersOptedOutOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listPhoneNumbersOptedOut.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutSync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPhoneNumbersOptedOut,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListPhoneNumbersOptedOutOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listPhoneNumbersOptedOut.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsAsync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPlatformApplications,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListPlatformApplicationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listPlatformApplications.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsSync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPlatformApplications,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListPlatformApplicationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listPlatformApplications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsAsync(
            input: SimpleNotificationModel.ListSubscriptionsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSubscriptions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListSubscriptionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listSubscriptions.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsSync(
            input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSubscriptions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListSubscriptionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listSubscriptions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicAsync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSubscriptionsByTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListSubscriptionsByTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listSubscriptionsByTopic.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicSync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSubscriptionsByTopic,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListSubscriptionsByTopicOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listSubscriptionsByTopic.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceAsync(
            input: SimpleNotificationModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listTagsForResource.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceSync(
            input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listTagsForResource.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsAsync(
            input: SimpleNotificationModel.ListTopicsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTopics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTopicsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listTopics.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.ListTopicsResponseForListTopics, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsSync(
            input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTopics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTopicsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.listTopics.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberAsync(
            input: SimpleNotificationModel.OptInPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.optInPhoneNumber,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = OptInPhoneNumberOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.optInPhoneNumber.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberSync(
            input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.optInPhoneNumber,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = OptInPhoneNumberOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.optInPhoneNumber.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishAsync(
            input: SimpleNotificationModel.PublishInput, 
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publish,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PublishOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.publish.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.PublishResponseForPublish, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishSync(
            input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publish,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PublishOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.publish.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionAsync(
            input: SimpleNotificationModel.RemovePermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.removePermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.removePermission.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionSync(
            input: SimpleNotificationModel.RemovePermissionInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.removePermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.removePermission.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesAsync(
            input: SimpleNotificationModel.SetEndpointAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setEndpointAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetEndpointAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setEndpointAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesSync(
            input: SimpleNotificationModel.SetEndpointAttributesInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setEndpointAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetEndpointAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setEndpointAttributes.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setPlatformApplicationAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setPlatformApplicationAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setPlatformApplicationAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setPlatformApplicationAttributes.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesAsync(
            input: SimpleNotificationModel.SetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setSMSAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetSMSAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setSMSAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesSync(
            input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setSMSAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetSMSAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setSMSAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesAsync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setSubscriptionAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetSubscriptionAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setSubscriptionAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesSync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setSubscriptionAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetSubscriptionAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setSubscriptionAttributes.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesAsync(
            input: SimpleNotificationModel.SetTopicAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTopicAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTopicAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setTopicAttributes.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesSync(
            input: SimpleNotificationModel.SetTopicAttributesInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTopicAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTopicAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.setTopicAttributes.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeAsync(
            input: SimpleNotificationModel.SubscribeInput, 
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.subscribe,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SubscribeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.subscribe.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.SubscribeResponseForSubscribe, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeSync(
            input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.subscribe,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SubscribeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.subscribe.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceAsync(
            input: SimpleNotificationModel.TagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.tagResource.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.TagResourceResponseForTagResource, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceSync(
            input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.tagResource.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeAsync(
            input: SimpleNotificationModel.UnsubscribeInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.unsubscribe,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UnsubscribeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.unsubscribe.rawValue,
            version: apiVersion)

        func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleNotificationError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeSync(
            input: SimpleNotificationModel.UnsubscribeInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.unsubscribe,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UnsubscribeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.unsubscribe.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceAsync(
            input: SimpleNotificationModel.UntagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, SimpleNotificationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.untagResource.rawValue,
            version: apiVersion)

        func innerCompletion(result: Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, SmokeHTTPClient.HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleNotificationError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleNotificationError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceSync(
            input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleNotificationModelOperations.untagResource.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
