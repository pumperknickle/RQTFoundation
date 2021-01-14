import Foundation

public struct RequirementTagImpl: Codable {
    private let rawId: ID?
    private let rawTarget: ID
    private let rawSpan: UInt64?
    private let rawAttribute: String
    private let rawValue: String?
    private let rawCreatedAt: Date?
}

extension RequirementTagImpl: Tag {
    public typealias Artifact = RequirementVersionImpl
    public var id: ID? { return rawId }
    public var target: ID { return rawTarget }
    public var span: (UInt32, UInt32)? { return rawSpan?.parts }
    public var attribute: String { return rawAttribute }
    public var value: String? { return rawValue }
    public var createdAt: Date? { return rawCreatedAt }
    
    public init(id: ID?, target: ID, span: (UInt32, UInt32)?, attribute: String, value: String?, createdAt: Date?) {
        self.rawId = id
        self.rawTarget = target
        self.rawSpan = span != nil ? UInt64(a: span!.0, b: span!.1) : nil
        self.rawAttribute = attribute
        self.rawValue = value
        self.rawCreatedAt = createdAt
    }
}
