import Foundation

/// A specific instance of a requirement during the Requirements Clarification Process
public protocol RequirementVersion: TextualArtifact {
    var source: ID? { get }
    var createdAt: Date? { get }
    init(id: ID?, text: String, source: ID?, createdAt: Date?)
}
