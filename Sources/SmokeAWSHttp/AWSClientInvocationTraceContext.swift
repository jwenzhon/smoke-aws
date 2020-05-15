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
//  AWSClientInvocationTraceContext.swift
//  SmokeAWSHttp
//
import Foundation
import Logging
import SmokeHTTPClient
import AsyncHTTPClient
import NIOHTTP1

private let xAmzRequestId = "x-amz-request-id"
private let xAmzRequestIdAlt = "x-amzn-RequestId"    
private let xAmzId2 = "x-amz-id-2"

/**
  A type conforming to the `InvocationTraceContext` protocol, sutiable for AWS clients. This implementation will log the input to and output from the outgoing request,
  along with x-amz-request-id and x-amz-id-2" headers if present.
 */
public struct AWSClientInvocationTraceContext: InvocationTraceContext {
    public typealias OutwardsRequestContext = String
        
    public init() {
        
    }
    
    public func handleOutwardsRequestStart(method: HTTPMethod, uri: String, logger: Logger, internalRequestId: String,
                                           headers: inout HTTPHeaders, bodyData: Data) -> String {
        logger.info("Starting outgoing \(method) request to endpoint '\(uri)'.")
        logger.debug("Outgoing request body: \(bodyData.debugString)")
        
        return ""
    }
    
    public func handleOutwardsRequestSuccess(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                             response: HTTPClient.Response, bodyData: Data?) {
        let logLine = getLogLine(successfullyCompletedRequest: true, response: response)
        
        logger.info("\(logLine)")
        
        if let bodyData = bodyData {
            logger.debug("Outgoing response body with size \(bodyData.count): \(bodyData.debugString)")
        }
    }
    
    public func handleOutwardsRequestFailure(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                             response: HTTPClient.Response?, bodyData: Data?, error: Error) {
        let logLine = getLogLine(successfullyCompletedRequest: false, response: response)
        
        // if this is a client error, only log as a warning as
        // it isn't definitely an error
        if let response = response, response.status.code >= 400 && response.status.code < 500 {
            logger.warning("\(logLine)")
        } else {
            logger.error("\(logLine)")
        }
        
        if let bodyData = bodyData {
            logger.debug("Outgoing response body with size \(bodyData.count): \(bodyData.debugString)")
        }
    }
    
    private func getLogLine(successfullyCompletedRequest: Bool, response: HTTPClient.Response?) -> String {
        var logElements: [String] = []
        let completionString = successfullyCompletedRequest ? "Successfully" : "Unsuccessfully"
        logElements.append("\(completionString) completed outgoing request.")
        
        if let code = response?.status.code {
            logElements.append("Returned status code: \(code)")
        }
        
        // check the variants of request id
        if let requestIds = response?.headers[xAmzRequestId], !requestIds.isEmpty {
            logElements.append("Returned \(xAmzRequestId) header '\(requestIds.joined(separator: ","))'")
        } else if let requestIds = response?.headers[xAmzRequestIdAlt], !requestIds.isEmpty {
            logElements.append("Returned \(xAmzRequestId) header '\(requestIds.joined(separator: ","))'")
        }
        
        if let id2s = response?.headers[xAmzId2], !id2s.isEmpty {
            logElements.append("Returned \(xAmzId2) header '\(id2s.joined(separator: ","))'")
        }
        
        return logElements.joined(separator: " ")
    }
}
