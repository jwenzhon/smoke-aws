// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// ElasticContainerModelStructures.swift
// ElasticContainerModel
//

import Foundation

public struct AccessDeniedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Attachment: Codable, Equatable {
    public var details: AttachmentDetails?
    public var id: String?
    public var status: String?
    public var type: String?

    public init(details: AttachmentDetails? = nil,
                id: String? = nil,
                status: String? = nil,
                type: String? = nil) {
        self.details = details
        self.id = id
        self.status = status
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case details
        case id
        case status
        case type
    }

    public func validate() throws {
    }
}

public struct AttachmentStateChange: Codable, Equatable {
    public var attachmentArn: String
    public var status: String

    public init(attachmentArn: String,
                status: String) {
        self.attachmentArn = attachmentArn
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case attachmentArn
        case status
    }

    public func validate() throws {
    }
}

public struct Attribute: Codable, Equatable {
    public var name: String
    public var targetId: String?
    public var targetType: TargetType?
    public var value: String?

    public init(name: String,
                targetId: String? = nil,
                targetType: TargetType? = nil,
                value: String? = nil) {
        self.name = name
        self.targetId = targetId
        self.targetType = targetType
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case targetId
        case targetType
        case value
    }

    public func validate() throws {
    }
}

public struct AttributeLimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AwsVpcConfiguration: Codable, Equatable {
    public var assignPublicIp: AssignPublicIp?
    public var securityGroups: StringList?
    public var subnets: StringList

    public init(assignPublicIp: AssignPublicIp? = nil,
                securityGroups: StringList? = nil,
                subnets: StringList) {
        self.assignPublicIp = assignPublicIp
        self.securityGroups = securityGroups
        self.subnets = subnets
    }

    enum CodingKeys: String, CodingKey {
        case assignPublicIp
        case securityGroups
        case subnets
    }

    public func validate() throws {
    }
}

public struct BlockedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClientException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Cluster: Codable, Equatable {
    public var activeServicesCount: Integer?
    public var clusterArn: String?
    public var clusterName: String?
    public var pendingTasksCount: Integer?
    public var registeredContainerInstancesCount: Integer?
    public var runningTasksCount: Integer?
    public var statistics: Statistics?
    public var status: String?

    public init(activeServicesCount: Integer? = nil,
                clusterArn: String? = nil,
                clusterName: String? = nil,
                pendingTasksCount: Integer? = nil,
                registeredContainerInstancesCount: Integer? = nil,
                runningTasksCount: Integer? = nil,
                statistics: Statistics? = nil,
                status: String? = nil) {
        self.activeServicesCount = activeServicesCount
        self.clusterArn = clusterArn
        self.clusterName = clusterName
        self.pendingTasksCount = pendingTasksCount
        self.registeredContainerInstancesCount = registeredContainerInstancesCount
        self.runningTasksCount = runningTasksCount
        self.statistics = statistics
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case activeServicesCount
        case clusterArn
        case clusterName
        case pendingTasksCount
        case registeredContainerInstancesCount
        case runningTasksCount
        case statistics
        case status
    }

    public func validate() throws {
    }
}

public struct ClusterContainsContainerInstancesException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterContainsServicesException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterContainsTasksException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Container: Codable, Equatable {
    public var containerArn: String?
    public var exitCode: BoxedInteger?
    public var healthStatus: HealthStatus?
    public var lastStatus: String?
    public var name: String?
    public var networkBindings: NetworkBindings?
    public var networkInterfaces: NetworkInterfaces?
    public var reason: String?
    public var taskArn: String?

    public init(containerArn: String? = nil,
                exitCode: BoxedInteger? = nil,
                healthStatus: HealthStatus? = nil,
                lastStatus: String? = nil,
                name: String? = nil,
                networkBindings: NetworkBindings? = nil,
                networkInterfaces: NetworkInterfaces? = nil,
                reason: String? = nil,
                taskArn: String? = nil) {
        self.containerArn = containerArn
        self.exitCode = exitCode
        self.healthStatus = healthStatus
        self.lastStatus = lastStatus
        self.name = name
        self.networkBindings = networkBindings
        self.networkInterfaces = networkInterfaces
        self.reason = reason
        self.taskArn = taskArn
    }

    enum CodingKeys: String, CodingKey {
        case containerArn
        case exitCode
        case healthStatus
        case lastStatus
        case name
        case networkBindings
        case networkInterfaces
        case reason
        case taskArn
    }

    public func validate() throws {
    }
}

public struct ContainerDefinition: Codable, Equatable {
    public var command: StringList?
    public var cpu: Integer?
    public var disableNetworking: BoxedBoolean?
    public var dnsSearchDomains: StringList?
    public var dnsServers: StringList?
    public var dockerLabels: DockerLabelsMap?
    public var dockerSecurityOptions: StringList?
    public var entryPoint: StringList?
    public var environment: EnvironmentVariables?
    public var essential: BoxedBoolean?
    public var extraHosts: HostEntryList?
    public var healthCheck: HealthCheck?
    public var hostname: String?
    public var image: String?
    public var interactive: BoxedBoolean?
    public var links: StringList?
    public var linuxParameters: LinuxParameters?
    public var logConfiguration: LogConfiguration?
    public var memory: BoxedInteger?
    public var memoryReservation: BoxedInteger?
    public var mountPoints: MountPointList?
    public var name: String?
    public var portMappings: PortMappingList?
    public var privileged: BoxedBoolean?
    public var pseudoTerminal: BoxedBoolean?
    public var readonlyRootFilesystem: BoxedBoolean?
    public var repositoryCredentials: RepositoryCredentials?
    public var systemControls: SystemControls?
    public var ulimits: UlimitList?
    public var user: String?
    public var volumesFrom: VolumeFromList?
    public var workingDirectory: String?

    public init(command: StringList? = nil,
                cpu: Integer? = nil,
                disableNetworking: BoxedBoolean? = nil,
                dnsSearchDomains: StringList? = nil,
                dnsServers: StringList? = nil,
                dockerLabels: DockerLabelsMap? = nil,
                dockerSecurityOptions: StringList? = nil,
                entryPoint: StringList? = nil,
                environment: EnvironmentVariables? = nil,
                essential: BoxedBoolean? = nil,
                extraHosts: HostEntryList? = nil,
                healthCheck: HealthCheck? = nil,
                hostname: String? = nil,
                image: String? = nil,
                interactive: BoxedBoolean? = nil,
                links: StringList? = nil,
                linuxParameters: LinuxParameters? = nil,
                logConfiguration: LogConfiguration? = nil,
                memory: BoxedInteger? = nil,
                memoryReservation: BoxedInteger? = nil,
                mountPoints: MountPointList? = nil,
                name: String? = nil,
                portMappings: PortMappingList? = nil,
                privileged: BoxedBoolean? = nil,
                pseudoTerminal: BoxedBoolean? = nil,
                readonlyRootFilesystem: BoxedBoolean? = nil,
                repositoryCredentials: RepositoryCredentials? = nil,
                systemControls: SystemControls? = nil,
                ulimits: UlimitList? = nil,
                user: String? = nil,
                volumesFrom: VolumeFromList? = nil,
                workingDirectory: String? = nil) {
        self.command = command
        self.cpu = cpu
        self.disableNetworking = disableNetworking
        self.dnsSearchDomains = dnsSearchDomains
        self.dnsServers = dnsServers
        self.dockerLabels = dockerLabels
        self.dockerSecurityOptions = dockerSecurityOptions
        self.entryPoint = entryPoint
        self.environment = environment
        self.essential = essential
        self.extraHosts = extraHosts
        self.healthCheck = healthCheck
        self.hostname = hostname
        self.image = image
        self.interactive = interactive
        self.links = links
        self.linuxParameters = linuxParameters
        self.logConfiguration = logConfiguration
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.mountPoints = mountPoints
        self.name = name
        self.portMappings = portMappings
        self.privileged = privileged
        self.pseudoTerminal = pseudoTerminal
        self.readonlyRootFilesystem = readonlyRootFilesystem
        self.repositoryCredentials = repositoryCredentials
        self.systemControls = systemControls
        self.ulimits = ulimits
        self.user = user
        self.volumesFrom = volumesFrom
        self.workingDirectory = workingDirectory
    }

    enum CodingKeys: String, CodingKey {
        case command
        case cpu
        case disableNetworking
        case dnsSearchDomains
        case dnsServers
        case dockerLabels
        case dockerSecurityOptions
        case entryPoint
        case environment
        case essential
        case extraHosts
        case healthCheck
        case hostname
        case image
        case interactive
        case links
        case linuxParameters
        case logConfiguration
        case memory
        case memoryReservation
        case mountPoints
        case name
        case portMappings
        case privileged
        case pseudoTerminal
        case readonlyRootFilesystem
        case repositoryCredentials
        case systemControls
        case ulimits
        case user
        case volumesFrom
        case workingDirectory
    }

    public func validate() throws {
        try healthCheck?.validate()
        try linuxParameters?.validate()
        try logConfiguration?.validate()
        try repositoryCredentials?.validate()
    }
}

public struct ContainerInstance: Codable, Equatable {
    public var agentConnected: Boolean?
    public var agentUpdateStatus: AgentUpdateStatus?
    public var attachments: Attachments?
    public var attributes: Attributes?
    public var containerInstanceArn: String?
    public var ec2InstanceId: String?
    public var pendingTasksCount: Integer?
    public var registeredAt: Timestamp?
    public var registeredResources: Resources?
    public var remainingResources: Resources?
    public var runningTasksCount: Integer?
    public var status: String?
    public var version: Long?
    public var versionInfo: VersionInfo?

    public init(agentConnected: Boolean? = nil,
                agentUpdateStatus: AgentUpdateStatus? = nil,
                attachments: Attachments? = nil,
                attributes: Attributes? = nil,
                containerInstanceArn: String? = nil,
                ec2InstanceId: String? = nil,
                pendingTasksCount: Integer? = nil,
                registeredAt: Timestamp? = nil,
                registeredResources: Resources? = nil,
                remainingResources: Resources? = nil,
                runningTasksCount: Integer? = nil,
                status: String? = nil,
                version: Long? = nil,
                versionInfo: VersionInfo? = nil) {
        self.agentConnected = agentConnected
        self.agentUpdateStatus = agentUpdateStatus
        self.attachments = attachments
        self.attributes = attributes
        self.containerInstanceArn = containerInstanceArn
        self.ec2InstanceId = ec2InstanceId
        self.pendingTasksCount = pendingTasksCount
        self.registeredAt = registeredAt
        self.registeredResources = registeredResources
        self.remainingResources = remainingResources
        self.runningTasksCount = runningTasksCount
        self.status = status
        self.version = version
        self.versionInfo = versionInfo
    }

    enum CodingKeys: String, CodingKey {
        case agentConnected
        case agentUpdateStatus
        case attachments
        case attributes
        case containerInstanceArn
        case ec2InstanceId
        case pendingTasksCount
        case registeredAt
        case registeredResources
        case remainingResources
        case runningTasksCount
        case status
        case version
        case versionInfo
    }

    public func validate() throws {
        try versionInfo?.validate()
    }
}

public struct ContainerOverride: Codable, Equatable {
    public var command: StringList?
    public var cpu: BoxedInteger?
    public var environment: EnvironmentVariables?
    public var memory: BoxedInteger?
    public var memoryReservation: BoxedInteger?
    public var name: String?

    public init(command: StringList? = nil,
                cpu: BoxedInteger? = nil,
                environment: EnvironmentVariables? = nil,
                memory: BoxedInteger? = nil,
                memoryReservation: BoxedInteger? = nil,
                name: String? = nil) {
        self.command = command
        self.cpu = cpu
        self.environment = environment
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case command
        case cpu
        case environment
        case memory
        case memoryReservation
        case name
    }

    public func validate() throws {
    }
}

public struct ContainerStateChange: Codable, Equatable {
    public var containerName: String?
    public var exitCode: BoxedInteger?
    public var networkBindings: NetworkBindings?
    public var reason: String?
    public var status: String?

    public init(containerName: String? = nil,
                exitCode: BoxedInteger? = nil,
                networkBindings: NetworkBindings? = nil,
                reason: String? = nil,
                status: String? = nil) {
        self.containerName = containerName
        self.exitCode = exitCode
        self.networkBindings = networkBindings
        self.reason = reason
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case exitCode
        case networkBindings
        case reason
        case status
    }

    public func validate() throws {
    }
}

public struct CreateClusterRequest: Codable, Equatable {
    public var clusterName: String?

    public init(clusterName: String? = nil) {
        self.clusterName = clusterName
    }

    enum CodingKeys: String, CodingKey {
        case clusterName
    }

    public func validate() throws {
    }
}

public struct CreateClusterResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct CreateServiceRequest: Codable, Equatable {
    public var clientToken: String?
    public var cluster: String?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var desiredCount: BoxedInteger?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var role: String?
    public var schedulingStrategy: SchedulingStrategy?
    public var serviceName: String
    public var serviceRegistries: ServiceRegistries?
    public var taskDefinition: String

    public init(clientToken: String? = nil,
                cluster: String? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                desiredCount: BoxedInteger? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                role: String? = nil,
                schedulingStrategy: SchedulingStrategy? = nil,
                serviceName: String,
                serviceRegistries: ServiceRegistries? = nil,
                taskDefinition: String) {
        self.clientToken = clientToken
        self.cluster = cluster
        self.deploymentConfiguration = deploymentConfiguration
        self.desiredCount = desiredCount
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.role = role
        self.schedulingStrategy = schedulingStrategy
        self.serviceName = serviceName
        self.serviceRegistries = serviceRegistries
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case cluster
        case deploymentConfiguration
        case desiredCount
        case healthCheckGracePeriodSeconds
        case launchType
        case loadBalancers
        case networkConfiguration
        case placementConstraints
        case placementStrategy
        case platformVersion
        case role
        case schedulingStrategy
        case serviceName
        case serviceRegistries
        case taskDefinition
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try networkConfiguration?.validate()
    }
}

public struct CreateServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct DeleteAttributesRequest: Codable, Equatable {
    public var attributes: Attributes
    public var cluster: String?

    public init(attributes: Attributes,
                cluster: String? = nil) {
        self.attributes = attributes
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
    }

    public func validate() throws {
    }
}

public struct DeleteAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?

    public init(attributes: Attributes? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct DeleteClusterRequest: Codable, Equatable {
    public var cluster: String

    public init(cluster: String) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
    }
}

public struct DeleteClusterResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct DeleteServiceRequest: Codable, Equatable {
    public var cluster: String?
    public var force: BoxedBoolean?
    public var service: String

    public init(cluster: String? = nil,
                force: BoxedBoolean? = nil,
                service: String) {
        self.cluster = cluster
        self.force = force
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case force
        case service
    }

    public func validate() throws {
    }
}

public struct DeleteServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct Deployment: Codable, Equatable {
    public var createdAt: Timestamp?
    public var desiredCount: Integer?
    public var id: String?
    public var launchType: LaunchType?
    public var networkConfiguration: NetworkConfiguration?
    public var pendingCount: Integer?
    public var platformVersion: String?
    public var runningCount: Integer?
    public var status: String?
    public var taskDefinition: String?
    public var updatedAt: Timestamp?

    public init(createdAt: Timestamp? = nil,
                desiredCount: Integer? = nil,
                id: String? = nil,
                launchType: LaunchType? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                pendingCount: Integer? = nil,
                platformVersion: String? = nil,
                runningCount: Integer? = nil,
                status: String? = nil,
                taskDefinition: String? = nil,
                updatedAt: Timestamp? = nil) {
        self.createdAt = createdAt
        self.desiredCount = desiredCount
        self.id = id
        self.launchType = launchType
        self.networkConfiguration = networkConfiguration
        self.pendingCount = pendingCount
        self.platformVersion = platformVersion
        self.runningCount = runningCount
        self.status = status
        self.taskDefinition = taskDefinition
        self.updatedAt = updatedAt
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case desiredCount
        case id
        case launchType
        case networkConfiguration
        case pendingCount
        case platformVersion
        case runningCount
        case status
        case taskDefinition
        case updatedAt
    }

    public func validate() throws {
        try networkConfiguration?.validate()
    }
}

public struct DeploymentConfiguration: Codable, Equatable {
    public var maximumPercent: BoxedInteger?
    public var minimumHealthyPercent: BoxedInteger?

    public init(maximumPercent: BoxedInteger? = nil,
                minimumHealthyPercent: BoxedInteger? = nil) {
        self.maximumPercent = maximumPercent
        self.minimumHealthyPercent = minimumHealthyPercent
    }

    enum CodingKeys: String, CodingKey {
        case maximumPercent
        case minimumHealthyPercent
    }

    public func validate() throws {
    }
}

public struct DeregisterContainerInstanceRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String
    public var force: BoxedBoolean?

    public init(cluster: String? = nil,
                containerInstance: String,
                force: BoxedBoolean? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
        case force
    }

    public func validate() throws {
    }
}

public struct DeregisterContainerInstanceResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct DeregisterTaskDefinitionRequest: Codable, Equatable {
    public var taskDefinition: String

    public init(taskDefinition: String) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
    }
}

public struct DeregisterTaskDefinitionResponse: Codable, Equatable {
    public var taskDefinition: TaskDefinition?

    public init(taskDefinition: TaskDefinition? = nil) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
        try taskDefinition?.validate()
    }
}

public struct DescribeClustersRequest: Codable, Equatable {
    public var clusters: StringList?
    public var include: ClusterFieldList?

    public init(clusters: StringList? = nil,
                include: ClusterFieldList? = nil) {
        self.clusters = clusters
        self.include = include
    }

    enum CodingKeys: String, CodingKey {
        case clusters
        case include
    }

    public func validate() throws {
    }
}

public struct DescribeClustersResponse: Codable, Equatable {
    public var clusters: Clusters?
    public var failures: Failures?

    public init(clusters: Clusters? = nil,
                failures: Failures? = nil) {
        self.clusters = clusters
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case clusters
        case failures
    }

    public func validate() throws {
    }
}

public struct DescribeContainerInstancesRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList

    public init(cluster: String? = nil,
                containerInstances: StringList) {
        self.cluster = cluster
        self.containerInstances = containerInstances
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
    }

    public func validate() throws {
    }
}

public struct DescribeContainerInstancesResponse: Codable, Equatable {
    public var containerInstances: ContainerInstances?
    public var failures: Failures?

    public init(containerInstances: ContainerInstances? = nil,
                failures: Failures? = nil) {
        self.containerInstances = containerInstances
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case containerInstances
        case failures
    }

    public func validate() throws {
    }
}

public struct DescribeServicesRequest: Codable, Equatable {
    public var cluster: String?
    public var services: StringList

    public init(cluster: String? = nil,
                services: StringList) {
        self.cluster = cluster
        self.services = services
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case services
    }

    public func validate() throws {
    }
}

public struct DescribeServicesResponse: Codable, Equatable {
    public var failures: Failures?
    public var services: Services?

    public init(failures: Failures? = nil,
                services: Services? = nil) {
        self.failures = failures
        self.services = services
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case services
    }

    public func validate() throws {
    }
}

public struct DescribeTaskDefinitionRequest: Codable, Equatable {
    public var taskDefinition: String

    public init(taskDefinition: String) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
    }
}

public struct DescribeTaskDefinitionResponse: Codable, Equatable {
    public var taskDefinition: TaskDefinition?

    public init(taskDefinition: TaskDefinition? = nil) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
        try taskDefinition?.validate()
    }
}

public struct DescribeTasksRequest: Codable, Equatable {
    public var cluster: String?
    public var tasks: StringList

    public init(cluster: String? = nil,
                tasks: StringList) {
        self.cluster = cluster
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case tasks
    }

    public func validate() throws {
    }
}

public struct DescribeTasksResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct Device: Codable, Equatable {
    public var containerPath: String?
    public var hostPath: String
    public var permissions: DeviceCgroupPermissions?

    public init(containerPath: String? = nil,
                hostPath: String,
                permissions: DeviceCgroupPermissions? = nil) {
        self.containerPath = containerPath
        self.hostPath = hostPath
        self.permissions = permissions
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case hostPath
        case permissions
    }

    public func validate() throws {
    }
}

public struct DiscoverPollEndpointRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String?

    public init(cluster: String? = nil,
                containerInstance: String? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
    }

    public func validate() throws {
    }
}

public struct DiscoverPollEndpointResponse: Codable, Equatable {
    public var endpoint: String?
    public var telemetryEndpoint: String?

    public init(endpoint: String? = nil,
                telemetryEndpoint: String? = nil) {
        self.endpoint = endpoint
        self.telemetryEndpoint = telemetryEndpoint
    }

    enum CodingKeys: String, CodingKey {
        case endpoint
        case telemetryEndpoint
    }

    public func validate() throws {
    }
}

public struct DockerVolumeConfiguration: Codable, Equatable {
    public var autoprovision: BoxedBoolean?
    public var driver: String?
    public var driverOpts: StringMap?
    public var labels: StringMap?
    public var scope: Scope?

    public init(autoprovision: BoxedBoolean? = nil,
                driver: String? = nil,
                driverOpts: StringMap? = nil,
                labels: StringMap? = nil,
                scope: Scope? = nil) {
        self.autoprovision = autoprovision
        self.driver = driver
        self.driverOpts = driverOpts
        self.labels = labels
        self.scope = scope
    }

    enum CodingKeys: String, CodingKey {
        case autoprovision
        case driver
        case driverOpts
        case labels
        case scope
    }

    public func validate() throws {
    }
}

public struct Failure: Codable, Equatable {
    public var arn: String?
    public var reason: String?

    public init(arn: String? = nil,
                reason: String? = nil) {
        self.arn = arn
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case reason
    }

    public func validate() throws {
    }
}

public struct HealthCheck: Codable, Equatable {
    public var command: StringList
    public var interval: BoxedInteger?
    public var retries: BoxedInteger?
    public var startPeriod: BoxedInteger?
    public var timeout: BoxedInteger?

    public init(command: StringList,
                interval: BoxedInteger? = nil,
                retries: BoxedInteger? = nil,
                startPeriod: BoxedInteger? = nil,
                timeout: BoxedInteger? = nil) {
        self.command = command
        self.interval = interval
        self.retries = retries
        self.startPeriod = startPeriod
        self.timeout = timeout
    }

    enum CodingKeys: String, CodingKey {
        case command
        case interval
        case retries
        case startPeriod
        case timeout
    }

    public func validate() throws {
    }
}

public struct HostEntry: Codable, Equatable {
    public var hostname: String
    public var ipAddress: String

    public init(hostname: String,
                ipAddress: String) {
        self.hostname = hostname
        self.ipAddress = ipAddress
    }

    enum CodingKeys: String, CodingKey {
        case hostname
        case ipAddress
    }

    public func validate() throws {
    }
}

public struct HostVolumeProperties: Codable, Equatable {
    public var sourcePath: String?

    public init(sourcePath: String? = nil) {
        self.sourcePath = sourcePath
    }

    enum CodingKeys: String, CodingKey {
        case sourcePath
    }

    public func validate() throws {
    }
}

public struct InvalidParameterException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct KernelCapabilities: Codable, Equatable {
    public var add: StringList?
    public var drop: StringList?

    public init(add: StringList? = nil,
                drop: StringList? = nil) {
        self.add = add
        self.drop = drop
    }

    enum CodingKeys: String, CodingKey {
        case add
        case drop
    }

    public func validate() throws {
    }
}

public struct KeyValuePair: Codable, Equatable {
    public var name: String?
    public var value: String?

    public init(name: String? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
    }
}

public struct LinuxParameters: Codable, Equatable {
    public var capabilities: KernelCapabilities?
    public var devices: DevicesList?
    public var initProcessEnabled: BoxedBoolean?
    public var sharedMemorySize: BoxedInteger?
    public var tmpfs: TmpfsList?

    public init(capabilities: KernelCapabilities? = nil,
                devices: DevicesList? = nil,
                initProcessEnabled: BoxedBoolean? = nil,
                sharedMemorySize: BoxedInteger? = nil,
                tmpfs: TmpfsList? = nil) {
        self.capabilities = capabilities
        self.devices = devices
        self.initProcessEnabled = initProcessEnabled
        self.sharedMemorySize = sharedMemorySize
        self.tmpfs = tmpfs
    }

    enum CodingKeys: String, CodingKey {
        case capabilities
        case devices
        case initProcessEnabled
        case sharedMemorySize
        case tmpfs
    }

    public func validate() throws {
        try capabilities?.validate()
    }
}

public struct ListAttributesRequest: Codable, Equatable {
    public var attributeName: String?
    public var attributeValue: String?
    public var cluster: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var targetType: TargetType

    public init(attributeName: String? = nil,
                attributeValue: String? = nil,
                cluster: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                targetType: TargetType) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
        self.cluster = cluster
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.targetType = targetType
    }

    enum CodingKeys: String, CodingKey {
        case attributeName
        case attributeValue
        case cluster
        case maxResults
        case nextToken
        case targetType
    }

    public func validate() throws {
    }
}

public struct ListAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?
    public var nextToken: String?

    public init(attributes: Attributes? = nil,
                nextToken: String? = nil) {
        self.attributes = attributes
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListClustersRequest: Codable, Equatable {
    public var maxResults: BoxedInteger?
    public var nextToken: String?

    public init(maxResults: BoxedInteger? = nil,
                nextToken: String? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListClustersResponse: Codable, Equatable {
    public var clusterArns: StringList?
    public var nextToken: String?

    public init(clusterArns: StringList? = nil,
                nextToken: String? = nil) {
        self.clusterArns = clusterArns
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clusterArns
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListContainerInstancesRequest: Codable, Equatable {
    public var cluster: String?
    public var filter: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var status: ContainerInstanceStatus?

    public init(cluster: String? = nil,
                filter: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                status: ContainerInstanceStatus? = nil) {
        self.cluster = cluster
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case filter
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
    }
}

public struct ListContainerInstancesResponse: Codable, Equatable {
    public var containerInstanceArns: StringList?
    public var nextToken: String?

    public init(containerInstanceArns: StringList? = nil,
                nextToken: String? = nil) {
        self.containerInstanceArns = containerInstanceArns
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case containerInstanceArns
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListServicesRequest: Codable, Equatable {
    public var cluster: String?
    public var launchType: LaunchType?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var schedulingStrategy: SchedulingStrategy?

    public init(cluster: String? = nil,
                launchType: LaunchType? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                schedulingStrategy: SchedulingStrategy? = nil) {
        self.cluster = cluster
        self.launchType = launchType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.schedulingStrategy = schedulingStrategy
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case launchType
        case maxResults
        case nextToken
        case schedulingStrategy
    }

    public func validate() throws {
    }
}

public struct ListServicesResponse: Codable, Equatable {
    public var nextToken: String?
    public var serviceArns: StringList?

    public init(nextToken: String? = nil,
                serviceArns: StringList? = nil) {
        self.nextToken = nextToken
        self.serviceArns = serviceArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case serviceArns
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionFamiliesRequest: Codable, Equatable {
    public var familyPrefix: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var status: TaskDefinitionFamilyStatus?

    public init(familyPrefix: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                status: TaskDefinitionFamilyStatus? = nil) {
        self.familyPrefix = familyPrefix
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case familyPrefix
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionFamiliesResponse: Codable, Equatable {
    public var families: StringList?
    public var nextToken: String?

    public init(families: StringList? = nil,
                nextToken: String? = nil) {
        self.families = families
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case families
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionsRequest: Codable, Equatable {
    public var familyPrefix: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var sort: SortOrder?
    public var status: TaskDefinitionStatus?

    public init(familyPrefix: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                sort: SortOrder? = nil,
                status: TaskDefinitionStatus? = nil) {
        self.familyPrefix = familyPrefix
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sort = sort
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case familyPrefix
        case maxResults
        case nextToken
        case sort
        case status
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionsResponse: Codable, Equatable {
    public var nextToken: String?
    public var taskDefinitionArns: StringList?

    public init(nextToken: String? = nil,
                taskDefinitionArns: StringList? = nil) {
        self.nextToken = nextToken
        self.taskDefinitionArns = taskDefinitionArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case taskDefinitionArns
    }

    public func validate() throws {
    }
}

public struct ListTasksRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String?
    public var desiredStatus: DesiredStatus?
    public var family: String?
    public var launchType: LaunchType?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var serviceName: String?
    public var startedBy: String?

    public init(cluster: String? = nil,
                containerInstance: String? = nil,
                desiredStatus: DesiredStatus? = nil,
                family: String? = nil,
                launchType: LaunchType? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                serviceName: String? = nil,
                startedBy: String? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
        self.desiredStatus = desiredStatus
        self.family = family
        self.launchType = launchType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceName = serviceName
        self.startedBy = startedBy
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
        case desiredStatus
        case family
        case launchType
        case maxResults
        case nextToken
        case serviceName
        case startedBy
    }

    public func validate() throws {
    }
}

public struct ListTasksResponse: Codable, Equatable {
    public var nextToken: String?
    public var taskArns: StringList?

    public init(nextToken: String? = nil,
                taskArns: StringList? = nil) {
        self.nextToken = nextToken
        self.taskArns = taskArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case taskArns
    }

    public func validate() throws {
    }
}

public struct LoadBalancer: Codable, Equatable {
    public var containerName: String?
    public var containerPort: BoxedInteger?
    public var loadBalancerName: String?
    public var targetGroupArn: String?

    public init(containerName: String? = nil,
                containerPort: BoxedInteger? = nil,
                loadBalancerName: String? = nil,
                targetGroupArn: String? = nil) {
        self.containerName = containerName
        self.containerPort = containerPort
        self.loadBalancerName = loadBalancerName
        self.targetGroupArn = targetGroupArn
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case containerPort
        case loadBalancerName
        case targetGroupArn
    }

    public func validate() throws {
    }
}

public struct LogConfiguration: Codable, Equatable {
    public var logDriver: LogDriver
    public var options: LogConfigurationOptionsMap?

    public init(logDriver: LogDriver,
                options: LogConfigurationOptionsMap? = nil) {
        self.logDriver = logDriver
        self.options = options
    }

    enum CodingKeys: String, CodingKey {
        case logDriver
        case options
    }

    public func validate() throws {
    }
}

public struct MissingVersionException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct MountPoint: Codable, Equatable {
    public var containerPath: String?
    public var readOnly: BoxedBoolean?
    public var sourceVolume: String?

    public init(containerPath: String? = nil,
                readOnly: BoxedBoolean? = nil,
                sourceVolume: String? = nil) {
        self.containerPath = containerPath
        self.readOnly = readOnly
        self.sourceVolume = sourceVolume
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case readOnly
        case sourceVolume
    }

    public func validate() throws {
    }
}

public struct NetworkBinding: Codable, Equatable {
    public var bindIP: String?
    public var containerPort: BoxedInteger?
    public var hostPort: BoxedInteger?
    public var `protocol`: TransportProtocol?

    public init(bindIP: String? = nil,
                containerPort: BoxedInteger? = nil,
                hostPort: BoxedInteger? = nil,
                `protocol`: TransportProtocol? = nil) {
        self.bindIP = bindIP
        self.containerPort = containerPort
        self.hostPort = hostPort
        self.`protocol` = `protocol`
    }

    enum CodingKeys: String, CodingKey {
        case bindIP
        case containerPort
        case hostPort
        case `protocol` = "protocol"
    }

    public func validate() throws {
    }
}

public struct NetworkConfiguration: Codable, Equatable {
    public var awsvpcConfiguration: AwsVpcConfiguration?

    public init(awsvpcConfiguration: AwsVpcConfiguration? = nil) {
        self.awsvpcConfiguration = awsvpcConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case awsvpcConfiguration
    }

    public func validate() throws {
        try awsvpcConfiguration?.validate()
    }
}

public struct NetworkInterface: Codable, Equatable {
    public var attachmentId: String?
    public var ipv6Address: String?
    public var privateIpv4Address: String?

    public init(attachmentId: String? = nil,
                ipv6Address: String? = nil,
                privateIpv4Address: String? = nil) {
        self.attachmentId = attachmentId
        self.ipv6Address = ipv6Address
        self.privateIpv4Address = privateIpv4Address
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
        case ipv6Address
        case privateIpv4Address
    }

    public func validate() throws {
    }
}

public struct NoUpdateAvailableException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PlacementConstraint: Codable, Equatable {
    public var expression: String?
    public var type: PlacementConstraintType?

    public init(expression: String? = nil,
                type: PlacementConstraintType? = nil) {
        self.expression = expression
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case expression
        case type
    }

    public func validate() throws {
    }
}

public struct PlacementStrategy: Codable, Equatable {
    public var field: String?
    public var type: PlacementStrategyType?

    public init(field: String? = nil,
                type: PlacementStrategyType? = nil) {
        self.field = field
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case field
        case type
    }

    public func validate() throws {
    }
}

public struct PlatformTaskDefinitionIncompatibilityException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PlatformUnknownException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PortMapping: Codable, Equatable {
    public var containerPort: BoxedInteger?
    public var hostPort: BoxedInteger?
    public var `protocol`: TransportProtocol?

    public init(containerPort: BoxedInteger? = nil,
                hostPort: BoxedInteger? = nil,
                `protocol`: TransportProtocol? = nil) {
        self.containerPort = containerPort
        self.hostPort = hostPort
        self.`protocol` = `protocol`
    }

    enum CodingKeys: String, CodingKey {
        case containerPort
        case hostPort
        case `protocol` = "protocol"
    }

    public func validate() throws {
    }
}

public struct PutAttributesRequest: Codable, Equatable {
    public var attributes: Attributes
    public var cluster: String?

    public init(attributes: Attributes,
                cluster: String? = nil) {
        self.attributes = attributes
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
    }

    public func validate() throws {
    }
}

public struct PutAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?

    public init(attributes: Attributes? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct RegisterContainerInstanceRequest: Codable, Equatable {
    public var attributes: Attributes?
    public var cluster: String?
    public var containerInstanceArn: String?
    public var instanceIdentityDocument: String?
    public var instanceIdentityDocumentSignature: String?
    public var totalResources: Resources?
    public var versionInfo: VersionInfo?

    public init(attributes: Attributes? = nil,
                cluster: String? = nil,
                containerInstanceArn: String? = nil,
                instanceIdentityDocument: String? = nil,
                instanceIdentityDocumentSignature: String? = nil,
                totalResources: Resources? = nil,
                versionInfo: VersionInfo? = nil) {
        self.attributes = attributes
        self.cluster = cluster
        self.containerInstanceArn = containerInstanceArn
        self.instanceIdentityDocument = instanceIdentityDocument
        self.instanceIdentityDocumentSignature = instanceIdentityDocumentSignature
        self.totalResources = totalResources
        self.versionInfo = versionInfo
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
        case containerInstanceArn
        case instanceIdentityDocument
        case instanceIdentityDocumentSignature
        case totalResources
        case versionInfo
    }

    public func validate() throws {
        try versionInfo?.validate()
    }
}

public struct RegisterContainerInstanceResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct RegisterTaskDefinitionRequest: Codable, Equatable {
    public var containerDefinitions: ContainerDefinitions
    public var cpu: String?
    public var executionRoleArn: String?
    public var family: String
    public var memory: String?
    public var networkMode: NetworkMode?
    public var placementConstraints: TaskDefinitionPlacementConstraints?
    public var requiresCompatibilities: CompatibilityList?
    public var taskRoleArn: String?
    public var volumes: VolumeList?

    public init(containerDefinitions: ContainerDefinitions,
                cpu: String? = nil,
                executionRoleArn: String? = nil,
                family: String,
                memory: String? = nil,
                networkMode: NetworkMode? = nil,
                placementConstraints: TaskDefinitionPlacementConstraints? = nil,
                requiresCompatibilities: CompatibilityList? = nil,
                taskRoleArn: String? = nil,
                volumes: VolumeList? = nil) {
        self.containerDefinitions = containerDefinitions
        self.cpu = cpu
        self.executionRoleArn = executionRoleArn
        self.family = family
        self.memory = memory
        self.networkMode = networkMode
        self.placementConstraints = placementConstraints
        self.requiresCompatibilities = requiresCompatibilities
        self.taskRoleArn = taskRoleArn
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case containerDefinitions
        case cpu
        case executionRoleArn
        case family
        case memory
        case networkMode
        case placementConstraints
        case requiresCompatibilities
        case taskRoleArn
        case volumes
    }

    public func validate() throws {
    }
}

public struct RegisterTaskDefinitionResponse: Codable, Equatable {
    public var taskDefinition: TaskDefinition?

    public init(taskDefinition: TaskDefinition? = nil) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
        try taskDefinition?.validate()
    }
}

public struct RepositoryCredentials: Codable, Equatable {
    public var credentialsParameter: String

    public init(credentialsParameter: String) {
        self.credentialsParameter = credentialsParameter
    }

    enum CodingKeys: String, CodingKey {
        case credentialsParameter
    }

    public func validate() throws {
    }
}

public struct Resource: Codable, Equatable {
    public var doubleValue: Double?
    public var integerValue: Integer?
    public var longValue: Long?
    public var name: String?
    public var stringSetValue: StringList?
    public var type: String?

    public init(doubleValue: Double? = nil,
                integerValue: Integer? = nil,
                longValue: Long? = nil,
                name: String? = nil,
                stringSetValue: StringList? = nil,
                type: String? = nil) {
        self.doubleValue = doubleValue
        self.integerValue = integerValue
        self.longValue = longValue
        self.name = name
        self.stringSetValue = stringSetValue
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case doubleValue
        case integerValue
        case longValue
        case name
        case stringSetValue
        case type
    }

    public func validate() throws {
    }
}

public struct RunTaskRequest: Codable, Equatable {
    public var cluster: String?
    public var count: BoxedInteger?
    public var group: String?
    public var launchType: LaunchType?
    public var networkConfiguration: NetworkConfiguration?
    public var overrides: TaskOverride?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var startedBy: String?
    public var taskDefinition: String

    public init(cluster: String? = nil,
                count: BoxedInteger? = nil,
                group: String? = nil,
                launchType: LaunchType? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                overrides: TaskOverride? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                startedBy: String? = nil,
                taskDefinition: String) {
        self.cluster = cluster
        self.count = count
        self.group = group
        self.launchType = launchType
        self.networkConfiguration = networkConfiguration
        self.overrides = overrides
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.startedBy = startedBy
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case count
        case group
        case launchType
        case networkConfiguration
        case overrides
        case placementConstraints
        case placementStrategy
        case platformVersion
        case startedBy
        case taskDefinition
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try overrides?.validate()
    }
}

public struct RunTaskResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct ServerException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Service: Codable, Equatable {
    public var clusterArn: String?
    public var createdAt: Timestamp?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var deployments: Deployments?
    public var desiredCount: Integer?
    public var events: ServiceEvents?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var pendingCount: Integer?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var roleArn: String?
    public var runningCount: Integer?
    public var schedulingStrategy: SchedulingStrategy?
    public var serviceArn: String?
    public var serviceName: String?
    public var serviceRegistries: ServiceRegistries?
    public var status: String?
    public var taskDefinition: String?

    public init(clusterArn: String? = nil,
                createdAt: Timestamp? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                deployments: Deployments? = nil,
                desiredCount: Integer? = nil,
                events: ServiceEvents? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                pendingCount: Integer? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                roleArn: String? = nil,
                runningCount: Integer? = nil,
                schedulingStrategy: SchedulingStrategy? = nil,
                serviceArn: String? = nil,
                serviceName: String? = nil,
                serviceRegistries: ServiceRegistries? = nil,
                status: String? = nil,
                taskDefinition: String? = nil) {
        self.clusterArn = clusterArn
        self.createdAt = createdAt
        self.deploymentConfiguration = deploymentConfiguration
        self.deployments = deployments
        self.desiredCount = desiredCount
        self.events = events
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.pendingCount = pendingCount
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.roleArn = roleArn
        self.runningCount = runningCount
        self.schedulingStrategy = schedulingStrategy
        self.serviceArn = serviceArn
        self.serviceName = serviceName
        self.serviceRegistries = serviceRegistries
        self.status = status
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case clusterArn
        case createdAt
        case deploymentConfiguration
        case deployments
        case desiredCount
        case events
        case healthCheckGracePeriodSeconds
        case launchType
        case loadBalancers
        case networkConfiguration
        case pendingCount
        case placementConstraints
        case placementStrategy
        case platformVersion
        case roleArn
        case runningCount
        case schedulingStrategy
        case serviceArn
        case serviceName
        case serviceRegistries
        case status
        case taskDefinition
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try networkConfiguration?.validate()
    }
}

public struct ServiceEvent: Codable, Equatable {
    public var createdAt: Timestamp?
    public var id: String?
    public var message: String?

    public init(createdAt: Timestamp? = nil,
                id: String? = nil,
                message: String? = nil) {
        self.createdAt = createdAt
        self.id = id
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case id
        case message
    }

    public func validate() throws {
    }
}

public struct ServiceNotActiveException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ServiceNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ServiceRegistry: Codable, Equatable {
    public var containerName: String?
    public var containerPort: BoxedInteger?
    public var port: BoxedInteger?
    public var registryArn: String?

    public init(containerName: String? = nil,
                containerPort: BoxedInteger? = nil,
                port: BoxedInteger? = nil,
                registryArn: String? = nil) {
        self.containerName = containerName
        self.containerPort = containerPort
        self.port = port
        self.registryArn = registryArn
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case containerPort
        case port
        case registryArn
    }

    public func validate() throws {
    }
}

public struct StartTaskRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList
    public var group: String?
    public var networkConfiguration: NetworkConfiguration?
    public var overrides: TaskOverride?
    public var startedBy: String?
    public var taskDefinition: String

    public init(cluster: String? = nil,
                containerInstances: StringList,
                group: String? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                overrides: TaskOverride? = nil,
                startedBy: String? = nil,
                taskDefinition: String) {
        self.cluster = cluster
        self.containerInstances = containerInstances
        self.group = group
        self.networkConfiguration = networkConfiguration
        self.overrides = overrides
        self.startedBy = startedBy
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case group
        case networkConfiguration
        case overrides
        case startedBy
        case taskDefinition
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try overrides?.validate()
    }
}

public struct StartTaskResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct StopTaskRequest: Codable, Equatable {
    public var cluster: String?
    public var reason: String?
    public var task: String

    public init(cluster: String? = nil,
                reason: String? = nil,
                task: String) {
        self.cluster = cluster
        self.reason = reason
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case reason
        case task
    }

    public func validate() throws {
    }
}

public struct StopTaskResponse: Codable, Equatable {
    public var task: Task?

    public init(task: Task? = nil) {
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case task
    }

    public func validate() throws {
        try task?.validate()
    }
}

public struct SubmitContainerStateChangeRequest: Codable, Equatable {
    public var cluster: String?
    public var containerName: String?
    public var exitCode: BoxedInteger?
    public var networkBindings: NetworkBindings?
    public var reason: String?
    public var status: String?
    public var task: String?

    public init(cluster: String? = nil,
                containerName: String? = nil,
                exitCode: BoxedInteger? = nil,
                networkBindings: NetworkBindings? = nil,
                reason: String? = nil,
                status: String? = nil,
                task: String? = nil) {
        self.cluster = cluster
        self.containerName = containerName
        self.exitCode = exitCode
        self.networkBindings = networkBindings
        self.reason = reason
        self.status = status
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerName
        case exitCode
        case networkBindings
        case reason
        case status
        case task
    }

    public func validate() throws {
    }
}

public struct SubmitContainerStateChangeResponse: Codable, Equatable {
    public var acknowledgment: String?

    public init(acknowledgment: String? = nil) {
        self.acknowledgment = acknowledgment
    }

    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public func validate() throws {
    }
}

public struct SubmitTaskStateChangeRequest: Codable, Equatable {
    public var attachments: AttachmentStateChanges?
    public var cluster: String?
    public var containers: ContainerStateChanges?
    public var executionStoppedAt: Timestamp?
    public var pullStartedAt: Timestamp?
    public var pullStoppedAt: Timestamp?
    public var reason: String?
    public var status: String?
    public var task: String?

    public init(attachments: AttachmentStateChanges? = nil,
                cluster: String? = nil,
                containers: ContainerStateChanges? = nil,
                executionStoppedAt: Timestamp? = nil,
                pullStartedAt: Timestamp? = nil,
                pullStoppedAt: Timestamp? = nil,
                reason: String? = nil,
                status: String? = nil,
                task: String? = nil) {
        self.attachments = attachments
        self.cluster = cluster
        self.containers = containers
        self.executionStoppedAt = executionStoppedAt
        self.pullStartedAt = pullStartedAt
        self.pullStoppedAt = pullStoppedAt
        self.reason = reason
        self.status = status
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case attachments
        case cluster
        case containers
        case executionStoppedAt
        case pullStartedAt
        case pullStoppedAt
        case reason
        case status
        case task
    }

    public func validate() throws {
    }
}

public struct SubmitTaskStateChangeResponse: Codable, Equatable {
    public var acknowledgment: String?

    public init(acknowledgment: String? = nil) {
        self.acknowledgment = acknowledgment
    }

    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public func validate() throws {
    }
}

public struct SystemControl: Codable, Equatable {
    public var namespace: String?
    public var value: String?

    public init(namespace: String? = nil,
                value: String? = nil) {
        self.namespace = namespace
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case namespace
        case value
    }

    public func validate() throws {
    }
}

public struct TargetNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Task: Codable, Equatable {
    public var attachments: Attachments?
    public var clusterArn: String?
    public var connectivity: Connectivity?
    public var connectivityAt: Timestamp?
    public var containerInstanceArn: String?
    public var containers: Containers?
    public var cpu: String?
    public var createdAt: Timestamp?
    public var desiredStatus: String?
    public var executionStoppedAt: Timestamp?
    public var group: String?
    public var healthStatus: HealthStatus?
    public var lastStatus: String?
    public var launchType: LaunchType?
    public var memory: String?
    public var overrides: TaskOverride?
    public var platformVersion: String?
    public var pullStartedAt: Timestamp?
    public var pullStoppedAt: Timestamp?
    public var startedAt: Timestamp?
    public var startedBy: String?
    public var stoppedAt: Timestamp?
    public var stoppedReason: String?
    public var stoppingAt: Timestamp?
    public var taskArn: String?
    public var taskDefinitionArn: String?
    public var version: Long?

    public init(attachments: Attachments? = nil,
                clusterArn: String? = nil,
                connectivity: Connectivity? = nil,
                connectivityAt: Timestamp? = nil,
                containerInstanceArn: String? = nil,
                containers: Containers? = nil,
                cpu: String? = nil,
                createdAt: Timestamp? = nil,
                desiredStatus: String? = nil,
                executionStoppedAt: Timestamp? = nil,
                group: String? = nil,
                healthStatus: HealthStatus? = nil,
                lastStatus: String? = nil,
                launchType: LaunchType? = nil,
                memory: String? = nil,
                overrides: TaskOverride? = nil,
                platformVersion: String? = nil,
                pullStartedAt: Timestamp? = nil,
                pullStoppedAt: Timestamp? = nil,
                startedAt: Timestamp? = nil,
                startedBy: String? = nil,
                stoppedAt: Timestamp? = nil,
                stoppedReason: String? = nil,
                stoppingAt: Timestamp? = nil,
                taskArn: String? = nil,
                taskDefinitionArn: String? = nil,
                version: Long? = nil) {
        self.attachments = attachments
        self.clusterArn = clusterArn
        self.connectivity = connectivity
        self.connectivityAt = connectivityAt
        self.containerInstanceArn = containerInstanceArn
        self.containers = containers
        self.cpu = cpu
        self.createdAt = createdAt
        self.desiredStatus = desiredStatus
        self.executionStoppedAt = executionStoppedAt
        self.group = group
        self.healthStatus = healthStatus
        self.lastStatus = lastStatus
        self.launchType = launchType
        self.memory = memory
        self.overrides = overrides
        self.platformVersion = platformVersion
        self.pullStartedAt = pullStartedAt
        self.pullStoppedAt = pullStoppedAt
        self.startedAt = startedAt
        self.startedBy = startedBy
        self.stoppedAt = stoppedAt
        self.stoppedReason = stoppedReason
        self.stoppingAt = stoppingAt
        self.taskArn = taskArn
        self.taskDefinitionArn = taskDefinitionArn
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case attachments
        case clusterArn
        case connectivity
        case connectivityAt
        case containerInstanceArn
        case containers
        case cpu
        case createdAt
        case desiredStatus
        case executionStoppedAt
        case group
        case healthStatus
        case lastStatus
        case launchType
        case memory
        case overrides
        case platformVersion
        case pullStartedAt
        case pullStoppedAt
        case startedAt
        case startedBy
        case stoppedAt
        case stoppedReason
        case stoppingAt
        case taskArn
        case taskDefinitionArn
        case version
    }

    public func validate() throws {
        try overrides?.validate()
    }
}

public struct TaskDefinition: Codable, Equatable {
    public var compatibilities: CompatibilityList?
    public var containerDefinitions: ContainerDefinitions?
    public var cpu: String?
    public var executionRoleArn: String?
    public var family: String?
    public var memory: String?
    public var networkMode: NetworkMode?
    public var placementConstraints: TaskDefinitionPlacementConstraints?
    public var requiresAttributes: RequiresAttributes?
    public var requiresCompatibilities: CompatibilityList?
    public var revision: Integer?
    public var status: TaskDefinitionStatus?
    public var taskDefinitionArn: String?
    public var taskRoleArn: String?
    public var volumes: VolumeList?

    public init(compatibilities: CompatibilityList? = nil,
                containerDefinitions: ContainerDefinitions? = nil,
                cpu: String? = nil,
                executionRoleArn: String? = nil,
                family: String? = nil,
                memory: String? = nil,
                networkMode: NetworkMode? = nil,
                placementConstraints: TaskDefinitionPlacementConstraints? = nil,
                requiresAttributes: RequiresAttributes? = nil,
                requiresCompatibilities: CompatibilityList? = nil,
                revision: Integer? = nil,
                status: TaskDefinitionStatus? = nil,
                taskDefinitionArn: String? = nil,
                taskRoleArn: String? = nil,
                volumes: VolumeList? = nil) {
        self.compatibilities = compatibilities
        self.containerDefinitions = containerDefinitions
        self.cpu = cpu
        self.executionRoleArn = executionRoleArn
        self.family = family
        self.memory = memory
        self.networkMode = networkMode
        self.placementConstraints = placementConstraints
        self.requiresAttributes = requiresAttributes
        self.requiresCompatibilities = requiresCompatibilities
        self.revision = revision
        self.status = status
        self.taskDefinitionArn = taskDefinitionArn
        self.taskRoleArn = taskRoleArn
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case compatibilities
        case containerDefinitions
        case cpu
        case executionRoleArn
        case family
        case memory
        case networkMode
        case placementConstraints
        case requiresAttributes
        case requiresCompatibilities
        case revision
        case status
        case taskDefinitionArn
        case taskRoleArn
        case volumes
    }

    public func validate() throws {
    }
}

public struct TaskDefinitionPlacementConstraint: Codable, Equatable {
    public var expression: String?
    public var type: TaskDefinitionPlacementConstraintType?

    public init(expression: String? = nil,
                type: TaskDefinitionPlacementConstraintType? = nil) {
        self.expression = expression
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case expression
        case type
    }

    public func validate() throws {
    }
}

public struct TaskOverride: Codable, Equatable {
    public var containerOverrides: ContainerOverrides?
    public var executionRoleArn: String?
    public var taskRoleArn: String?

    public init(containerOverrides: ContainerOverrides? = nil,
                executionRoleArn: String? = nil,
                taskRoleArn: String? = nil) {
        self.containerOverrides = containerOverrides
        self.executionRoleArn = executionRoleArn
        self.taskRoleArn = taskRoleArn
    }

    enum CodingKeys: String, CodingKey {
        case containerOverrides
        case executionRoleArn
        case taskRoleArn
    }

    public func validate() throws {
    }
}

public struct Tmpfs: Codable, Equatable {
    public var containerPath: String
    public var mountOptions: StringList?
    public var size: Integer

    public init(containerPath: String,
                mountOptions: StringList? = nil,
                size: Integer) {
        self.containerPath = containerPath
        self.mountOptions = mountOptions
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case mountOptions
        case size
    }

    public func validate() throws {
    }
}

public struct Ulimit: Codable, Equatable {
    public var hardLimit: Integer
    public var name: UlimitName
    public var softLimit: Integer

    public init(hardLimit: Integer,
                name: UlimitName,
                softLimit: Integer) {
        self.hardLimit = hardLimit
        self.name = name
        self.softLimit = softLimit
    }

    enum CodingKeys: String, CodingKey {
        case hardLimit
        case name
        case softLimit
    }

    public func validate() throws {
    }
}

public struct UnsupportedFeatureException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateContainerAgentRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String

    public init(cluster: String? = nil,
                containerInstance: String) {
        self.cluster = cluster
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
    }

    public func validate() throws {
    }
}

public struct UpdateContainerAgentResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct UpdateContainerInstancesStateRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList
    public var status: ContainerInstanceStatus

    public init(cluster: String? = nil,
                containerInstances: StringList,
                status: ContainerInstanceStatus) {
        self.cluster = cluster
        self.containerInstances = containerInstances
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case status
    }

    public func validate() throws {
    }
}

public struct UpdateContainerInstancesStateResponse: Codable, Equatable {
    public var containerInstances: ContainerInstances?
    public var failures: Failures?

    public init(containerInstances: ContainerInstances? = nil,
                failures: Failures? = nil) {
        self.containerInstances = containerInstances
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case containerInstances
        case failures
    }

    public func validate() throws {
    }
}

public struct UpdateInProgressException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateServiceRequest: Codable, Equatable {
    public var cluster: String?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var desiredCount: BoxedInteger?
    public var forceNewDeployment: Boolean?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var networkConfiguration: NetworkConfiguration?
    public var platformVersion: String?
    public var service: String
    public var taskDefinition: String?

    public init(cluster: String? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                desiredCount: BoxedInteger? = nil,
                forceNewDeployment: Boolean? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                platformVersion: String? = nil,
                service: String,
                taskDefinition: String? = nil) {
        self.cluster = cluster
        self.deploymentConfiguration = deploymentConfiguration
        self.desiredCount = desiredCount
        self.forceNewDeployment = forceNewDeployment
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.networkConfiguration = networkConfiguration
        self.platformVersion = platformVersion
        self.service = service
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case deploymentConfiguration
        case desiredCount
        case forceNewDeployment
        case healthCheckGracePeriodSeconds
        case networkConfiguration
        case platformVersion
        case service
        case taskDefinition
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try networkConfiguration?.validate()
    }
}

public struct UpdateServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct VersionInfo: Codable, Equatable {
    public var agentHash: String?
    public var agentVersion: String?
    public var dockerVersion: String?

    public init(agentHash: String? = nil,
                agentVersion: String? = nil,
                dockerVersion: String? = nil) {
        self.agentHash = agentHash
        self.agentVersion = agentVersion
        self.dockerVersion = dockerVersion
    }

    enum CodingKeys: String, CodingKey {
        case agentHash
        case agentVersion
        case dockerVersion
    }

    public func validate() throws {
    }
}

public struct Volume: Codable, Equatable {
    public var dockerVolumeConfiguration: DockerVolumeConfiguration?
    public var host: HostVolumeProperties?
    public var name: String?

    public init(dockerVolumeConfiguration: DockerVolumeConfiguration? = nil,
                host: HostVolumeProperties? = nil,
                name: String? = nil) {
        self.dockerVolumeConfiguration = dockerVolumeConfiguration
        self.host = host
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case dockerVolumeConfiguration
        case host
        case name
    }

    public func validate() throws {
        try dockerVolumeConfiguration?.validate()
        try host?.validate()
    }
}

public struct VolumeFrom: Codable, Equatable {
    public var readOnly: BoxedBoolean?
    public var sourceContainer: String?

    public init(readOnly: BoxedBoolean? = nil,
                sourceContainer: String? = nil) {
        self.readOnly = readOnly
        self.sourceContainer = sourceContainer
    }

    enum CodingKeys: String, CodingKey {
        case readOnly
        case sourceContainer
    }

    public func validate() throws {
    }
}