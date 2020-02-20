// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// RDSDataOperationsReporting.swift
// RDSDataClient
//

import Foundation
import SmokeAWSCore
import RDSDataModel

/**
 Operation reporting for the RDSDataModel.
 */
public struct RDSDataOperationsReporting {
    let batchExecuteStatement: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let beginTransaction: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let commitTransaction: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let executeSql: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let executeStatement: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let rollbackTransaction: StandardSmokeAWSOperationReporting<RDSDataModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<RDSDataModelOperations>) {
        self.batchExecuteStatement = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchExecuteStatement, configuration: reportingConfiguration)
        self.beginTransaction = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .beginTransaction, configuration: reportingConfiguration)
        self.commitTransaction = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .commitTransaction, configuration: reportingConfiguration)
        self.executeSql = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .executeSql, configuration: reportingConfiguration)
        self.executeStatement = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .executeStatement, configuration: reportingConfiguration)
        self.rollbackTransaction = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rollbackTransaction, configuration: reportingConfiguration)
    }
}
