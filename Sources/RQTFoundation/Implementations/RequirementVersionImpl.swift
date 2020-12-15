import Foundation

public struct RequirementVersionImpl {
    private let rawId: ID?
    private let rawText: String
    private let rawSource: ID?
    private let rawCreatedAt: Date?
}

extension RequirementVersionImpl: TextualArtifact {
    public var id: String? { return rawId }
    public var text: String { return rawText }
}

extension RequirementVersionImpl: RequirementVersion {
    public typealias ID = String
    public var source: ID? { return rawSource }
    public var createdAt: Date? { return rawCreatedAt }
    public init(id: ID?, text: String, source: ID?, createdAt: Date?) {
        self.rawId = id
        self.rawText = text
        self.rawSource = source
        self.rawCreatedAt = createdAt
    }
}
